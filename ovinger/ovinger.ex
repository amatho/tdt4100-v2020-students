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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584375156341" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="44" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="observable;&#xA;&#xA;import java.util.ArrayList;&#xA;&#xA;public class ObservableHighscoreList extends ObservableList {&#xA;    private final int maxSize;&#xA;    private final ArrayList&lt;Integer> highscores;&#xA;    private final ArrayList&lt;ObservableListListener> listeners;&#xA;&#xA;    public ObservableHighscoreList(int highscoreLength) {&#xA;        maxSize = highscoreLength;&#xA;        highscores = new ArrayList&lt;>(highscoreLength);&#xA;        listeners = new ArrayList&lt;>();&#xA;    }&#xA;&#xA;    public void addResult(int result) {&#xA;        if (size() == maxSize) {&#xA;            for (int i = 0; i &lt; size(); i++) {&#xA;                if (result &lt; highscores.get(i)) {&#xA;                    highscores.remove(size() - 1);&#xA;                    highscores.add(i, result);&#xA;                }&#xA;            }&#xA;        } else {&#xA;            highscores.add(result);&#xA;        }&#xA;    }&#xA;&#xA;    public int getElement(int resultIndex) {&#xA;        return highscores.get(resultIndex);&#xA;    }&#xA;&#xA;    public int size() {&#xA;        return highscores.size();&#xA;    }&#xA;&#xA;    public void addObservableListListener(ObservableListListener listener) {&#xA;        listeners.add(listener);&#xA;    }&#xA;&#xA;    public void removeObservableListListener(ObservableListListener listener) {&#xA;        listeners.remove(listener);" edit="/1/@proposals.0/@proposals.0/@attempts.20/@edit" start="17" end="-10"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584375401808" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="47" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="0) {&#xA;            highscores.add(result);&#xA;        } else {&#xA;            for (int i = 0; i &lt; size(); i++) {&#xA;                if (result &lt; highscores.get(i)) {&#xA;                    if (size() == maxSize) {&#xA;                        highscores.remove(size() - 1);&#xA;                    }&#xA;&#xA;                    highscores.add(i, result);&#xA;                }&#xA;            }" edit="/1/@proposals.0/@proposals.0/@attempts.21/@edit" start="521" end="-421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584375519850" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="53" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="var resultAdded = false;&#xA;            for (int i = 0; i &lt; size(); i++) {&#xA;                if (result &lt; highscores.get(i)) {&#xA;                    if (size() == maxSize) {&#xA;                        highscores.remove(size() - 1);&#xA;                    }&#xA;&#xA;                    highscores.add(i, result);&#xA;                    resultAdded = true;&#xA;                }&#xA;            }&#xA;            &#xA;            if (!resultAdded) {&#xA;                highscores.add(result);" edit="/1/@proposals.0/@proposals.0/@attempts.22/@edit" start="591" end="-435"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584375542404" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="53" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" &amp;&amp; size() != maxSize" edit="/1/@proposals.0/@proposals.0/@attempts.23/@edit" start="996" end="-478"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584375556408" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="53" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&lt;" edit="/1/@proposals.0/@proposals.0/@attempts.24/@edit" start="1007" end="-486"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584375558485" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="53" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.25/@edit" start="955" end="-526"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584375648908" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="54" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="    break;&#xA;                " edit="/1/@proposals.0/@proposals.0/@attempts.26/@edit" start="939" end="-543"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584375998825" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="66" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="var resultAdded = false;&#xA;        var addedIndex = -1;&#xA;&#xA;        if (size() == 0) {&#xA;            highscores.add(result);&#xA;            resultAdded = true;&#xA;            addedIndex = 0;&#xA;        } else {&#xA;            for (int i = 0; i &lt; size(); i++) {&#xA;                if (result &lt; highscores.get(i)) {&#xA;                    if (size() == maxSize) {&#xA;                        highscores.remove(size() - 1);&#xA;                    }&#xA;&#xA;                    highscores.add(i, result);&#xA;                    resultAdded = true;&#xA;                    addedIndex = i;&#xA;                    break;&#xA;                }&#xA;            }&#xA;&#xA;            if (!resultAdded &amp;&amp; size() &lt; maxSize) {&#xA;                highscores.add(result);&#xA;                addedIndex = size() - 1;&#xA;            }&#xA;        }&#xA;&#xA;        if (resultAdded) {&#xA;            for (var listener : listeners) {&#xA;                listener.listChanged(this, addedIndex" edit="/1/@proposals.0/@proposals.0/@attempts.27/@edit" start="507" end="-437"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584376216837" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="66" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="1;&#xA;        } else {&#xA;            for (int i = 0; i &lt; size(); i++) {&#xA;                if (result &lt; highscores.get(i)) {&#xA;                    if (size() == maxSize) {&#xA;                        highscores.remove(size() - 1);&#xA;                    }&#xA;&#xA;                    highscores.add(i, result);&#xA;                    resultAdded = true;&#xA;                    addedIndex = i + 1;&#xA;                    break;&#xA;                }&#xA;            }&#xA;&#xA;            if (!resultAdded &amp;&amp; size() &lt; maxSize) {&#xA;                highscores.add(result);&#xA;                addedIndex = size()" edit="/1/@proposals.0/@proposals.0/@attempts.28/@edit" start="682" end="-589"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584376272548" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="66" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="0;&#xA;        } else {&#xA;            for (int i = 0; i &lt; size(); i++) {&#xA;                if (result &lt; highscores.get(i)) {&#xA;                    if (size() == maxSize) {&#xA;                        highscores.remove(size() - 1);&#xA;                    }&#xA;&#xA;                    highscores.add(i, result);&#xA;                    resultAdded = true;&#xA;                    addedIndex = i;&#xA;                    break;&#xA;                }&#xA;            }&#xA;&#xA;            if (!resultAdded &amp;&amp; size() &lt; maxSize) {&#xA;                highscores.add(result);&#xA;                addedIndex = size() - 1" edit="/1/@proposals.0/@proposals.0/@attempts.29/@edit" start="682" end="-589"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584377144235" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="75" warningCount="1" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="rivate boolean add(int result) {&#xA;        if (size() == 0) {&#xA;            highscores.add(result);&#xA;            return true;&#xA;        } else if (size() &lt; maxSize) {&#xA;            var index = 0;&#xA;            for (int i = 0; i &lt; size(); i++) {&#xA;                if (result &lt; highscores.get(i)) {&#xA;                    highscores.add(result);&#xA;                    return true;&#xA;                }&#xA;            }&#xA;        }&#xA;&#xA;        return false;&#xA;    }&#xA;&#xA;    public void addResult(int result) {&#xA;        final var size = size();&#xA;        var addedIndex = size;&#xA;        var resultAdded = add(result);&#xA;        &#xA;        if (!resultAdded) {&#xA;            for (int i = 0; i &lt; size; i++) {&#xA;                if (result &lt; highscores.get(i)) {&#xA;                    if (size == maxSize) {&#xA;                        highscores.remove(size - 1);&#xA;                    }&#xA;&#xA;                    highscores.add(i, result);&#xA;                    resultAdded = true;&#xA;                    addedIndex = i;&#xA;                    break;&#xA;                }" edit="/1/@proposals.0/@proposals.0/@attempts.30/@edit" start="464" end="-588"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="21" charStart="660" charEnd="665" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584377147875" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="75" warningCount="1" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.31/@edit" start="1040" end="-997"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="21" charStart="660" charEnd="665" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584377157615" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="74" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="f" edit="/1/@proposals.0/@proposals.0/@attempts.32/@edit" start="636" end="-1374"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584377255089" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="77" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="    &#xA;            highscores.add(result);&#xA;            return true;&#xA;        " edit="/1/@proposals.0/@proposals.0/@attempts.33/@edit" start="838" end="-1173"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584377289104" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="77" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="i, result);&#xA;                    return true;&#xA;                }&#xA;            }&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.34/@edit" start="756" end="-1243"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584377403776" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="81" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="    &#xA;        for (var i = 0; i &lt; maxSize; i++) {&#xA;            highscores.add(null);&#xA;        }&#xA;    " edit="/1/@proposals.0/@proposals.0/@attempts.35/@edit" start="456" end="-1620"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584377454273" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="86" warningCount="1" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="    &#xA;    public static void main(String[] args) {&#xA;        Integer i = null;&#xA;        System.out.println(3 &lt; i);&#xA;    }&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.36/@edit" start="2170" end="-3"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="84" charStart="2360" charEnd="2361" severity="1" problemCategory="90" problemType="536871373"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584377471146" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="86" warningCount="1" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="i.compareTo(3)" edit="/1/@proposals.0/@proposals.0/@attempts.37/@edit" start="2273" end="-12"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="84" charStart="2356" charEnd="2357" severity="1" problemCategory="90" problemType="536871363"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584377659786" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="97" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="rivate static int compare(Integer left, Integer right) {&#xA;        if (left == null &amp;&amp; right == null) {&#xA;            return 0;&#xA;        } else if (left == null) {&#xA;            return -1;&#xA;        } else if (right == null) {&#xA;            return 1;&#xA;        } else {&#xA;            return left - right;&#xA;        }&#xA;    }&#xA;    &#xA;    public static void main(String[] args) {&#xA;        System.out.println(compare(3, null" edit="/1/@proposals.0/@proposals.0/@attempts.38/@edit" start="2180" end="-13"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584377911748" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="75" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;        for (var i = 0; i &lt; maxSize; i++) {&#xA;            highscores.add(null);&#xA;        }&#xA;    }&#xA;&#xA;    private void add(int index, int element) {&#xA;        highscores.remove(maxSize - 1);&#xA;        highscores.add(index, element);&#xA;    }&#xA;&#xA;    public void addResult(int result) {&#xA;        var addedIndex = 0;&#xA;        var resultAdded = false;&#xA;&#xA;        for (var i = 0; i &lt; maxSize; i++) {&#xA;            if (compare(highscores.get(i), result) > 0) {&#xA;                add(i, result);&#xA;                resultAdded = true;&#xA;                break;&#xA;            }&#xA;        }&#xA;&#xA;        if (resultAdded) {&#xA;            for (var listener : listeners) {&#xA;                listener.listChanged(this, addedIndex);&#xA;            }&#xA;        }&#xA;    }&#xA;&#xA;    public int getElement(int resultIndex) {&#xA;        return highscores.get(resultIndex);&#xA;    }&#xA;&#xA;    public int size() {&#xA;        return highscores.size();&#xA;    }&#xA;&#xA;    public void addObservableListListener(ObservableListListener listener) {&#xA;        listeners.add(listener);&#xA;    }&#xA;&#xA;    public void removeObservableListListener(ObservableListListener listener) {&#xA;        listeners.remove(listener);&#xA;    }&#xA;&#xA;    private static int compare(Integer left, Integer right) {&#xA;        if (left == null &amp;&amp; right == null) {&#xA;            return 0;&#xA;        } else if (left == null) {&#xA;            return -1;&#xA;        } else if (right == null) {&#xA;            return 1;&#xA;        } else {&#xA;            return left - right;&#xA;        }&#xA;    }&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.39/@edit" start="452" end="-101"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584378120105" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="79" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="    }&#xA;&#xA;    private void add(int index, int element) {&#xA;        highscores.remove(maxSize - 1);&#xA;        highscores.add(index, element);&#xA;    }&#xA;&#xA;    private Integer getOrDefault(int index) {&#xA;        if (index &lt; 0 || index > maxSize) {&#xA;            return null;&#xA;        }&#xA;&#xA;        return highscores.get(index);&#xA;    }&#xA;&#xA;    public void addResult(int result) {&#xA;        var addedIndex = 0;&#xA;        var resultAdded = false;&#xA;&#xA;        for (var i = 0; i &lt; maxSize; i++) {&#xA;            if (compare(getOrDefaul" edit="/1/@proposals.0/@proposals.0/@attempts.40/@edit" start="452" end="-1109"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584378146368" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="79" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Null(int index) {&#xA;        if (index &lt; 0 || index > maxSize) {&#xA;            return null;&#xA;        }&#xA;&#xA;        return highscores.get(index);&#xA;    }&#xA;&#xA;    public void addResult(int result) {&#xA;        var addedIndex = 0;&#xA;        var resultAdded = false;&#xA;&#xA;        for (var i = 0; i &lt; maxSize; i++) {&#xA;            if (compare(getOrNull" edit="/1/@proposals.0/@proposals.0/@attempts.41/@edit" start="618" end="-1108"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584378221288" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="84" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (size() == 0) {&#xA;            highscores.add(result);&#xA;            resultAdded = true;&#xA;        } else {&#xA;            for (var i = 0; i &lt; maxSize; i++) {&#xA;                if (compare(getOrNull(i), result) > 0) {&#xA;                    add(i, result);&#xA;                    resultAdded = true;&#xA;                    break;&#xA;                }" edit="/1/@proposals.0/@proposals.0/@attempts.42/@edit" start="871" end="-998"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584378247183" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="84" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="size()" edit="/1/@proposals.0/@proposals.0/@attempts.43/@edit" start="669" end="-1522"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584378263478" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="79" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="for (var i = 0; i &lt; maxSize; i++) {&#xA;            if (compare(getOrNull(i), result) > 0) {&#xA;                add(i, result);&#xA;                resultAdded = true;&#xA;                break;" edit="/1/@proposals.0/@proposals.0/@attempts.44/@edit" start="870" end="-998"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584378287470" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="79" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="=" edit="/1/@proposals.0/@proposals.0/@attempts.45/@edit" start="668" end="-1379"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584378394502" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="79" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="1;&#xA;        } else if (right == null) {&#xA;            return -" edit="/1/@proposals.0/@proposals.0/@attempts.46/@edit" start="1819" end="-170"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584378520460" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="85" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (size() == 0) {&#xA;            highscores.add(result);&#xA;            resultAdded = true;&#xA;        } else {&#xA;            for (var i = 0; i &lt; size(); i++) {&#xA;                if (compare(getOrNull(i), result) > 0) {&#xA;                    add(i, result);&#xA;                    resultAdded = true;&#xA;                    addedIndex = i;&#xA;                    break;&#xA;                }" edit="/1/@proposals.0/@proposals.0/@attempts.47/@edit" start="871" end="-998"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584378535672" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="85" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="maxSize" edit="/1/@proposals.0/@proposals.0/@attempts.48/@edit" start="1007" end="-1220"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584378565811" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="80" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="for (var i = 0; i &lt; maxSize; i++) {&#xA;            if (compare(getOrNull(i), result) > 0) {&#xA;                add(i, result);&#xA;                resultAdded = true;&#xA;                addedIndex = i;&#xA;                break;" edit="/1/@proposals.0/@proposals.0/@attempts.49/@edit" start="871" end="-998"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584378690587" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="83" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (size() == maxSize) {&#xA;            highscores.remove(maxSize - 1);&#xA;        }&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.50/@edit" start="514" end="-1535"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584378752517" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="5" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="public class ObservableHighscoreListProgram {&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.51/@edit" start="30" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584379137132" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="30" warningCount="1" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.Scanner;&#xA;&#xA;public class ObservableHighscoreListProgram implements ObservableListListener {&#xA;    private ObservableHighscoreList highscoreList;&#xA;    &#xA;    public void init() {&#xA;        highscoreList = new ObservableHighscoreList(10);&#xA;    }&#xA;    &#xA;    public void run() {&#xA;        var running = true;&#xA;        &#xA;        while (running) {&#xA;            var scanner = new Scanner(System.in);&#xA;            System.out.print(&quot;Enter a result [-1 to quit]: &quot;);&#xA;            &#xA;            var result = scanner.nextInt();&#xA;            highscoreList.addResult(result);&#xA;            &#xA;            running = result != -1;&#xA;        }&#xA;    }&#xA;&#xA;    @Override&#xA;    public void listChanged(ObservableList list, int changedIndex) {&#xA;        System.out.println(&quot;Index of change: &quot; + changedIndex + &quot;\nHighscores: &quot; + highscoreList);&#xA;    }" edit="/1/@proposals.0/@proposals.0/@attempts.52/@edit" start="30" end="-4"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="16" charStart="404" charEnd="411" severity="1" problemCategory="90" problemType="536871799"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584379155018" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="31" warningCount="1" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="    highscoreList.addObservableListListener(this);&#xA;    " edit="/1/@proposals.0/@proposals.0/@attempts.53/@edit" start="279" end="-566"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="17" charStart="460" charEnd="467" severity="1" problemCategory="90" problemType="536871799"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584379182850" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="32" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="var scanner = new Scanner(System.in);&#xA;        while (running) {&#xA;            System.out.print(&quot;Enter a result [-1 to quit]: &quot;);&#xA;            &#xA;            var result = scanner.nextInt();&#xA;            highscoreList.addResult(result);&#xA;            &#xA;            running = result != -1;&#xA;        }&#xA;        &#xA;        scanner.close();" edit="/1/@proposals.0/@proposals.0/@attempts.54/@edit" start="401" end="-199"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584379228177" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="38" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="    &#xA;    public static void main(String[] args) {&#xA;        var p = new ObservableHighscoreListProgram();&#xA;        p.init();&#xA;        p.run();&#xA;    }&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.55/@edit" start="918" end="-3"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584379263962" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="88" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="ArrayList;&#xA;&#xA;public class ObservableHighscoreList extends ObservableList {&#xA;    private final int maxSize;&#xA;    private final ArrayList&lt;Integer> highscores;&#xA;    private final ArrayList&lt;ObservableListListener> listeners;&#xA;&#xA;    public ObservableHighscoreList(int highscoreLength) {&#xA;        maxSize = highscoreLength;&#xA;        highscores = new ArrayList&lt;>(highscoreLength);&#xA;        listeners = new ArrayList&lt;>();&#xA;    }&#xA;&#xA;    private void add(int index, int element) {&#xA;        if (size() == maxSize) {&#xA;            highscores.remove(maxSize - 1);&#xA;        }&#xA;&#xA;        highscores.add(index, element);&#xA;    }&#xA;&#xA;    private Integer getOrNull(int index) {&#xA;        if (index &lt; 0 || index >= size()) {&#xA;            return null;&#xA;        }&#xA;&#xA;        return highscores.get(index);&#xA;    }&#xA;&#xA;    public void addResult(int result) {&#xA;        var addedIndex = 0;&#xA;        var resultAdded = false;&#xA;&#xA;        for (var i = 0; i &lt; maxSize; i++) {&#xA;            if (compare(getOrNull(i), result) > 0) {&#xA;                add(i, result);&#xA;                resultAdded = true;&#xA;                addedIndex = i;&#xA;                break;&#xA;            }&#xA;        }&#xA;&#xA;        if (resultAdded) {&#xA;            for (var listener : listeners) {&#xA;                listener.listChanged(this, addedIndex);&#xA;            }&#xA;        }&#xA;    }&#xA;&#xA;    public int getElement(int resultIndex) {&#xA;        return highscores.get(resultIndex);&#xA;    }&#xA;&#xA;    public int size() {&#xA;        return highscores.size();&#xA;    }&#xA;&#xA;    public void addObservableListListener(ObservableListListener listener) {&#xA;        listeners.add(listener);&#xA;    }&#xA;&#xA;    public void removeObservableListListener(ObservableListListener listener) {&#xA;        listeners.remove(listener);&#xA;    }&#xA;    &#xA;    @Override&#xA;    public String toString() {&#xA;        return highscores.toString();&#xA;    }&#xA;&#xA;    private static int compare(Integer left, Integer right) {&#xA;        if (left == null &amp;&amp; right == null) {&#xA;            return 0;&#xA;        } else if (left == null) {&#xA;            return 1;&#xA;        } else if (right == null) {&#xA;            return -1;&#xA;        } else {&#xA;            return left - right;&#xA;        }&#xA;    }&#xA;&#xA;    public static void main(String[] args) {&#xA;        System.out.println(compare(3, null)" edit="/1/@proposals.0/@proposals.0/@attempts.56/@edit" start="47" end="-12"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584379361837" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="84" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="}" edit="/1/@proposals.0/@proposals.0/@attempts.57/@edit" start="2121" end="-2"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584379366274" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="84" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.58/@edit" start="1715" end="-404"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584379369037" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="38" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Scanner;&#xA;&#xA;public class ObservableHighscoreListProgram implements ObservableListListener {&#xA;    private ObservableHighscoreList highscoreList;&#xA;&#xA;    public void init() {&#xA;        highscoreList = new ObservableHighscoreList(10);&#xA;        highscoreList.addObservableListListener(this);&#xA;    }&#xA;&#xA;    public void run() {&#xA;        var running = true;&#xA;        var scanner = new Scanner(System.in);&#xA;        while (running) {&#xA;            System.out.print(&quot;Enter a result [-1 to quit]: &quot;);&#xA;&#xA;            var result = scanner.nextInt();&#xA;            highscoreList.addResult(result);&#xA;&#xA;            running = result != -1;&#xA;        }&#xA;&#xA;        scanner.close();&#xA;    }&#xA;&#xA;    @Override&#xA;    public void listChanged(ObservableList list, int changedIndex) {&#xA;        System.out.println(&quot;Index of change: &quot; + changedIndex + &quot;\nHighscores: &quot; + highscoreList);&#xA;    }&#xA;&#xA;    public static void main(String[] args) {&#xA;        var p = new ObservableHighscoreListProgram();&#xA;        p.init();&#xA;        p.run();" edit="/1/@proposals.0/@proposals.0/@attempts.59/@edit" start="47" end="-10"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584380183494" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="48" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="ArrayList;&#xA;import java.util.Collection;&#xA;import java.util.List;&#xA;&#xA;public abstract class ObservableList {&#xA;    public List&lt;Object> elements = new ArrayList&lt;>();&#xA;    public Collection&lt;ObservableListListener> listeners = new ArrayList&lt;>();&#xA;    &#xA;    public int size() {&#xA;        return elements.size();&#xA;    }&#xA;    &#xA;    public Object getElement(int index) {&#xA;        return elements.get(index);&#xA;    }&#xA;    &#xA;    public abstract boolean acceptsElement(Object element);&#xA;    &#xA;    protected void addElement(int index, Object element) {&#xA;        if (acceptsElement(element)) {&#xA;            elements.add(index, element);&#xA;        } else {&#xA;            throw new IllegalArgumentException(&quot;Object not accepted&quot;);&#xA;        }&#xA;    }&#xA;    &#xA;    protected void addElement(Object element) {&#xA;        if (acceptsElement(element)) {&#xA;            elements.add(element);&#xA;        } else {&#xA;            throw new IllegalArgumentException(&quot;Object not accepted&quot;);&#xA;        }&#xA;    }&#xA;    &#xA;    protected void removeElement(int index) {&#xA;        elements.remove(index);&#xA;    }&#xA;    &#xA;    public void addObservableListListener(ObservableListListener listener) {&#xA;        listeners.add(listener);&#xA;    }&#xA;    &#xA;    public void removeObservableListListener(ObservableListListener listener) {&#xA;        listeners.remove(listener" edit="/1/@proposals.0/@proposals.0/@attempts.60/@edit" start="47" end="-12"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584380299340" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="48" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;    public int size() {&#xA;        return elements.size();&#xA;    }&#xA;&#xA;    public Object getElement(int index) {&#xA;        return elements.get(index);&#xA;    }&#xA;&#xA;    public abstract boolean acceptsElement(Object element);&#xA;&#xA;    protected void addElement(int index, Object element) {&#xA;        if (acceptsElement(element)) {&#xA;            elements.add(index, element);&#xA;        } else {&#xA;            throw new IllegalArgumentException(&quot;Object not accepted&quot;);&#xA;        }&#xA;    }&#xA;&#xA;    protected void addElement(Object element) {&#xA;        if (acceptsElement(element)) {&#xA;            elements.add(element);&#xA;        } else {&#xA;            throw new IllegalArgumentException(&quot;Object not accepted&quot;);&#xA;        }&#xA;    }&#xA;&#xA;    protected void removeElement(int index) {&#xA;        elements.remove(index);&#xA;    }&#xA;&#xA;    public void addObservableListListener(ObservableListListener listener) {&#xA;        listeners.add(listener);&#xA;    }&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.61/@edit" start="281" end="-126"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584380486955" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="53" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="    &#xA;    @Override&#xA;    public String toString() {&#xA;        return elements.toString();&#xA;    }&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.62/@edit" start="1287" end="-3"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584380496154" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="69" errorCount="1" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;public class ObservableHighscoreList extends ObservableList {&#xA;    private final int maxSize;&#xA;&#xA;    public ObservableHighscoreList(int highscoreLength) {&#xA;        maxSize = highscoreLength;&#xA;    }&#xA;    &#xA;    @Override&#xA;    public boolean acceptsElement(Object element) {&#xA;        return element instanceof Integer;&#xA;    }&#xA;&#xA;    private void add(int index, int element) {&#xA;        if (size() == maxSize) {&#xA;            removeElement(maxSize - 1);&#xA;        }&#xA;&#xA;        addElement(index, element);&#xA;    }&#xA;&#xA;    private Integer getOrNull(int index) {&#xA;        if (index &lt; 0 || index >= size()) {&#xA;            return null;&#xA;        }&#xA;&#xA;        return getElement(index);&#xA;    }&#xA;&#xA;    public void addResult(int result) {&#xA;        var addedIndex = 0;&#xA;        var resultAdded = false;&#xA;&#xA;        for (var i = 0; i &lt; maxSize; i++) {&#xA;            if (compare(getOrNull(i), result) > 0) {&#xA;                add(i, result);&#xA;                resultAdded = true;&#xA;                addedIndex = i;&#xA;                break;&#xA;            }&#xA;        }&#xA;&#xA;        if (resultAdded) {&#xA;            for (var listener : listeners) {&#xA;                listener.listChanged(this, addedIndex);&#xA;            }&#xA;        }&#xA;    }&#xA;&#xA;    @Override&#xA;    public String toString() {&#xA;        return super.toString();&#xA;    }&#xA;&#xA;    private static int compare(Integer left, Integer right) {&#xA;        if (left == null &amp;&amp; right == null) {&#xA;            return 0;&#xA;        } else if (left == null) {&#xA;            return 1;&#xA;        } else if (right == null) {&#xA;            return -1;&#xA;        } else {&#xA;            return left - right;&#xA;        }" edit="/1/@proposals.0/@proposals.0/@attempts.63/@edit" start="58" end="-10"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="30" charStart="714" charEnd="731" severity="2" problemCategory="40" problemType="16777235"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584380517480" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="69" warningCount="1" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="(Integer) " edit="/1/@proposals.0/@proposals.0/@attempts.64/@edit" start="685" end="-931"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="39" charEnd="58" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584380525580" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="67" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="p" edit="/1/@proposals.0/@proposals.0/@attempts.65/@edit" start="30" end="-1566"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584380546273" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="67" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;    @Override&#xA;    public boolean acceptsElement(Object element) {&#xA;        return element instanceof Integer;&#xA;    }&#xA;&#xA;    public void addResult(int result) {&#xA;        var addedIndex = 0;&#xA;        var resultAdded = false;&#xA;&#xA;        for (var i = 0; i &lt; maxSize; i++) {&#xA;            if (compare(getOrNull(i), result) > 0) {&#xA;                add(i, result);&#xA;                resultAdded = true;&#xA;                addedIndex = i;&#xA;                break;&#xA;            }&#xA;        }&#xA;&#xA;        if (resultAdded) {&#xA;            for (var listener : listeners) {&#xA;                listener.listChanged(this, addedIndex);&#xA;            }&#xA;        }&#xA;    }&#xA;&#xA;    @Override&#xA;    public String toString() {&#xA;        return super.toString();&#xA;    }&#xA;&#xA;    private void add(int index, int element) {&#xA;        if (size() == maxSize) {&#xA;            removeElement(maxSize - 1);&#xA;        }&#xA;&#xA;        addElement(index, element);&#xA;    }&#xA;&#xA;    private Integer getOrNull(int index) {&#xA;        if (index &lt; 0 || index >= size()) {&#xA;            return null;&#xA;        }&#xA;&#xA;        return (Integer) getElement(index" edit="/1/@proposals.0/@proposals.0/@attempts.66/@edit" start="223" end="-324"/>
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
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584375246344" mode="debug" className="patterns.observable.ObservableHighscoreListTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TESTNAME</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>testAddElementSimple</launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.ObservableHighscoreListTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584375412638" mode="run" className="patterns.observable.ObservableHighscoreListTest">
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
          <launchAttrValues>patterns.observable.ObservableHighscoreListTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584375565872" mode="run" className="patterns.observable.ObservableHighscoreListTest">
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
          <launchAttrValues>patterns.observable.ObservableHighscoreListTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584375653572" mode="run" className="patterns.observable.ObservableHighscoreListTest">
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
          <launchAttrValues>patterns.observable.ObservableHighscoreListTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584376003725" mode="run" className="patterns.observable.ObservableHighscoreListTest">
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
          <launchAttrValues>patterns.observable.ObservableHighscoreListTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584376072145" mode="debug" className="patterns.observable.ObservableHighscoreListTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TESTNAME</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>testListListenerSimple</launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.ObservableHighscoreListTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584376115957" mode="debug" className="patterns.observable.ObservableHighscoreListTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TESTNAME</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>testListListenerSimple</launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.ObservableHighscoreListTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584376223267" mode="run" className="patterns.observable.ObservableHighscoreListTest">
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
          <launchAttrValues>patterns.observable.ObservableHighscoreListTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584376289948" mode="run" className="patterns.observable.ObservableHighscoreListTest">
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
          <launchAttrValues>patterns.observable.ObservableHighscoreListTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584376337284" mode="debug" className="patterns.observable.ObservableHighscoreListTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TESTNAME</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>testListListenerSimple</launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.ObservableHighscoreListTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584377189994" mode="run" className="patterns.observable.ObservableHighscoreListTest">
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
          <launchAttrValues>patterns.observable.ObservableHighscoreListTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584377319123" mode="run" className="patterns.observable.ObservableHighscoreListTest">
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
          <launchAttrValues>patterns.observable.ObservableHighscoreListTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584377454127" mode="run" className="patterns.observable.ObservableHighscoreList">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.ObservableHighscoreList</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Exception in thread &quot;main&quot; java.lang.NullPointerException&#xD;
	at ovinger/patterns.observable.ObservableHighscoreList.main(ObservableHighscoreList.java:84)&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584377473106" mode="run" className="patterns.observable.ObservableHighscoreList">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.ObservableHighscoreList</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Exception in thread &quot;main&quot; java.lang.NullPointerException&#xD;
	at ovinger/patterns.observable.ObservableHighscoreList.main(ObservableHighscoreList.java:84)&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584377660926" mode="run" className="patterns.observable.ObservableHighscoreList">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.ObservableHighscoreList</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>1&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584377917138" mode="run" className="patterns.observable.ObservableHighscoreListTest">
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
          <launchAttrValues>patterns.observable.ObservableHighscoreListTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584378161978" mode="run" className="patterns.observable.ObservableHighscoreListTest">
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
          <launchAttrValues>patterns.observable.ObservableHighscoreListTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584378227612" mode="run" className="patterns.observable.ObservableHighscoreListTest">
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
          <launchAttrValues>patterns.observable.ObservableHighscoreListTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584378266916" mode="run" className="patterns.observable.ObservableHighscoreListTest">
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
          <launchAttrValues>patterns.observable.ObservableHighscoreListTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584378291167" mode="run" className="patterns.observable.ObservableHighscoreListTest">
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
          <launchAttrValues>patterns.observable.ObservableHighscoreListTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584378313733" mode="debug" className="patterns.observable.ObservableHighscoreListTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TESTNAME</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>testAddElementSimple</launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.ObservableHighscoreListTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584378414015" mode="run" className="patterns.observable.ObservableHighscoreListTest">
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
          <launchAttrValues>patterns.observable.ObservableHighscoreListTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584378522237" mode="run" className="patterns.observable.ObservableHighscoreListTest">
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
          <launchAttrValues>patterns.observable.ObservableHighscoreListTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584378568740" mode="run" className="patterns.observable.ObservableHighscoreListTest">
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
          <launchAttrValues>patterns.observable.ObservableHighscoreListTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584378596738" mode="debug" className="patterns.observable.ObservableHighscoreListTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TESTNAME</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>testAddElementSimple</launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.ObservableHighscoreListTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584378696197" mode="run" className="patterns.observable.ObservableHighscoreListTest">
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
          <launchAttrValues>patterns.observable.ObservableHighscoreListTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584379229478" mode="run" className="patterns.observable.ObservableHighscoreListProgram">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.ObservableHighscoreListProgram</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Enter a result [-1 to quit]: </consoleOutput>
          <consoleOutput>5</consoleOutput>
          <consoleOutput>&#xD;
</consoleOutput>
          <consoleOutput>Index of change: 0
Highscores: patterns.observable.ObservableHighscoreList@8747f58c&#xD;
Enter a result [-1 to quit]: </consoleOutput>
          <consoleOutput>-</consoleOutput>
          <consoleOutput>1</consoleOutput>
          <consoleOutput>Index of change: 0
Highscores: patterns.observable.ObservableHighscoreList@8747f58c&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584379269446" mode="run" className="patterns.observable.ObservableHighscoreListProgram">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.observable.ObservableHighscoreListProgram</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Enter a result [-1 to quit]: 5&#xD;
Index of change: 0
Highscores: [5]&#xD;
Enter a result [-1 to quit]: 6&#xD;
Index of change: 1
Highscores: [5, 6]&#xD;
Enter a result [-1 to quit]: 2&#xD;
Index of change: 0
Highscores: [2, 5, 6]&#xD;
Enter a result [-1 to quit]: 10&#xD;
Index of change: 3
Highscores: [2, 5, 6, 10]&#xD;
Enter a result [-1 to quit]: 42&#xD;
Index of change: 4
Highscores: [2, 5, 6, 10, 42]&#xD;
Enter a result [-1 to quit]: 9&#xD;
Index of change: 3
Highscores: [2, 5, 6, 9, 10, 42]&#xD;
Enter a result [-1 to quit]: 33&#xD;
Index of change: 5
Highscores: [2, 5, 6, 9, 10, 33, 42]&#xD;
Enter a result [-1 to quit]: 66&#xD;
Index of change: 7
Highscores: [2, 5, 6, 9, 10, 33, 42, 66]&#xD;
Enter a result [-1 to quit]: 13&#xD;
Index of change: 5
Highscores: [2, 5, 6, 9, 10, 13, 33, 42, 66]&#xD;
Enter a result [-1 to quit]: 9&#xD;
Index of change: 4
Highscores: [2, 5, 6, 9, 9, 10, 13, 33, 42, 66]&#xD;
Enter a result [-1 to quit]: 1&#xD;
Index of change: 0
Highscores: [1, 2, 5, 6, 9, 9, 10, 13, 33, 42]&#xD;
Enter a result [-1 to quit]: 1&#xD;
Index of change: 1
Highscores: [1, 1, 2, 5, 6, 9, 9, 10, 13, 33]&#xD;
Enter a result [-1 to quit]: 1&#xD;
Index of change: 2
Highscores: [1, 1, 1, 2, 5, 6, 9, 9, 10, 13]&#xD;
Enter a result [-1 to quit]: 2&#xD;
Index of change: 4
Highscores: [1, 1, 1, 2, 2, 5, 6, 9, 9, 10]&#xD;
Enter a result [-1 to quit]: 4&#xD;
Index of change: 5
Highscores: [1, 1, 1, 2, 2, 4, 5, 6, 9, 9]&#xD;
Enter a result [-1 to quit]: 5&#xD;
Index of change: 7
Highscores: [1, 1, 1, 2, 2, 4, 5, 5, 6, 9]&#xD;
Enter a result [-1 to quit]: 6&#xD;
Index of change: 9
Highscores: [1, 1, 1, 2, 2, 4, 5, 5, 6, 6]&#xD;
Enter a result [-1 to quit]: 9&#xD;
Enter a result [-1 to quit]: 9&#xD;
Enter a result [-1 to quit]: 7&#xD;
Enter a result [-1 to quit]: 1&#xD;
Index of change: 3
Highscores: [1, 1, 1, 1, 2, 2, 4, 5, 5, 6]&#xD;
Enter a result [-1 to quit]: 1&#xD;
Index of change: 4
Highscores: [1, 1, 1, 1, 1, 2, 2, 4, 5, 5]&#xD;
Enter a result [-1 to quit]: 1&#xD;
Index of change: 5
Highscores: [1, 1, 1, 1, 1, 1, 2, 2, 4, 5]&#xD;
Enter a result [-1 to quit]: 1&#xD;
Index of change: 6
Highscores: [1, 1, 1, 1, 1, 1, 1, 2, 2, 4]&#xD;
Enter a result [-1 to quit]: 1&#xD;
Index of change: 7
Highscores: [1, 1, 1, 1, 1, 1, 1, 1, 2, 2]&#xD;
Enter a result [-1 to quit]: 1&#xD;
Index of change: 8
Highscores: [1, 1, 1, 1, 1, 1, 1, 1, 1, 2]&#xD;
Enter a result [-1 to quit]: 1&#xD;
Index of change: 9
Highscores: [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]&#xD;
Enter a result [-1 to quit]: 1&#xD;
Enter a result [-1 to quit]: </consoleOutput>
          <consoleOutput>q</consoleOutput>
          <consoleOutput>&#xD;
</consoleOutput>
          <consoleOutput>Exception in thread &quot;main&quot; java.util.InputMismatchException&#xD;
	at java.base/java.util.Scanner.throwFor(Scanner.java:939)&#xD;
	at java.base/java.util.Scanner.next(Scanner.java:1594)&#xD;
	at java.base/java.util.Scanner.nextInt(Scanner.java:2258)&#xD;
	at java.base/java.util.Scanner.nextInt(Scanner.java:2212)&#xD;
	at ovinger/patterns.observable.ObservableHighscoreListProgram.run(ObservableHighscoreListProgram.java:19)&#xD;
	at ovinger/patterns.observable.ObservableHighscoreListProgram.main(ObservableHighscoreListProgram.java:36)&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1584380567433" mode="run" className="patterns.observable.ObservableHighscoreListTest">
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
          <launchAttrValues>patterns.observable.ObservableHighscoreListTest</launchAttrValues>
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
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584375414212" completion="0.14285714285714285" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="1" failureCount="6">
          <successTests>testConstructor</successTests>
          <failureTests>testAddElementSimple</failureTests>
          <failureTests>testAddElementDuplicate</failureTests>
          <failureTests>testListListenerSimple</failureTests>
          <failureTests>testListListenerDuplicate</failureTests>
          <failureTests>testAddElementMoreThanMax</failureTests>
          <failureTests>testListListenerMoreThanMax</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584375567233" completion="0.14285714285714285" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="1" failureCount="6">
          <successTests>testConstructor</successTests>
          <failureTests>testAddElementSimple</failureTests>
          <failureTests>testAddElementDuplicate</failureTests>
          <failureTests>testListListenerSimple</failureTests>
          <failureTests>testListListenerDuplicate</failureTests>
          <failureTests>testAddElementMoreThanMax</failureTests>
          <failureTests>testListListenerMoreThanMax</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584375654990" completion="0.5714285714285714" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="4" failureCount="3">
          <successTests>testAddElementSimple</successTests>
          <successTests>testAddElementDuplicate</successTests>
          <successTests>testAddElementMoreThanMax</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testListListenerSimple</failureTests>
          <failureTests>testListListenerDuplicate</failureTests>
          <failureTests>testListListenerMoreThanMax</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584376005132" completion="0.8571428571428571" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="6" failureCount="1">
          <successTests>testAddElementSimple</successTests>
          <successTests>testAddElementDuplicate</successTests>
          <successTests>testListListenerDuplicate</successTests>
          <successTests>testAddElementMoreThanMax</successTests>
          <successTests>testListListenerMoreThanMax</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testListListenerSimple</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584376096707" completion="0.0" testRunName="patterns.observable.ObservableHighscoreListTest" failureCount="1">
          <failureTests>testListListenerSimple</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584376118327" completion="0.0" testRunName="patterns.observable.ObservableHighscoreListTest" failureCount="1">
          <failureTests>testListListenerSimple</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584376224766" completion="0.5714285714285714" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="4" failureCount="3">
          <successTests>testAddElementSimple</successTests>
          <successTests>testAddElementDuplicate</successTests>
          <successTests>testAddElementMoreThanMax</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testListListenerSimple</failureTests>
          <failureTests>testListListenerDuplicate</failureTests>
          <failureTests>testListListenerMoreThanMax</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584376291291" completion="0.8571428571428571" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="6" failureCount="1">
          <successTests>testAddElementSimple</successTests>
          <successTests>testAddElementDuplicate</successTests>
          <successTests>testListListenerDuplicate</successTests>
          <successTests>testAddElementMoreThanMax</successTests>
          <successTests>testListListenerMoreThanMax</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testListListenerSimple</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584377191548" completion="0.14285714285714285" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="1" failureCount="6">
          <successTests>testConstructor</successTests>
          <failureTests>testAddElementSimple</failureTests>
          <failureTests>testAddElementDuplicate</failureTests>
          <failureTests>testListListenerSimple</failureTests>
          <failureTests>testListListenerDuplicate</failureTests>
          <failureTests>testAddElementMoreThanMax</failureTests>
          <failureTests>testListListenerMoreThanMax</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584377320516" completion="0.8571428571428571" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="6" failureCount="1">
          <successTests>testAddElementSimple</successTests>
          <successTests>testAddElementDuplicate</successTests>
          <successTests>testListListenerDuplicate</successTests>
          <successTests>testAddElementMoreThanMax</successTests>
          <successTests>testListListenerMoreThanMax</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testListListenerSimple</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584377918492" completion="0.0" testRunName="patterns.observable.ObservableHighscoreListTest" failureCount="3" errorCount="4">
          <failureTests>testAddElementSimple</failureTests>
          <failureTests>testListListenerSimple</failureTests>
          <failureTests>testConstructor</failureTests>
          <errorTests>testAddElementDuplicate</errorTests>
          <errorTests>testListListenerDuplicate</errorTests>
          <errorTests>testAddElementMoreThanMax</errorTests>
          <errorTests>testListListenerMoreThanMax</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584378163361" completion="0.14285714285714285" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="1" errorCount="6">
          <successTests>testConstructor</successTests>
          <errorTests>testAddElementSimple</errorTests>
          <errorTests>testAddElementDuplicate</errorTests>
          <errorTests>testListListenerSimple</errorTests>
          <errorTests>testListListenerDuplicate</errorTests>
          <errorTests>testAddElementMoreThanMax</errorTests>
          <errorTests>testListListenerMoreThanMax</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584378228965" completion="0.14285714285714285" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="1" errorCount="6">
          <successTests>testConstructor</successTests>
          <errorTests>testAddElementSimple</errorTests>
          <errorTests>testAddElementDuplicate</errorTests>
          <errorTests>testListListenerSimple</errorTests>
          <errorTests>testListListenerDuplicate</errorTests>
          <errorTests>testAddElementMoreThanMax</errorTests>
          <errorTests>testListListenerMoreThanMax</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584378268318" completion="0.14285714285714285" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="1" errorCount="6">
          <successTests>testConstructor</successTests>
          <errorTests>testAddElementSimple</errorTests>
          <errorTests>testAddElementDuplicate</errorTests>
          <errorTests>testListListenerSimple</errorTests>
          <errorTests>testListListenerDuplicate</errorTests>
          <errorTests>testAddElementMoreThanMax</errorTests>
          <errorTests>testListListenerMoreThanMax</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584378292604" completion="0.14285714285714285" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="1" failureCount="6">
          <successTests>testConstructor</successTests>
          <failureTests>testAddElementSimple</failureTests>
          <failureTests>testAddElementDuplicate</failureTests>
          <failureTests>testListListenerSimple</failureTests>
          <failureTests>testListListenerDuplicate</failureTests>
          <failureTests>testAddElementMoreThanMax</failureTests>
          <failureTests>testListListenerMoreThanMax</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584378415577" completion="0.14285714285714285" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="1" errorCount="6">
          <successTests>testConstructor</successTests>
          <errorTests>testAddElementSimple</errorTests>
          <errorTests>testAddElementDuplicate</errorTests>
          <errorTests>testListListenerSimple</errorTests>
          <errorTests>testListListenerDuplicate</errorTests>
          <errorTests>testAddElementMoreThanMax</errorTests>
          <errorTests>testListListenerMoreThanMax</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584378523565" completion="0.14285714285714285" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="1" failureCount="2" errorCount="4">
          <successTests>testConstructor</successTests>
          <failureTests>testAddElementSimple</failureTests>
          <failureTests>testListListenerSimple</failureTests>
          <errorTests>testAddElementDuplicate</errorTests>
          <errorTests>testListListenerDuplicate</errorTests>
          <errorTests>testAddElementMoreThanMax</errorTests>
          <errorTests>testListListenerMoreThanMax</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584378570220" completion="0.14285714285714285" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="1" errorCount="6">
          <successTests>testConstructor</successTests>
          <errorTests>testAddElementSimple</errorTests>
          <errorTests>testAddElementDuplicate</errorTests>
          <errorTests>testListListenerSimple</errorTests>
          <errorTests>testListListenerDuplicate</errorTests>
          <errorTests>testAddElementMoreThanMax</errorTests>
          <errorTests>testListListenerMoreThanMax</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584378638990" completion="0.0" testRunName="patterns.observable.ObservableHighscoreListTest" errorCount="1">
          <errorTests>testAddElementSimple</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584378697754" completion="1.0" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="7">
          <successTests>testAddElementSimple</successTests>
          <successTests>testAddElementDuplicate</successTests>
          <successTests>testListListenerSimple</successTests>
          <successTests>testListListenerDuplicate</successTests>
          <successTests>testAddElementMoreThanMax</successTests>
          <successTests>testListListenerMoreThanMax</successTests>
          <successTests>testConstructor</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584380568985" completion="1.0" testRunName="patterns.observable.ObservableHighscoreListTest" successCount="7">
          <successTests>testAddElementSimple</successTests>
          <successTests>testAddElementDuplicate</successTests>
          <successTests>testListListenerSimple</successTests>
          <successTests>testListListenerDuplicate</successTests>
          <successTests>testAddElementMoreThanMax</successTests>
          <successTests>testListListenerMoreThanMax</successTests>
          <successTests>testConstructor</successTests>
        </attempts>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a">
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584375248830" elementId="patterns.observable.ObservableHighscoreList" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584375260664" elementId="patterns.observable.ObservableHighscoreList" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376074532" elementId="patterns.observable.ObservableHighscoreList" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376086207" elementId="patterns.observable.ObservableHighscoreList" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376092922" elementId="patterns.observable.ObservableHighscoreList" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376339833" elementId="patterns.observable.ObservableHighscoreList" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376347867" elementId="patterns.observable.ObservableHighscoreList" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376348950" elementId="patterns.observable.ObservableHighscoreList" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376351080" elementId="patterns.observable.ObservableHighscoreList" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376357636" elementId="patterns.observable.ObservableHighscoreList" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376358230" elementId="patterns.observable.ObservableHighscoreList" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376361650" elementId="patterns.observable.ObservableHighscoreList" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376363176" elementId="patterns.observable.ObservableHighscoreList" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376365058" elementId="patterns.observable.ObservableHighscoreList" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376369410" elementId="patterns.observable.ObservableHighscoreList" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376382208" elementId="patterns.observable.ObservableHighscoreList" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378316212" elementId="patterns.observable.ObservableHighscoreList" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378321469" elementId="patterns.observable.ObservableHighscoreList" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378321966" elementId="patterns.observable.ObservableHighscoreList" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378322632" elementId="patterns.observable.ObservableHighscoreList" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378323153" elementId="patterns.observable.ObservableHighscoreList" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378324643" elementId="patterns.observable.ObservableHighscoreList" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378326222" elementId="patterns.observable.ObservableHighscoreList" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378326512" elementId="patterns.observable.ObservableHighscoreList" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378326742" elementId="patterns.observable.ObservableHighscoreList" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378326992" elementId="patterns.observable.ObservableHighscoreList" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378599027" elementId="patterns.observable.ObservableHighscoreList" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378602710" elementId="patterns.observable.ObservableHighscoreList" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378603020" elementId="patterns.observable.ObservableHighscoreList" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378603250" elementId="patterns.observable.ObservableHighscoreList" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378603510" elementId="patterns.observable.ObservableHighscoreList" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378603861" elementId="patterns.observable.ObservableHighscoreListTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378608152" elementId="patterns.observable.ObservableHighscoreListTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378608792" elementId="patterns.observable.ObservableHighscoreListTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378609180" elementId="patterns.observable.ObservableHighscoreListTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378610000" elementId="patterns.observable.ObservableHighscoreListTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378610318" elementId="patterns.observable.ObservableHighscoreListTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378610660" elementId="patterns.observable.ObservableHighscoreListTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378610920" elementId="patterns.observable.ObservableHighscoreListTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378611300" elementId="junit.framework.TestResult" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378616007" elementId="junit.framework.TestResult" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378616885" elementId="junit.framework.TestResult" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378627510" elementId="junit.framework.TestResult" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378629156" elementId="junit.framework.TestResult" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378629581" elementId="patterns.observable.ObservableHighscoreListTest" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378630210" elementId="junit.framework.TestSuite" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378630824" elementId="junit.framework.TestSuite" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378631230" elementId="junit.framework.TestSuite" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378631590" elementId="junit.framework.TestSuite" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378631910" elementId="org.junit.internal.runners.JUnit38ClassRunner" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378632106" elementId="org.eclipse.jdt.internal.junit4.runner.JUnit4TestReference" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378632455" elementId="org.eclipse.jdt.internal.junit4.runner.JUnit4TestReference" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378632620" elementId="org.eclipse.jdt.internal.junit4.runner.JUnit4TestReference" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378635230" elementId="org.eclipse.jdt.internal.junit4.runner.JUnit4TestReference" action="suspend.stepEnd"/>
      </proposals>
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
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584375135049" elementId="no.hal.learning.exercise.ui.commands.OpenExerciseView" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584375156371" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584375166364" elementId="no.hal.learning.exercise.ui.commands.OpenExerciseView" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584375193862" elementId="org.eclipse.debug.ui.commands.ToggleBreakpoint" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584375228177" elementId="AUTOGEN:::org.eclipse.jdt.internal.ui.CompilationUnitEditor.ruler.actions/org.eclipse.jdt.internal.ui.javaeditor.JavaSelectRulerAction" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584375232244" elementId="org.eclipse.wst.validation.ValidationCommand" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584375260654" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584375273623" elementId="org.eclipse.debug.ui.commands.Terminate" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584375285854" elementId="org.eclipse.ui.edit.copy" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584375288447" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584375347492" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584375347628" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584375347818" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584375348001" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584375348190" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584375351638" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584375351839" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584375354801" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584375354978" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584375355305" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584375356532" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584375356699" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584375357018" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584375390498" elementId="org.eclipse.ui.edit.cut" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584375390908" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584375393038" elementId="org.eclipse.jdt.ui.edit.text.java.format" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584375401834" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584375404073" elementId="org.eclipse.jdt.ui.edit.text.java.format" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584375412635" elementId="org.eclipse.jdt.junit.junitShortcut.run" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584375519885" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584375542430" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584375556436" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584375557568" elementId="org.eclipse.jdt.ui.edit.text.java.format" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584375558509" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584375565871" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584375645292" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584375648941" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584375650228" elementId="org.eclipse.jdt.ui.edit.text.java.format" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584375653572" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584375716248" elementId="org.eclipse.jdt.ui.edit.text.java.open.editor" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584375994549" elementId="org.eclipse.ui.edit.cut" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584375995256" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584375997892" elementId="org.eclipse.jdt.ui.edit.text.java.format" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584375998854" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376003724" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376045187" elementId="org.eclipse.jdt.ui.edit.text.java.open.editor" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376057051" elementId="org.eclipse.debug.ui.commands.ToggleBreakpoint" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376069076" elementId="org.eclipse.debug.ui.commands.ToggleBreakpoint" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376086207" elementId="org.eclipse.debug.ui.commands.Resume" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376092921" elementId="org.eclipse.debug.ui.commands.Resume" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376096696" elementId="org.eclipse.debug.ui.commands.Resume" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376109813" elementId="org.eclipse.debug.ui.commands.ToggleBreakpoint" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376115957" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376136505" elementId="org.eclipse.jdt.ui.edit.text.java.open.editor" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376216863" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376223265" elementId="org.eclipse.jdt.junit.junitShortcut.run" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376272570" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376289946" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376314440" elementId="org.eclipse.jdt.ui.edit.text.java.open.editor" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376326800" elementId="org.eclipse.debug.ui.commands.ToggleBreakpoint" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376347860" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376348950" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376351071" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376357620" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376358210" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376361641" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376363164" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376365038" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376369400" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376382203" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376386286" elementId="org.eclipse.debug.ui.commands.Terminate" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376575770" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376648009" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376648169" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376648279" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376648509" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376648679" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376648859" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376649040" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376649238" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376710269" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376710419" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376710671" elementId="org.eclipse.ui.edit.text.deleteNextWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376719100" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376719240" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376719372" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376719500" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376719659" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376780879" elementId="org.eclipse.jdt.ui.edit.text.java.format" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376874620" elementId="org.eclipse.ui.edit.cut" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376875950" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376952170" elementId="org.eclipse.ui.edit.cut" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376953120" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584377058370" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584377144268" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584377147095" elementId="org.eclipse.jdt.ui.edit.text.java.format" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584377147900" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584377150303" elementId="org.eclipse.jdt.ui.edit.text.java.organize.imports" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584377157637" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584377189992" elementId="org.eclipse.jdt.junit.junitShortcut.run" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584377255119" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584377285831" elementId="org.eclipse.ui.edit.text.select.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584377288453" elementId="org.eclipse.jdt.ui.edit.text.java.format" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584377289127" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584377319121" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584377403805" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584377435516" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584377454125" elementId="org.eclipse.debug.ui.commands.RunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584377471182" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584377473106" elementId="org.eclipse.debug.ui.commands.RunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584377488426" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584377607568" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584377607756" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584377659823" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584377660916" elementId="org.eclipse.debug.ui.commands.RunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584377741182" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584377741658" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584377807567" elementId="org.eclipse.jdt.ui.edit.text.java.format" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584377904920" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584377905075" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584377911781" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584377917138" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584377959062" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584377974453" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378077278" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378077618" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378086938" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378087138" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378119213" elementId="org.eclipse.jdt.ui.edit.text.java.format" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378120134" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378137504" elementId="org.eclipse.jdt.ui.edit.text.java.rename.element" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378161978" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378217178" elementId="org.eclipse.ui.edit.cut" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378217562" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378220868" elementId="org.eclipse.jdt.ui.edit.text.java.format" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378221314" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378227610" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378247206" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378262608" elementId="org.eclipse.jdt.ui.edit.text.java.format" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378263502" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378266914" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378287497" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378291166" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378321464" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378321953" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378322622" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378323122" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378324643" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378326197" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378326502" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378326721" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378326992" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378381773" elementId="org.eclipse.debug.ui.commands.Terminate" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378394527" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378414013" elementId="org.eclipse.jdt.junit.junitShortcut.run" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378505020" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378511704" elementId="org.eclipse.ui.edit.cut" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378512175" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378520487" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378522236" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378535701" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378565164" elementId="org.eclipse.jdt.ui.edit.text.java.format" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378565833" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378568740" elementId="org.eclipse.jdt.junit.junitShortcut.rerunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378602707" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378603020" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378603250" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378603480" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378603851" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378608140" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378608781" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378609160" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378609990" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378610313" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378610660" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378610920" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378611290" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378616003" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378616462" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378627506" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378629090" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378629577" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378630200" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378630820" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378631220" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378631578" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378631910" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378632102" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378632404" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378632610" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378635230" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378638990" elementId="org.eclipse.debug.ui.commands.Resume" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378654731" elementId="com.genuitec.myeclipse.breadcrumb.togglebreadcrumbcommand" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378655935" elementId="com.genuitec.myeclipse.breadcrumb.togglebreadcrumbcommand" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378684970" elementId="org.eclipse.ui.edit.cut" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378685413" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378686919" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378687491" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378687988" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378688480" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378689819" elementId="org.eclipse.jdt.ui.edit.text.java.format" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378690620" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378696196" elementId="org.eclipse.jdt.junit.junitShortcut.run" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378751459" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378826518" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378857862" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378858041" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378858912" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378942856" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378943012" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378943142" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378943422" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378989146" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378989279" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378989436" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378989602" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378990062" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378990342" elementId="org.eclipse.jdt.ui.edit.text.java.correction.assist.proposals" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584379081457" elementId="org.eclipse.jdt.ui.edit.text.java.rename.element" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584379118492" elementId="org.eclipse.ui.edit.text.select.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584379118649" elementId="org.eclipse.ui.edit.text.select.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584379118828" elementId="org.eclipse.ui.edit.text.select.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584379118998" elementId="org.eclipse.ui.edit.text.select.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584379119325" elementId="org.eclipse.ui.edit.text.select.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584379123755" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584379125443" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584379137162" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584379155038" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584379175512" elementId="org.eclipse.ui.edit.cut" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584379176412" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584379182873" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584379228208" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584379229477" elementId="org.eclipse.debug.ui.commands.RunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584379263982" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584379269437" elementId="org.eclipse.debug.ui.commands.RunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584379361876" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584379365667" elementId="org.eclipse.jdt.ui.edit.text.java.format" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584379366294" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584379368388" elementId="org.eclipse.jdt.ui.edit.text.java.format" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584379369067" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584379801384" elementId="org.eclipse.ui.edit.copy" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584379802594" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584379889887" elementId="org.eclipse.jdt.ui.edit.text.java.correction.assist.proposals" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584379981384" elementId="org.eclipse.ui.edit.text.select.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584380004695" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584380045164" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584380045584" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584380107434" elementId="org.eclipse.ui.edit.cut" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584380107855" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584380110194" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584380164634" elementId="org.eclipse.ui.edit.cut" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584380165004" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584380173484" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584380175550" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584380175725" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584380175914" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584380176063" elementId="org.eclipse.ui.edit.text.deleteNextWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584380183522" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584380298716" elementId="org.eclipse.jdt.ui.edit.text.java.format" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584380299368" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584380331200" elementId="org.eclipse.jdt.ui.edit.text.java.correction.assist.proposals" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584380338069" elementId="org.eclipse.ui.edit.cut" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584380373265" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584380382370" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584380382515" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584380382640" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584380382780" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584380382941" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584380383491" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584380408867" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584380409521" elementId="org.eclipse.ui.edit.text.deleteNextWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584380412930" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584380413387" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584380417030" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584380417210" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584380433511" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584380434600" elementId="org.eclipse.ui.edit.delete" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584380486974" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584380496175" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584380517510" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584380523901" elementId="org.eclipse.jdt.ui.edit.text.java.organize.imports" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584380525075" elementId="org.eclipse.jdt.ui.edit.text.java.format" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584380525604" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584380538510" elementId="org.eclipse.ui.edit.cut" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584380541711" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584380545385" elementId="org.eclipse.jdt.ui.edit.text.java.format" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584380546305" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584380567432" elementId="org.eclipse.jdt.junit.junitShortcut.run" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584381021339" elementId="org.eclipse.debug.ui.commands.ToggleBreakpoint" action="executeSuccess"/>
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
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375134714" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375134727" elementId="no.hal.learning.exercise.views.ExerciseView" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375134808" elementId="no.hal.learning.exercise.views.ExerciseView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375134828" elementId="no.hal.learning.exercise.views.ExerciseView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375144956" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375144996" elementId="no.hal.learning.exercise.views.ExerciseView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375145084" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375163181" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375163197" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375165999" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375166104" elementId="no.hal.learning.exercise.views.ExerciseView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375173097" elementId="no.hal.learning.exercise.views.ExerciseView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375173120" elementId="org.eclipse.ui.console.ConsoleView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375173124" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375177504" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375177524" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375240692" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375240692" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375240734" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375248972" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375249024" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375407040" elementId="org.eclipse.jdt.ui.PackageExplorer" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375407041" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375407068" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375414110" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375414184" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375414192" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375419050" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375419068" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375422473" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375422487" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375422672" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375422715" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375422768" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375425179" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375425195" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375425354" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375425408" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375439853" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375439881" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375439929" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375565128" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375565138" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375575525" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375575562" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375575620" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375588495" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375588520" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375588566" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375652864" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375652879" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375667303" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375667340" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375667398" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375671250" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375671264" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375671456" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375671513" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375677308" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375677328" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375677733" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375677778" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375688322" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375688347" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375688399" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375690731" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375690755" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375690806" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375711358" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375711382" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375712055" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375712106" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375712658" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375712668" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375712836" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375712892" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375713508" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375713518" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375713716" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375713758" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375714124" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375714138" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375714860" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375714885" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375787351" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375787379" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584375787429" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376002604" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376002615" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376010297" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376010338" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376010385" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376020721" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376020734" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376020898" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376020945" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376040792" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376040807" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376041675" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376041726" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376053240" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376053268" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376053313" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376070977" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376070987" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376074644" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376074686" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376112737" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376112756" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376119767" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376119797" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376124427" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376124442" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376124654" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376124690" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376124737" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376125570" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376125583" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376125766" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376125814" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376126337" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376126347" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376126577" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376126627" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376171675" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376171700" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376171746" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376221093" elementId="org.eclipse.jdt.ui.PackageExplorer" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376221094" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376221127" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376224675" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376224740" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376224748" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376237537" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376237563" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376289300" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376289310" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376305903" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376305941" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376305990" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376306771" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376306784" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376306971" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376307030" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376309660" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376309671" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376310052" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376310100" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376324004" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376324033" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376324079" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376336300" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376336310" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376339955" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376340014" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584376466890" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377135661" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377135725" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377146058" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377146082" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377182688" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377182725" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377182726" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377182735" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377184096" elementId="org.eclipse.debug.ui.DebugView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377184096" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377184105" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377185290" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377185328" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377187180" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377187211" elementId="org.eclipse.jdt.ui.PackageExplorer" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377187220" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377191453" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377191524" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377191530" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377195965" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377195986" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377203959" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377203970" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377204185" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377204221" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377204276" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377206630" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377206659" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377206704" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377318286" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377318296" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377330292" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377330329" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377330379" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377334112" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377334118" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377334302" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377334356" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377335838" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377335851" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377336019" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377336071" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377339754" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377339779" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377339825" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377343691" elementId="org.eclipse.jdt.ui.PackageExplorer" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377343692" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377343725" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377345050" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377345074" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377915437" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377915438" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377915478" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377929572" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584377929588" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378160771" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378160785" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378170238" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378170265" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378226650" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378226660" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378234063" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378234088" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378266838" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378266888" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378270781" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378270808" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378291093" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378291132" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378296082" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378296102" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378299902" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378299917" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378300685" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378300727" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378300772" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378304483" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378304508" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378304555" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378312512" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378312522" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378316338" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378316375" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378377382" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378377403" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378411123" elementId="org.eclipse.jdt.ui.PackageExplorer" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378411124" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378411152" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378415477" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378415552" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378415559" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378419130" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378419152" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378522159" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378522193" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378531753" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378531777" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378567391" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378567401" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378570050" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378570082" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378595890" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378595910" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378599165" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378599223" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378605230" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="C:/Users/amath/.m2/repository/junit/junit/4.12/junit-4.12-sources.jar/junit/framework/TestCase.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378605242" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378605256" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="C:/Users/amath/.m2/repository/junit/junit/4.12/junit-4.12-sources.jar/junit/framework/TestCase.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378605436" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="C:/Users/amath/.m2/repository/junit/junit/4.12/junit-4.12-sources.jar/junit/framework/TestCase.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378619198" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="C:/Users/amath/.m2/repository/junit/junit/4.12/junit-4.12-sources.jar/junit/framework/TestResult.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378619210" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378619269" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378619280" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="C:/Users/amath/.m2/repository/junit/junit/4.12/junit-4.12-sources.jar/junit/framework/TestResult.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378627630" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="C:/Users/amath/.m2/repository/junit/junit/4.12/junit-4.12-sources.jar/junit/framework/TestResult.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378627637" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378627652" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="C:/Users/amath/.m2/repository/junit/junit/4.12/junit-4.12-sources.jar/junit/framework/TestResult.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378627814" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="C:/Users/amath/.m2/repository/junit/junit/4.12/junit-4.12-sources.jar/junit/framework/TestResult.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378632254" elementId="org.eclipse.debug.ui.sourcelookup.CommonSourceNotFoundEditor" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378632259" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="C:/Users/amath/.m2/repository/junit/junit/4.12/junit-4.12-sources.jar/org/junit/internal/runners/JUnit38ClassRunner.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378632272" elementId="org.eclipse.debug.ui.sourcelookup.CommonSourceNotFoundEditor" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378632300" elementId="org.eclipse.debug.ui.sourcelookup.CommonSourceNotFoundEditor" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378632316" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="C:/Users/amath/.m2/repository/junit/junit/4.12/junit-4.12-sources.jar/org/junit/internal/runners/JUnit38ClassRunner.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378634143" elementId="org.eclipse.debug.ui.sourcelookup.CommonSourceNotFoundEditor" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378634180" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378634237" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378634255" elementId="org.eclipse.debug.ui.sourcelookup.CommonSourceNotFoundEditor" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378635261" elementId="org.eclipse.debug.ui.sourcelookup.CommonSourceNotFoundEditor" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378635267" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378635280" elementId="org.eclipse.debug.ui.sourcelookup.CommonSourceNotFoundEditor" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378635307" elementId="org.eclipse.debug.ui.sourcelookup.CommonSourceNotFoundEditor" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378636758" elementId="org.eclipse.debug.ui.sourcelookup.CommonSourceNotFoundEditor" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378636800" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378636864" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378636880" elementId="org.eclipse.debug.ui.sourcelookup.CommonSourceNotFoundEditor" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378665000" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378665010" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378668736" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378668750" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378693890" elementId="org.eclipse.jdt.ui.PackageExplorer" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378693891" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378693920" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378697668" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378697730" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378697733" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378701630" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378701652" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378703481" elementId="org.eclipse.jdt.ui.PackageExplorer" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378703482" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378703510" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378716065" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378716083" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378717353" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378720631" elementId="no.hal.learning.exercise.views.ExerciseView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378720632" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378720731" elementId="no.hal.learning.exercise.views.ExerciseView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378741620" elementId="no.hal.learning.exercise.views.ExerciseView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378741620" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378752582" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378752652" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378752814" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584378752908" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584379230556" elementId="org.eclipse.ui.console.ConsoleView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584379231619" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584379231632" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584379246687" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584379246722" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584379246777" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584379266968" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584379266994" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584379267039" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584379271558" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584379271567" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584379343018" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584379343037" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584379357122" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584379357152" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584379357199" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584379367311" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584379367342" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584379367392" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584379405484" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584379405484" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584379405905" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584379405959" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584379406109" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584379406194" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584379412671" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584379412682" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584379412731" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584379412741" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584379432899" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584379432924" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584379432971" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584379467191" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584379467201" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584379470591" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584379470620" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584379482532" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584379482560" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584379482607" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584379483482" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584379483507" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584379483559" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584380329186" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584380329211" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584380329258" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584380403959" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584380403984" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584380404031" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584380406088" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584380406115" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584380406165" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584380475295" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584380475319" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584380475369" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584380487760" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584380487786" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584380487837" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584380563791" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584380563813" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584380568908" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584380568966" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584380568971" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584380570876" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584380570907" elementId="org.eclipse.jdt.ui.PackageExplorer" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584380570911" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584380584671" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584380584690" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584380593124" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584380593153" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584380593191" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584380600656" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584380600681" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584380600726" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584381031041" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584381031190" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableListListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584381031312" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584381031430" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584381031460" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584381031523" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584381037706" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584381037722" elementId="org.eclipse.debug.ui.DebugView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584381037741" elementId="org.eclipse.jdt.debug.ui.DisplayView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584381037758" elementId="org.eclipse.debug.ui.BreakpointView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584381037768" elementId="org.eclipse.debug.ui.ExpressionView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584381037783" elementId="org.eclipse.debug.ui.VariableView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584381037793" elementId="org.eclipse.ui.views.ProblemView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584381037814" elementId="no.hal.learning.exercise.views.ExerciseView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584381037844" elementId="org.eclipse.ui.console.ConsoleView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584381037869" elementId="org.eclipse.mylyn.tasks.ui.views.tasks" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584381037892" elementId="org.eclipse.ui.views.ContentOutline" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584381037903" elementId="org.eclipse.jdt.junit.ResultView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584381037933" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1584381037933" elementId="org.eclipse.jdt.ui.PackageExplorer" action="closed"/>
      </proposals>
    </proposals>
  </exercise:ExerciseProposals>
</xmi:XMI>
