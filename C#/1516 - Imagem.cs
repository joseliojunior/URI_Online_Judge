/// author Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
/// copyright Josélio Júnior (Lunatic Fox) 2022

using System;
using System.Linq;
using System.Collections.Generic;

class URI {
  static void Main(string[] args) { 
    while (true) {
      string r = Console.ReadLine() ?? "0 0";
      if (r == "0 0") break;
  
      var mImg = new List<List<string>>();
      var c1 = r.Split(' ').Select(e => int.Parse(e)).ToArray();
  
      for (int i = 0; i < c1[0]; i++)
        mImg.Add(
        (Console.ReadLine() ?? "")
          .ToCharArray()
          .Select(e => e.ToString())
          .ToList()
        );
  
      r = Console.ReadLine() ?? "0 0";
      int[] c2 = r.Split(' ').Select(e => int.Parse(e)).ToArray();
  
      c2[0] = c2[0] / c1[0];
      c2[1] = c2[1] / c1[1];
  
      mImg.Select(e => {
        string g = string.Concat(e.Select(f => new string(' ', c2[1]).Replace(" ", f)));
        var h = new List<string>();
  
        for (int i = 0; i < c2[0]; i++)
        h.Add(g);
  
        return string.Join("\n", h);
      })
        .ToList()
        .ForEach(e => Console.WriteLine(e));
      Console.WriteLine();
    }
  }
}
