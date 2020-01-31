package app;

import java.util.ArrayList;

public class InputParser {
  private static final char[] NUMBER_CHARS = "0123456789.".toCharArray();

  private final String inputString;
  private int index = 0;

  public InputParser(String inputString) {
    if (inputString.isBlank()) {
      throw new IllegalArgumentException("Input is blank");
    } else {
      this.inputString = inputString.replaceAll("\\s+", "");
    }
  }

  public double getValue() {
    var value = parseExpression();

    if (hasNext()) {
      throw new IllegalStateException();
    }

    return value;
  }

  private double parseExpression() {
    var values = new ArrayList<Double>();
    values.add(parseMultiplication());

    while (true) {
      var c = peek();
      if (c == '+') {
        index++;
        values.add(parseMultiplication());
      } else if (c == '-') {
        index++;
        values.add(-1 * parseMultiplication());
      } else {
        break;
      }
    }

    return values.stream().reduce(0d, Double::sum);
  }

  private double parseMultiplication() {
    var values = new ArrayList<Double>();
    values.add(parseParenthesis());

    while (true) {
      var c = peek();
      if (c == '*') {
        index++;
        values.add(parseParenthesis());
      } else if (c == '/') {
        index++;
        var denominator = parseParenthesis();
        if (denominator == 0) {
          throw new IllegalStateException();
        }
        values.add(1d / denominator);
      } else {
        break;
      }
    }

    if (values.isEmpty()) {
      return 0;
    } else {
      return values.stream().reduce(1d, (acc, val) -> acc * val);
    }
  }

  private double parseParenthesis() {
    var c = peek();

    if (c == '(') {
      index++;
      var value = parseExpression();
      if (peek() != ')') {
        throw new IllegalStateException();
      }
      index++;
      return value;
    } else {
      return parseValue();
    }
  }

  private double parseValue() {
    var c = peek();

    if (c == '-') {
      index++;
      return -1 * parseParenthesis();
    } else if (isNumberChar(c)) {
      return parseNumber();
    } else {
      throw new IllegalStateException(String.format("Unexpected character '%s'", c));
    }
  }

  private double parseNumber() {
    var stringValue = "";
    var decimalFound = false;

    while (hasNext()) {
      var c = peek();

      if (c == '.') {
        if (decimalFound) {
          throw new IllegalStateException("Unexpected extra period found");
        }

        decimalFound = true;
        stringValue += ".";
      } else if (isNumberChar(c)) {
        stringValue += c;
      } else {
        break;
      }

      index++;
    }

    if (stringValue.isEmpty()) {
      throw new IllegalStateException("Unexpected character found while parsing number");
    }

    return Double.parseDouble(stringValue);
  }

  private char peek() {
    if (index >= inputString.length()) {
      return '\0';
    }

    return inputString.charAt(index);
  }

  private boolean hasNext() {
    return index < inputString.length();
  }

  private boolean isNumberChar(char c) {
    for (var validChar : NUMBER_CHARS) {
      if (c == validChar) {
        return true;
      }
    }

    return false;
  }

  public static void main(String[] args) {
    var input = "(5 * (2 + 3) - 4) / 7";
    var parser = new InputParser(input);
    System.out.println(parser.getValue());
  }
}
