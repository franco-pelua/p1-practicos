program maxValueInGivenNeighbourhood;

var
    x, y, n, prev, curr: integer;

begin
    
    write('Input a value for n: ');
    readln(n);

    for x := -n to n do
        begin
            for y := -n to n do
                begin
                    if (y = -n) AND (x = -n) then 
                        prev := x*x - 9*x*y + y*y
                    else 
                        begin
                            curr := x*x - 9*x*y + y*y;
                            if curr > prev then prev := curr;
                        end;
                end;
        end;
    
    writeln('The maximum value for x and y in the neighbourhood ranging from ', -n, ' to ', n, ' is: ', prev);

end. 