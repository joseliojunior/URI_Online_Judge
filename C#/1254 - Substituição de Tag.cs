/// author Josélio de S. C. Júnior <joseliojrx25@gmail.com>
/// copyright Josélio de S. C. Júnior 2021

using System;
using System.Linq;
using System.Text.RegularExpressions;

class URI {
  static void Main(string[] args) { 
    while (true) {
      string tag = Console.ReadLine() ?? "";
      if (tag == "") break;

      string  rv = Console.ReadLine() ?? "", code = Console.ReadLine() ?? "";
    
      foreach (Match e in Regex.Matches(code, @"<.*?>")) {
        string rp = Regex.Replace(e.ToString(), $"(?i){tag}", rv);
        code = Regex.Replace(code, e.ToString(), rp);
      }
    
      Console.WriteLine(code);
    }
  }
}
