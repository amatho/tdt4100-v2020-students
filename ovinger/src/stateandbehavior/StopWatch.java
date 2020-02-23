package stateandbehavior;

import java.util.ArrayList;

enum State {
    Created, Running, Stopped
}

public class StopWatch {
    int tick = 0;
    ArrayList<Integer> splits = new ArrayList<Integer>();
    State state = State.Created;
    int startingTick = 0;
    int stoppingTick;

    public StopWatch() {
        super();
        splits.add(0);
    }

    public boolean isStarted() {
        return state == State.Running || state == State.Stopped;
    }

    public boolean isStopped() {
        return state == State.Stopped;
    }

    public int getTicks() {
        return tick;
    }

    public int getTime() {
        if (state == State.Created)
            return -1;

        if (state == State.Stopped)
            return stoppingTick - startingTick;

        return tick - startingTick;
    }

    public int getLapTime() {
        if (!isStarted())
            return -1;

        return tick - splits.get(splits.size() - 1);
    }

    public int getLastLapTime() {
        var splitsSize = splits.size();

        if (splitsSize < 2)
            return -1;

        return splits.get(splitsSize - 1) - splits.get(splitsSize - 2);
    }

    public void tick(int ticks) {
        this.tick += ticks;
    }

    public void start() {
        startingTick = tick;
        state = State.Running;
    }

    public void lap() {
        splits.add(tick);
    }

    public void stop() {
        splits.add(tick);
        stoppingTick = tick;
        state = State.Stopped;
    }

    @Override
    public String toString() {
        return "Tick: " + tick + "\n" + "State: " + state + "\n" + "Splits: " + splits + "\n" + "Starting tick: "
                + startingTick + " Stopping tick: " + stoppingTick;
    }

    public static void main(String args[]) {
        var sw = new StopWatch();
        sw.start();
        sw.tick(3);
        sw.lap();
        sw.tick(5);
        sw.stop();
        System.out.println(sw.getLastLapTime());
        System.out.println(sw);
    }
}
