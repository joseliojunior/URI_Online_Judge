/// author Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
/// copyright Josélio Júnior (Lunatic Fox) 2022

using System;
using System.Linq;
using System.Collections.Generic;
using System.Text.RegularExpressions;

class URI {
  static void Main(string[] args) {
    int c = 1;
    List<string> r = new List<string>();
    
    while (true) {
      string sn = Console.ReadLine() ?? "";
      if (sn == "") break;
      
      string[] s = Regex.Split(Console.ReadLine() ?? "", @"(\d{2}\s[FM])")
        .Where(e => !string.IsNullOrEmpty(e) && !string.IsNullOrWhiteSpace(e))
        .ToArray();
      
      int eq = 0, f = 0, m = 0;
      
      foreach (var e in s) {
        if (sn == Regex.Replace(e, @"[^\d]", "")) eq++;
        if (e == $"{sn} F") f++;
        if (e == $"{sn} M") m++;
      }
      
      r.Add($"Caso {c}:\nPares Iguais: {eq}\nF: {f}\nM: {m}");
      c++;
    }
    
    Console.WriteLine(string.Join("\n\n", r));
  }
}