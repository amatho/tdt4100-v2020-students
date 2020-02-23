package interfaces;

import java.util.HashMap;
import java.util.Stack;
import java.util.function.BinaryOperator;
import java.util.function.Supplier;
import java.util.function.UnaryOperator;

public class RPNCalc {
    private Stack<Double> stack = new Stack<Double>();
    private HashMap<Character, AnyOperator<Double>> binaryOperators = new HashMap<>();

    public void push(double item) {
        stack.push(item);
    }

    public double pop() {
        if (stack.empty()) {
            return Double.NaN;
        }

        return stack.pop();
    }

    public double peek(int index) {
        index = stack.size() - index - 1;
        if (index < 0 || index >= stack.size()) {
            return Double.NaN;
        }

        return stack.elementAt(index);
    }

    public int getSize() {
        return stack.size();
    }

    public boolean addOperator(char operatorChar, BinaryOperator<Double> operator) {
        var anyOp = new AnyOperator<>(operator);
        return addOperator(operatorChar, anyOp);
    }

    public boolean addOperator(char operatorChar, UnaryOperator<Double> operator) {
        var anyOp = new AnyOperator<>(operator);
        return addOperator(operatorChar, anyOp);
    }

    public boolean addOperator(char operatorChar, Supplier<Double> operator) {
        var anyOp = new AnyOperator<>(operator);
        return addOperator(operatorChar, anyOp);
    }

    private boolean addOperator(char operatorChar, AnyOperator<Double> operator) {
        var existing = binaryOperators.putIfAbsent(operatorChar, operator);

        if (existing == null) {
            return true;
        }

        return false;
    }

    public void removeOperator(char operatorChar) {
        binaryOperators.remove(operatorChar);
    }

    public void performOperation(char operatorChar) {
        var operator = binaryOperators.get(operatorChar);
        if (operator == null) {
            throw new UnsupportedOperationException("Invalid operator '" + operatorChar + "'");
        }

        operator.apply(stack);
    }

    public static void main(String[] args) {
        var calc = new RPNCalc();

        calc.addOperator('+', (a, b) -> a + b);
        calc.addOperator('-', (a, b) -> a - b);
        calc.addOperator('*', (a, b) -> a * b);
        calc.addOperator('/', (a, b) -> a / b);
        calc.addOperator('p', () -> Math.PI);

        calc.performOperation('p');
        calc.push(3);
        calc.push(3);

        calc.performOperation('*');
        calc.performOperation('*');

        System.out.println(calc.pop());
    }
}
