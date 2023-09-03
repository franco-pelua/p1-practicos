program multiplesBetween;

var 
    a, b, n, temp, counter : integer;

begin 

    write('Input three natural numbers: ');
    readln(a, b, n);

    temp := n;
    counter := 1;

    writeln('a = ', a, ', b = ', b, ', n = ', n);

    while temp < b do
        begin
            temp := n*counter;
            counter := counter + 1;
            if (temp >= a) AND (temp <= b) then write(temp, ' ');
        end;
    writeln('')
end.