program Soal3;

var
  n, pilihan, i: integer;
begin
  write('Masukkan nilai N: ');
  readln(n);
  write('Pilih kategori deret (1: Ganjil, 2: Genap): ');
  readln(pilihan);

  writeln('Hasil deret:');
  i := 0;
  while i < n do
  begin
    i := i + 1;

    if (pilihan = 1) and (i mod 2 = 0) then
      continue;          { lewati genap }
    if (pilihan = 2) and (i mod 2 <> 0) then
      continue;          { lewati ganjil }
    if i mod 5 = 0 then
      continue;          { lewati kelipatan 5 }

    write(i, ' ');
  end;
  writeln;
end.