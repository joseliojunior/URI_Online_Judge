/**
 * @author Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
 * @copyright Josélio Júnior (Lunatic Fox) 2021
 */

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        
        Scanner r = new Scanner(System.in);
        
        int v1 = r.nextInt();
        int v2 = r.nextInt();
        double v3 = r.nextDouble();
        r.close();

        double salary = v2 * v3;
        
        System.out.println("NUMBER = " + v1);
        String a = String.format("%.2f", salary);
        System.out.println("SALARY = U$ " + a);
        
    }
}