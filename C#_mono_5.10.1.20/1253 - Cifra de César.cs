/// author Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
/// copyright Josélio Júnior (Lunatic Fox) 2022

using System; 
using System.Linq; 

class URI {
  static void Main(string[] args) { 
    int n = int.Parse(Console.ReadLine() ?? "0");

    for (int i = 0; i < n; i++) {
      string c = Console.ReadLine() ?? "";
      int dcm = int.Parse(Console.ReadLine() ?? "0");
  
      string deco = string.Concat(c.ToCharArray()
        .Select(e => {
        int b = ((byte)e) - dcm;
        b = b < 65 ? 90 - (64 - b) : b;
        return ((char)b);
        }));
      
      Console.WriteLine(deco);
    }
  }
}
