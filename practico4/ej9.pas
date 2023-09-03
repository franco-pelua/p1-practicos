program powerTo;

var 
    x, n, i, result : integer;

begin 

    write('Input a value for x: ');
    readln(x);

    write('Input a value for n: ');
    readln(n);

    result := x;

    for i:=1 to n-1 do
        result := result * x;
    
    writeln('The result of raising ', x, ' to the power of ', n, ' is: ', result);

end.