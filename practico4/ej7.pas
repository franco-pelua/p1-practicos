program drawBars;

var 
    n, i, i_2, barLength : integer;

begin 

    write('Input an integer lesser than 60: ');
    readln(n);
    write('Input ', n, ' positive integers: ');

    for i:= 1 to n do  
        begin
            read(barLength);
            for i_2 := 1 to barLength do write('*');
            writeln('');
        end

    
end. 