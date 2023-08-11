/// author Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
/// copyright Josélio Júnior (Lunatic Fox) 2022

using System;
using System.Linq;
using System.Collections.Generic;
using System.Text.RegularExpressions;

class URI {
  static void Main(string[] args) { 
    while (true) {
      string r = Console.ReadLine() ?? "";
      if (r == "") break;
      var ra = Regex.Split(r, @"[+=]").ToList();
      string k = Regex.Replace(string.Concat(ra), @"\d", "");
      int rsp = 0;
      var ira = ra.Select(e => int.Parse(Regex.Replace(e, @"[JLR]", "0"))).ToArray();
      
      switch (k) {
        case "J":
          rsp = ira[0] + ira[1];
          break;
        case "L":
          rsp = (-ira[0]) + ira[2];
          break;
        case "R":
          rsp = (-ira[1]) + ira[2];
          break;
      }
      
      Console.WriteLine(rsp);
    }
  }
}
