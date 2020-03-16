package patterns.observable;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public abstract class ObservableList {
    public List<Object> elements = new ArrayList<>();
    public Collection<ObservableListListener> listeners = new ArrayList<>();

    public int size() {
        return elements.size();
    }

    public Object getElement(int index) {
        return elements.get(index);
    }

    public abstract boolean acceptsElement(Object element);

    protected void addElement(int index, Object element) {
        if (acceptsElement(element)) {
            elements.add(index, element);
        } else {
            throw new IllegalArgumentException("Object not accepted");
        }
    }

    protected void addElement(Object element) {
        if (acceptsElement(element)) {
            elements.add(element);
        } else {
            throw new IllegalArgumentException("Object not accepted");
        }
    }

    protected void removeElement(int index) {
        elements.remove(index);
    }

    public void addObservableListListener(ObservableListListener listener) {
        listeners.add(listener);
    }

    public void removeObservableListListener(ObservableListListener listener) {
        listeners.remove(listener);
    }

    @Override
    public String toString() {
        return elements.toString();
    }
}
