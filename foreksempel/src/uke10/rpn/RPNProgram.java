package uke10.rpn;
import java.util.ArrayList;
import java.util.Scanner;

/*
 * @startuml
 * class RPNProgram {
 * 	Stack<Double> operandStack
 * 	void push(double value)
 * 	double pop(double defaultValue)
 * 	void init()
 * 	void run()
 * void performOperation()
 * }
 * ConsoleProgram <|-- ConsoleRPN
 * @enduml
 */

public class RPNProgram {

	RPN rpn;
	
	public void init() {
		rpn = new RPN();
	}

	public void run() {
		Scanner scanner = new Scanner(System.in);
		while (true) {
			System.out.println("RPN: " + rpn);
			System.out.println("Enter double value or operation: ");
			if (scanner.hasNextDouble()) {
				double argument = scanner.nextDouble();
				rpn.push(argument);
			} else {
				String token = scanner.next();
				if (token.length() == 1) {
					rpn.performOperation(token.charAt(0));
				} else if ("exit".equals(token)) {
					break;
				} else {
					System.err.println(token + " is illegal as input!");
				}
			}
		}
		scanner.close();
	}
	
	public static void main(String[] args) {
		RPNProgram program = new RPNProgram();
		program.init();
		program.run();
	}
} 