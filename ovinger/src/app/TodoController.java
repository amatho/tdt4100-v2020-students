package app;

import java.util.ArrayList;
import java.util.UUID;
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
    new TodoListView(this);

    nameInput.clear();
    descriptionInput.clear();
    nameInput.requestFocus();

    System.out.println(todo);
  }

  public ScrollPane getTodoListPane() {
    return todoListPane;
  }

  public ArrayList<Todo> getTodoList() {
    return todoList;
  }

  public void removeTodo(UUID id) {
    var index = 0;
    var foundTodo = false;
    for (var todo : todoList) {
      if (todo.getId().equals(id)) {
        foundTodo = true;
        break;
      }
      index++;
    }
    if (foundTodo) {
      todoList.remove(index);
    } else {
      throw new IllegalArgumentException("The specified ID is not valid");
    }

    new TodoListView(this);
  }
}
