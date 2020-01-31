package app;

import java.util.ArrayList;
import java.util.stream.Stream;
import javafx.fxml.FXML;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;

public class CalculatorController {
  private static final String[] OPERATOR_STRINGS = {"+", "-", "*", "/"};

  @FXML
  public TextField inputField;
  @FXML
  public Label resultLabel;

  @FXML
  public void onCalculate() {
    var tokens = new ArrayList<Token>();

    for (String s : inputField.getText().split(" ")) {
      if (Stream.of(OPERATOR_STRINGS).anyMatch(s::equals)) {
        tokens.add(new OperatorToken(s.charAt(0)));
      } else {
        tokens.add(new NumberToken(s));
      }
    }

    var tree = new TokenTree(tokens);
    resultLabel.setText("" + tree.evaluate());
  }

  public static void main(String[] args) {
    var input = "5 2 3 + * 4 - 7 /";
    var tokens = new ArrayList<Token>();
    String[] operators = {"+", "-", "*", "/"};

    for (String s : input.split(" ")) {
      if (Stream.of(operators).anyMatch(s::equals)) {
        tokens.add(new OperatorToken(s.charAt(0)));
      } else {
        tokens.add(new NumberToken(s));
      }
    }

    var tree = new TokenTree(tokens);
    System.out.println(tree.evaluate());
  }
}
