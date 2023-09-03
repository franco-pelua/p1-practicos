program greatestNumberAmong;

var 
    n, i, prev, curr, min : integer;

begin 

    write('Input an integer: ');
    readln(n);
    write('Input ', n, ' integers: ');

    prev := 0;
    
    for i:=1 to n do
        begin
            read(curr);

            if i = 1 then min := curr;
 
            if curr > prev then prev := curr;

            if (curr < prev) AND (curr < min) then min := curr; 
        end; 

    writeln('The greatest integer is: ', prev);
    writeln('The lowest integer is: ', min);

end.