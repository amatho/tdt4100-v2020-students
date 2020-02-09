package app;

import javafx.collections.ListChangeListener;
import javafx.geometry.Insets;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.ScrollPane;
import javafx.scene.control.Separator;
import javafx.scene.layout.GridPane;
import javafx.scene.text.Font;
import javafx.scene.text.FontWeight;

public class TodoListView extends GridPane implements ListChangeListener<Todo> {
  private static final Font NAME_FONT = Font.font("Arial", FontWeight.BOLD, 14);
  private static final Font DESCRIPTION_FONT = Font.font("Arial", FontWeight.NORMAL, 12);

  private TodoController controller;
  private ScrollPane parent;

  public TodoListView(TodoController controller) {
    this.controller = controller;
    parent = controller.getTodoListPane();
    parent.setFitToWidth(true);
    setPadding(new Insets(5));
  }

  @Override
  public void onChanged(Change<? extends Todo> arg0) {
    updateView();
  }

  private void updateView() {
    getChildren().clear();

    var parentWidth = parent.getWidth();
    var parentHeight = parent.getHeight();
    setMinHeight(parentHeight);

    var iter = controller.todoListIterator();
    while (iter.hasNext()) {
      var todo = iter.next();

      var name = labelWithFont(todo.getName(), NAME_FONT);
      var description = labelWithFont(todo.getDescription(), DESCRIPTION_FONT);

      var todoGrid = new GridPane();
      todoGrid.setHgap(10);
      todoGrid.add(removeTodoButton(todo), 0, 0);
      todoGrid.addColumn(1, name, description);

      if (iter.hasNext()) {
        var separator = new Separator();
        separator.setPadding(new Insets(10, 0, 10, 0));
        separator.setPrefWidth(parentWidth);
        addColumn(0, todoGrid, separator);
      } else {
        addColumn(0, todoGrid);
      }
    }

    parent.setContent(this);
  }

  private Label labelWithFont(String labelText, Font font) {
    var label = new Label(labelText);
    label.setFont(font);
    return label;
  }

  private Button removeTodoButton(Todo todoToRemove) {
    var button = new Button("\u2713");
    button.setStyle("-fx-font: bold 20px Arial; -fx-padding: 2;");
    button.setOnAction(e -> controller.removeTodo(todoToRemove));

    return button;
  }
}
