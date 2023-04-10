// author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
// copyright: Josélio Júnior (Lunatic Fox) 2023

var
  r: string;
  s: string;
  na: array[1..11] of integer;
  i, j, tna, b1, b2: integer;
begin
  while not Eoln do
    begin
    readln(r);
    s := '';
    for i := 1 to 14 do
    begin
      if (r[i] <> '.') and (r[i] <> '-') then
        s := s + r[i];
    end;

    for i := 1 to 11 do
    begin
      tna := ord(s[i]) - 48;
      if (tna >= 0) and (tna <= 9) then
        na[i] := tna;
    end;

    b1 := 0;
    b2 := 0;
    j := 9;
    for i := 1 to 9 do
    begin
      b1 := b1 + (na[i] * i);
      b2 := b2 + (na[i] * j);
      j := j - 1;
    end;
    
    b1 := b1 mod 11;
    b2 := b2 mod 11;
    
    if (b1 = 10) then b1 := 0;
    if (b2 = 10) then b2 := 0;

    if (b1 = na[10]) and (b2 = na[11]) then
      writeln('CPF valido')
    else
      writeln('CPF invalido');
  end;
end.
