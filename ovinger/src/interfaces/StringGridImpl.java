package interfaces;

import java.util.Arrays;
import java.util.Iterator;
import java.util.stream.Collectors;

public class StringGridImpl implements StringGrid {
    private String[][] strings;
    private final int columns;
    private final int rows;

    public StringGridImpl(int rows, int columns) {
	strings = new String[rows][columns];
	this.columns = columns;
	this.rows = rows;
    }

    @Override
    public int getColumnCount() {
	return columns;
    }

    @Override
    public int getRowCount() {
	return rows;
    }

    @Override
    public String getElement(int row, int column) {
	if (row < 0 || row >= rows) {
	    throw new IllegalArgumentException("Row is out of range");
	} else if (column < 0 || column >= columns) {
	    throw new IllegalArgumentException("Column is out of range");
	}

	return strings[row][column];
    }

    @Override
    public void setElement(int row, int column, String element) {
	if (row < 0 || row >= rows) {
	    throw new IllegalArgumentException("Row is out of range");
	} else if (column < 0 || column >= columns) {
	    throw new IllegalArgumentException("Column is out of range");
	}

	strings[row][column] = element;
    }

    @Override
    public Iterator<String> iterator() {
	return new StringGridIterator(this, true);
    }

    @Override
    public String toString() {
	return Arrays.stream(strings).map(r -> Arrays.stream(r).collect(Collectors.joining(", ")) + "\n")
		.collect(Collectors.joining());
    }

    public static void main(String[] args) {
	StringGrid sg = new StringGridImpl(3, 4);
	sg.setElement(1, 2, "yeet");
	sg.setElement(0, 3, "skeet");

	for (var s : sg) {
	    System.out.println(s);
	}
    }
}
