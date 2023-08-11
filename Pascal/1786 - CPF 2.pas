// author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
// copyright: Josélio Júnior (Lunatic Fox) 2023

var
  r: string;
  na: array[1..9] of integer;
  b1, b2, i, j, tna: integer;
begin
  while not Eoln do
  begin
    readln(r);
    b1 := 0;
    b2 := 0;
    j := 9;
    for i := 1 to 9 do
    begin
      tna := ord(r[i]) - 48;
      if (tna >= 0) and (tna <= 9) then
      begin
        b1 := b1 + (tna * i);
        b2 := b2 + (tna * j);
      end;
      j := j - 1;
    end;

    b1 := b1 mod 11;
    b2 := b2 mod 11;
    
    if (b1 = 10) then b1 := 0;
    if (b2 = 10) then b2 := 0;

    writeln(
      copy(r, 1, 3), '.',
      copy(r, 4, 3), '.',
      copy(r, 7, 3), '-',
      b1, b2
    );
  end;
end.
