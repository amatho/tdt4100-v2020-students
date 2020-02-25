package app;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Stage;

public class TodoApp extends Application {

    @Override
    public void start(final Stage primaryStage) throws Exception {
        var loader = new FXMLLoader(TodoApp.class.getResource("TodoApp.fxml"));
        var scene = new Scene(loader.load());
        var controller = (TodoController) loader.getController();
        controller.setup(primaryStage, scene);
    }

    public static void main(final String[] args) {
        TodoApp.launch(args);
    }
}
