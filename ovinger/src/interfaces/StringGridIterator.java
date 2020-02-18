package interfaces;

import java.util.Iterator;

public class StringGridIterator implements Iterator<String> {
    private final StringGrid stringGrid;
    private final boolean rowMajor;
    private int index = 0;

    public StringGridIterator(StringGrid stringGrid, boolean rowMajor) {
	this.stringGrid = stringGrid;
	this.rowMajor = rowMajor;
    }

    @Override
    public boolean hasNext() {
	return index < stringGrid.getColumnCount() * stringGrid.getRowCount();
    }

    @Override
    public String next() {
	int row;
	int col;
	if (rowMajor) {
	    row = index / stringGrid.getColumnCount();
	    col = index % stringGrid.getColumnCount();
	} else {
	    row = index % stringGrid.getRowCount();
	    col = index / stringGrid.getRowCount();
	}

	index++;
	return stringGrid.getElement(row, col);
    }

    @Override
    public void remove() {
	throw new UnsupportedOperationException("Cannot remove an element from StringGrid");
    }

    public static void main(String[] args) {
	StringGrid sg = new StringGridImpl(3, 4);
	sg.setElement(1, 2, "yeet");
	sg.setElement(0, 3, "skeet");
	var iter = new StringGridIterator(sg, true);

	while (iter.hasNext()) {
	    System.out.println(iter.next());
	}
    }
}
