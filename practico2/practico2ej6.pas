program TimeCalculator;

var
    time1, time2, 
    hour1, hour2, min1, min2,
    new_min, new_hour, days : integer;

begin
    write('Please, enter the times that you want to sum in hhmm format, using blank spaces as separators: ');

    read(time1, time2);

    hour1 := time1 DIV 100;
    hour2 := time2 DIV 100;
    min1 := time1 MOD 100;
    min2 := time2 MOD 100;

    new_min := (min1 + min2) MOD 60;
    new_hour := (((min1 + min2) DIV 60) + ((hour1 + hour2))) MOD 24;
    days := (((min1 + min2) DIV 60) + (hour1 + hour2)) DIV 24;

    if new_hour > 10 then 
        writeln('The sum of those two times is: ', days, ' ', new_hour, new_min) 
    else
        writeln('The sum of those two times is: ', days, ' 0', new_hour, new_min)
end.