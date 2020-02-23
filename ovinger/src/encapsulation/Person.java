package encapsulation;

import java.util.regex.Pattern;
import java.util.stream.Stream;
import java.util.Date;

enum Gender {
    Male('M'), Female('F'), None('\0');

    char genderChar;

    private Gender(char g) {
        genderChar = g;
    }
}

public class Person {
    private static final Pattern nameMatcher = Pattern.compile("\\w{2,} \\w{2,}");
    private static final Pattern emailMatcher = Pattern.compile("\\w+[.]\\w+[@]\\w+[\\w+[.]]*");

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

    public char getGender() {
        if (gender == null)
            return '\0';

        return gender.genderChar;
    }

    public void setName(String name) throws IllegalArgumentException {
        if (name == null)
            throw new IllegalArgumentException("'name' cannot be null");

        if (!nameMatcher.matcher(name).matches())
            throw new IllegalArgumentException(
                    "First name and last name must be at least 2 characters long, and seperated by a single space");

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

        if (name != null && !name.equalsIgnoreCase(emailName))
            throw new IllegalArgumentException("E-mail must be on the form 'firstname.lastname@domain.countrycode'");

        if (!Stream.of(CTLD.cTLD).anyMatch(tld::equals))
            throw new IllegalArgumentException("E-mail's TLD must be a valid country");

        this.email = email;
    }

    public void setBirthday(Date birthday) {
        if (birthday == null)
            throw new IllegalArgumentException("'birthday' cannot be null");
        else if (birthday.after(new Date()))
            throw new IllegalArgumentException("Birthday cannot be in the future");

        this.birthday = birthday;
    }

    public void setGender(char gender) {
        if (gender == 'M')
            this.gender = Gender.Male;
        else if (gender == 'F')
            this.gender = Gender.Female;
        else if (gender == '\0')
            this.gender = Gender.None;
        else
            throw new IllegalArgumentException("'gender' should be one of 'M', 'F', or '\0'");
    }

    public static void main(String[] args) {
        var p = new Person();
        p.setName("Amandus Thorsrud");
        p.setEmail("amandus.thorsrud@ntnu.no");
    }
}
