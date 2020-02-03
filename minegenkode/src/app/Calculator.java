package app;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Stage;

public class Calculator extends Application {

  @Override
  public void start(final Stage primaryStage) throws Exception {
    primaryStage.setTitle("My Application");
    primaryStage.setScene(new Scene(FXMLLoader.load(Calculator.class.getResource("Calculator.fxml"))));
    primaryStage.show();
  }

  public static void main(final String[] args) {
    Calculator.launch(args);
  }
}
