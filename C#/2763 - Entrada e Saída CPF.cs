/// author Josélio de S. C. Júnior <joseliojrx25@gmail.com>
/// copyright Josélio de S. C. Júnior 2022

using System;
using System.Linq;
using System.Text.RegularExpressions;

class URI {
  static void Main(string[] args) { 
    string[] r = Regex.Split(Console.ReadLine() ?? "", @"\.|\-");
    Console.WriteLine(string.Join("\n", r));
  }
}
