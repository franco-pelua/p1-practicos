program PseudoRandomNumber;

var 
    a, sqr_number, next_in_sequence : integer;

begin
    
    write('Please enter a two-digit integer: ');
    readln(a);

    sqr_number := sqr(a);

    next_in_sequence := (sqr_number DIV 10) MOD 100;

    writeln('Original number: ', a);
    writeln('Number''s square: ', sqr_number);
    writeln('Next in sequence: ', next_in_sequence)

end.