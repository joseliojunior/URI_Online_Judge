/// author Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
/// copyright Josélio Júnior (Lunatic Fox) 2022

using System;
using System.Linq;

class URI {
  static void Main(string[] args) { 
    int[] r = (Console.ReadLine() ?? "")
      .Split(' ')
      .Select(e => int.Parse(e))
      .ToArray();

    int ih = r[0],
      im = r[1],
      eh = r[2],
      em = r[3];

    if (ih == eh && im == em) {
      Console.WriteLine(P(24, 0));
    } else if (ih == eh) {
      int mm = im - em;
      Console.WriteLine(mm > 0 ? P(23, 60 - mm) : P(0, mm * -1));
    } else {
      int tm = (ih * 60 + im) - (eh * 60 + em);
      int m = tm > 0 ? 60 - (tm % 60) : tm % 60 * -1;

      Console.WriteLine(
        tm > 0 ? 
        P(Convert.ToInt32(Math.Floor((1440 - tm) / 60.0)), m == 60 ? 0 : m)
        : P(Convert.ToInt32(Math.Ceiling(tm / 60.0)) * -1, m == 60 ? 0 : m)
      );
    }
  }
    
  static string P(int h, int m) {
      return $"O JOGO DUROU {h} HORA(S) E {m} MINUTO(S)";
  }
}
