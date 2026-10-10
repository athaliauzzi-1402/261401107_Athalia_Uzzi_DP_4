program Soal8;
var
  gol: char;
  jam: integer;
  pokok, lembur, bonus, total: longint;
  valid: boolean;
begin
  write('Golongan (A/B/C)       : ');
  readln(gol);
  gol := upcase(gol);
  write('Total jam kerja/minggu : ');
  readln(jam);

  valid := true;
  pokok := 0;
  case gol of
    'A': pokok := 1500000;
    'B': pokok := 2000000;
    'C': pokok := 2500000;
  else
    valid := false;
    writeln('Golongan tidak valid!');
  end;

  if valid then
  begin
    { Lembur: kelebihan dari 40 jam }
    if jam > 40 then
      lembur := (jam - 40) * 20000
    else
      lembur := 0;

    { Bonus khusus golongan C (nested if) }
    bonus := 0;
    if gol = 'C' then
    begin
      if jam > 50 then
        bonus := 100000;
    end;

    total := pokok + lembur + bonus;

    writeln;
    writeln('===== RINCIAN GAJI =====');
    writeln('Gaji Pokok       : Rp', pokok);
    writeln('Lembur           : Rp', lembur);
    writeln('Bonus            : Rp', bonus);
    writeln('Total Gaji Akhir : Rp', total);
  end;
end.