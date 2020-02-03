package app;

import javafx.fxml.FXML;
import javafx.scene.control.TextField;

public class TodoController {
  @FXML
  public TextField nameInput;
  
  @FXML
  public TextField descriptionInput;
  
  private TodoList todoList = new TodoList();
  
  @FXML
  public void onAddTodo() {
    var name = nameInput.getText();
    var description = descriptionInput.getText();
    var todo = new Todo(name, description);
    
    todoList.add(todo);
  }
}
