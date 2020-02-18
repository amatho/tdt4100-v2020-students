package interfaces;

import java.util.ArrayList;

public class StringGridImpl implements StringGrid {
    private ArrayList<String> strings = new ArrayList<>();
    private final int columns;
    private final int rows;

    public StringGridImpl(int rows, int columns) {
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
	var index = row * columns + column;
	return strings.get(index);
    }

    @Override
    public void setElement(int row, int column, String element) {
	var index = row * columns + column;
	strings.set(index, element);
    }
}
