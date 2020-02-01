package app;

public class ParseException extends Exception {
  private static final long serialVersionUID = 2680610899866670848L;
  
  public ParseException(int index, String message) {
    super(String.format("Parse error at position: %d\n%s", index, message));
  }
}
