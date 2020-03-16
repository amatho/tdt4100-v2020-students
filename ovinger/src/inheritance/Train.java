package inheritance;

import java.util.ArrayList;

public class Train {
    private final ArrayList<TrainCar> trainCars = new ArrayList<>();

    public void addTrainCar(TrainCar trainCar) {
        trainCars.add(trainCar);
    }

    public boolean contains(TrainCar trainCar) {
        return trainCars.contains(trainCar);
    }

    public int getTotalWeight() {
        return trainCars.stream().mapToInt(c -> c.getTotalWeight()).sum();
    }

    public int getPassengerCount() {
        return trainCars.stream().mapToInt(c -> {
            if (c instanceof PassengerCar) {
                return ((PassengerCar) c).getPassengerCount();
            }
            return 0;
        }).sum();
    }

    public int getCargoWeight() {
        return trainCars.stream().mapToInt(c -> {
            if (c instanceof CargoCar) {
                return ((CargoCar) c).getCargoWeight();
            }
            return 0;
        }).sum();
    }

    @Override
    public String toString() {
        var stringList = trainCars.stream().map(Object::toString).reduce("", (acc, s) -> acc + "\n" + s);
        return "[" + stringList + "\n]";
    }

    public static void main(String[] args) {
        var t = new Train();

        t.addTrainCar(new TrainCar(42));
        t.addTrainCar(new CargoCar(33, 12));
        t.addTrainCar(new PassengerCar(10, 5));

        System.out.println(t);
    }
}
