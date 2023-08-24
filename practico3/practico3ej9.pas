program ParseNumber;

var
    number : integer;
    tail : integer;

begin
    write('Input a 4-digit number: ');
    readln(number);
    
    if number >= 1000 then
        begin
            tail := number MOD 1000;

            if tail <= 9 then  
                writeln(number DIV 1000, '.00', tail)
            else if tail <= 99 then
                writeln(number DIV 1000, '.0', tail)
            else 
                writeln(number DIV 1000, '.', tail);
        end
    else
        writeln(number);
        
end.