package inheritance;

public class CargoCar extends TrainCar {
    private int cargoWeight;

    public CargoCar(int deadWeight, int cargoWeight) {
        super(deadWeight);

        this.cargoWeight = cargoWeight;
    }

    @Override
    public int getTotalWeight() {
        return super.getTotalWeight() + cargoWeight;
    }

    public int getCargoWeight() {
        return cargoWeight;
    }

    public void setCargoWeight(int cargoWeight) {
        this.cargoWeight = cargoWeight;
    }

    @Override
    public String toString() {
        return super.toString() + ", Cargo Weight: " + cargoWeight;
    }
}
