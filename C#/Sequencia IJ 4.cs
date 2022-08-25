/// author Josélio de S. C. Júnior <joseliojrx25@gmail.com>
/// copyright Josélio de S. C. Júnior 2022

using System; 

class URI {
  static void Main(string[] args) {
    for (int i = 0; i <= 20; i+=2) {
      var d = i * .1;
      for (int j = 1; j <= 3; j++)
        Console.WriteLine($"I={string.Format("{0:0.#}", d)} J={string.Format("{0:0.#}", j + d)}");
    }
  }
}
