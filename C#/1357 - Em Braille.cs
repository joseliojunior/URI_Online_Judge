/// author Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
/// copyright Josélio Júnior (Lunatic Fox) 2022

using System;
using System.Linq;
using System.Collections.Generic;

class URI {
  static void Main(string[] args) { 
    string[] b = {
      ".***..", "*.....", "*.*...", "**....", "**.*..",
      "*..*..", "***...", "****..", "*.**..", ".**..."
    };

    while (true) {
      string r = Console.ReadLine() ?? "";
      if (r == "0") break;
      int n = int.Parse(r);
      string l = Console.ReadLine() ?? "";
  
      if (l == "B") {
        var sl = new List<List<string>>();
  
        for (int i = 0; i < 3; i++) {
        sl.Add((Console.ReadLine() ?? "").Split(' ').ToList());
        }
  
        var sm = sl.SelectMany(e => e.Select((ne, ni) => new { ne, ni }))
        .GroupBy(i => i.ni, i => i.ne)
        .Select(e => {
          string st = string.Concat(e);
          for (int i = 0; i < b.Length; i++)
          if (st == b[i]) st = i.ToString(); 
          return st;
        })
        .ToList();
  
        Console.WriteLine(string.Concat(sm));
      }
  
      if (l == "S") {
        var sl = (Console.ReadLine() ?? "")
        .ToCharArray()
        .Select(e => {
          string v = b[int.Parse(e.ToString())];
          var w = new List<string>();
  
          for (int i = 0; i < 3; i++)
          w.Add(string.Concat(v.Skip(i * 2).Take(2)));
  
          return w;
        })
        .SelectMany(e => e.Select((ne, ni) => new { ne, ni }))
        .GroupBy(i => i.ni, i => i.ne)
        .Select(e => string.Join(" ", e))
        .ToArray();
  
        Console.WriteLine(string.Join("\n", sl));
      }
    }
  }
}
