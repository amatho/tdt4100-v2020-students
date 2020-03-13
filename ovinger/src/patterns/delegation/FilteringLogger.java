package patterns.delegation;

import java.util.ArrayList;

public class FilteringLogger implements ILogger {
    private final ILogger logger;
    private final ArrayList<String> severities = new ArrayList<>();

    public FilteringLogger(ILogger logger, String... severities) {
        this.logger = logger;

        for (var s : severities) {
            this.severities.add(s);
        }
    }

    public boolean isLogging(String severity) {
        return severities.contains(severity);
    }

    public void setIsLogging(String severity, boolean value) {
        if (value && !severities.contains(severity)) {
            severities.add(severity);
        } else {
            severities.remove(severity);
        }
    }

    @Override
    public void log(String severity, String message, Exception exception) {
        if (severities.contains(severity)) {
            logger.log(severity, message, exception);
        }
    }
}
