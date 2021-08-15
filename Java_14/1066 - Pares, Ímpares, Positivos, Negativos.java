/**
 * @author Josélio de S. C. Júnior <joseliojrx25@gmail.com>
 * @copyright Josélio de S. C. Júnior 2021
 */

import java.io.IOException;
import java.util.Arrays;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) throws IOException {

        Scanner r = new Scanner(System.in);
        int[] num = new int[5];

        for (int i = 0; i < 5; i++)
            num[i] = r.nextInt();
        r.close();

        int even = Arrays.stream(num).filter(e -> e % 2 == 0).toArray().length;
        int odd = Arrays.stream(num).filter(e -> e % 2 != 0).toArray().length;
        int pos = Arrays.stream(num).filter(e -> e > 0).toArray().length;
        int neg = Arrays.stream(num).filter(e -> e < 0).toArray().length;

        System.out.println(even + " valor(es) par(es)\n" + odd + " valor(es) impar(es)\n" + pos
                + " valor(es) positivo(s)\n" + neg + " valor(es) negativo(s)");

    }
}