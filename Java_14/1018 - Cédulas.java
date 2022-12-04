/**
 * @author Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
 * @copyright Josélio Júnior (Lunatic Fox) 2021
 */

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        
        Scanner r = new Scanner(System.in);
        int v = r.nextInt();
        r.close();

        System.out.println(v);

        int[] list = {100, 50, 20, 10, 5, 2, 1};
        
        for (int x : list) {
            System.out.println((int) (v / x) + " nota(s) de R$ " + x + ",00");
            v %= x;
        }

    }
}