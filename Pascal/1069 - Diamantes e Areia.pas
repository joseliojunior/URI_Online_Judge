// author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
// copyright: Josélio Júnior (Lunatic Fox) 2023

uses sysutils;
var
  r, d: string;
  _, n, dc: integer;
begin
  d := '<>';
  readln(r);
  n := strtoint(r);
  for _ := 1 to n do
  begin
    dc := 0;
    readln(r);
    r := stringreplace(r, '.', '', [rfreplaceall]);
    while pos(d, r) <> 0 do
    begin
      dc := dc + 1;
      r := stringreplace(r, d, '', []);
    end;
    writeln(dc);
  end;
end.
