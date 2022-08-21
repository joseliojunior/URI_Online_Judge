/// author Josélio de S. C. Júnior <joseliojrx25@gmail.com>
/// copyright Josélio de S. C. Júnior 2021

using System;
using System.Linq;
using System.Collections.Generic;

class URI {
  static void fn(List<List<string>> x) {
    foreach (var e in x) Console.WriteLine(string.Join("", e));
  }
  static void Main(string[] args) { 
    while (true) {
      int n1 = Int32.Parse(Console.ReadLine() ?? "0");
      if (n1 == 0) break;
      var t = new List<List<string>>();
  
      for (int i = 0; i < n1; i++) {
        var ti = new List<string>();
        for (int j = 0; j < n1; j++) ti.Add("O");
        t.Add(ti);
      }
  
      int x = Convert.ToInt32(Math.Ceiling(n1 / 2.0)) - 1;
      x = x < 0 ? 0 : x;
      int y = x;
      t[x][y] = "X";
  
      int n2 = 0, px = 1, py = -1;
      List<int> rx = new List<int>(), ry = new List<int>();
  
      for (int i = 0; i <= n1; i++) {
        for (int j = 0; j < n2; j++) rx.Add(0);
        for (int j = 0; j < n2; j++) rx.Add(px);
        px = px < 0 ? 1 : -1;
        for (int j = 0; j < n2; j++) ry.Add(py);
        for (int j = 0; j < n2; j++) ry.Add(0);
        py = py < 0 ? 1 : -1;
        n2++;
      }
  
      fn(t);
      Console.WriteLine("@");
  
      if (n1 > 1) {
        for (int i = 0; i < rx.ToArray().Length; i++) {
          if (x < n1 && y < n1) t[x][y] = "O";
          x += rx[i];
          y += ry[i];
          if (x < n1 && y < n1) {
            t[x][y] = "X";
            fn(t);
            Console.WriteLine("@");
          }
        }
      }
    }
  }
}
