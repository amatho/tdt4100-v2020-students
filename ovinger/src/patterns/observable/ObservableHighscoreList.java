package patterns.observable;

public class ObservableHighscoreList extends ObservableList {
    private final int maxSize;

    public ObservableHighscoreList(int highscoreLength) {
        maxSize = highscoreLength;
    }

    @Override
    public boolean acceptsElement(Object element) {
        return element instanceof Integer;
    }

    public void addResult(int result) {
        for (var i = 0; i < maxSize; i++) {
            if (compare(getOrNull(i), result) > 0) {
                add(i, result);
                break;
            }
        }
    }

    @Override
    public String toString() {
        return super.toString();
    }

    private void add(int index, int element) {
        if (size() == maxSize) {
            removeElement(maxSize - 1);
        }

        addElement(index, element);
    }

    private Integer getOrNull(int index) {
        if (index < 0 || index >= size()) {
            return null;
        }

        return (Integer) getElement(index);
    }

    private static int compare(Integer left, Integer right) {
        if (left == null && right == null) {
            return 0;
        } else if (left == null) {
            return 1;
        } else if (right == null) {
            return -1;
        } else {
            return left - right;
        }
    }
}
