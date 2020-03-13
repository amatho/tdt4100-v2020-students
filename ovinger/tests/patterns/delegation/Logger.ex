<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="Logger">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the ILogger Interface."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="patterns.delegation.ILogger"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Implementations">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the StreamLogger Class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="patterns.delegation.StreamLogger"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the StreamLogger class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="patterns.delegation.StreamLogger"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the StreamLogger JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="patterns.delegation.StreamLoggerTest"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the FilteringLogger Class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="patterns.delegation.FilteringLogger"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the FilteringLogger class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="patterns.delegation.FilteringLogger"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the FilteringLogger JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="patterns.delegation.FilteringLoggerTest"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the DistributingLogger Class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="patterns.delegation.DistributingLogger"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the DistributingLogger class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="patterns.delegation.DistributingLogger"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the DistributingLogger JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="patterns.delegation.DistributingLoggerTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="patterns.delegation.*Logger" action="suspend.breakpoint"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use the debug command Step Over"/>
        <a xsi:type="workbench:CommandExecutionAnswer" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use the debug command Step Into"/>
        <a xsi:type="workbench:CommandExecutionAnswer" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use the Variables view"/>
        <a xsi:type="workbench:PartTaskAnswer" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
      </tasks>
    </parts>
  </exercise:Exercise>
  <exercise:ExerciseProposals exercise="/0">
    <proposals exercisePart="/0/@parts.0">
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.0/@q" answer="/0/@parts.0/@tasks.0/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584107187342" resourcePath="/ovinger/src/patterns/delegation/ILogger.java" sizeMeasure="5" className="patterns.delegation.ILogger">
          <edit xsi:type="exercise:StringEdit" storedString="package patterns.delegation;&#xA;&#xA;public interface ILogger {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584107291484" resourcePath="/ovinger/src/patterns/delegation/ILogger.java" sizeMeasure="9" className="patterns.delegation.ILogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="    public static final String ERROR = &quot;error&quot;;&#xA;    public static final String WARNING = &quot;warning&quot;;&#xA;    public static final String INFO = &quot;info&quot;;&#xA;    &#xA;    public void log(String severity, String message, Exception exception);" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="57" end="-4"/>
        </attempts>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584107352466" resourcePath="/ovinger/src/patterns/delegation/StreamLogger.java" sizeMeasure="5" className="patterns.delegation.StreamLogger">
          <edit xsi:type="exercise:StringEdit" storedString="package patterns.delegation;&#xA;&#xA;public class StreamLogger {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584107653051" resourcePath="/ovinger/src/patterns/delegation/StreamLogger.java" sizeMeasure="28" className="patterns.delegation.StreamLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.io.IOException;&#xA;import java.io.OutputStream;&#xA;&#xA;public class StreamLogger implements ILogger {&#xA;    private final OutputStream stream;&#xA;    private String formatString = &quot;[%s] %s (%s)&quot;;&#xA;    &#xA;    public StreamLogger(OutputStream stream) {&#xA;        this.stream = stream;&#xA;    }&#xA;    &#xA;    public void setFormatString(String formatString) {&#xA;        this.formatString = formatString;&#xA;    }&#xA;&#xA;    @Override&#xA;    public void log(String severity, String message, Exception exception) {&#xA;        var logMessage = String.format(formatString, severity, message, exception) + '\n';&#xA;        &#xA;        try {&#xA;            stream.write(logMessage.getBytes());&#xA;        } catch (IOException e) {&#xA;            e.printStackTrace();&#xA;        }&#xA;    }" edit="/1/@proposals.1/@proposals.0/@attempts.0/@edit" start="30" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584107654828" resourcePath="/ovinger/src/patterns/delegation/StreamLogger.java" sizeMeasure="28" className="patterns.delegation.StreamLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;    public StreamLogger(OutputStream stream) {&#xA;        this.stream = stream;&#xA;    }&#xA;&#xA;    public void setFormatString(String formatString) {&#xA;        this.formatString = formatString;&#xA;    }&#xA;&#xA;    @Override&#xA;    public void log(String severity, String message, Exception exception) {&#xA;        var logMessage = String.format(formatString, severity, message, exception) + '\n';&#xA;" edit="/1/@proposals.1/@proposals.0/@attempts.1/@edit" start="224" end="-150"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.1/@tasks.1/@q" answer="/0/@parts.1/@tasks.1/@a"/>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.1/@tasks.2/@q" answer="/0/@parts.1/@tasks.2/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584107685841" completion="1.0" testRunName="patterns.delegation.StreamLoggerTest" successCount="3">
          <successTests>testLog</successTests>
          <successTests>testLogException</successTests>
          <successTests>testLogWithFormat</successTests>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.1/@tasks.3/@q" answer="/0/@parts.1/@tasks.3/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584107709624" resourcePath="/ovinger/src/patterns/delegation/FilteringLogger.java" sizeMeasure="5" className="patterns.delegation.FilteringLogger">
          <edit xsi:type="exercise:StringEdit" storedString="package patterns.delegation;&#xA;&#xA;public class FilteringLogger {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584107759547" resourcePath="/ovinger/src/patterns/delegation/FilteringLogger.java" sizeMeasure="10" className="patterns.delegation.FilteringLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="implements ILogger {&#xA;    public FilteringLogger(ILogger logger, String... severities) {&#xA;    }&#xA;&#xA;    @Override&#xA;    public void log(String severity, String message, Exception exception) {&#xA;    }" edit="/1/@proposals.1/@proposals.3/@attempts.0/@edit" start="59" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584107764994" resourcePath="/ovinger/src/patterns/delegation/FilteringLogger.java" sizeMeasure="10" className="patterns.delegation.FilteringLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" ..." edit="/1/@proposals.1/@proposals.3/@attempts.1/@edit" start="129" end="-120"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584107768652" resourcePath="/ovinger/src/patterns/delegation/FilteringLogger.java" sizeMeasure="10" className="patterns.delegation.FilteringLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="... " edit="/1/@proposals.1/@proposals.3/@attempts.2/@edit" start="129" end="-120"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584107821251" resourcePath="/ovinger/src/patterns/delegation/FilteringLogger.java" sizeMeasure="15" warningCount="2" className="patterns.delegation.FilteringLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="rivate final ILogger logger;&#xA;    private final String[] severities;&#xA;    &#xA;    public FilteringLogger(ILogger logger, String... severities) {&#xA;        this.logger = logger;&#xA;        this.severities = severities;" edit="/1/@proposals.1/@proposals.3/@attempts.3/@edit" start="85" end="-107"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="5" charStart="141" charEnd="151" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584108022577" resourcePath="/ovinger/src/patterns/delegation/FilteringLogger.java" sizeMeasure="21" warningCount="1" className="patterns.delegation.FilteringLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.Arrays;&#xA;&#xA;public class FilteringLogger implements ILogger {&#xA;    private final ILogger logger;&#xA;    private final String[] severities;&#xA;    &#xA;    public FilteringLogger(ILogger logger, String... severities) {&#xA;        this.logger = logger;&#xA;        this.severities = severities;&#xA;    }&#xA;    &#xA;    public boolean isLogging(String severity) {&#xA;        return Arrays.stream(severities).anyMatch(severity::equals)" edit="/1/@proposals.1/@proposals.3/@attempts.4/@edit" start="30" end="-108"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="6" charStart="132" charEnd="138" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584108211608" resourcePath="/ovinger/src/patterns/delegation/FilteringLogger.java" sizeMeasure="30" errorCount="7" className="patterns.delegation.FilteringLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="List;&#xA;import java.util.Arrays;&#xA;&#xA;public class FilteringLogger implements ILogger {&#xA;    private final ILogger logger;&#xA;    private final ArrayList&lt;String> severities;&#xA;    &#xA;    public FilteringLogger(ILogger logger, String... severities) {&#xA;        this.logger = logger;&#xA;        this.severities.addAll(severities);&#xA;    }&#xA;    &#xA;    public boolean isLogging(String severity) {&#xA;        return Arrays.stream(severities).anyMatch(severity::equals);&#xA;    }&#xA;    &#xA;    public void setIsLogging(String severity, boolean value) {&#xA;        var stream = Arrays.stream(severities);&#xA;        &#xA;        if (value &amp;&amp; stream.noneMatch(severity::equals)) {&#xA;            severities.a&#xA;        }" edit="/1/@proposals.1/@proposals.3/@attempts.5/@edit" start="52" end="-107"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="16" charStart="443" charEnd="449" severity="2" problemCategory="50" problemType="67108979"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584108238978" resourcePath="/ovinger/src/patterns/delegation/FilteringLogger.java" sizeMeasure="33" errorCount="8" className="patterns.delegation.FilteringLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;        for (var s : severities) {&#xA;            this.severities.add(s);&#xA;        }" edit="/1/@proposals.1/@proposals.3/@attempts.6/@edit" start="326" end="-460"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="25" charStart="695" charEnd="704" severity="2" problemCategory="50" problemType="67108964"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584108264697" resourcePath="/ovinger/src/patterns/delegation/FilteringLogger.java" sizeMeasure="33" errorCount="6" className="patterns.delegation.FilteringLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" = new ArrayList&lt;>()" edit="/1/@proposals.1/@proposals.3/@attempts.7/@edit" start="214" end="-653"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="26" charStart="769" charEnd="770" severity="2" problemCategory="50" problemType="33554502"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584108382821" resourcePath="/ovinger/src/patterns/delegation/FilteringLogger.java" sizeMeasure="33" warningCount="2" className="patterns.delegation.FilteringLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;    public FilteringLogger(ILogger logger, String... severities) {&#xA;        this.logger = logger;&#xA;&#xA;        for (var s : severities) {&#xA;            this.severities.add(s);&#xA;        }&#xA;    }&#xA;&#xA;    public boolean isLogging(String severity) {&#xA;        return severities.contains(severity);&#xA;    }&#xA;&#xA;    public void setIsLogging(String severity, boolean value) {&#xA;        if (value &amp;&amp; !severities.contains(severity)) {&#xA;            severities.add(severity);&#xA;        } else {&#xA;            severities.remove(severity);" edit="/1/@proposals.1/@proposals.3/@attempts.8/@edit" start="236" end="-117"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="65" charEnd="81" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584108388762" resourcePath="/ovinger/src/patterns/delegation/FilteringLogger.java" sizeMeasure="32" warningCount="1" className="patterns.delegation.FilteringLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;" edit="/1/@proposals.1/@proposals.3/@attempts.9/@edit" start="58" end="-770"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="6" charStart="135" charEnd="141" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584108436180" resourcePath="/ovinger/src/patterns/delegation/FilteringLogger.java" sizeMeasure="35" className="patterns.delegation.FilteringLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="    if (severities.contains(severity)) {&#xA;            logger.log(severity, message, exception);&#xA;        }&#xA;    " edit="/1/@proposals.1/@proposals.3/@attempts.10/@edit" start="824" end="-5"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.1/@tasks.4/@q" answer="/0/@parts.1/@tasks.4/@a"/>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.1/@tasks.5/@q" answer="/0/@parts.1/@tasks.5/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584108445131" completion="1.0" testRunName="patterns.delegation.FilteringLoggerTest" successCount="5">
          <successTests>testInfoToErrorLogger</successTests>
          <successTests>testFilteringLoggerErrorAndInfo</successTests>
          <successTests>testFilteringLoggerWarningSetIsLoggingError</successTests>
          <successTests>testFilteringLoggerNoSeverities</successTests>
          <successTests>testErrorLogging</successTests>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.1/@tasks.6/@q" answer="/0/@parts.1/@tasks.6/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584108459497" resourcePath="/ovinger/src/patterns/delegation/DistributingLogger.java" sizeMeasure="5" className="patterns.delegation.DistributingLogger">
          <edit xsi:type="exercise:StringEdit" storedString="package patterns.delegation;&#xA;&#xA;public class DistributingLogger {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584108589512" resourcePath="/ovinger/src/patterns/delegation/DistributingLogger.java" sizeMeasure="5" errorCount="1" className="patterns.delegation.DistributingLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="    ∑" edit="/1/@proposals.1/@proposals.6/@attempts.0/@edit" start="64" end="-4"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="68" charEnd="69" severity="2" problemCategory="20" problemType="1610612968"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584108839357" resourcePath="/ovinger/src/patterns/delegation/DistributingLogger.java" sizeMeasure="35" className="patterns.delegation.DistributingLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="implements ILogger {&#xA;    private ILogger errorLogger;&#xA;    private ILogger warningLogger;&#xA;    private ILogger infoLogger;&#xA;    &#xA;    public DistributingLogger(ILogger errorLogger, ILogger warningLogger, ILogger infoLogger) {&#xA;        super();&#xA;        this.errorLogger = errorLogger;&#xA;        this.warningLogger = warningLogger;&#xA;        this.infoLogger = infoLogger;&#xA;    }&#xA;    &#xA;    public void setLogger(String severity, ILogger logger) {&#xA;        if (severity.equals(ILogger.ERROR)) {&#xA;            errorLogger = logger;&#xA;        } else if (severity.equals(ILogger.WARNING)) {&#xA;            warningLogger = logger;&#xA;        } else if (severity.equals(ILogger.INFO)) {&#xA;            infoLogger = logger;&#xA;        }&#xA;    }&#xA;    &#xA;    @Override&#xA;    public void log(String severity, String message, Exception exception) {&#xA;        if (severity.equals(ILogger.ERROR)) {&#xA;            errorLogger.log(severity, message, exception);&#xA;        } else if (severity.equals(ILogger.WARNING)) {&#xA;            warningLogger.log(severity, message, exception);&#xA;        } else if (severity.equals(ILogger.INFO)) {&#xA;            infoLogger.log(severity, message, exception);&#xA;        }&#xA;    }" edit="/1/@proposals.1/@proposals.6/@attempts.1/@edit" start="62" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584108843019" resourcePath="/ovinger/src/patterns/delegation/DistributingLogger.java" sizeMeasure="35" className="patterns.delegation.DistributingLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;    public DistributingLogger(ILogger errorLogger, ILogger warningLogger, ILogger infoLogger) {&#xA;        super();&#xA;        this.errorLogger = errorLogger;&#xA;        this.warningLogger = warningLogger;&#xA;        this.infoLogger = infoLogger;&#xA;    }&#xA;&#xA;    public void setLogger(String severity, ILogger logger) {&#xA;        if (severity.equals(ILogger.ERROR)) {&#xA;            errorLogger = logger;&#xA;        } else if (severity.equals(ILogger.WARNING)) {&#xA;            warningLogger = logger;&#xA;        } else if (severity.equals(ILogger.INFO)) {&#xA;            infoLogger = logger;&#xA;        }&#xA;    }&#xA;" edit="/1/@proposals.1/@proposals.6/@attempts.2/@edit" start="183" end="-441"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.1/@tasks.7/@q" answer="/0/@parts.1/@tasks.7/@a"/>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.1/@tasks.8/@q" answer="/0/@parts.1/@tasks.8/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584108855749" completion="1.0" testRunName="patterns.delegation.DistributingLoggerTest" successCount="4">
          <successTests>testLogToInfo</successTests>
          <successTests>testLogToWarn</successTests>
          <successTests>testChangeInfoLogger</successTests>
          <successTests>testLogToError</successTests>
        </attempts>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.2">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.2/@tasks.0/@q" answer="/0/@parts.2/@tasks.0/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.2/@tasks.1/@q" answer="/0/@parts.2/@tasks.1/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.2/@tasks.2/@q" answer="/0/@parts.2/@tasks.2/@a"/>
      <proposals xsi:type="workbench:PartTaskProposal" question="/0/@parts.2/@tasks.3/@q" answer="/0/@parts.2/@tasks.3/@a"/>
    </proposals>
  </exercise:ExerciseProposals>
</xmi:XMI>
