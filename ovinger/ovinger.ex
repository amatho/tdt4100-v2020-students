<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="Java classes">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Edit source code for Java classes."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" resourcePath="/ovinger/src/*" className="*"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Launch Java classes."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="*"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run JUnit tests."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="*"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Handle debug events."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="*" action="*.*"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use debug commands"/>
        <a xsi:type="workbench:CommandExecutionAnswer" elementId="*" action="executeSuccess"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use editors and views"/>
        <a xsi:type="workbench:PartTaskAnswer" elementId="*" action="*"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584107352466" resourcePath="/ovinger/src/patterns/delegation/StreamLogger.java" sizeMeasure="5" className="patterns.delegation.StreamLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="class StreamLogger {&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="37" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584107653051" resourcePath="/ovinger/src/patterns/delegation/StreamLogger.java" sizeMeasure="28" className="patterns.delegation.StreamLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.io.IOException;&#xA;import java.io.OutputStream;&#xA;&#xA;public class StreamLogger implements ILogger {&#xA;    private final OutputStream stream;&#xA;    private String formatString = &quot;[%s] %s (%s)&quot;;&#xA;    &#xA;    public StreamLogger(OutputStream stream) {&#xA;        this.stream = stream;&#xA;    }&#xA;    &#xA;    public void setFormatString(String formatString) {&#xA;        this.formatString = formatString;&#xA;    }&#xA;&#xA;    @Override&#xA;    public void log(String severity, String message, Exception exception) {&#xA;        var logMessage = String.format(formatString, severity, message, exception) + '\n';&#xA;        &#xA;        try {&#xA;            stream.write(logMessage.getBytes());&#xA;        } catch (IOException e) {&#xA;            e.printStackTrace();&#xA;        }&#xA;    }" edit="/1/@proposals.0/@proposals.0/@attempts.2/@edit" start="30" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584107654828" resourcePath="/ovinger/src/patterns/delegation/StreamLogger.java" sizeMeasure="28" className="patterns.delegation.StreamLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;    public StreamLogger(OutputStream stream) {&#xA;        this.stream = stream;&#xA;    }&#xA;&#xA;    public void setFormatString(String formatString) {&#xA;        this.formatString = formatString;&#xA;    }&#xA;&#xA;    @Override&#xA;    public void log(String severity, String message, Exception exception) {&#xA;        var logMessage = String.format(formatString, severity, message, exception) + '\n';&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.3/@edit" start="224" end="-150"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584107709624" resourcePath="/ovinger/src/patterns/delegation/FilteringLogger.java" sizeMeasure="5" className="patterns.delegation.FilteringLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="public class FilteringLogger {&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.4/@edit" start="30" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584107759547" resourcePath="/ovinger/src/patterns/delegation/FilteringLogger.java" sizeMeasure="10" className="patterns.delegation.FilteringLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="implements ILogger {&#xA;    public FilteringLogger(ILogger logger, String... severities) {&#xA;    }&#xA;&#xA;    @Override&#xA;    public void log(String severity, String message, Exception exception) {&#xA;    }" edit="/1/@proposals.0/@proposals.0/@attempts.5/@edit" start="59" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584107764994" resourcePath="/ovinger/src/patterns/delegation/FilteringLogger.java" sizeMeasure="10" className="patterns.delegation.FilteringLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" ..." edit="/1/@proposals.0/@proposals.0/@attempts.6/@edit" start="129" end="-120"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584107768652" resourcePath="/ovinger/src/patterns/delegation/FilteringLogger.java" sizeMeasure="10" className="patterns.delegation.FilteringLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="... " edit="/1/@proposals.0/@proposals.0/@attempts.7/@edit" start="129" end="-120"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584107821251" resourcePath="/ovinger/src/patterns/delegation/FilteringLogger.java" sizeMeasure="15" warningCount="2" className="patterns.delegation.FilteringLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="rivate final ILogger logger;&#xA;    private final String[] severities;&#xA;    &#xA;    public FilteringLogger(ILogger logger, String... severities) {&#xA;        this.logger = logger;&#xA;        this.severities = severities;" edit="/1/@proposals.0/@proposals.0/@attempts.8/@edit" start="85" end="-107"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="5" charStart="141" charEnd="151" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584108022577" resourcePath="/ovinger/src/patterns/delegation/FilteringLogger.java" sizeMeasure="21" warningCount="1" className="patterns.delegation.FilteringLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.Arrays;&#xA;&#xA;public class FilteringLogger implements ILogger {&#xA;    private final ILogger logger;&#xA;    private final String[] severities;&#xA;    &#xA;    public FilteringLogger(ILogger logger, String... severities) {&#xA;        this.logger = logger;&#xA;        this.severities = severities;&#xA;    }&#xA;    &#xA;    public boolean isLogging(String severity) {&#xA;        return Arrays.stream(severities).anyMatch(severity::equals)" edit="/1/@proposals.0/@proposals.0/@attempts.9/@edit" start="30" end="-108"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="6" charStart="132" charEnd="138" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584108211608" resourcePath="/ovinger/src/patterns/delegation/FilteringLogger.java" sizeMeasure="30" errorCount="7" className="patterns.delegation.FilteringLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="List;&#xA;import java.util.Arrays;&#xA;&#xA;public class FilteringLogger implements ILogger {&#xA;    private final ILogger logger;&#xA;    private final ArrayList&lt;String> severities;&#xA;    &#xA;    public FilteringLogger(ILogger logger, String... severities) {&#xA;        this.logger = logger;&#xA;        this.severities.addAll(severities);&#xA;    }&#xA;    &#xA;    public boolean isLogging(String severity) {&#xA;        return Arrays.stream(severities).anyMatch(severity::equals);&#xA;    }&#xA;    &#xA;    public void setIsLogging(String severity, boolean value) {&#xA;        var stream = Arrays.stream(severities);&#xA;        &#xA;        if (value &amp;&amp; stream.noneMatch(severity::equals)) {&#xA;            severities.a&#xA;        }" edit="/1/@proposals.0/@proposals.0/@attempts.10/@edit" start="52" end="-107"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="16" charStart="443" charEnd="449" severity="2" problemCategory="50" problemType="67108979"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584108238978" resourcePath="/ovinger/src/patterns/delegation/FilteringLogger.java" sizeMeasure="33" errorCount="8" className="patterns.delegation.FilteringLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;        for (var s : severities) {&#xA;            this.severities.add(s);&#xA;        }" edit="/1/@proposals.0/@proposals.0/@attempts.11/@edit" start="326" end="-460"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="25" charStart="695" charEnd="704" severity="2" problemCategory="50" problemType="67108964"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584108264697" resourcePath="/ovinger/src/patterns/delegation/FilteringLogger.java" sizeMeasure="33" errorCount="6" className="patterns.delegation.FilteringLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" = new ArrayList&lt;>()" edit="/1/@proposals.0/@proposals.0/@attempts.12/@edit" start="214" end="-653"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="26" charStart="769" charEnd="770" severity="2" problemCategory="50" problemType="33554502"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584108382821" resourcePath="/ovinger/src/patterns/delegation/FilteringLogger.java" sizeMeasure="33" warningCount="2" className="patterns.delegation.FilteringLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;    public FilteringLogger(ILogger logger, String... severities) {&#xA;        this.logger = logger;&#xA;&#xA;        for (var s : severities) {&#xA;            this.severities.add(s);&#xA;        }&#xA;    }&#xA;&#xA;    public boolean isLogging(String severity) {&#xA;        return severities.contains(severity);&#xA;    }&#xA;&#xA;    public void setIsLogging(String severity, boolean value) {&#xA;        if (value &amp;&amp; !severities.contains(severity)) {&#xA;            severities.add(severity);&#xA;        } else {&#xA;            severities.remove(severity);" edit="/1/@proposals.0/@proposals.0/@attempts.13/@edit" start="236" end="-117"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="65" charEnd="81" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584108388762" resourcePath="/ovinger/src/patterns/delegation/FilteringLogger.java" sizeMeasure="32" warningCount="1" className="patterns.delegation.FilteringLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.14/@edit" start="58" end="-770"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="6" charStart="135" charEnd="141" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584108436180" resourcePath="/ovinger/src/patterns/delegation/FilteringLogger.java" sizeMeasure="35" className="patterns.delegation.FilteringLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="    if (severities.contains(severity)) {&#xA;            logger.log(severity, message, exception);&#xA;        }&#xA;    " edit="/1/@proposals.0/@proposals.0/@attempts.15/@edit" start="824" end="-5"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584108459497" resourcePath="/ovinger/src/patterns/delegation/DistributingLogger.java" sizeMeasure="5" className="patterns.delegation.DistributingLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="public class DistributingLogger {&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.16/@edit" start="30" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584108589512" resourcePath="/ovinger/src/patterns/delegation/DistributingLogger.java" sizeMeasure="5" errorCount="1" className="patterns.delegation.DistributingLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="    ∑" edit="/1/@proposals.0/@proposals.0/@attempts.17/@edit" start="64" end="-4"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="4" charStart="68" charEnd="69" severity="2" problemCategory="20" problemType="1610612968"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584108839357" resourcePath="/ovinger/src/patterns/delegation/DistributingLogger.java" sizeMeasure="35" className="patterns.delegation.DistributingLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="implements ILogger {&#xA;    private ILogger errorLogger;&#xA;    private ILogger warningLogger;&#xA;    private ILogger infoLogger;&#xA;    &#xA;    public DistributingLogger(ILogger errorLogger, ILogger warningLogger, ILogger infoLogger) {&#xA;        super();&#xA;        this.errorLogger = errorLogger;&#xA;        this.warningLogger = warningLogger;&#xA;        this.infoLogger = infoLogger;&#xA;    }&#xA;    &#xA;    public void setLogger(String severity, ILogger logger) {&#xA;        if (severity.equals(ILogger.ERROR)) {&#xA;            errorLogger = logger;&#xA;        } else if (severity.equals(ILogger.WARNING)) {&#xA;            warningLogger = logger;&#xA;        } else if (severity.equals(ILogger.INFO)) {&#xA;            infoLogger = logger;&#xA;        }&#xA;    }&#xA;    &#xA;    @Override&#xA;    public void log(String severity, String message, Exception exception) {&#xA;        if (severity.equals(ILogger.ERROR)) {&#xA;            errorLogger.log(severity, message, exception);&#xA;        } else if (severity.equals(ILogger.WARNING)) {&#xA;            warningLogger.log(severity, message, exception);&#xA;        } else if (severity.equals(ILogger.INFO)) {&#xA;            infoLogger.log(severity, message, exception);&#xA;        }&#xA;    }" edit="/1/@proposals.0/@proposals.0/@attempts.18/@edit" start="62" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584108843019" resourcePath="/ovinger/src/patterns/delegation/DistributingLogger.java" sizeMeasure="35" className="patterns.delegation.DistributingLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;    public DistributingLogger(ILogger errorLogger, ILogger warningLogger, ILogger infoLogger) {&#xA;        super();&#xA;        this.errorLogger = errorLogger;&#xA;        this.warningLogger = warningLogger;&#xA;        this.infoLogger = infoLogger;&#xA;    }&#xA;&#xA;    public void setLogger(String severity, ILogger logger) {&#xA;        if (severity.equals(ILogger.ERROR)) {&#xA;            errorLogger = logger;&#xA;        } else if (severity.equals(ILogger.WARNING)) {&#xA;            warningLogger = logger;&#xA;        } else if (severity.equals(ILogger.INFO)) {&#xA;            infoLogger = logger;&#xA;        }&#xA;    }&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.19/@edit" start="183" end="-441"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584107684766" mode="run" className="patterns.delegation.StreamLoggerTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.delegation.StreamLoggerTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584108444006" mode="run" className="patterns.delegation.FilteringLoggerTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.delegation.FilteringLoggerTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584108854776" mode="run" className="patterns.delegation.DistributingLoggerTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.delegation.DistributingLoggerTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584107685841" completion="1.0" testRunName="patterns.delegation.StreamLoggerTest" successCount="3">
          <successTests>testLog</successTests>
          <successTests>testLogException</successTests>
          <successTests>testLogWithFormat</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584108445131" completion="1.0" testRunName="patterns.delegation.FilteringLoggerTest" successCount="5">
          <successTests>testInfoToErrorLogger</successTests>
          <successTests>testFilteringLoggerErrorAndInfo</successTests>
          <successTests>testFilteringLoggerWarningSetIsLoggingError</successTests>
          <successTests>testFilteringLoggerNoSeverities</successTests>
          <successTests>testErrorLogging</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584108855749" completion="1.0" testRunName="patterns.delegation.DistributingLoggerTest" successCount="4">
          <successTests>testLogToInfo</successTests>
          <successTests>testLogToWarn</successTests>
          <successTests>testChangeInfoLogger</successTests>
          <successTests>testLogToError</successTests>
        </attempts>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.1/@q" answer="/0/@parts.1/@tasks.1/@a">
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584107155082" elementId="no.hal.learning.exercise.ui.commands.OpenExerciseView" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584107222663" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584107223063" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584107246568" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584107262003" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584107262156" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584107291508" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584107360364" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584107483880" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584107492534" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584107492829" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584107493765" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584107504999" elementId="org.eclipse.jdt.ui.edit.text.java.correction.assist.proposals" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584107512470" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584107653067" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584107654383" elementId="org.eclipse.jdt.ui.edit.text.java.format" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584107654845" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584107684754" elementId="org.eclipse.jdt.junit.junitShortcut.run" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584107708880" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584107718838" elementId="org.eclipse.ui.edit.text.goto.lineStart" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584107719521" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584107719676" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584107719913" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584107720584" elementId="org.eclipse.jdt.ui.edit.text.java.correction.assist.proposals" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584107738038" elementId="org.eclipse.ui.edit.text.goto.lineStart" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584107738641" elementId="org.eclipse.ui.edit.text.goto.lineEnd" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584107739103" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584107739256" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584107752134" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584107758607" elementId="org.eclipse.jdt.ui.edit.text.java.format" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584107759561" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584107761557" elementId="org.eclipse.jdt.ui.edit.text.java.format" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584107765009" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584107767056" elementId="org.eclipse.jdt.ui.edit.text.java.format" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584107768669" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584107802305" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584107821272" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584107866479" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584107876949" elementId="org.eclipse.ui.edit.text.select.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584107920516" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584107990486" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584107990973" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108022595" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108120269" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108131759" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108131926" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108132137" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108211625" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108223083" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108238994" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108264712" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108283148" elementId="org.eclipse.jdt.ui.edit.text.java.format" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108298004" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108298164" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108298296" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108298472" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108298641" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108298777" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108298932" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108299083" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108299267" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108299428" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108299616" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108300587" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108301149" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108301294" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108301438" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108301585" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108301722" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108301991" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108302217" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108302498" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108382065" elementId="org.eclipse.jdt.ui.edit.text.java.format" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108382836" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108387923" elementId="org.eclipse.jdt.ui.edit.text.java.organize.imports" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108388783" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108390432" elementId="org.eclipse.jdt.ui.edit.text.java.format" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108436194" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108438079" elementId="org.eclipse.jdt.ui.edit.text.java.format" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108444006" elementId="org.eclipse.jdt.junit.junitShortcut.run" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108458928" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108576650" elementId="org.eclipse.jdt.ui.edit.text.java.source.quickMenu" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108588615" elementId="org.eclipse.jdt.ui.edit.text.java.create.delegate.methods" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108589256" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108589526" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108591417" elementId="org.eclipse.jdt.ui.edit.text.java.source.quickMenu" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108597132" elementId="org.eclipse.jdt.ui.edit.text.java.generate.constructor.using.fields" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108638396" elementId="org.eclipse.jdt.ui.edit.text.java.source.quickMenu" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108646541" elementId="org.eclipse.jdt.ui.edit.text.java.generate.constructor.using.fields" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108673729" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108717311" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108717455" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108717683" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108717943" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108718334" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108745841" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108746067" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108748798" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108782650" elementId="org.eclipse.ui.edit.text.select.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108783280" elementId="org.eclipse.ui.edit.text.select.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108785210" elementId="org.eclipse.ui.edit.text.select.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108803136" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108803291" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108803563" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108803857" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108819699" elementId="org.eclipse.ui.edit.copy" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108821132" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108831520" elementId="org.eclipse.ui.edit.copy" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108833756" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108836186" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108839373" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108842378" elementId="org.eclipse.jdt.ui.edit.text.java.format" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108843034" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108845538" elementId="org.eclipse.jdt.ui.edit.text.java.format" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108849052" elementId="org.eclipse.jdt.ui.edit.text.java.organize.imports" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584108854776" elementId="org.eclipse.jdt.junit.junitShortcut.run" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584109035256" elementId="org.eclipse.ui.file.saveAs" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584109097602" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584109097897" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584109100901" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584109101201" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584109305783" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584109337655" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584109436804" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584109436956" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584109443286" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584109443422" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584109876386" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584116188945" elementId="org.eclipse.ui.file.exit" action="executeSuccess"/>
      </proposals>
      <proposals xsi:type="workbench:PartTaskProposal" question="/0/@parts.1/@tasks.2/@q" answer="/0/@parts.1/@tasks.2/@a">
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107146672" elementId="no.hal.learning.exercise.presentation.ExerciseEditorID" action="opened" inputUri="platform:/resource/ovinger/tests/patterns/delegation/Logger.ex"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107146753" elementId="no.hal.learning.exercise.presentation.ExerciseEditorID" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/delegation/Logger.ex"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107146755" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107146798" elementId="no.hal.learning.exercise.presentation.ExerciseEditorID" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/delegation/Logger.ex"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107148586" elementId="no.hal.learning.exercise.presentation.ExerciseEditorID" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/delegation/Logger.ex"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107148616" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107148637" elementId="no.hal.learning.exercise.presentation.ExerciseEditorID" action="closed" inputUri="platform:/resource/ovinger/tests/patterns/delegation/Logger.ex"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107154782" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107154806" elementId="no.hal.learning.exercise.views.ExerciseView" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107154837" elementId="no.hal.learning.exercise.views.ExerciseView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107154858" elementId="no.hal.learning.exercise.views.ExerciseView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107157957" elementId="org.eclipse.ui.views.ProblemView" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107157977" elementId="org.eclipse.ui.views.ProblemView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107157979" elementId="no.hal.learning.exercise.views.ExerciseView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107158032" elementId="org.eclipse.ui.views.ProblemView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107158877" elementId="org.eclipse.ui.views.ProgressView" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107158895" elementId="org.eclipse.ui.views.ProgressView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107158896" elementId="org.eclipse.ui.views.ProblemView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107158918" elementId="org.eclipse.ui.views.ProgressView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107159627" elementId="org.eclipse.ui.views.ProblemView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107159627" elementId="org.eclipse.ui.views.ProgressView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107159645" elementId="org.eclipse.ui.views.ProblemView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107159660" elementId="org.eclipse.ui.views.ProgressView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107161286" elementId="org.eclipse.jdt.ui.SourceView" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107161306" elementId="org.eclipse.jdt.ui.SourceView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107161307" elementId="org.eclipse.ui.views.ProblemView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107161324" elementId="org.eclipse.jdt.ui.SourceView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107162721" elementId="org.eclipse.ui.views.ProblemView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107162722" elementId="org.eclipse.jdt.ui.SourceView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107162739" elementId="org.eclipse.ui.views.ProblemView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107162756" elementId="org.eclipse.jdt.ui.SourceView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107165169" elementId="org.eclipse.jdt.ui.JavadocView" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107165270" elementId="org.eclipse.jdt.ui.JavadocView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107165271" elementId="org.eclipse.ui.views.ProblemView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107165289" elementId="org.eclipse.jdt.ui.JavadocView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107165961" elementId="org.eclipse.ui.console.ConsoleView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107165962" elementId="org.eclipse.jdt.ui.JavadocView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107165978" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107174529" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107174540" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107187876" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/patterns/delegation/ILogger.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107187923" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/delegation/ILogger.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107187991" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107188033" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/delegation/ILogger.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107295491" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/delegation/ILogger.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107295502" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107352936" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/patterns/delegation/StreamLogger.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107352953" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/delegation/StreamLogger.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107353044" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107353105" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/delegation/StreamLogger.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107665326" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/delegation/StreamLogger.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107665337" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107672157" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107672174" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/delegation/StreamLogger.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107675828" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/delegation/StreamLogger.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107675838" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107685299" elementId="org.eclipse.jdt.junit.ResultView" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107685720" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107685794" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107685819" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107694274" elementId="org.eclipse.jdt.ui.PackageExplorer" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107694274" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107694297" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107694320" elementId="org.eclipse.jdt.junit.ResultView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107710017" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/patterns/delegation/FilteringLogger.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107710035" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/delegation/FilteringLogger.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107710090" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584107710125" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/delegation/FilteringLogger.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584108441563" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/delegation/FilteringLogger.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584108441572" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584108444409" elementId="org.eclipse.jdt.junit.ResultView" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584108444983" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584108445078" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584108445108" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584108449310" elementId="org.eclipse.jdt.ui.PackageExplorer" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584108449311" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584108449331" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584108449340" elementId="org.eclipse.jdt.junit.ResultView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584108459845" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/patterns/delegation/DistributingLogger.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584108459860" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/delegation/DistributingLogger.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584108459904" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584108459937" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/delegation/DistributingLogger.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584108791840" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/delegation/FilteringLogger.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584108791868" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/delegation/DistributingLogger.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584108791888" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/delegation/FilteringLogger.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584108794185" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/delegation/DistributingLogger.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584108794214" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/delegation/FilteringLogger.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584108794233" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/delegation/DistributingLogger.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584108844379" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/delegation/FilteringLogger.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584108844407" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/delegation/DistributingLogger.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584108844425" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/delegation/FilteringLogger.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584108846639" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/delegation/DistributingLogger.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584108846667" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/delegation/FilteringLogger.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584108846685" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/delegation/DistributingLogger.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584108852752" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/delegation/DistributingLogger.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584108852762" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584108855163" elementId="org.eclipse.jdt.junit.ResultView" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584108855627" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584108855703" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584108855730" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584108859256" elementId="org.eclipse.jdt.ui.PackageExplorer" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584108859257" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584108859283" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584108859292" elementId="org.eclipse.jdt.junit.ResultView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584108861796" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584108861813" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/delegation/DistributingLogger.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584108993659" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/delegation/DistributingLogger.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584108993667" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584108999148" elementId="org.eclipse.ui.DefaultTextEditor" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584108999176" elementId="org.eclipse.ui.DefaultTextEditor" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584108999179" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584108999208" elementId="org.eclipse.ui.DefaultTextEditor" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584109037565" elementId="org.eclipse.ui.DefaultTextEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/explanation.txt"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584109037574" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584109039630" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584109039661" elementId="org.eclipse.ui.DefaultTextEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/explanation.txt"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584109883537" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/delegation/DistributingLogger.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584109883566" elementId="org.eclipse.ui.DefaultTextEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/explanation.txt"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584109883590" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/delegation/DistributingLogger.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584109883631" elementId="org.eclipse.ui.DefaultTextEditor" action="closed" inputUri="platform:/resource/ovinger/src/patterns/explanation.txt"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584110022241" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/delegation/DistributingLogger.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584110022250" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584110023209" elementId="no.hal.learning.exercise.views.ExerciseView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584110023209" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584110023280" elementId="no.hal.learning.exercise.views.ExerciseView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584116182762" elementId="no.hal.learning.exercise.views.ExerciseView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584116182786" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/delegation/DistributingLogger.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584116188375" elementId="org.eclipse.jdt.ui.PackageExplorer" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584116188392" elementId="org.eclipse.ui.views.ProblemView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584116188400" elementId="org.eclipse.jdt.ui.JavadocView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584116188409" elementId="org.eclipse.ui.console.ConsoleView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584116188425" elementId="no.hal.learning.exercise.views.ExerciseView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584116188445" elementId="org.eclipse.ui.views.ContentOutline" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584116188469" elementId="org.eclipse.mylyn.tasks.ui.views.tasks" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584116188483" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/patterns/delegation/ILogger.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584116188497" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/patterns/delegation/StreamLogger.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584116188514" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/patterns/delegation/FilteringLogger.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584116188540" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/delegation/DistributingLogger.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584116188542" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/patterns/delegation/DistributingLogger.java"/>
      </proposals>
    </proposals>
  </exercise:ExerciseProposals>
</xmi:XMI>
