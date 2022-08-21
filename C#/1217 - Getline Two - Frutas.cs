/// author Josélio de S. C. Júnior <joseliojrx25@gmail.com>
/// copyright Josélio de S. C. Júnior 2021

using System;
using System.Linq;
using System.Collections.Generic;
using System.Globalization;

class URI {
  static void Main(string[] args) { 
    List<double> v = new List<double>();
    List<int> dkg = new List<int>();
    int n = Int32.Parse(Console.ReadLine() ?? "1");

    for (int i = 0; i < n; i++) {
      v.Add(double.Parse(Console.ReadLine() ?? "0.00", CultureInfo.InvariantCulture));
      dkg.Add((Console.ReadLine() ?? "").Split(' ').Length);
      Console.WriteLine($"day {i + 1}: {dkg[i]} kg");
    }

    Console.WriteLine($"{string.Format("{0:0.00}", dkg.Average())} kg by day");
    Console.WriteLine($"R$ {string.Format("{0:0.00}", v.Average())} by day");
  }
}
