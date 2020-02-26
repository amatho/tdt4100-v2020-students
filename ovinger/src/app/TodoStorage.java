package app;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

import javafx.collections.ObservableList;
import javafx.stage.FileChooser;
import javafx.stage.Stage;

public class TodoStorage {
    private final Stage stage;
    private final ObservableList<Todo> todoList;

    public TodoStorage(Stage stage, ObservableList<Todo> todoList) {
        this.stage = stage;
        this.todoList = todoList;
    }

    public void save() throws IOException {
        var fileChooser = new FileChooser();
        var file = fileChooser.showSaveDialog(stage);

        if (file != null) {
            var f = new FileOutputStream(file);
            var out = new ObjectOutputStream(f);

            out.writeObject(todoList.toArray(new Todo[0]));

            out.close();
            f.close();
        } else {
            throw new IOException("File not specified");
        }
    }

    public void load() throws IOException {
        var fileChooser = new FileChooser();
        var file = fileChooser.showOpenDialog(stage);

        if (file != null) {
            try {
                var f = new FileInputStream(file);
                var in = new ObjectInputStream(f);

                var todos = (Todo[]) in.readObject();
                todoList.clear();
                todoList.addAll(todos);

                in.close();
                f.close();
            } catch (ClassNotFoundException e) {
                System.err.println(e.getMessage());
            }
        } else {
            throw new IOException("File not specified");
        }
    }
}
