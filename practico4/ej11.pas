program maxValueInGivenNeighbourhood;

var
    i, m, n, prev, curr: integer;

begin
    write('Input a value for m: ');
    readln(m);

    write('Input a value for n: ');
    readln(n);

    prev := m*m - 18*m + 5;

    for i := m+1 to n do
        begin 
            curr := i*i - 18*i + 5;

            if (i = m) OR (curr > prev) then prev := curr;
        end;

    writeln('The maximum value for x in the neighbourhood ranging from ', m, ' to ', n, ' is: ', prev);

end. 