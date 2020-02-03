package app;

import java.util.Collection;
import javafx.geometry.Insets;
import javafx.scene.control.Label;
import javafx.scene.control.ScrollPane;
import javafx.scene.control.Separator;
import javafx.scene.layout.Background;
import javafx.scene.layout.BackgroundFill;
import javafx.scene.layout.GridPane;
import javafx.scene.paint.Color;
import javafx.scene.text.Font;
import javafx.scene.text.FontWeight;

public class TodoListView extends GridPane {
  private static final Font NAME_FONT = Font.font("Arial", FontWeight.BOLD, 14);
  private static final Font DESCRIPTION_FONT = Font.font("Arial", FontWeight.NORMAL, 12);
  
  public TodoListView(ScrollPane parent, Collection<Todo> todos) {
    parent.setFitToWidth(true);
    
    var parentWidth = parent.getWidth();
    var parentHeight = parent.getHeight();
    
    setBackground(new Background(new BackgroundFill(Color.WHITE, null, null)));
    setMinHeight(parentHeight);
    setPadding(new Insets(5));
    
    var iter = todos.iterator();
    while (iter.hasNext()) {
      var todo = iter.next();
      
      var name = new Label(todo.getName());
      var description = new Label(todo.getDescription());
      name.setFont(NAME_FONT);
      description.setFont(DESCRIPTION_FONT);
      
      if (iter.hasNext()) {
        var separator = new Separator();
        separator.setPadding(new Insets(10, 0, 10, 0));
        separator.setPrefWidth(parentWidth);
        addColumn(0, name, description, separator);
      } else {
        addColumn(0, name, description);
      }
    }

    parent.setContent(this);
  }
}
