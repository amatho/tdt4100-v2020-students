package encapsulation;

import java.util.Arrays;
import java.util.List;
import java.util.Stack;

public class RPNCalc2 {
	private Stack<Double> stack = new Stack<Double>();
	private static final List<Character> requiringOperands = Arrays.asList(new Character[]{'+', '-', '*', '/', '~'});
	
	public void push(double item) {
		stack.push(item);
	}
	
	public double pop() {
		if (stack.empty())
			return Double.NaN;
		
		return stack.pop();
	}
	
	public double peek(int index) {
		index = stack.size() - index - 1;
		if (index < 0 || index >= stack.size())
			return Double.NaN;
		
		return stack.elementAt(index);
	}
	
	public int getSize() {
		return stack.size();
	}
	
	public void performOperation(char operator) throws IllegalArgumentException {
		if (requiringOperands.contains(operator)) {
			if (stack.size() < 2)
				throw new IllegalArgumentException("Operator '" + operator + "' requires two operands");
			
			var b = stack.pop();
			var a = stack.pop();
			
			if (operator == '+')
				stack.push(a + b);
			else if (operator == '-')
				stack.push(a - b);
			else if (operator == '*')
				stack.push(a * b);
			else if (operator == '/')
				stack.push(a / b);
			else if (operator == '~') {
				stack.push(b);
				stack.push(a);
			} else
				throw new IllegalArgumentException("Invalid operator '" + operator + "'");
			
		} else {
			throw new IllegalArgumentException("Operator '" + operator + "' not recognized");
		}
	}
	
	public static void main(String[] args) {
		var calc = new RPNCalc2();
		calc.push(3);
		calc.push(8);
		calc.push(2);
		calc.performOperation('-');
		calc.performOperation('~');
		calc.performOperation('/');
		System.out.println(calc.pop());
	}
}
