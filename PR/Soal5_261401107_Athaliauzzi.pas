program Soal5;
var
  m, n, i, j, lulus, tidakLulus: integer;
  nilai, jumlah: real;
  rata: array[1..100] of real;
begin
  write('Masukkan jumlah mahasiswa (M): ');
  readln(m);
  write('Masukkan jumlah tugas (N)    : ');
  readln(n);

  lulus := 0;
  tidakLulus := 0;

  { Nested loop: luar = mahasiswa, dalam = tugas }
  for i := 1 to m do
  begin
    writeln('--- Mahasiswa ke-', i, ' ---');
    jumlah := 0;
    for j := 1 to n do
    begin
      write('Nilai tugas ke-', j, ': ');
      readln(nilai);
      jumlah := jumlah + nilai;
    end;
    rata[i] := jumlah / n;

    if rata[i] >= 65 then
      lulus := lulus + 1
    else
      tidakLulus := tidakLulus + 1;
  end;

  writeln;
  writeln('===== REKAPITULASI =====');
  for i := 1 to m do
  begin
    write('Mahasiswa ke-', i, ' : ', rata[i]:0:2, ' -> ');
    if rata[i] >= 65 then
      writeln('LULUS')
    else
      writeln('TIDAK LULUS');
  end;
  writeln('Total LULUS       : ', lulus);
  writeln('Total TIDAK LULUS : ', tidakLulus);
end.