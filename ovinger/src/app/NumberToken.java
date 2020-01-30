package app;

public class NumberToken implements Token {
  private double number;
  
  public NumberToken(String numberString) {
    number = Double.parseDouble(numberString);
  }
  
  public double getNumber() {
    return number;
  }
  
  @Override
  public TokenType getTokenType() {
    return TokenType.NUMBER;
  }
}
