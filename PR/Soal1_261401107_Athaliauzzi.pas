
program Soal1;
var
  n, i, persen: integer;
  harga: array[1..100] of real;
  total, diskon, bayar: real;
begin
  write('Masukkan jumlah barang (N): ');
  readln(n);

  total := 0;
  for i := 1 to n do
  begin
    write('Harga barang ke-', i, ': Rp');
    readln(harga[i]);
    total := total + harga[i];
  end;

  { Tentukan diskon dengan if-else }
  if total < 100000 then
    persen := 0
  else if total < 500000 then
    persen := 10
  else
    persen := 20;

  diskon := total * persen / 100;
  bayar := total - diskon;

  writeln;
  writeln('===== RINCIAN BELANJA =====');
  for i := 1 to n do
    writeln('Barang ke-', i, ' : Rp', harga[i]:0:0);
  writeln('---------------------------');
  writeln('Total Sebelum Diskon : Rp', total:0:0);
  writeln('Besar Diskon (', persen, '%)  : Rp', diskon:0:0);
  writeln('Total Bayar Akhir    : Rp', bayar:0:0);
end.