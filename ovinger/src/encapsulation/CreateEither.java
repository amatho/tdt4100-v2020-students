package encapsulation;

public final class CreateEither {
	private static CreateEither self = new CreateEither();
	
	public class Either<TLeft, TRight> {
		private Object object;
		private boolean left;
		
		private <T, U>Either(T item, boolean left) {
			object = item;
			this.left = left;
		}
		
		public TLeft unwrapLeft() throws IllegalStateException {
			try {
				@SuppressWarnings("unchecked")
				var cast = (TLeft) object;
				return cast;
			} catch (ClassCastException e) {
				throw new IllegalStateException("Tried to unwrap a TRight into a TLeft");
			}
		}
		
		public TRight unwrapRight() throws IllegalStateException {
			try {
				@SuppressWarnings("unchecked")
				var cast = (TRight) object;
				return cast;
			} catch (ClassCastException e) {
				throw new IllegalStateException("Tried to unwrap a TLeft into a TRight");
			}
		}
		
		public boolean isLeft() {
			return left;
		}
		
		public boolean isRight() {
			return !left;
		}
	}
	
	public static <TLeft, TRight>Either<TLeft, TRight> left(TLeft item) {
		return self.new Either<TLeft, TRight>(item, true);
	}
	
	public static <TLeft, TRight>Either<TLeft, TRight> right(TRight item) {
		return self.new Either<TLeft, TRight>(item, false);
	}
}
