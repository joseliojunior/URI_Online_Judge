/// author Josélio de S. C. Júnior <joseliojrx25@gmail.com>
/// copyright Josélio de S. C. Júnior 2022

using System;
using System.Linq;
using System.Collections.Generic;

class URI {
  static void Main(string[] args) { 
    string b = new string(' ', 39).Replace(" ", "-");
    var c = new List<string>();
    
    for (int i = 0; i < 16; i++) {
      string d = i >= 10 ? i.ToString() : $" {i}";
      string o = (i >= 8 ? i + 2 : i).ToString();
      o = o.Length > 1 ? o : $" {o}";
      string x = i.ToString("X");
      c.Add($"|     {d}    |   {o}    |       {x}       |");
    }
    
    var r = new string[] {
      b, "\n| decimal   |  octal  |  Hexadecimal  |\n",
      b, "\n", string.Join("\n", c), "\n", b
    };

    Console.WriteLine(string.Concat(r));
  }
}
