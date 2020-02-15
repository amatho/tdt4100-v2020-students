package folder;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Optional;

public class LazyList<T> implements Iterable<T> {
  private Optional<List<T>> list = Optional.empty();

  public void add(T item) {
    list = list.or(() -> Optional.of(new ArrayList<>())).map(l -> {
      l.add(item);
      return l;
    });
  }

  @Override
  public Iterator<T> iterator() {
    return list.map(l -> l.iterator()).orElse(new Iterator<T>() {
      @Override
      public boolean hasNext() {
        return false;
      }

      @Override
      public T next() {
        throw new NoSuchElementException();
      }
    });
  }
}
