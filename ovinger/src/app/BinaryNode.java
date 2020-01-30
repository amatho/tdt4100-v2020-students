package app;

public class BinaryNode<T> {
  private T value;
  private BinaryNode<T> left;
  private BinaryNode<T> right;
  
  public BinaryNode(T value) {
    this.value = value;
    this.left = null;
    this.right = null;
  }
  
  public void addChildren(BinaryNode<T> left, BinaryNode<T> right) {
    this.left = left;
    this.right = right;
  }
  
  public T getValue() {
    return value;
  }
  
  public BinaryNode<T> getLeftNode() {
    return left;
  }
  
  public BinaryNode<T> getRightNode() {
    return right;
  }
  
  public boolean hasChildren() {
    return left != null && right != null;
  }
}
