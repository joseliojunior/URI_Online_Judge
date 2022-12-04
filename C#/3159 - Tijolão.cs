/// author Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
/// copyright Josélio Júnior (Lunatic Fox) 2022

using System;
using System.Linq;

class URI {
  static void Main(string[] args) { 
    string[] ltt = { "abc", "def", "ghi", "jkl", "mno", "pqrs", "tuv", "wxyz" };
    int n = int.Parse(Console.ReadLine() ?? "1");
    
    for (int i = 0; i < n; i++) {
      var r = (Console.ReadLine() ?? "")
        .ToCharArray()
        .Select(e => {
          string lte = e.ToString();
          string rsp = "";
    
          for (int j = 0; j < ltt.Length; j++) 
            if (ltt[j].Contains(lte.ToLower())) 
              rsp = new string(' ', ltt[j].IndexOf(lte.ToLower()) + 1).Replace(" ", (j + 2).ToString());
    
          if (lte == " ") rsp = "0";
          if (lte == lte.ToUpper() && lte != " ") rsp = $"#{rsp}";
    
          return rsp;
        })
        .ToArray();
  
      for (int j = 0; j < r.Length; j++)
        if (j + 1 < r.Length) 
          if (r[j].Last() == r[j + 1].First()) r[j] = $"{r[j]}*";
  
      Console.WriteLine(string.Concat(r));
    }
  }
}
