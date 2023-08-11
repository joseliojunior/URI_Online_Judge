/**
 * @author Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
 * @copyright Josélio Júnior (Lunatic Fox) 2021
 */

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {

        Scanner r = new Scanner(System.in);
        int value = Integer.parseInt(r.nextLine());
        r.close();

        for (int i = 1; i <= value; i++) {
            System.out.println(i + " " + (int) Math.pow(i, 2) + " " + (int) Math.pow(i, 3));
        }
    }
}