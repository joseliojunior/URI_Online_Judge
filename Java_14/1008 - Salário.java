/**
 * @author Josélio de S. C. Júnior <joseliojrx25@gmail.com>
 * @copyright Josélio de S. C. Júnior 2021
 */

import java.io.IOException;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) throws IOException {

        Scanner r = new Scanner(System.in);

        int v1 = r.nextInt();
        int v2 = r.nextInt();
        double v3 = r.nextDouble();
        r.close();

        double salary = v2 * v3;

        System.out.println("NUMBER = " + v1);
        System.out.println("SALARY = U$ " + String.format("%.2f", salary));

    }
}