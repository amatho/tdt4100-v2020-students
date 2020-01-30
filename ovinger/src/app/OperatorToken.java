package app;

public class OperatorToken implements Token {
  private Operator operator;
  
  public OperatorToken(char operatorChar) {
    switch (operatorChar) {
      case '+':
        operator = Operator.ADD;
        break;
      case '-':
        operator = Operator.SUB;
        break;
      case '*':
        operator = Operator.MUL;
        break;
      case '/':
        operator = Operator.DIV;
        break;
      default:
        throw new IllegalArgumentException("Argument is not a valid operator");
    }
  }
  
  public Operator getOperator() {
    return operator;
  }
  
  @Override
  public TokenType getTokenType() {
    return TokenType.OPERATOR;
  }
}
