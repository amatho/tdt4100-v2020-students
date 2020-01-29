package encapsulation;

public class Either<TLeft, TRight> {
	private Object object;
	private Class objectClass;
	
	public <T>Either(T item) {
		object = item;
		objectClass = item.getClass();
	}
}
