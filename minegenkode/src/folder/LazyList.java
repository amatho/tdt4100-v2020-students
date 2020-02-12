package folder;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

public class LazyList<T> implements Iterable<T> {
  private List<T> list;

  public void add(T item) {
    if (list == null) {
      list = new ArrayList<T>();
    }

    list.add(item);
  }

  public List<T> asList() {
    if (list == null) {
      return new ArrayList<T>();
    }

    return list;
  }

  @Override
  public Iterator<T> iterator() {
    if (list == null) {
      return new Iterator<T>() {

        @Override
        public boolean hasNext() {
          return false;
        }

        @Override
        public T next() {
          throw new NoSuchElementException();
        }

      };
    }

    return list.iterator();
  }
}
