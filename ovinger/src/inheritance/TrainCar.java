package inheritance;

public class TrainCar {
    private int deadWeight;

    public TrainCar(int deadWeight) {
        this.deadWeight = deadWeight;
    }

    public int getTotalWeight() {
        return deadWeight;
    }

    public void setDeadWeight(int deadWeight) {
        this.deadWeight = deadWeight;
    }

    public int getDeadWeight() {
        return deadWeight;
    }

    @Override
    public String toString() {
        return String.format("Type: %s, Total Weight: %d", getClass().getSimpleName(), getTotalWeight());
    }
}
