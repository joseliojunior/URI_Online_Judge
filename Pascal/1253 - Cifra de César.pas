uses sysutils;
var
  _, i, chn, n, m: integer;
  rd, c, d: string;
begin
  readln(rd);
  for _ := 1 to strtoint(rd) do
  begin
    readln(rd);
    c := rd;
    d := '';
    readln(rd);
    m := strtoint(rd);
    
    for i := 1 to length(c) do
    begin
      chn := ord(c[i]);
      if (chn - m) < 65 then
        n := 91 - (65 - (chn - m))
      else
        n := chn - m;
      d := d + chr(n);
    end;
    writeln(d);
  end;
end.
