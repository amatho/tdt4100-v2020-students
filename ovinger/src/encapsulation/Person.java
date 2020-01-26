package encapsulation;

import java.util.List;
import java.util.function.Predicate;
import java.util.regex.Pattern;
import java.util.Date;

enum Gender {
	Male('M'), Female('F'), None('\0');

	char genderChar;

	private Gender(char g) {
		genderChar = g;
	}
}

public class Person {
	private static final Pattern nameMatcher = Pattern.compile("\\w{2,}[ ]\\w{2,}");
	private static final Pattern emailMatcher = Pattern.compile("[a-z]+[.]{1}[a-z]+[@]{1}[a-z]+[[a-z]+[.]]*");

	private String name;
	private String email;
	private Date birthday;
	private Gender gender;

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public Date getBirthday() {
		return birthday;
	}

	public Gender getGender() {
		return gender;
	}

	public void setName(String name) throws IllegalArgumentException {
		if (name == null)
			throw new IllegalArgumentException("'name' cannot be null");

		if (nameMatcher.matcher(name).matches())
			throw new IllegalArgumentException("First name and last name must be at least 2 characters long, and seperated by a single space");

		this.name = name;
	}

	public void setEmail(String email) throws IllegalArgumentException {
		if (email == null)
			throw new IllegalArgumentException("'email' cannot be null");

		email = email.toLowerCase();

		if (!emailMatcher.matcher(email).matches())
			throw new IllegalArgumentException("E-mail can only consist of a-z, 0-9, exactly 1 '@', and '.'");

		var emailNameEnd = email.indexOf('@');
		var emailName = email.substring(0, emailNameEnd).replace('.', ' ');
		var tldStart = email.lastIndexOf('.') + 1;
		var tld = email.substring(tldStart, email.length());

		if (name != null && name.toLowerCase() != emailName)
			throw new IllegalArgumentException("E-mail must be on the form 'firstname.lastname@domain.countrycode'");

		if (!CTLD.cTLD.contains(tld))
			throw new IllegalArgumentException("E-mail's TLD must be a valid country");
	}

	public static void main(String[] args) {
		var p = new Person();
		p.setEmail("amandus.thorsrud@ntnu.no");
	}
}
