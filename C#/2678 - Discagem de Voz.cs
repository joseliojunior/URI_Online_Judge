/// author Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
/// copyright Josélio Júnior (Lunatic Fox) 2022

using System;
using System.Linq;
using System.Collections.Generic;
using System.Text.RegularExpressions;

class URI {
  static void Main(string[] args) { 
      string[] d = { "abc", "def", "ghi", "jkl", "mno", "pqrs", "tuv", "wxyz" };
  
      while (true) {
      var s = new List<string>();
      string r = Console.ReadLine() ?? "";
  
      if (r == "") break;
  
      string[] rl = Regex.Replace(r, @"[^0-9A-Za-z*#]", "")
        .ToCharArray()
        .Select(e => {
        string el = e.ToString().ToLower();
        for (var i = 0; i < d.Length; i++) 
          el = Regex.Replace(el, $"[{d[i]}]", (i + 2).ToString());
        return el;
        })
        .ToArray();
  
      Console.WriteLine(string.Join("", rl));
    }
  }
}
