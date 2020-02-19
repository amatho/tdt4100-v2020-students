package interfaces;

import java.util.Stack;
import java.util.function.BinaryOperator;
import java.util.function.Supplier;
import java.util.function.UnaryOperator;

public class AnyOperator<T> {
    private final Object operator;
    private final int params;

    public AnyOperator(BinaryOperator<T> operator) {
	this.operator = operator;
	params = 2;
    }

    public AnyOperator(UnaryOperator<T> operator) {
	this.operator = operator;
	params = 1;
    }

    public AnyOperator(Supplier<T> operator) {
	this.operator = operator;
	params = 0;
    }

    @SuppressWarnings("unchecked")
    public void apply(Stack<T> stack) {
	switch (params) {
	case 2:
	    var b = stack.pop();
	    var a = stack.pop();
	    var result = ((BinaryOperator<T>) operator).apply(a, b);
	    stack.push(result);
	    break;
	case 1:
	    var c = stack.pop();
	    var result2 = ((UnaryOperator<T>) operator).apply(c);
	    stack.push(result2);
	    break;
	case 0:
	    stack.push(((Supplier<T>) operator).get());
	    break;
	default:
	    throw new IllegalStateException("Unexpected amount of parameters");
	}
    }
}
