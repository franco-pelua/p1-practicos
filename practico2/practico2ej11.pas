program OctalToDecimal;

var
    octal : integer;

begin

    write('Please enter a three-digit octal number: ');
    readln(octal);

    write('Octal ', octal);
    write(' = Decimal ', (octal DIV 100) * sqr(8) + (octal DIV 10) MOD 10 * 8 + (octal MOD 10));

end.