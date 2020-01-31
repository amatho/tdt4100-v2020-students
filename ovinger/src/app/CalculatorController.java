package app;

import javafx.fxml.FXML;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.input.KeyCode;
import javafx.scene.input.KeyEvent;

public class CalculatorController {
  @FXML
  public TextField inputField;
  @FXML
  public Label resultLabel;

  @FXML
  public void onCalculate() {
    try {
      var parser = new InputParser(inputField.getText());
      resultLabel.setText("" + parser.getValue());
    } catch (IllegalStateException | IllegalArgumentException e) {
      resultLabel.setText(e.getMessage());
    }
  }
  
  @FXML
  public void onKeyPressed(KeyEvent e) {
    if (e.getCode() == KeyCode.ENTER) {
      onCalculate();
    }
  }
}
