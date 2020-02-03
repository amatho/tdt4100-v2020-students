package app;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.TextArea;
import javafx.scene.control.TextField;
import javafx.scene.input.KeyCode;
import javafx.scene.input.KeyEvent;

public class CalculatorController {
  @FXML
  public TextField inputField;
  @FXML
  public TextArea resultTextArea;

  @FXML
  public void onCalculate() {
    try {
      var parser = new InputParser(inputField.getText());
      resultTextArea.setText("" + parser.getValue());
    } catch (IllegalArgumentException | ParseException e) {
      resultTextArea.setText(e.getMessage());
    }
  }
  
  @FXML
  public void onKeyPressed(KeyEvent event) {
    if (event.getCode() == KeyCode.ENTER) {
      onCalculate();
    }
  }
  
  @FXML
  public void onInputButtonPressed(ActionEvent event) {
    var button = (Button) event.getTarget();
    inputField.appendText(button.getText());
  }
  
  @FXML
  public void onDeletePressed() { 
    var len = inputField.getLength();
    
    if (len <= 0) {
      return;
    }
    
    inputField.deleteText(len - 1, len);
  }
}
