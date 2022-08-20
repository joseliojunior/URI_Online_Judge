/// author Josélio de S. C. Júnior <joseliojrx25@gmail.com>
/// copyright Josélio de S. C. Júnior 2021

using System;

class URI {
  static void Main() {

    int n = Int32.Parse(Console.ReadLine() ?? "1");

    int[][] t = new int[n][].Select(e => 
      Console.ReadLine()?
        .Split(' ')
        .Select(f => Int32.Parse(f))
        .ToArray() ?? new int[] {}
    ).ToArray();

    int[] u = new int[n * 2]
      .Select(e => {
        int[] a = Console.ReadLine()?
        .Split(' ')
        .Select(f => Int32.Parse(f) - 1)
        .ToArray() ?? new int[] {};
        return t[a[0]][a[1]];
      })
      .Distinct()
      .ToArray();

    Console.WriteLine(u.Length);
  }
}
