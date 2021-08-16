/**
 * @author Josélio de S. C. Júnior <joseliojrx25@gmail.com>
 * @copyright Josélio de S. C. Júnior 2021
*/

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        
        Scanner r = new Scanner(System.in);
        System.out.println("PROD = " + r.nextInt() * r.nextInt());
        r.close();
        
    }
}