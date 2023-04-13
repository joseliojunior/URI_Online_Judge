// author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
// copyright: Josélio Júnior (Lunatic Fox) 2023

uses sysutils;
type
  IArray = array[1..7] of integer;
var
  v: string;
  a: array[1..8] of string;
  n: IArray = (100, 50, 20, 10, 5, 2, 1);
  i, j: integer;
begin
  readln(v);
  a[1] := v;
  j := strtoint(v);

  for i := 2 to 8 do
  begin
    a[i] := inttostr(trunc(j / n[i - 1])) + ' nota(s) de R$ ' + inttostr(n[i - 1]) + ',00';
    j := j mod n[i - 1];
  end;

  for i := 1 to 8 do writeln(a[i]);
end.
