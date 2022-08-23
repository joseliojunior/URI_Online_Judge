/// author Josélio de S. C. Júnior <joseliojrx25@gmail.com>
/// copyright Josélio de S. C. Júnior 2022

using System;
using System.Linq;
using System.Collections.Generic;
using System.Text.RegularExpressions;

class URI {
  static void Main() {
    while (true) {
      var gl = Console.ReadLine() ?? "";

      if (gl == "") break;

      int[] r = Regex.Replace(gl, @"\.|\-", "")
        .ToCharArray()
        .Select(e => Int32.Parse(e.ToString()))
        .ToArray();

      List<int> b1 = new List<int>(), b2 = new List<int>();

      for (int i = 0; i < 9; i++) {
        b1.Add(r[i] * (i + 1));
        b2.Add(r[i] * (9 - i));
      }

      int c1 = b1.Aggregate((a, b) => a + b) % 11;
      int c2 = b2.Aggregate((a, b) => a + b) % 11;
      c1 = c1 == 10 ? 0 : c1;
      c2 = c2 == 10 ? 0 : c2;

      Console.WriteLine(Int32.Parse(
          string.Concat(r.Skip(r.Length - 2).Take(2)))
          == Int32.Parse($"{c1}{c2}") ? "CPF valido"
          : "CPF invalido"
      );
    } 
  }
}
