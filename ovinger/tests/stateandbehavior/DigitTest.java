package stateandbehavior;

import junit.framework.TestCase;
import no.hal.jex.runtime.JExercise;

@JExercise(description = "Digit contains an _int_ value that can be incremented. The value starts as zero and wraps when reaching the *base* value (provided to the constructor).", markupLanguage = "textile")
public class DigitTest extends TestCase {

    private Digit digit;

    protected void setUp() throws Exception {
    }

    @JExercise(tests = "Digit(int)", description = "The value starts at zero.")
    public void testDigit() {
        digit = new Digit(10);
        assertEquals(0, digit.getValue());
    }

    private void testIncrement(int base, boolean checkValue, boolean checkToString) {
        digit = new Digit(base);
        int i = 0;
        String digits = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        while (i < base) {
            if (checkValue) {
                assertEquals(i % base, digit.getValue());
            }
            if (checkToString) {
                assertEquals(String.valueOf(digits.charAt(i % base)), digit.toString().toUpperCase());
            }
            boolean overflow = digit.increment();
            i++;
            if (checkValue) {
                assertEquals(i % base == 0, overflow);
                assertEquals(i % base, digit.getValue());
            }
            if (checkToString) {
                assertEquals(String.valueOf(digits.charAt(i % base)), digit.toString().toUpperCase());
            }
        }
    }

    private void testIncrement(boolean checkValue, boolean checkToString) {
        for (int base = 2; base <= 16; base++) {
            testIncrement(base, checkValue, checkToString);
        }
    }

    @JExercise(tests = "boolean increment()", description = "The *boolean increment()* method increments the value. If the value reaches the base (the argument passed to the constructor), the value is _reset to zero_ and *true* is returned, otherwise *false* is returned.")
    public void testIncrement() {
        testIncrement(true, false);
    }

    @JExercise(tests = "String toString()", description = "The *String toString()* method return the value as a digit (String) in the provided base. First it uses _0 through 9_, then _A to Z_.")
    public void testToString() {
        testIncrement(false, true);
    }
}
