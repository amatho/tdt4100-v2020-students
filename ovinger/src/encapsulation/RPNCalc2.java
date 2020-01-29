package encapsulation;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.EmptyStackException;
import java.util.List;
import java.util.Stack;
import java.util.stream.Stream;

import encapsulation.CreateEither.Either;

public class RPNCalc2 {
	private Stack<Either<Double, Character>> stack = new Stack<Either<Double, Character>>();
	private static final Character[] operators = {'+', '-', '*', '/',};
	
	public void addFromString(String rpn) {
		for (var item : rpn.split(" ")) {
			try {
				pushOperand(Double.parseDouble(item));
			} catch (NumberFormatException e) {
				pushOperator(item.charAt(0));
			}
		}
	}
	
	public void pushOperand(double item) {
		stack.push(CreateEither.left(item));
	}

	public void pushOperator(char item) {
		var c = (Character) item;
		if (!Stream.of(operators).anyMatch(c::equals))
			throw new IllegalArgumentException();
		
		stack.push(CreateEither.right(c));
	}

	public Either<Double, Character> pop() throws EmptyStackException {
		if (stack.empty())
			throw new EmptyStackException();
		
		return stack.pop();
	}

	public int getSize() {
		return stack.size();
	}

	public Double calculate() throws IllegalStateException {
		var item = stack.pop();
		if (item.isLeft())
			return item.unwrapLeft();
		
		var operator = item.unwrapRight();
		var next = stack.peek();
		Double b;
		if (next.isRight())
			b = calculate();
		else
			b = stack.pop().unwrapLeft();
		
		next = stack.peek();
		Double a;
		if (next.isRight())
			a = calculate();
		else
			a = stack.pop().unwrapLeft();
		
		switch (operator) {
		case '+':
			return a + b;
		case '-':
			return a - b;
		case '*':
			return a * b;
		case '/':
			return a / b;
		default:
			throw new IllegalStateException();
		}
	}

	public static void main(String[] args) {
		var calc = new RPNCalc2();
		calc.addFromString("5 2 3 + * 4 - 7 /");
		
		System.out.println(calc.calculate());
	}
}
