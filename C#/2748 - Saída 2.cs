/// author Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
/// copyright Josélio Júnior (Lunatic Fox) 2022

using System;
using System.Linq;

class URI {
  static void Main(string[] args) { 
    string b = new string(' ', 39).Replace(" ", "-");
    string i = $"|{new string(' ', 37)}|\n";
    string[] w = new string[]{ "Roberto", "5786", "UNIFEI" }
      .Select(e => {
        string ve = $"|{new string(' ', 8)}{e}";
        return $"{ve}{new string(' ', 38 - ve.Length)}|\n";
      })
      .ToArray();

    Console.WriteLine($"{b}\n{string.Join(i, w)}{b}");
  }
}
