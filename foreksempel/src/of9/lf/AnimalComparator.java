package of9.lf;

import java.util.Comparator;

public class AnimalComparator implements Comparator<Animal> {

	@Override
	public int compare(Animal o1, Animal o2) {
		/*if (o1.getAge() < o2.getAge()) {
			return -1;
		} else if (o1.getAge() > o2.getAge()) {
			return 1;
		}
		return 0;*/
		
		// return Integer.compare(o1.getAge(), o2.getAge());
		
		return o1.getAge() - o2.getAge();
	}

}
