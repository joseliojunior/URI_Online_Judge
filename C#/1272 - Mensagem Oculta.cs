/// author Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
/// copyright Josélio Júnior (Lunatic Fox) 2022

using System;
using System.Linq;
using System.Collections.Generic;
using System.Text.RegularExpressions;

class URI {
  static void Main(string[] args) { 
    int n = int.Parse(Console.ReadLine() ?? "1");
    for (int i = 0; i < n; i++) {
      string r = Regex.Replace(Console.ReadLine() ?? "", @"\s+", " ");
      new List<string> { @"^\s", @"\s$" }.ForEach(e => r = Regex.Replace(r, e, ""));

      string[] tr = r.Split(' ').Contains("") ? new string[] {}
        : r.Split(' ')
        .Select(e => e[0].ToString())
        .ToArray();

      Console.WriteLine(string.Join("", tr));
    }
  }
}
