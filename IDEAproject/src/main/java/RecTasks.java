public class RecTasks {

    public static void main(String[] args) {
        System.out.println("sum([2, 5, 1]): erwartet 8, erhalten "
                + sum(new int[]{2, 5, 1}));
        System.out.println("count('a', \"banane\"): erwartet 2, erhalten "
                + count('a', "banane"));
        System.out.println("isSorted([1, 2, 2, 5]): erwartet true, erhalten "
                + isSorted(new int[]{1, 2, 2, 5}));
        System.out.println("dedupRuns(\"aabbcca\"): erwartet \"abca\", erhalten \""
                + dedupRuns("aabbcca") + "\"");
        System.out.println("isBalanced(\"{a{}}\"): erwartet true, erhalten "
                + isBalanced("{a{}}"));
    }

    // Aufgabe 1: Summe der Elemente
    public static int sum(int[] xs) {
        // TODO: Berechnen Sie die Summe rekursiv und ohne Schleife.
        return 0;
    }

    // Aufgabe 2: Zeichen zaehlen
    public static int count(char c, String s) {
        // TODO: Zaehlen Sie die Vorkommen rekursiv mit substring(1).
        return 0;
    }

    // Aufgabe 3: Sortiertes Array
    public static boolean isSorted(int[] xs) {
        // TODO: Pruefen Sie die Reihenfolge rekursiv und ohne Schleife.
        return true;
    }

    // Aufgabe 4: Wiederholungen entfernen
    public static String dedupRuns(String s) {
        // TODO: Entfernen Sie aufeinanderfolgende Wiederholungen rekursiv.
        return "";
    }

    // Aufgabe 5: Klammern pruefen
    public static boolean isBalanced(String s) {
        // TODO: Pruefen Sie die Klammern rekursiv und ohne Schleife.
        return true;
    }
}
