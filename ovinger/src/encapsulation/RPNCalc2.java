package encapsulation;

import java.util.Arrays;
import java.util.Stack;
import java.util.stream.Stream;

public class RPNCalc2 {
	enum Operator {
		Add, Sub, Mul, Div;
	}

	enum TokenType {
		Number, Operator;
	}

	private interface Token {
		public TokenType getTokenType();
	}

	private class NumberToken implements Token {
		private double value;

		public NumberToken(double value) {
			this.value = value;
		}

		public double getValue() {
			return value;
		}

		public TokenType getTokenType() {
			return TokenType.Number;
		}
	}

	private class OperatorToken implements Token {
		private Operator operator;
		private Token leftToken;
		private Token rightToken;

		public OperatorToken(Operator operator, Token left, Token right) {
			this.operator = operator;
			this.leftToken = left;
			this.rightToken = right;
		}

		public double evaluate() {
			double left;
			double right;

			if (leftToken.getTokenType() == TokenType.Operator) {
				left = ((OperatorToken) leftToken).evaluate();
			} else if (leftToken.getTokenType() == TokenType.Number) {
				left = ((NumberToken) leftToken).getValue();
			} else {
				throw new UnsupportedOperationException("An unsupported token was encountered");
			}

			if (rightToken.getTokenType() == TokenType.Operator) {
				right = ((OperatorToken) rightToken).evaluate();
			} else if (rightToken.getTokenType() == TokenType.Number) {
				right = ((NumberToken) rightToken).getValue();
			} else {
				throw new UnsupportedOperationException("An unsupported token was encountered");
			}

			switch (operator) {
			case Add:
				return left + right;
			case Sub:
				return left - right;
			case Mul:
				return left * right;
			case Div:
				return left / right;
			default:
				throw new UnsupportedOperationException(
						String.format("No implementation for operator '%s'", operator.toString()));
			}
		}

		public TokenType getTokenType() {
			return TokenType.Operator;
		}
	}

	private static final String[] operatorStrings = {"+", "-", "*", "/"};
	private OperatorToken rootToken;

	public RPNCalc2(String expr) {
		var tokens = new Stack<String>();
		tokens.addAll(Arrays.asList(expr.split(" ")));
		
		rootToken = (OperatorToken) parseTokens(tokens);
	}

	public double calculate() throws IllegalStateException {
		return rootToken.evaluate();
	}
	
	private Token parseTokens(Stack<String> tokens) {
		var toParse = tokens.pop();
		
		if (Stream.of(operatorStrings).anyMatch(toParse::equals)) {
			var right = parseTokens(tokens);
			var left = parseTokens(tokens);
			
			switch (toParse) {
			case "+":
				return new OperatorToken(Operator.Add, left, right);
			case "-":
				return new OperatorToken(Operator.Sub, left, right);
			case "*":
				return new OperatorToken(Operator.Mul, left, right);
			case "/":
				return new OperatorToken(Operator.Div, left, right);
			default:
				throw new UnsupportedOperationException();
			}
		} else {
			return new NumberToken(Double.parseDouble(toParse));
		}
	}

	public static void main(String[] args) {
		var calc = new RPNCalc2("5 2 3 + * 4 - 7 /");

		System.out.println(calc.calculate());
	}
}
