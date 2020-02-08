package app;

import javafx.geometry.Insets;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.Separator;
import javafx.scene.layout.GridPane;
import javafx.scene.text.Font;
import javafx.scene.text.FontWeight;

public class TodoListView extends GridPane {
  private static final Font NAME_FONT = Font.font("Arial", FontWeight.BOLD, 14);
  private static final Font DESCRIPTION_FONT = Font.font("Arial", FontWeight.NORMAL, 12);

  public TodoListView(TodoController controller) {
    var parent = controller.getTodoListPane();
    parent.setFitToWidth(true);

    var parentWidth = parent.getWidth();
    var parentHeight = parent.getHeight();

    setMinHeight(parentHeight);
    setPadding(new Insets(5));

    var iter = controller.getTodoList().iterator();
    while (iter.hasNext()) {
      var todo = iter.next();

      var name = new Label(todo.getName());
      var description = new Label(todo.getDescription());
      name.setFont(NAME_FONT);
      description.setFont(DESCRIPTION_FONT);

      var doneButton = new Button("\u2713");
      doneButton.setStyle("-fx-font: bold 20px Arial; -fx-padding: 2;");
      doneButton.setOnAction(e -> controller.removeTodo(todo));

      var todoGrid = new GridPane();
      todoGrid.setHgap(10);
      todoGrid.add(doneButton, 0, 0);
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
}
