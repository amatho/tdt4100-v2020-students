<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="ObservableList">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write the source code for the abstract ObservableList superclass."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="patterns.observable.ObservableList"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write the source code for the ObservableListListener interface."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="patterns.observable.ObservableListListener"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write the source code for the ObservableHighscoreList class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="patterns.observable.ObservableHighscoreList"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the ObservableHighscoreList class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="patterns.observable.ObservableHighscoreList"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write the source code for the ObservableHighscoreListProgram class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="patterns.observable.ObservableHighscoreListProgram"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the ObservableHighscoreListProgram class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="patterns.observable.ObservableHighscoreListProgram"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the ObservableHighscoreList JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="patterns.observable.ObservableHighscoreListTest"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the ObservableList JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="patterns.observable.ObservableListTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="patterns.observable.Observable*" action="suspend.breakpoint"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584380183494" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="48" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:StringEdit" storedString="package patterns.observable;&#xA;&#xA;import java.util.ArrayList;&#xA;import java.util.Collection;&#xA;import java.util.List;&#xA;&#xA;public abstract class ObservableList {&#xA;    public List&lt;Object> elements = new ArrayList&lt;>();&#xA;    public Collection&lt;ObservableListListener> listeners = new ArrayList&lt;>();&#xA;    &#xA;    public int size() {&#xA;        return elements.size();&#xA;    }&#xA;    &#xA;    public Object getElement(int index) {&#xA;        return elements.get(index);&#xA;    }&#xA;    &#xA;    public abstract boolean acceptsElement(Object element);&#xA;    &#xA;    protected void addElement(int index, Object element) {&#xA;        if (acceptsElement(element)) {&#xA;            elements.add(index, element);&#xA;        } else {&#xA;            throw new IllegalArgumentException(&quot;Object not accepted&quot;);&#xA;        }&#xA;    }&#xA;    &#xA;    protected void addElement(Object element) {&#xA;        if (acceptsElement(element)) {&#xA;            elements.add(element);&#xA;        } else {&#xA;            throw new IllegalArgumentException(&quot;Object not accepted&quot;);&#xA;        }&#xA;    }&#xA;    &#xA;    protected void removeElement(int index) {&#xA;        elements.remove(index);&#xA;    }&#xA;    &#xA;    public void addObservableListListener(ObservableListListener listener) {&#xA;        listeners.add(listener);&#xA;    }&#xA;    &#xA;    public void removeObservableListListener(ObservableListListener listener) {&#xA;        listeners.remove(listener);&#xA;    }&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584380299340" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="48" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;    public int size() {&#xA;        return elements.size();&#xA;    }&#xA;&#xA;    public Object getElement(int index) {&#xA;        return elements.get(index);&#xA;    }&#xA;&#xA;    public abstract boolean acceptsElement(Object element);&#xA;&#xA;    protected void addElement(int index, Object element) {&#xA;        if (acceptsElement(element)) {&#xA;            elements.add(index, element);&#xA;        } else {&#xA;            throw new IllegalArgumentException(&quot;Object not accepted&quot;);&#xA;        }&#xA;    }&#xA;&#xA;    protected void addElement(Object element) {&#xA;        if (acceptsElement(element)) {&#xA;            elements.add(element);&#xA;        } else {&#xA;            throw new IllegalArgumentException(&quot;Object not accepted&quot;);&#xA;        }&#xA;    }&#xA;&#xA;    protected void removeElement(int index) {&#xA;        elements.remove(index);&#xA;    }&#xA;&#xA;    public void addObservableListListener(ObservableListListener listener) {&#xA;        listeners.add(listener);&#xA;    }&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="281" end="-126"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584380486955" resourcePath="/ovinger/src/patterns/observable/ObservableList.java" sizeMeasure="53" className="patterns.observable.ObservableList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="    &#xA;    @Override&#xA;    public String toString() {&#xA;        return elements.toString();&#xA;    }&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="1287" end="-3"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a"/>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584375156341" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="44" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:StringEdit" storedString="package patterns.observable;&#xA;&#xA;import java.util.ArrayList;&#xA;&#xA;public class ObservableHighscoreList extends ObservableList {&#xA;    private final int maxSize;&#xA;    private final ArrayList&lt;Integer> highscores;&#xA;    private final ArrayList&lt;ObservableListListener> listeners;&#xA;&#xA;    public ObservableHighscoreList(int highscoreLength) {&#xA;        maxSize = highscoreLength;&#xA;        highscores = new ArrayList&lt;>(highscoreLength);&#xA;        listeners = new ArrayList&lt;>();&#xA;    }&#xA;&#xA;    public void addResult(int result) {&#xA;        if (size() == maxSize) {&#xA;            for (int i = 0; i &lt; size(); i++) {&#xA;                if (result &lt; highscores.get(i)) {&#xA;                    highscores.remove(size() - 1);&#xA;                    highscores.add(i, result);&#xA;                }&#xA;            }&#xA;        } else {&#xA;            highscores.add(result);&#xA;        }&#xA;    }&#xA;&#xA;    public int getElement(int resultIndex) {&#xA;        return highscores.get(resultIndex);&#xA;    }&#xA;&#xA;    public int size() {&#xA;        return highscores.size();&#xA;    }&#xA;&#xA;    public void addObservableListListener(ObservableListListener listener) {&#xA;        listeners.add(listener);&#xA;    }&#xA;&#xA;    public void removeObservableListListener(ObservableListListener listener) {&#xA;        listeners.remove(listener);&#xA;    }&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584375401808" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="47" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="0) {&#xA;            highscores.add(result);&#xA;        } else {&#xA;            for (int i = 0; i &lt; size(); i++) {&#xA;                if (result &lt; highscores.get(i)) {&#xA;                    if (size() == maxSize) {&#xA;                        highscores.remove(size() - 1);&#xA;                    }&#xA;&#xA;                    highscores.add(i, result);&#xA;                }&#xA;            }" edit="/1/@proposals.0/@proposals.2/@attempts.0/@edit" start="521" end="-421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584375519850" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="53" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="var resultAdded = false;&#xA;            for (int i = 0; i &lt; size(); i++) {&#xA;                if (result &lt; highscores.get(i)) {&#xA;                    if (size() == maxSize) {&#xA;                        highscores.remove(size() - 1);&#xA;                    }&#xA;&#xA;                    highscores.add(i, result);&#xA;                    resultAdded = true;&#xA;                }&#xA;            }&#xA;            &#xA;            if (!resultAdded) {&#xA;                highscores.add(result);" edit="/1/@proposals.0/@proposals.2/@attempts.1/@edit" start="591" end="-435"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584375542404" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="53" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" &amp;&amp; size() != maxSize" edit="/1/@proposals.0/@proposals.2/@attempts.2/@edit" start="996" end="-478"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584375556408" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="53" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&lt;" edit="/1/@proposals.0/@proposals.2/@attempts.3/@edit" start="1007" end="-486"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584375558485" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="53" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;" edit="/1/@proposals.0/@proposals.2/@attempts.4/@edit" start="955" end="-526"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584375648908" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="54" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="    break;&#xA;                " edit="/1/@proposals.0/@proposals.2/@attempts.5/@edit" start="939" end="-543"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584375998825" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="66" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="var resultAdded = false;&#xA;        var addedIndex = -1;&#xA;&#xA;        if (size() == 0) {&#xA;            highscores.add(result);&#xA;            resultAdded = true;&#xA;            addedIndex = 0;&#xA;        } else {&#xA;            for (int i = 0; i &lt; size(); i++) {&#xA;                if (result &lt; highscores.get(i)) {&#xA;                    if (size() == maxSize) {&#xA;                        highscores.remove(size() - 1);&#xA;                    }&#xA;&#xA;                    highscores.add(i, result);&#xA;                    resultAdded = true;&#xA;                    addedIndex = i;&#xA;                    break;&#xA;                }&#xA;            }&#xA;&#xA;            if (!resultAdded &amp;&amp; size() &lt; maxSize) {&#xA;                highscores.add(result);&#xA;                addedIndex = size() - 1;&#xA;            }&#xA;        }&#xA;&#xA;        if (resultAdded) {&#xA;            for (var listener : listeners) {&#xA;                listener.listChanged(this, addedIndex" edit="/1/@proposals.0/@proposals.2/@attempts.6/@edit" start="507" end="-437"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584376216837" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="66" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="1;&#xA;        } else {&#xA;            for (int i = 0; i &lt; size(); i++) {&#xA;                if (result &lt; highscores.get(i)) {&#xA;                    if (size() == maxSize) {&#xA;                        highscores.remove(size() - 1);&#xA;                    }&#xA;&#xA;                    highscores.add(i, result);&#xA;                    resultAdded = true;&#xA;                    addedIndex = i + 1;&#xA;                    break;&#xA;                }&#xA;            }&#xA;&#xA;            if (!resultAdded &amp;&amp; size() &lt; maxSize) {&#xA;                highscores.add(result);&#xA;                addedIndex = size()" edit="/1/@proposals.0/@proposals.2/@attempts.7/@edit" start="682" end="-589"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584376272548" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="66" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="0;&#xA;        } else {&#xA;            for (int i = 0; i &lt; size(); i++) {&#xA;                if (result &lt; highscores.get(i)) {&#xA;                    if (size() == maxSize) {&#xA;                        highscores.remove(size() - 1);&#xA;                    }&#xA;&#xA;                    highscores.add(i, result);&#xA;                    resultAdded = true;&#xA;                    addedIndex = i;&#xA;                    break;&#xA;                }&#xA;            }&#xA;&#xA;            if (!resultAdded &amp;&amp; size() &lt; maxSize) {&#xA;                highscores.add(result);&#xA;                addedIndex = size() - 1" edit="/1/@proposals.0/@proposals.2/@attempts.8/@edit" start="682" end="-589"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584377144235" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="75" warningCount="1" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="rivate boolean add(int result) {&#xA;        if (size() == 0) {&#xA;            highscores.add(result);&#xA;            return true;&#xA;        } else if (size() &lt; maxSize) {&#xA;            var index = 0;&#xA;            for (int i = 0; i &lt; size(); i++) {&#xA;                if (result &lt; highscores.get(i)) {&#xA;                    highscores.add(result);&#xA;                    return true;&#xA;                }&#xA;            }&#xA;        }&#xA;&#xA;        return false;&#xA;    }&#xA;&#xA;    public void addResult(int result) {&#xA;        final var size = size();&#xA;        var addedIndex = size;&#xA;        var resultAdded = add(result);&#xA;        &#xA;        if (!resultAdded) {&#xA;            for (int i = 0; i &lt; size; i++) {&#xA;                if (result &lt; highscores.get(i)) {&#xA;                    if (size == maxSize) {&#xA;                        highscores.remove(size - 1);&#xA;                    }&#xA;&#xA;                    highscores.add(i, result);&#xA;                    resultAdded = true;&#xA;                    addedIndex = i;&#xA;                    break;&#xA;                }" edit="/1/@proposals.0/@proposals.2/@attempts.9/@edit" start="464" end="-588"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="21" charStart="660" charEnd="665" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584377147875" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="75" warningCount="1" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;" edit="/1/@proposals.0/@proposals.2/@attempts.10/@edit" start="1040" end="-997"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="21" charStart="660" charEnd="665" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584377157615" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="74" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="f" edit="/1/@proposals.0/@proposals.2/@attempts.11/@edit" start="636" end="-1374"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584377255089" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="77" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="    &#xA;            highscores.add(result);&#xA;            return true;&#xA;        " edit="/1/@proposals.0/@proposals.2/@attempts.12/@edit" start="838" end="-1173"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584377289104" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="77" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="i, result);&#xA;                    return true;&#xA;                }&#xA;            }&#xA;" edit="/1/@proposals.0/@proposals.2/@attempts.13/@edit" start="756" end="-1243"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584377403776" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="81" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="    &#xA;        for (var i = 0; i &lt; maxSize; i++) {&#xA;            highscores.add(null);&#xA;        }&#xA;    " edit="/1/@proposals.0/@proposals.2/@attempts.14/@edit" start="456" end="-1620"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584377454273" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="86" warningCount="1" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="    &#xA;    public static void main(String[] args) {&#xA;        Integer i = null;&#xA;        System.out.println(3 &lt; i);&#xA;    }&#xA;" edit="/1/@proposals.0/@proposals.2/@attempts.15/@edit" start="2170" end="-3"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="84" charStart="2360" charEnd="2361" severity="1" problemCategory="90" problemType="536871373"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584377471146" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="86" warningCount="1" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="i.compareTo(3)" edit="/1/@proposals.0/@proposals.2/@attempts.16/@edit" start="2273" end="-12"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="84" charStart="2356" charEnd="2357" severity="1" problemCategory="90" problemType="536871363"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584377659786" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="97" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="rivate static int compare(Integer left, Integer right) {&#xA;        if (left == null &amp;&amp; right == null) {&#xA;            return 0;&#xA;        } else if (left == null) {&#xA;            return -1;&#xA;        } else if (right == null) {&#xA;            return 1;&#xA;        } else {&#xA;            return left - right;&#xA;        }&#xA;    }&#xA;    &#xA;    public static void main(String[] args) {&#xA;        System.out.println(compare(3, null" edit="/1/@proposals.0/@proposals.2/@attempts.17/@edit" start="2180" end="-13"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584377911748" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="75" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;        for (var i = 0; i &lt; maxSize; i++) {&#xA;            highscores.add(null);&#xA;        }&#xA;    }&#xA;&#xA;    private void add(int index, int element) {&#xA;        highscores.remove(maxSize - 1);&#xA;        highscores.add(index, element);&#xA;    }&#xA;&#xA;    public void addResult(int result) {&#xA;        var addedIndex = 0;&#xA;        var resultAdded = false;&#xA;&#xA;        for (var i = 0; i &lt; maxSize; i++) {&#xA;            if (compare(highscores.get(i), result) > 0) {&#xA;                add(i, result);&#xA;                resultAdded = true;&#xA;                break;&#xA;            }&#xA;        }&#xA;&#xA;        if (resultAdded) {&#xA;            for (var listener : listeners) {&#xA;                listener.listChanged(this, addedIndex);&#xA;            }&#xA;        }&#xA;    }&#xA;&#xA;    public int getElement(int resultIndex) {&#xA;        return highscores.get(resultIndex);&#xA;    }&#xA;&#xA;    public int size() {&#xA;        return highscores.size();&#xA;    }&#xA;&#xA;    public void addObservableListListener(ObservableListListener listener) {&#xA;        listeners.add(listener);&#xA;    }&#xA;&#xA;    public void removeObservableListListener(ObservableListListener listener) {&#xA;        listeners.remove(listener);&#xA;    }&#xA;&#xA;    private static int compare(Integer left, Integer right) {&#xA;        if (left == null &amp;&amp; right == null) {&#xA;            return 0;&#xA;        } else if (left == null) {&#xA;            return -1;&#xA;        } else if (right == null) {&#xA;            return 1;&#xA;        } else {&#xA;            return left - right;&#xA;        }&#xA;    }&#xA;" edit="/1/@proposals.0/@proposals.2/@attempts.18/@edit" start="452" end="-101"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584378120105" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="79" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="    }&#xA;&#xA;    private void add(int index, int element) {&#xA;        highscores.remove(maxSize - 1);&#xA;        highscores.add(index, element);&#xA;    }&#xA;&#xA;    private Integer getOrDefault(int index) {&#xA;        if (index &lt; 0 || index > maxSize) {&#xA;            return null;&#xA;        }&#xA;&#xA;        return highscores.get(index);&#xA;    }&#xA;&#xA;    public void addResult(int result) {&#xA;        var addedIndex = 0;&#xA;        var resultAdded = false;&#xA;&#xA;        for (var i = 0; i &lt; maxSize; i++) {&#xA;            if (compare(getOrDefaul" edit="/1/@proposals.0/@proposals.2/@attempts.19/@edit" start="452" end="-1109"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584378146368" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="79" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Null(int index) {&#xA;        if (index &lt; 0 || index > maxSize) {&#xA;            return null;&#xA;        }&#xA;&#xA;        return highscores.get(index);&#xA;    }&#xA;&#xA;    public void addResult(int result) {&#xA;        var addedIndex = 0;&#xA;        var resultAdded = false;&#xA;&#xA;        for (var i = 0; i &lt; maxSize; i++) {&#xA;            if (compare(getOrNull" edit="/1/@proposals.0/@proposals.2/@attempts.20/@edit" start="618" end="-1108"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584378221288" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="84" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (size() == 0) {&#xA;            highscores.add(result);&#xA;            resultAdded = true;&#xA;        } else {&#xA;            for (var i = 0; i &lt; maxSize; i++) {&#xA;                if (compare(getOrNull(i), result) > 0) {&#xA;                    add(i, result);&#xA;                    resultAdded = true;&#xA;                    break;&#xA;                }" edit="/1/@proposals.0/@proposals.2/@attempts.21/@edit" start="871" end="-998"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584378247183" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="84" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="size()" edit="/1/@proposals.0/@proposals.2/@attempts.22/@edit" start="669" end="-1522"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584378263478" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="79" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="for (var i = 0; i &lt; maxSize; i++) {&#xA;            if (compare(getOrNull(i), result) > 0) {&#xA;                add(i, result);&#xA;                resultAdded = true;&#xA;                break;" edit="/1/@proposals.0/@proposals.2/@attempts.23/@edit" start="870" end="-998"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584378287470" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="79" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="=" edit="/1/@proposals.0/@proposals.2/@attempts.24/@edit" start="668" end="-1379"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584378394502" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="79" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="1;&#xA;        } else if (right == null) {&#xA;            return -" edit="/1/@proposals.0/@proposals.2/@attempts.25/@edit" start="1819" end="-170"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584378520460" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="85" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (size() == 0) {&#xA;            highscores.add(result);&#xA;            resultAdded = true;&#xA;        } else {&#xA;            for (var i = 0; i &lt; size(); i++) {&#xA;                if (compare(getOrNull(i), result) > 0) {&#xA;                    add(i, result);&#xA;                    resultAdded = true;&#xA;                    addedIndex = i;&#xA;                    break;&#xA;                }" edit="/1/@proposals.0/@proposals.2/@attempts.26/@edit" start="871" end="-998"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584378535672" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="85" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="maxSize" edit="/1/@proposals.0/@proposals.2/@attempts.27/@edit" start="1007" end="-1220"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584378565811" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="80" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="for (var i = 0; i &lt; maxSize; i++) {&#xA;            if (compare(getOrNull(i), result) > 0) {&#xA;                add(i, result);&#xA;                resultAdded = true;&#xA;                addedIndex = i;&#xA;                break;" edit="/1/@proposals.0/@proposals.2/@attempts.28/@edit" start="871" end="-998"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584378690587" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="83" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (size() == maxSize) {&#xA;            highscores.remove(maxSize - 1);&#xA;        }&#xA;" edit="/1/@proposals.0/@proposals.2/@attempts.29/@edit" start="514" end="-1535"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584379263962" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="88" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="    &#xA;    @Override&#xA;    public String toString() {&#xA;        return highscores.toString();&#xA;    }&#xA;" edit="/1/@proposals.0/@proposals.2/@attempts.30/@edit" start="1715" end="-413"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584379361837" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="84" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="}" edit="/1/@proposals.0/@proposals.2/@attempts.31/@edit" start="2121" end="-2"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584379366274" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="84" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;" edit="/1/@proposals.0/@proposals.2/@attempts.32/@edit" start="1715" end="-404"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584380496154" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="69" errorCount="1" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;    public ObservableHighscoreList(int highscoreLength) {&#xA;        maxSize = highscoreLength;&#xA;    }&#xA;    &#xA;    @Override&#xA;    public boolean acceptsElement(Object element) {&#xA;        return element instanceof Integer;&#xA;    }&#xA;&#xA;    private void add(int index, int element) {&#xA;        if (size() == maxSize) {&#xA;            removeElement(maxSize - 1);&#xA;        }&#xA;&#xA;        addElement(index, element);&#xA;    }&#xA;&#xA;    private Integer getOrNull(int index) {&#xA;        if (index &lt; 0 || index >= size()) {&#xA;            return null;&#xA;        }&#xA;&#xA;        return getElement(index);&#xA;    }&#xA;&#xA;    public void addResult(int result) {&#xA;        var addedIndex = 0;&#xA;        var resultAdded = false;&#xA;&#xA;        for (var i = 0; i &lt; maxSize; i++) {&#xA;            if (compare(getOrNull(i), result) > 0) {&#xA;                add(i, result);&#xA;                resultAdded = true;&#xA;                addedIndex = i;&#xA;                break;&#xA;            }&#xA;        }&#xA;&#xA;        if (resultAdded) {&#xA;            for (var listener : listeners) {&#xA;                listener.listChanged(this, addedIndex);&#xA;            }&#xA;        }&#xA;    }&#xA;&#xA;    @Override&#xA;    public String toString() {&#xA;        return super" edit="/1/@proposals.0/@proposals.2/@attempts.33/@edit" start="152" end="-334"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="30" charStart="714" charEnd="731" severity="2" problemCategory="40" problemType="16777235"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584380517480" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="69" warningCount="1" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="(Integer) " edit="/1/@proposals.0/@proposals.2/@attempts.34/@edit" start="685" end="-931"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="39" charEnd="58" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584380525580" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="67" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="p" edit="/1/@proposals.0/@proposals.2/@attempts.35/@edit" start="30" end="-1566"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584380546273" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreList.java" sizeMeasure="67" className="patterns.observable.ObservableHighscoreList">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;    @Override&#xA;    public boolean acceptsElement(Object element) {&#xA;        return element instanceof Integer;&#xA;    }&#xA;&#xA;    public void addResult(int result) {&#xA;        var addedIndex = 0;&#xA;        var resultAdded = false;&#xA;&#xA;        for (var i = 0; i &lt; maxSize; i++) {&#xA;            if (compare(getOrNull(i), result) > 0) {&#xA;                add(i, result);&#xA;                resultAdded = true;&#xA;                addedIndex = i;&#xA;                break;&#xA;            }&#xA;        }&#xA;&#xA;        if (resultAdded) {&#xA;            for (var listener : listeners) {&#xA;                listener.listChanged(this, addedIndex);&#xA;            }&#xA;        }&#xA;    }&#xA;&#xA;    @Override&#xA;    public String toString() {&#xA;        return super.toString();&#xA;    }&#xA;&#xA;    private void add(int index, int element) {&#xA;        if (size() == maxSize) {&#xA;            removeElement(maxSize - 1);&#xA;        }&#xA;&#xA;        addElement(index, element);&#xA;    }&#xA;&#xA;    private Integer getOrNull(int index) {&#xA;        if (index &lt; 0 || index >= size()) {&#xA;            return null;&#xA;        }&#xA;&#xA;        return (Integer) getElement(index" edit="/1/@proposals.0/@proposals.2/@attempts.36/@edit" start="223" end="-324"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.3/@q" answer="/0/@parts.0/@tasks.3/@a">
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
      </proposals>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.4/@q" answer="/0/@parts.0/@tasks.4/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584378752517" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="5" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:StringEdit" storedString="package patterns.observable;&#xA;&#xA;public class ObservableHighscoreListProgram {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584379137132" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="30" warningCount="1" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.Scanner;&#xA;&#xA;public class ObservableHighscoreListProgram implements ObservableListListener {&#xA;    private ObservableHighscoreList highscoreList;&#xA;    &#xA;    public void init() {&#xA;        highscoreList = new ObservableHighscoreList(10);&#xA;    }&#xA;    &#xA;    public void run() {&#xA;        var running = true;&#xA;        &#xA;        while (running) {&#xA;            var scanner = new Scanner(System.in);&#xA;            System.out.print(&quot;Enter a result [-1 to quit]: &quot;);&#xA;            &#xA;            var result = scanner.nextInt();&#xA;            highscoreList.addResult(result);&#xA;            &#xA;            running = result != -1;&#xA;        }&#xA;    }&#xA;&#xA;    @Override&#xA;    public void listChanged(ObservableList list, int changedIndex) {&#xA;        System.out.println(&quot;Index of change: &quot; + changedIndex + &quot;\nHighscores: &quot; + highscoreList);&#xA;    }" edit="/1/@proposals.0/@proposals.4/@attempts.0/@edit" start="30" end="-4"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="16" charStart="404" charEnd="411" severity="1" problemCategory="90" problemType="536871799"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584379155018" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="31" warningCount="1" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="    highscoreList.addObservableListListener(this);&#xA;    " edit="/1/@proposals.0/@proposals.4/@attempts.1/@edit" start="279" end="-566"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="17" charStart="460" charEnd="467" severity="1" problemCategory="90" problemType="536871799"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584379182850" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="32" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="var scanner = new Scanner(System.in);&#xA;        while (running) {&#xA;            System.out.print(&quot;Enter a result [-1 to quit]: &quot;);&#xA;            &#xA;            var result = scanner.nextInt();&#xA;            highscoreList.addResult(result);&#xA;            &#xA;            running = result != -1;&#xA;        }&#xA;        &#xA;        scanner.close();" edit="/1/@proposals.0/@proposals.4/@attempts.2/@edit" start="401" end="-199"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584379228177" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="38" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="    &#xA;    public static void main(String[] args) {&#xA;        var p = new ObservableHighscoreListProgram();&#xA;        p.init();&#xA;        p.run();&#xA;    }&#xA;" edit="/1/@proposals.0/@proposals.4/@attempts.3/@edit" start="918" end="-3"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584379369037" resourcePath="/ovinger/src/patterns/observable/ObservableHighscoreListProgram.java" sizeMeasure="38" className="patterns.observable.ObservableHighscoreListProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;    public void init() {&#xA;        highscoreList = new ObservableHighscoreList(10);&#xA;        highscoreList.addObservableListListener(this);&#xA;    }&#xA;&#xA;    public void run() {&#xA;        var running = true;&#xA;        var scanner = new Scanner(System.in);&#xA;        while (running) {&#xA;            System.out.print(&quot;Enter a result [-1 to quit]: &quot;);&#xA;&#xA;            var result = scanner.nextInt();&#xA;            highscoreList.addResult(result);&#xA;&#xA;            running = result != -1;&#xA;        }&#xA;&#xA;        scanner.close();&#xA;    }&#xA;&#xA;    @Override&#xA;    public void listChanged(ObservableList list, int changedIndex) {&#xA;        System.out.println(&quot;Index of change: &quot; + changedIndex + &quot;\nHighscores: &quot; + highscoreList);&#xA;    }&#xA;" edit="/1/@proposals.0/@proposals.4/@attempts.4/@edit" start="188" end="-144"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.5/@q" answer="/0/@parts.0/@tasks.5/@a">
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
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.6/@q" answer="/0/@parts.0/@tasks.6/@a">
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
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.7/@q" answer="/0/@parts.0/@tasks.7/@a"/>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a">
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584375248830" elementId="patterns.observable.ObservableHighscoreList" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376074532" elementId="patterns.observable.ObservableHighscoreList" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376086207" elementId="patterns.observable.ObservableHighscoreList" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376092922" elementId="patterns.observable.ObservableHighscoreList" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584376339833" elementId="patterns.observable.ObservableHighscoreList" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378316212" elementId="patterns.observable.ObservableHighscoreList" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378599027" elementId="patterns.observable.ObservableHighscoreList" action="suspend.breakpoint"/>
      </proposals>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.1/@q" answer="/0/@parts.1/@tasks.1/@a">
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584375260654" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
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
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378321464" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378321953" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378322622" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378323122" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378324643" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378326197" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378326502" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378326721" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1584378326992" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
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
      </proposals>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.2/@q" answer="/0/@parts.1/@tasks.2/@a"/>
      <proposals xsi:type="workbench:PartTaskProposal" question="/0/@parts.1/@tasks.3/@q" answer="/0/@parts.1/@tasks.3/@a"/>
    </proposals>
  </exercise:ExerciseProposals>
</xmi:XMI>
