package patterns.delegation;

import java.io.IOException;
import java.io.OutputStream;

public class StreamLogger implements ILogger {
    private final OutputStream stream;
    private String formatString = "[%s] %s (%s)";

    public StreamLogger(OutputStream stream) {
        this.stream = stream;
    }

    public void setFormatString(String formatString) {
        this.formatString = formatString;
    }

    @Override
    public void log(String severity, String message, Exception exception) {
        var logMessage = String.format(formatString, severity, message, exception) + '\n';

        try {
            stream.write(logMessage.getBytes());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
