package uke10.liste;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Liste {

	public static void main(String[] args) {
		List<Integer> liste = new ArrayList<>();
		liste.add(23);
		liste.add(2);
		liste.add(55);

		for (int i = 0; i < liste.size(); i++) {
			int j = liste.get(i);
			System.out.println(j);
		}

		for (Iterator iterator = liste.iterator(); iterator.hasNext();) {
			Integer integer = (Integer) iterator.next();
			System.out.println(integer*2);
		}
		
		for (Integer integer : liste) {
			System.out.println(integer*integer);
		}

	}
}