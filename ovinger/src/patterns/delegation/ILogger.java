package patterns.delegation;

public interface ILogger {
    public static final String ERROR = "error";
    public static final String WARNING = "warning";
    public static final String INFO = "info";
    
    public void log(String severity, String message, Exception exception);
}
