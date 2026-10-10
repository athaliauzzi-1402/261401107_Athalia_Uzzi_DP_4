program Soal7;
var
  kode: char;
  jam: integer;
  tarif: longint;
begin
  write('Kode kendaraan (M=Mobil, K=Motor, B=Bus): ');
  readln(kode);
  kode := upcase(kode);
  write('Lama parkir (jam): ');
  readln(jam);
  if jam < 1 then jam := 1;

  tarif := 0;
  case kode of
    'M': if jam > 10 then
           tarif := 30000
         else
           tarif := 5000 + (jam - 1) * 3000;
    'K': if jam > 10 then
           tarif := 10000
         else
           tarif := 2000 + (jam - 1) * 1000;
    'B': if jam > 10 then
           tarif := 50000
         else
           tarif := 10000 + (jam - 1) * 5000;
  else
    writeln('Kode kendaraan tidak valid!');
  end;

  if tarif > 0 then
  begin
    if jam > 10 then
      writeln('(Berlaku Tarif Maksimal Flat)');
    writeln('Lama parkir : ', jam, ' jam');
    writeln('Total tarif : Rp', tarif);
  end;
end.