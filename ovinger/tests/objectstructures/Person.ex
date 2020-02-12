<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="Person">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the Person class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="objectstructures.Person"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the Person class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="objectstructures.Person"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the PersonTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="objectstructures.PersonTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="objectstructures.Person" action="suspend.breakpoint"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1581540281283" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="93" className="objectstructures.Person">
          <edit xsi:type="exercise:StringEdit" storedString="package objectstructures;&#xA;&#xA;import java.util.ArrayList;&#xA;import java.util.List;&#xA;&#xA;public class Person {&#xA;  private static final char MALE = 'M';&#xA;  private static final char FEMALE = 'F';&#xA;  &#xA;  private String name;&#xA;  private char gender;&#xA;  private Person father;&#xA;  private Person mother;&#xA;  private List&lt;Person> children;&#xA;&#xA;  public Person(String name, char gender) {&#xA;    if (gender != MALE &amp;&amp; gender != FEMALE) {&#xA;      throw new IllegalArgumentException(&quot;Gender should be either 'M' or 'F'&quot;);&#xA;    }&#xA;    &#xA;    this.name = name;&#xA;    this.gender = gender;&#xA;    children = new ArrayList&lt;>();&#xA;  }&#xA;&#xA;  public void addChild(Person child) {&#xA;    if (gender == MALE) {&#xA;      child.setFather(this);&#xA;    } else {&#xA;      child.setMother(this);&#xA;    }&#xA;  }&#xA;&#xA;  public void removeChild(Person child) {&#xA;    if (gender == MALE) {&#xA;      child.father = null;&#xA;    } else {&#xA;      child.mother = null;&#xA;    }&#xA;&#xA;    children.remove(child);&#xA;  }&#xA;&#xA;  public void setFather(Person f) {&#xA;    if (f == this) {&#xA;      throw new IllegalArgumentException(&quot;Cannot set father to self&quot;);&#xA;    } else if (f.getGender() != MALE) {&#xA;      throw new IllegalArgumentException(&quot;Cannot set a female as a father&quot;);&#xA;    } else if (father != null) {&#xA;      father.removeChild(this);&#xA;    }&#xA;    &#xA;    father = f;&#xA;    father.children.add(this);&#xA;  }&#xA;&#xA;  public void setMother(Person m) {&#xA;    if (m == this) {&#xA;      throw new IllegalArgumentException(&quot;Cannot set mother to self&quot;);&#xA;    } else if (m.getGender() != FEMALE) {&#xA;      throw new IllegalArgumentException(&quot;Cannot set a male as a mother&quot;);&#xA;    } else if (mother != null) {&#xA;      mother.removeChild(this);&#xA;    }&#xA;    &#xA;    mother = m;&#xA;    mother.children.add(this);&#xA;  }&#xA;&#xA;  public String getName() {&#xA;    return name;&#xA;  }&#xA;&#xA;  public char getGender() {&#xA;    return gender;&#xA;  }&#xA;&#xA;  public Person getFather() {&#xA;    return father;&#xA;  }&#xA;&#xA;  public Person getMother() {&#xA;    return mother;&#xA;  }&#xA;&#xA;  public int getChildCount() {&#xA;    return children.size();&#xA;  }&#xA;&#xA;  public Person getChild(int n) {&#xA;    return children.get(n);&#xA;  }&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1581540284718" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="93" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;  private String name;&#xA;  private char gender;&#xA;  private Person father;&#xA;  private Person mother;&#xA;  private List&lt;Person> children;&#xA;&#xA;  public Person(String name, char gender) {&#xA;    if (gender != MALE &amp;&amp; gender != FEMALE) {&#xA;      throw new IllegalArgumentException(&quot;Gender should be either 'M' or 'F'&quot;);&#xA;    }&#xA;&#xA;    this.name = name;&#xA;    this.gender = gender;&#xA;    children = new ArrayList&lt;>();&#xA;  }&#xA;&#xA;  public void addChild(Person child) {&#xA;    if (gender == MALE) {&#xA;      child.setFather(this);&#xA;    } else {&#xA;      child.setMother(this);&#xA;    }&#xA;  }&#xA;&#xA;  public void removeChild(Person child) {&#xA;    if (gender == MALE) {&#xA;      child.father = null;&#xA;    } else {&#xA;      child.mother = null;&#xA;    }&#xA;&#xA;    children.remove(child);&#xA;  }&#xA;&#xA;  public void setFather(Person f) {&#xA;    if (f == this) {&#xA;      throw new IllegalArgumentException(&quot;Cannot set father to self&quot;);&#xA;    } else if (f.getGender() != MALE) {&#xA;      throw new IllegalArgumentException(&quot;Cannot set a female as a father&quot;);&#xA;    } else if (father != null) {&#xA;      father.removeChild(this);&#xA;    }&#xA;&#xA;    father = f;&#xA;    father.children.add(this);&#xA;  }&#xA;&#xA;  public void setMother(Person m) {&#xA;    if (m == this) {&#xA;      throw new IllegalArgumentException(&quot;Cannot set mother to self&quot;);&#xA;    } else if (m.getGender() != FEMALE) {&#xA;      throw new IllegalArgumentException(&quot;Cannot set a male as a mother&quot;);&#xA;    } else if (mother != null) {&#xA;      mother.removeChild(this);&#xA;    }&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="183" end="-396"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1581540319071" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="97" warningCount="1" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="ublic static final char MALE = 'M';&#xA;  public static final char FEMALE = 'F';&#xA;&#xA;  private String name;&#xA;  private char gender;&#xA;  private Person father;&#xA;  private Person mother;&#xA;  private List&lt;Person> children;&#xA;&#xA;  public Person(String name, char gender) {&#xA;    if (gender != MALE &amp;&amp; gender != FEMALE) {&#xA;      throw new IllegalArgumentException(&quot;Gender should be either 'M' or 'F'&quot;);&#xA;    }&#xA;&#xA;    this.name = name;&#xA;    this.gender = gender;&#xA;    children = new ArrayList&lt;>();&#xA;  }&#xA;&#xA;  public void addChild(Person child) {&#xA;    if (gender == MALE) {&#xA;      child.setFather(this);&#xA;    } else {&#xA;      child.setMother(this);&#xA;    }&#xA;  }&#xA;&#xA;  public void removeChild(Person child) {&#xA;    if (gender == MALE) {&#xA;      child.father = null;&#xA;    } else {&#xA;      child.mother = null;&#xA;    }&#xA;&#xA;    children.remove(child);&#xA;  }&#xA;&#xA;  public void setFather(Person f) {&#xA;    if (f == this) {&#xA;      throw new IllegalArgumentException(&quot;Cannot set father to self&quot;);&#xA;    } else if (f.getGender() != MALE) {&#xA;      throw new IllegalArgumentException(&quot;Cannot set a female as a father&quot;);&#xA;    } else if (father != null) {&#xA;      father.removeChild(this);&#xA;    }&#xA;&#xA;    father = f;&#xA;    father.children.add(this);&#xA;  }&#xA;&#xA;  public void setMother(Person m) {&#xA;    if (m == this) {&#xA;      throw new IllegalArgumentException(&quot;Cannot set mother to self&quot;);&#xA;    } else if (m.getGender() != FEMALE) {&#xA;      throw new IllegalArgumentException(&quot;Cannot set a male as a mother&quot;);&#xA;    } else if (mother != null) {&#xA;      mother.removeChild(this);&#xA;    }&#xA;&#xA;    mother = m;&#xA;    mother.children.add(this);&#xA;  }&#xA;&#xA;  public String getName() {&#xA;    return name;&#xA;  }&#xA;&#xA;  public char getGender() {&#xA;    return gender;&#xA;  }&#xA;&#xA;  public Person getFather() {&#xA;    return father;&#xA;  }&#xA;&#xA;  public Person getMother() {&#xA;    return mother;&#xA;  }&#xA;&#xA;  public int getChildCount() {&#xA;    return children.size();&#xA;  }&#xA;&#xA;  public Person getChild(int n) {&#xA;    return children.get(n);&#xA;  }&#xA;  &#xA;  public static void main(String[] args) {&#xA;    var sister = new Person(&quot;Aurora&quot;, FEMALE" edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="104" end="-10"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="95" charStart="2124" charEnd="2130" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1581540321539" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="97" warningCount="1" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.2/@edit" start="1976" end="-97"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="95" charStart="2122" charEnd="2128" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1581540355364" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="102" warningCount="1" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="  &#xA;  @Override&#xA;  public String toString() {&#xA;    return name + &quot;, &quot; + gender;&#xA;  }&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.3/@edit" start="1976" end="-98"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="100" charStart="2208" charEnd="2214" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1581540543872" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="117" warningCount="4" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="mother = new Person(&quot;Heidi&quot;, FEMALE);&#xA;    var father = new Person(&quot;Morten&quot;, MALE);&#xA;    var brother = new Person(&quot;Andreas&quot;, MALE);&#xA;    var sister = new Person(&quot;Aurora&quot;, FEMALE);&#xA;    var me = new Person(&quot;Amandus&quot;, MALE);&#xA;    var bestemor = new Person(&quot;Trine&quot;, FEMALE);&#xA;    var bestefar = new Person(&quot;Ole Arne&quot;, MALE);&#xA;    var farmor = new Person(&quot;Berit&quot;, FEMALE);&#xA;    var farfar = new Person(&quot;Per Erik&quot;, MALE);&#xA;    &#xA;    me.setFather(father);&#xA;    me.setMother(mother);&#xA;    father.addChild(brother);&#xA;    father.addChild(sister);&#xA;    mother.addChild(brother);&#xA;    mother.addChild(sister" edit="/1/@proposals.0/@proposals.0/@attempts.4/@edit" start="2109" end="-10"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="108" charStart="2586" charEnd="2592" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1581540603680" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="118" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="farmor = new Person(&quot;Berit&quot;, FEMALE);&#xA;    var farfar = new Person(&quot;Per Erik&quot;, MALE);&#xA;    &#xA;    me.setFather(father);&#xA;    me.setMother(mother);&#xA;    father.addChild(brother);&#xA;    father.addChild(sister);&#xA;    mother.addChild(brother);&#xA;    mother.addChild(sister);&#xA;    &#xA;    father.setMother(farmor);&#xA;    farfar.addChild(fath" edit="/1/@proposals.0/@proposals.0/@attempts.5/@edit" start="2336" end="-12"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1581540612050" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="117" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="f" edit="/1/@proposals.0/@proposals.0/@attempts.6/@edit" start="2600" end="-61"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1581540633944" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="117" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;  @Override&#xA;  public String toString() {&#xA;    return name + &quot;, &quot; + gender;&#xA;  }&#xA;&#xA;  public static void main(String[] args) {&#xA;    var mother = new Person(&quot;Heidi&quot;, FEMALE);&#xA;    var father = new Person(&quot;Morten&quot;, MALE);&#xA;    var brother = new Person(&quot;Andreas&quot;, MALE);&#xA;    var sister = new Person(&quot;Aurora&quot;, FEMALE);&#xA;    var me = new Person(&quot;Amandus&quot;, MALE);&#xA;    var farmor = new Person(&quot;Berit&quot;, FEMALE);&#xA;    var farfar = new Person(&quot;Per Erik&quot;, MALE);&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.7/@edit" start="1976" end="-237"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1581540646408" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="119" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="  &#xA;    System.out.println(me);&#xA;  " edit="/1/@proposals.0/@proposals.0/@attempts.8/@edit" start="2651" end="-5"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1581540621974" mode="run" className="objectstructures.Person">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Person</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1581540647556" mode="run" className="objectstructures.Person">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Person</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Amandus, M&#xD;
</consoleOutput>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1581540665467" completion="1.0" testRunName="objectstructures.PersonTest" successCount="13">
          <successTests>testMorskapSetMother</successTests>
          <successTests>testFarbytteAddChild</successTests>
          <successTests>testMorbytteAddChild</successTests>
          <successTests>testMorbytteSetMother</successTests>
          <successTests>testSelvmorskapIllegalArgumentException</successTests>
          <successTests>testMorskapIllegalArgumentException</successTests>
          <successTests>testFarbytteSetFather</successTests>
          <successTests>testMorskapAddChild</successTests>
          <successTests>testSelvfarskapIllegalArgumentException</successTests>
          <successTests>testFarskapIllegalArgumentException</successTests>
          <successTests>testFarskapAddChild</successTests>
          <successTests>testFarskapSetFather</successTests>
          <successTests>testConstructor</successTests>
        </attempts>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.1/@q" answer="/0/@parts.1/@tasks.1/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.2/@q" answer="/0/@parts.1/@tasks.2/@a"/>
      <proposals xsi:type="workbench:PartTaskProposal" question="/0/@parts.1/@tasks.3/@q" answer="/0/@parts.1/@tasks.3/@a"/>
    </proposals>
  </exercise:ExerciseProposals>
</xmi:XMI>
