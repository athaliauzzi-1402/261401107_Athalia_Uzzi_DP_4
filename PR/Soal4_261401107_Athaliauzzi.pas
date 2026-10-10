program Soal4;
var
  pilih, x, y: integer;
  a, b: real;
  lagi: char;
begin
  repeat
    writeln('====== KALKULATOR ======');
    writeln('1: Penjumlahan');
    writeln('2: Pengurangan');
    writeln('3: Perkalian');
    writeln('4: Pembagian Real');
    writeln('5: DIV & MOD');
    write('Pilih operasi (1-5): ');
    readln(pilih);

    case pilih of
      1: begin
           write('Angka pertama: '); readln(a);
           write('Angka kedua  : '); readln(b);
           writeln('Hasil: ', (a + b):0:2);
         end;
      2: begin
           write('Angka pertama: '); readln(a);
           write('Angka kedua  : '); readln(b);
           writeln('Hasil: ', (a - b):0:2);
         end;
      3: begin
           write('Angka pertama: '); readln(a);
           write('Angka kedua  : '); readln(b);
           writeln('Hasil: ', (a * b):0:2);
         end;
      4: begin
           write('Angka pertama: '); readln(a);
           write('Angka kedua  : '); readln(b);
           if b = 0 then
             writeln('Error: tidak bisa dibagi nol!')
           else
             writeln('Hasil: ', (a / b):0:2);
         end;
      5: begin
           write('Bilangan bulat pertama: '); readln(x);
           write('Bilangan bulat kedua  : '); readln(y);
           if y = 0 then
             writeln('Error: tidak bisa dibagi nol!')
           else
           begin
             writeln('DIV = ', x div y);
             writeln('MOD = ', x mod y);
           end;
         end;
    else
      writeln('Pilihan tidak valid!');
    end;

    write('Apakah ingin melakukan perhitungan lagi? (Y/T): ');
    readln(lagi);
    writeln;
  until (lagi = 'T') or (lagi = 't');
end.