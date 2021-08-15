/**
 * @author Josélio de S. C. Júnior <joseliojrx25@gmail.com>
 * @copyright Josélio de S. C. Júnior 2021
 */

import java.io.IOException;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) throws IOException {

        Scanner r = new Scanner(System.in);
        int v = r.nextInt();
        r.close();

        System.out.println(v);

        int[] list = { 100, 50, 20, 10, 5, 2, 1 };

        for (int x : list) {
            System.out.println((int) (v / x) + " nota(s) de R$ " + x + ",00");
            v %= x;
        }

    }
}