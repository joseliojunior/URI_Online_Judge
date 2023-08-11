// author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
// copyright: Josélio Júnior (Lunatic Fox) 2023

uses sysutils, math;
const
  H = 1440;
var
  rd, ptt, sn: string;
  tms: array[1..4] of integer;
  i, tm, ih, im, eh, em, m: integer;
procedure p(h, m: integer);
begin
  writeln('O JOGO DUROU ', inttostr(h), ' HORA(S) E ', inttostr(m), ' MINUTO(S)');
end;
begin
  readln(rd);
  for i := 1 to 4 do
  begin
    if i < 4 then
    begin
      ptt := copy(rd, 1, pos(' ', rd));
      sn := stringreplace(ptt, ' ', '', []);
      tms[i] := strtoint(sn);
      rd := stringreplace(rd, ptt, '', []);
    end
    else
      tms[i] := strtoint(rd);
  end;

  ih := tms[1];
  im := tms[2];
  eh := tms[3];
  em := tms[4];

  tm := (ih * 60 + im) - (eh * 60 + em);
  if (ih = eh) and (im = em) then
    p(24, 0)
  else
  begin
    if ih = eh then
    begin
      m := im - em;
      if m > 0 then
        p(23, 60 - m)
      else
        p(0, m * -1);
    end
    else
    begin
      if tm > 0 then
      begin
        m := 60 - (tm mod 60);
        if m = 60 then
          p(floor((H - tm) / 60), 0)
        else
          p(floor((H - tm) / 60), m);
      end
      else
      begin
        m := abs(tm mod 60);
        if m = 60 then
          p(ceil(tm / 60) * -1, 0)
        else
          p(ceil(tm / 60) * -1, m);
      end;
    end;
  end;
end.
