/// author Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
/// copyright Josélio Júnior (Lunatic Fox) 2022

using System;
using System.Linq;
using System.Collections.Generic;
using System.Text.RegularExpressions;

class URI {
  static void Main(string[] args) { 
    while (true) {
      var r = Console.ReadLine() ?? "";
      if (r == "") break;
  
      string f9 = string.Join(".",
        Regex.Split(r, @"(\d{3})")
        .Where(e => !string.IsNullOrEmpty(e))
      );
  
      int[] r9 = r.ToCharArray()
        .Select(e => Int32.Parse(Convert.ToString(e)))
        .ToArray();
    
      List<int> _b1 = new List<int>(), _b2 = new List<int>();
      
      for (int i = 0; i < r9.Length; i++) {
        _b1.Add((i + 1) * r9[i]);
        _b2.Add((9 - i) * r9[i]);
      }
  
      int b1 = _b1.Aggregate((a, b) => a + b);
      int b2 = _b2.Aggregate((a, b) => a + b);
  
      b1 = b1 % 11 == 10 ? 0 : b1 % 11;
      b2 = b2 % 11 == 10 ? 0 : b2 % 11;
  
      Console.WriteLine($"{f9}-{b1}{b2}");
    }
  }
}
