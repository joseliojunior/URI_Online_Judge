/// author Josélio de S. C. Júnior <joseliojrx25@gmail.com>
/// copyright Josélio de S. C. Júnior 2022

using System; 

class URI {
  static void Main(string[] args) { 
    string b = new string(' ', 39).Replace(" ", "-");
    string i = new string(' ', 5).Replace(" ", $"|{new string(' ', 37)}|\n");
    Console.WriteLine($"{b}\n{i}{b}");
  }
}
