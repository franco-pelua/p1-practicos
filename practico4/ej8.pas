program drawTriangle;

var c : char;
var 
    n, barLength, i : integer;

begin 

    write('Input a character: ');
    readln(c);

    write('Input a value for n: ');
    readln(n);

    for i:=0 to n-1 do
        begin
            for barLength := n-i downto 1 do                
                if barLength = 1 then writeln(c) else write(c)               
        end

end.

