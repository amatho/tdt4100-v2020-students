package objectstructures;

import java.util.ArrayList;
import java.util.List;

public class Person {
    public static final char MALE = 'M';
    public static final char FEMALE = 'F';

    private String name;
    private char gender;
    private Person father;
    private Person mother;
    private List<Person> children;

    public Person(String name, char gender) {
	if (gender != MALE && gender != FEMALE) {
	    throw new IllegalArgumentException("Gender should be either 'M' or 'F'");
	}

	this.name = name;
	this.gender = gender;
	children = new ArrayList<>();
    }

    public void addChild(Person child) {
	if (gender == MALE) {
	    child.setFather(this);
	} else {
	    child.setMother(this);
	}
    }

    public void removeChild(Person child) {
	if (gender == MALE) {
	    child.father = null;
	} else {
	    child.mother = null;
	}

	children.remove(child);
    }

    public void setFather(Person f) {
	if (f == this) {
	    throw new IllegalArgumentException("Cannot set father to self");
	} else if (f.getGender() != MALE) {
	    throw new IllegalArgumentException("Cannot set a female as a father");
	} else if (father != null) {
	    father.removeChild(this);
	}

	father = f;
	father.children.add(this);
    }

    public void setMother(Person m) {
	if (m == this) {
	    throw new IllegalArgumentException("Cannot set mother to self");
	} else if (m.getGender() != FEMALE) {
	    throw new IllegalArgumentException("Cannot set a male as a mother");
	} else if (mother != null) {
	    mother.removeChild(this);
	}

	mother = m;
	mother.children.add(this);
    }

    public String getName() {
	return name;
    }

    public char getGender() {
	return gender;
    }

    public Person getFather() {
	return father;
    }

    public Person getMother() {
	return mother;
    }

    public int getChildCount() {
	return children.size();
    }

    public Person getChild(int n) {
	return children.get(n);
    }

    @Override
    public String toString() {
	return name + ", " + gender;
    }

    public static void main(String[] args) {
	var mother = new Person("Heidi", FEMALE);
	var father = new Person("Morten", MALE);
	var brother = new Person("Andreas", MALE);
	var sister = new Person("Aurora", FEMALE);
	var me = new Person("Amandus", MALE);
	var farmor = new Person("Berit", FEMALE);
	var farfar = new Person("Per Erik", MALE);

	me.setFather(father);
	me.setMother(mother);
	father.addChild(brother);
	father.addChild(sister);
	mother.addChild(brother);
	mother.addChild(sister);
	father.setMother(farmor);
	farfar.addChild(father);

	System.out.println(me);
    }
}
