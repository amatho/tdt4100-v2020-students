package stateandbehavior;

public class LineEditor {
	String text = "";
	int insertionIndex = 0;

	public void left() {
		if (insertionIndex > 0)
			insertionIndex -= 1;
	}

	public void right() {
		if (insertionIndex < text.length())
			insertionIndex += 1;
	}

	public void insertString(String s) {
		var left = text.substring(0, insertionIndex);
		var right = text.substring(insertionIndex, text.length());

		text = left + s + right;
		insertionIndex += s.length();
	}

	public void deleteLeft() {
		if (insertionIndex <= 0)
			return;

		var left = text.substring(0, insertionIndex - 1);
		var right = text.substring(insertionIndex, text.length());

		text = left + right;
		insertionIndex -= 1;
	}

	public void deleteRight() {
		if (insertionIndex >= text.length())
			return;

		var left = text.substring(0, insertionIndex);
		var right = text.substring(insertionIndex + 1, text.length());

		text = left + right;
	}

	public String getText() {
		return text;
	}

	public void setText(String s) {
		text = s;
	}

	public int getInsertionIndex() {
		return insertionIndex;
	}

	public void setInsertionIndex(int index) {
		if (index < 0) {
			insertionIndex = 0;
		} else if (index > text.length()) {
			insertionIndex = text.length();
		} else {
			insertionIndex = index;
		}
	}

	@Override
	public String toString() {
		var left = text.substring(0, insertionIndex);
		var right = text.substring(insertionIndex, text.length());

		return left + "|" + right;
	}

	public static void main(String args[]) {
		var le = new LineEditor();
		le.setText("foo");
		System.out.println(le);
		le.right();
		le.insertString("bar");
		System.out.println(le);
		le.deleteLeft();
		System.out.println(le);
		le.setInsertionIndex(2);
		le.deleteRight();
		le.deleteLeft();
		System.out.println(le);
	}
}
