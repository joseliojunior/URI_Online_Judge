/// author Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
/// copyright Josélio Júnior (Lunatic Fox) 2022

using System;
using System.Linq;
using System.Collections.Generic;

class URI {
  static void Main(string[] args) { 
    double v = double.Parse(Console.ReadLine() ?? "0");
    var a = new List<string> { v.ToString() };
    int[] n = { 100, 50, 20, 10, 5, 2, 1 };

    n.ToList()
      .ForEach(e => {
        a.Add(string.Format("{0:0} nota(s) de R$ {1:0},00", Math.Floor(v * 1.0 / e), e));
        v = v % e;
      });
    
    Console.WriteLine(string.Join("\n", a));
  }
}
