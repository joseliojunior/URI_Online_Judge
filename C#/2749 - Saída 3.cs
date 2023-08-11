/// author Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
/// copyright Josélio Júnior (Lunatic Fox) 2022

using System;
using System.Linq;

class URI {
  static void Main(string[] args) { 
    string b = new string(' ', 39).Replace(" ", "-");
    string i = $"|{new string(' ', 37)}|\n";
    string[] w = new string[] {
      $"x{ new string(' ', 31) }",
      $"{ new string(' ', 15) }x{ new string(' ', 16) }",
      $"{ new string(' ', 31) }x"
    }.Select(e => $"|{ e.Replace("x", "x = 35") }|\n")
    .ToArray();

    Console.WriteLine($"{b}\n{string.Join(i, w)}{b}");
  }
}
