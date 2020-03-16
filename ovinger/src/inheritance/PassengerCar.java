package inheritance;

public class PassengerCar extends TrainCar {
    private static final int PASSENGER_WEIGHT = 80;
    private int passengerCount;

    public PassengerCar(int deadWeight, int passengerCount) {
        super(deadWeight);

        this.passengerCount = passengerCount;
    }

    @Override
    public int getTotalWeight() {
        return super.getTotalWeight() + PASSENGER_WEIGHT * passengerCount;
    }

    public int getPassengerCount() {
        return passengerCount;
    }

    public void setPassengerCount(int passengerCount) {
        this.passengerCount = passengerCount;
    }

    @Override
    public String toString() {
        return super.toString() + ", Passengers: " + passengerCount;
    }
}
