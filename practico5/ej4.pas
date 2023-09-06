program sumAndAverage;

var 
    number, temp, sum, counter : integer;

begin

    temp := -1;
    sum := 0;
    counter := 0;

    write('Input a sequence of positive integers separated by a blank space and end it with a -1: ');

    repeat
        read(number);
        
        if temp = -1 then temp := number;

        if number <> -1 then
            begin
                sum := sum + number;

                counter := counter + 1;

                if number < temp then temp := number;
            end;

    until (number = -1);

    writeln;

    writeln('The sum of all numbers is: ', sum);
    writeln('The average of all numbers is: ', sum/counter:0:2);
    writeln('The lesser among all introduced numbers is: ', temp);
    
end.