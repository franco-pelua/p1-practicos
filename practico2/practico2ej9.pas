program TaylorExponential;

var 
    x, series_sum : real;

begin
    
    write('Enter a real number: ');
    read(x);

    series_sum := 1 + x/1 + x*x/2 + x*x*x/(3*2) + x*x*x*x/(4*3*2);

    writeln('Introduced value: ', x);
    writeln('Sum of the first five terms: ', series_sum);
    writeln('exp(x) value:', exp(x)) 

end.