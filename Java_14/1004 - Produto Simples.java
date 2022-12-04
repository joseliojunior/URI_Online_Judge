/**
 * @author Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
 * @copyright Josélio Júnior (Lunatic Fox) 2021
*/

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        
        Scanner r = new Scanner(System.in);
        System.out.println("PROD = " + r.nextInt() * r.nextInt());
        r.close();
        
    }
}