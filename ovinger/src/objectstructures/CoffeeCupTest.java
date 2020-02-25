package objectstructures;

import static org.junit.Assert.*;

import org.junit.Test;

public class CoffeeCupTest {

    @Test
    public void testConstructor() {
        new CoffeeCup();

        try {
            new CoffeeCup(-1, 1);
            fail("expected IllegalArgumentException with invalid capacity");
        } catch (IllegalArgumentException e) {
        }

        try {
            new CoffeeCup(1, -1);
            fail("expected IllegalArgumentException with invalid currentVolume");
        } catch (IllegalArgumentException e) {
        }

        try {
            new CoffeeCup(1, 2);
            fail("expected IllegalArgumentException with invalid currentVolume");
        } catch (IllegalArgumentException e) {
        }
    }

    @Test
    public void testGetCapacity() {
        var c = new CoffeeCup(1337, 10);
        var c2 = new CoffeeCup(42, 10);

        assertEquals(1337.0, c.getCapacity(), 0.01);
        assertEquals(42.0, c2.getCapacity(), 0.01);
    }

    @Test
    public void testGetCurrentVolume() {
        var c = new CoffeeCup(100, 30);
        var c2 = new CoffeeCup(100, 42);

        assertEquals(30.0, c.getCurrentVolume(), 0.01);
        assertEquals(42.0, c2.getCurrentVolume(), 0.01);
    }

    @Test
    public void testIncreaseCupSize() {
        var c = new CoffeeCup(2, 1);

        c.increaseCupSize(2);
        c.fillCoffee(2);

        assertEquals(4.0, c.getCapacity(), 0.01);
    }

    @Test
    public void testDrinkCoffee() {
        var c = new CoffeeCup(100, 50);

        c.drinkCoffee(2);
        c.drinkCoffee(3);
        c.drinkCoffee(3);

        assertEquals(42.0, c.getCurrentVolume(), 0.01);
    }

    @Test
    public void testFillCoffee() {
        var c = new CoffeeCup(100, 30);

        c.fillCoffee(7);
        c.fillCoffee(3);
        c.fillCoffee(2);

        assertEquals(42.0, c.getCurrentVolume(), 0.01);
    }
}
