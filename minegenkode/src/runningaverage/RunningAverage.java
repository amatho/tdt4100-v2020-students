package runningaverage;

import java.util.ArrayList;
import java.util.List;

public class RunningAverage {
    private List<Double> list;

    public RunningAverage(List<Double> list) {
        this.list = list;
    }

    public ArrayList<Double> runningAverage(int n) {
        var averages = new ArrayList<Double>();

        var first = list.get(0);
        var sum = list.subList(0, n).stream().reduce(0.0, (acc, item) -> acc + item);
        averages.add(sum / 5);

        for (var i = n; i < list.size(); i++) {
            var s = sum - first;
            first = list.get(i - 4);
            sum = s + list.get(i);
            averages.add(sum / 5);
        }

        return averages;
    }

    public static void main(String[] args) {
        var l = List.of(2.0, 3.0, 2.0, 3.0, 2.0, 3.0, 2.0, 3.0);
        System.out.println(l);

        var r = new RunningAverage(l);
        var averages = r.runningAverage(5);

        System.out.println(averages);
    }
}
