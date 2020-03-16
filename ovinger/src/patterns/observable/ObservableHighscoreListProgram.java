package patterns.observable;

import java.util.Scanner;

public class ObservableHighscoreListProgram implements ObservableListListener {
    private ObservableHighscoreList highscoreList;

    public void init() {
        highscoreList = new ObservableHighscoreList(10);
        highscoreList.addObservableListListener(this);
    }

    public void run() {
        var running = true;
        var scanner = new Scanner(System.in);
        while (running) {
            System.out.print("Enter a result [-1 to quit]: ");

            var result = scanner.nextInt();
            highscoreList.addResult(result);

            running = result != -1;
        }

        scanner.close();
    }

    @Override
    public void listChanged(ObservableList list, int changedIndex) {
        System.out.println("Index of change: " + changedIndex + "\nHighscores: " + highscoreList);
    }

    public static void main(String[] args) {
        var p = new ObservableHighscoreListProgram();
        p.init();
        p.run();
    }
}
