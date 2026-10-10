program Soal2;

var
  sandi, masukan: string;
  coba: integer;
  berhasil: boolean;
begin
  sandi := 'pascal123';
  coba := 0;
  berhasil := false;

  repeat
    coba := coba + 1;
    write('Masukkan kata sandi (percobaan ', coba, '/3): ');
    readln(masukan);

    if masukan = sandi then
    begin
      writeln('Login Berhasil! Selamat Datang');
      berhasil := true;
      break;
    end
    else
      writeln('Kata sandi salah!');
  until coba >= 3;

  if not berhasil then
    writeln('Akses Ditolak! Akun Terkunci.');
end.