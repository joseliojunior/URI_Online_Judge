/// author Josélio de S. C. Júnior <joseliojrx25@gmail.com>
/// copyright Josélio de S. C. Júnior 2022

using System;
using System.Linq;
using System.Collections.Generic;
using System.Text.RegularExpressions;

class URI {
  static void Main(string[] args) { 
    int n = Int32.Parse(Console.ReadLine() ?? "1");

    for (int i = 0; i < n; i++) {
      string d = Console.ReadLine() ?? "";
  
      new List<string> { @"\.", @"^>+", @"<+$" }
        .ForEach(e => { d = Regex.Replace(d, e, ""); });
  
      int dOSize = d.Length;
      string dPtt = "<>";
      while (Regex.Match(d, dPtt).ToString() == dPtt) d = Regex.Replace(d, dPtt, "");
  
      Console.WriteLine((dOSize - d.Length) / 2);
    }
  }
}
