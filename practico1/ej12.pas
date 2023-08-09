program PeriodCalculator;

var 
    pendulum_length : real;

const
    pi = 3.15; 
    g = 9.8;

begin
    writeln('Enter pendulum''s length:');
    readln(pendulum_length);

    writeln('Your pendulum''s period is: ');
    writeln(2*pi*sqrt(pendulum_length / g))
    
end.