package app;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Stage;

public class TodoApp extends Application {

  @Override
  public void start(final Stage primaryStage) throws Exception {
    primaryStage.setTitle("My Application");
    primaryStage.setScene(new Scene(FXMLLoader.load(TodoApp.class.getResource("TodoApp.fxml"))));
    primaryStage.show();
  }

  public static void main(final String[] args) {
    TodoApp.launch(args);
  }
}
