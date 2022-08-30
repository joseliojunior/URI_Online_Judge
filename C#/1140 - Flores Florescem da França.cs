/// author Josélio de S. C. Júnior <joseliojrx25@gmail.com>
/// copyright Josélio de S. C. Júnior 2022

using System;
using System.Linq;

class URI {
  static void Main(string[] args) { 
    while (true) {
      string r = Console.ReadLine() ?? "";
  
      if (r == "*") break;
  
      string[] t = r.Split(' ')
        .Select(e => e[0].ToString().ToLower())
        .ToArray();
  
      if (t.All(e => e == t[0])) {
        Console.WriteLine("Y");
      } else Console.WriteLine("N");
    }
  }
}
