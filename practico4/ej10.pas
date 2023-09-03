program factorialOf;

var n, result, i : integer;

begin

    write('Input an integer n: ');
    readln(n);

    result := 1;

    for i:=n downto 1 do
        result := result * i;

    writeln('Factorial of ', n, ' is: ', result)
end.
