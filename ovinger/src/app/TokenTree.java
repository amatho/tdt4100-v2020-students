package app;

import java.util.List;
import java.util.ListIterator;

public class TokenTree {
  ListIterator<Token> iterator;
  BinaryNode<Token> root;
  
  public TokenTree(List<Token> tokens) {
    iterator = tokens.listIterator(tokens.size());
    var rootToken = iterator.previous();
    
    if (rootToken.getTokenType() == TokenType.OPERATOR) {
      root = new BinaryNode<>(rootToken);
      
      createTree(iterator, root);
    } else {
      throw new IllegalArgumentException("Root token must be an operator");
    }
  }
  
  public double evaluate() {
    return evaluateRecursive(root);
  }
  
  private static void createTree(ListIterator<Token> iter, BinaryNode<Token> parent) {
    if (!iter.hasPrevious()) {
      throw new IllegalArgumentException("An operator requires two operands");
    }
    
    var right = iter.previous();
    var rightNode = new BinaryNode<>(right);
    if (right.getTokenType() == TokenType.OPERATOR) {
      createTree(iter, rightNode);
    }
    
    if (!iter.hasPrevious()) {
      throw new IllegalArgumentException("An operator requires two operands");
    }
    
    var left = iter.previous();
    var leftNode = new BinaryNode<>(left);
    if (left.getTokenType() == TokenType.OPERATOR) {
      createTree(iter, leftNode);
    }
    
    parent.addChildren(leftNode, rightNode);
  }
  
  private double evaluateRecursive(BinaryNode<Token> parent) {
    var parentToken = parent.getValue();
    
    if (parentToken.getTokenType() != TokenType.OPERATOR) {
      throw new IllegalStateException();
    } else if (!parent.hasChildren()) {
      var value = parent.getValue();
      
      if (value.getTokenType() != TokenType.NUMBER) {
        throw new IllegalStateException();
      }
      
      return ((NumberToken) value).getNumber();
    }
    
    var left = parent.getLeftNode();
    var right = parent.getRightNode();
    double leftValue;
    double rightValue;
    
    if (left.getValue().getTokenType() == TokenType.OPERATOR) {
      leftValue = evaluateRecursive(left);
    } else {
      leftValue = ((NumberToken) left.getValue()).getNumber();
    }
    
    if (right.getValue().getTokenType() == TokenType.OPERATOR) {
      rightValue = evaluateRecursive(right);
    } else {
      rightValue = ((NumberToken) right.getValue()).getNumber();
    }
    
    var parentOperator = ((OperatorToken) parentToken).getOperator();
    
    switch (parentOperator) {
      case ADD:
        return leftValue + rightValue;
      case SUB:
        return leftValue - rightValue;
      case MUL:
        return leftValue * rightValue;
      case DIV:
        return leftValue / rightValue;
      default:
        throw new IllegalStateException("Encountered an unknown operator: " + parentOperator.toString());
    }
  }
}
