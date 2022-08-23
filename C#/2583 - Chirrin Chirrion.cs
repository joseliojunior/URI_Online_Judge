/// author Josélio de S. C. Júnior <joseliojrx25@gmail.com>
/// copyright Josélio de S. C. Júnior 2022

using System;
using System.Linq;
using System.Collections.Generic;

class URI {
  static void Main(string[] args) { 
      int n1 = int.Parse(Console.ReadLine() ?? "1");
  
      for (int i = 0; i < n1; i++) {
      int n2 = int.Parse(Console.ReadLine() ?? "1");
      var iv = new List<string>();
  
      for (int j = 0; j < n2; j++) {
        string[] cmd = (Console.ReadLine() ?? "").Split(' ');
  
        bool exist = iv.Exists(e => e == cmd[0]);
  
        if (cmd[1] == "chirrin" && !exist) iv.Add(cmd[0]);
        if (cmd[1] == "chirrion" && exist) iv.Remove(cmd[0]);
      }
  
      iv = iv.OrderBy(e => e).ToList();
  
      Console.WriteLine($"TOTAL\n{string.Join("\n", iv)}");
    }
  }
}
