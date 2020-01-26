package encapsulation;

import java.util.List;
import java.util.Date;

enum Gender {
	Male('M'), Female('F'), None('\0');
	
	char genderChar;
	
	private Gender(char g) {
		genderChar = g;
	}
}

public class Person {
	static List<String> cTLD;
	
	String name;
	String email;
	Date birthday;
	Gender gender;
	
	public Person() {
		cTLD = List.of("ad", "ae", "af", "ag", "ai", "al", "am", "ao", "aq", "ar", "as", "at", "au", "aw", "ax", "az", "ba", "bb", "bd", "be", "bf", "bg", "bh", "bi", "bj", "bl", "bm", "bn", "bo", "bq", "br", "bs", "bt", "bv", "bw", "by", "bz", "ca", "cc", "cd", "cf", "cg", "ch", "ci", "ck", "cl", "cm", "cn", "co", "cr", "cu", "cv", "cw", "cx", "cy", "cz", "de", "dj", "dk", "dm", "do", "dz", "ec", "ee", "eg", "eh", "er", "es", "et", "fi", "fj", "fk", "fm", "fo", "fr", "ga", "gb", "gd", "ge", "gf", "gg", "gh", "gi", "gl", "gm", "gn", "gp", "gq", "gr", "gs", "gt", "gu", "gw", "gy", "hk", "hm", "hn", "hr", "ht", "hu", "id", "ie", "il", "im", "in", "io", "iq", "ir", "is", "it", "je", "jm", "jo", "jp", "ke", "kg", "kh", "ki", "km", "kn", "kp", "kr", "kw", "ky", "kz", "la", "lb", "lc", "li", "lk", "lr", "ls", "lt", "lu", "lv", "ly", "ma", "mc", "md", "me", "mf", "mg", "mh", "mk", "ml", "mm", "mn", "mo", "mp", "mq", "mr", "ms", "mt", "mu", "mv", "mw", "mx", "my", "mz", "na", "nc", "ne", "nf", "ng", "ni", "nl", "no", "np", "nr", "nu", "nz", "om", "pa", "pe", "pf", "pg", "ph", "pk", "pl", "pm", "pn", "pr", "ps", "pt", "pw", "py", "qa", "re", "ro", "rs", "ru", "rw", "sa", "sb", "sc", "sd", "se", "sg", "sh", "si", "sj", "sk", "sl", "sm", "sn", "so", "sr", "ss", "st", "sv", "sx", "sy", "sz", "tc", "td", "tf", "tg", "th", "tj", "tk", "tl", "tm", "tn", "to", "tr", "tt", "tv", "tw", "tz", "ua", "ug", "um", "us", "uy", "uz", "va", "vc", "ve", "vg", "vi", "vn", "vu", "wf", "ws", "ye", "yt", "za", "zm", "zw");
	}
	
	public void setName(String name) throws IllegalArgumentException {
		if (name == null)
			throw new IllegalArgumentException("'name' cannot be null");
		
		var names = name.split(" ");
		
		if (names.length != 2)
			throw new IllegalArgumentException("The name must contain a first name and a last name, and only a single space");
		else if (names[0].length() < 2 || names[1].length() < 2)
			throw new IllegalArgumentException("First name and last name must be at least 2 characters long");
		else if (!name.matches("[A-Za-z]"))
			throw new IllegalArgumentException("The name must only consist of alphabetical characters");
		
		this.name = name;
	}
	
	public void setEmail(String email) throws IllegalArgumentException {
		if (email == null)
			throw new IllegalArgumentException("'email' cannot be null");
		
		email = email.toLowerCase();
		
		if (!email.matches("[a-z0-9.][@]{1}"))
			throw new IllegalArgumentException("E-mail can only consist of a-z, 0-9, exactly 1 '@', and '.'");
		
		var usernameAndDomain = email.split("[@]");
		
		var username = usernameAndDomain[0];
		var domain = usernameAndDomain[1];
		var name = username.replace('.', ' ');
		var validName = this.name.toLowerCase();
		var domainParts = domain.split("[.]");
		
		if (name != validName)
			throw new IllegalArgumentException("E-mail must be on the form 'firstname.lastname@domain.countrycode'");
		
		if (domainParts.length < 2)
			throw new IllegalArgumentException("E-mail has an invalid domain");
		else if (!cTLD.contains(domainParts[domainParts.length - 1]))
			throw new IllegalArgumentException("E-mail's TLD must be a valid country");
	}
	
	public static void main(String[] args) {
		var s = "ama.thorsrud@gmail.com";
		System.out.println(s.matches("/[a-z][.][@]/g"));
	}
}
