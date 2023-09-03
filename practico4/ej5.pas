program EveryNaturalDivisor;

var 
    n, i : integer;

begin 

    write('Enter a natural number: ');
    readln(n);

    writeln('n = ', n);

    for i:= 1 to n do
        if n MOD i = 0 then write(i, ' ');
    writeln('');
end.