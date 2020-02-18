package app;

import java.util.Iterator;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.scene.control.ScrollPane;
import javafx.scene.control.TabPane;
import javafx.scene.control.TextArea;
import javafx.scene.control.TextField;

public class TodoController {
    @FXML
    private TabPane tabPane;
    @FXML
    private ScrollPane todoListPane;
    @FXML
    private TextField nameInput;
    @FXML
    private TextArea descriptionInput;

    private ObservableList<Todo> todoList = FXCollections.observableArrayList();
    private TodoListView todoListView;

    @FXML
    private void initialize() {
	todoListView = new TodoListView(this);
	todoList.addListener(todoListView);

	todoListView.updateView();

	todoListPane.setStyle("-fx-background: rgb(255, 255, 255);");
    }

    @FXML
    private void onAddTodo() {
	var name = nameInput.getText();
	var description = descriptionInput.getText();
	var todo = new Todo(name, description);

	todoList.add(todo);

	nameInput.clear();
	descriptionInput.clear();
	tabPane.getSelectionModel().select(0);

	System.out.println(todo);
    }

    public ScrollPane getTodoListPane() {
	return todoListPane;
    }

    public Iterator<Todo> todoListIterator() {
	return todoList.iterator();
    }

    public void removeTodo(Todo todo) {
	todoList.remove(todo);
    }
}
