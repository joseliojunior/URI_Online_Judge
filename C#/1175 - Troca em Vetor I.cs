/// author Josélio de S. C. Júnior <joseliojrx25@gmail.com>
/// copyright Josélio de S. C. Júnior 2022

using System;
using System.Linq;
using System.Collections.Generic;

class URI {
  static void Main(string[] args) { 
    var l = new List<string>();
  
    for (int i = 19; i >= 0; i--)
      l.Add($"N[{i}] = { Console.ReadLine() ?? "" }");
    
    l.Reverse();
    Console.WriteLine(string.Join("\n", l));
  }
}
