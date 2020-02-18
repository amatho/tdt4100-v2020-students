package stateandbehavior;

public class Rectangle {
    private Point upperLeft = new Point();
    private Point lowerRight = new Point();
    private boolean empty;

    public Rectangle() {
	super();
	empty = true;
    }

    public Rectangle(int minX, int maxX, int minY, int maxY) {
	super();
	this.upperLeft.move(minX, maxY);
	this.lowerRight.move(maxX, minY);
	empty = false;
    }

    public int getMinX() {
	return upperLeft.x;
    }

    public int getMinY() {
	return lowerRight.y;
    }

    public int getMaxX() {
	return lowerRight.x;
    }

    public int getMaxY() {
	return upperLeft.y;
    }

    public int getWidth() {
	if (empty)
	    return 0;
	return getMaxX() - getMinX() + 1;
    }

    public int getHeight() {
	if (empty)
	    return 0;
	return getMaxY() - getMinY() + 1;
    }

    public boolean isEmpty() {
	return empty;
    }

    public boolean contains(int x, int y) {
	if (empty)
	    return false;
	return getMinX() <= x && x <= getMaxX() && getMinY() <= y && y <= getMaxY();
    }

    public boolean add(int x, int y) {
	if (!empty && contains(x, y))
	    return false;

	if (empty) {
	    upperLeft.move(x, y);
	    lowerRight.move(x, y);
	    empty = false;
	    return true;
	}

	if (getMinX() > x) {
	    setMinX(x);
	} else if (getMaxX() < x) {
	    setMaxX(x);
	}

	if (getMinY() > y) {
	    setMinY(y);
	} else if (getMaxY() < y) {
	    setMaxY(y);
	}

	return true;
    }

    public boolean add(Rectangle rect) {
	if (!empty && contains(rect.getMinX(), rect.getMaxY()) && contains(rect.getMaxX(), rect.getMinY())) {
	    return false;
	} else if (rect.isEmpty()) {
	    return false;
	}

	if (empty) {
	    upperLeft = rect.upperLeft;
	    lowerRight = rect.lowerRight;
	    empty = false;
	}

	if (rect.getMinX() < getMinX()) {
	    setMinX(rect.getMinX());
	}

	if (rect.getMaxX() > getMaxX()) {
	    setMaxX(rect.getMaxX());
	}

	if (rect.getMinY() < getMinY()) {
	    setMinY(rect.getMinY());
	}

	if (rect.getMaxY() > getMaxY()) {
	    setMaxY(rect.getMaxY());
	}

	return true;
    }

    public Rectangle union(Rectangle rect) {
	if (empty) {
	    return new Rectangle(rect.getMinX(), rect.getMaxX(), rect.getMinY(), rect.getMaxY());
	}

	var minX = Math.min(getMinX(), rect.getMinX());
	var maxX = Math.max(getMaxX(), rect.getMaxX());

	var minY = Math.min(getMinY(), rect.getMinY());
	var maxY = Math.max(getMaxY(), rect.getMaxY());

	return new Rectangle(minX, maxX, minY, maxY);
    }

    @Override
    public String toString() {
	if (empty)
	    return "Empty";
	return String.format("Upper left: (%d, %d)\n" + "Lower right: (%d, %d)\n" + "Width x Height: %d x %d",
		getMinX(), getMaxY(), getMaxX(), getMinY(), getWidth(), getHeight());
    }

    private void setMinX(int x) {
	upperLeft.x = x;
    }

    private void setMinY(int y) {
	lowerRight.y = y;
    }

    private void setMaxX(int x) {
	lowerRight.x = x;
    }

    private void setMaxY(int y) {
	upperLeft.y = y;
    }

    public static void main(String[] args) {
	var rect = new Rectangle();
	rect.add(0, 4);
	rect.add(-2, 8);
	System.out.println(rect.toString());
    }
}
