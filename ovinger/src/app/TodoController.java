package app;

import java.util.ArrayList;
import javafx.fxml.FXML;
import javafx.scene.control.ScrollPane;
import javafx.scene.control.TextField;

public class TodoController {
  @FXML
  private TextField nameInput;
  @FXML
  private TextField descriptionInput;
  @FXML
  private ScrollPane todoListPane;

  private ArrayList<Todo> todoList = new ArrayList<>();

  @FXML
  private void initialize() {
    todoListPane.setStyle("-fx-background: rgb(255, 255, 255);");
  }

  @FXML
  private void onAddTodo() {
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
