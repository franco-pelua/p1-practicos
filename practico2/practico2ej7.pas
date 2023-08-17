program MeasureRelativeError;

var 
    m, v, e : real;

begin
    
    write('Please enter your measurement value and its true expected value, each separated by a blank space: ');
    read(m, v);

    e := (abs(m - v)) / v;

    writeln('Measurement = ', m);
    writeln('True expected value = ', v);
    writeln('Relative error = ', e);

end.