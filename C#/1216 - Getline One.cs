/// author Josélio de S. C. Júnior <joseliojrx25@gmail.com>
/// copyright Josélio de S. C. Júnior 2021

using System;
using System.Linq;
using System.Collections.Generic;

class URI {
  static void Main(string[] args) { 
    List<int> t = new List<int>();

    while (true) {
      string ck = Console.ReadLine() ?? "";
      if (ck == "") break;
      int r = Int32.Parse(Console.ReadLine() ?? "0");
      t.Add(r);
    }
  
    Console.WriteLine(string.Format("{0:0.0}", t.Average()));
  }
}
