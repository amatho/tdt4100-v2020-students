package app;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

import javafx.stage.FileChooser;
import javafx.stage.Stage;

public class TodoFileStorage implements TodoStorage {
    private final Stage stage;

    public TodoFileStorage(Stage stage) {
        this.stage = stage;
    }

    public void save(Todo[] todos) throws IOException {
        var fileChooser = new FileChooser();
        var file = fileChooser.showSaveDialog(stage);

        if (file != null) {
            var f = new FileOutputStream(file);
            var out = new ObjectOutputStream(f);

            out.writeObject(todos);

            out.close();
            f.close();
        } else {
            throw new IOException("File not specified");
        }
    }

    public Todo[] load() throws IOException {
        var fileChooser = new FileChooser();
        var file = fileChooser.showOpenDialog(stage);

        Todo[] todos = null;
        if (file != null) {
            try {
                var f = new FileInputStream(file);
                var in = new ObjectInputStream(f);

                todos = (Todo[]) in.readObject();

                in.close();
                f.close();
            } catch (ClassNotFoundException e) {
                System.err.println(e.getMessage());
            }
        } else {
            throw new IOException("File not specified");
        }

        return todos;
    }
}
