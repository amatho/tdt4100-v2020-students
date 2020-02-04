package app;

import java.util.ArrayList;
import javafx.fxml.FXML;
import javafx.scene.control.ScrollPane;
import javafx.scene.control.TextField;

public class TodoController {
  @FXML
  public TextField nameInput;
  @FXML
  public TextField descriptionInput;
  @FXML
  public ScrollPane todoListPane;

  private ArrayList<Todo> todoList = new ArrayList<>();

  @FXML
  public void onAddTodo() {
    var name = nameInput.getText();
    var description = descriptionInput.getText();
    var todo = new Todo(name, description);

    todoList.add(todo);
    new TodoListView(todoListPane, todoList);

    nameInput.clear();
    descriptionInput.clear();
    nameInput.requestFocus();

    System.out.println(todo);
  }
}
