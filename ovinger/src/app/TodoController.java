package app;

import java.io.IOException;
import java.util.Iterator;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.scene.Scene;
import javafx.scene.control.Label;
import javafx.scene.control.ScrollPane;
import javafx.scene.control.TabPane;
import javafx.scene.control.TextArea;
import javafx.scene.control.TextField;
import javafx.stage.Stage;

public class TodoController {
    @FXML
    private TabPane tabPane;
    @FXML
    private ScrollPane todoListPane;
    @FXML
    private TextField nameInput;
    @FXML
    private TextArea descriptionInput;
    @FXML
    private Label todoErrorLabel;
    @FXML
    private Label saveLoadErrorLabel;

    private final ObservableList<Todo> todoList = FXCollections.observableArrayList();
    private TodoListView todoListView;
    private Stage stage;
    private TodoStorage storage;

    public void setup(Stage primaryStage, Scene scene) {
        stage = primaryStage;
        stage.setScene(scene);
        stage.setTitle("Todo App");
        stage.show();

        storage = new TodoStorage(stage, todoList);
    }

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
        Todo todo;

        try {
            todo = new Todo(name, description);
            todoErrorLabel.setText("");
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
            
            todoErrorLabel.setText(e.getMessage());
            return;
        }

        todoList.add(todo);

        nameInput.clear();
        descriptionInput.clear();
        tabPane.getSelectionModel().select(0);

        System.out.println(todo);
    }

    @FXML
    private void onSave() {
        try {
            storage.save();
            saveLoadErrorLabel.setStyle("-fx-text-fill: rgb(50, 180, 50)");
            saveLoadErrorLabel.setText("Todo list saved successfully!");
        } catch (IOException e) {
            e.printStackTrace();

            saveLoadErrorLabel.setStyle("-fx-text-fill: rgb(180, 50, 50)");
            saveLoadErrorLabel.setText(e.getMessage());
        }
    }

    @FXML
    private void onLoad() {
        try {
            storage.load();
            saveLoadErrorLabel.setStyle("-fx-text-fill: rgb(50, 180, 50)");
            saveLoadErrorLabel.setText("Todo list sucessfully loaded!");
        } catch (IOException e) {
            e.printStackTrace();

            saveLoadErrorLabel.setStyle("-fx-text-fill: rgb(180, 50, 50)");
            saveLoadErrorLabel.setText(e.getMessage());
        }
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
