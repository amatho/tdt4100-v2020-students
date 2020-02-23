package stateandbehavior;

public class Point {
    public int x;
    public int y;

    public Point() {
        super();
    }

    public Point(int x, int y) {
        super();
        this.x = x;
        this.y = y;
    }

    public void move(int x, int y) {
        this.x = x;
        this.y = y;
    }

    public boolean equals(Point other) {
        return this.x == other.x && this.y == other.y;
    }
}
