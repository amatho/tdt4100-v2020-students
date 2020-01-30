package app;

import java.util.ArrayList;
import java.util.stream.Stream;

public class CalculatorController {
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
