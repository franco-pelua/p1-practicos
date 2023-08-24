program hexToDec;

var
    hex_string: string;
    counter, number1, number2, number3 : integer;
    

begin
    write('Input a three-digit hex number: ');
    readln(hex_string);

    for counter := 1 to 3 do 
        if ord(hex_string[counter]) - ord('0') < 9 then 
            begin
                case counter of
                    1 : number1 := ord(hex_string[counter]) - ord('0');
                    2 : number2 := ord(hex_string[counter]) - ord('0');
                    3 : number3 := ord(hex_string[counter]) - ord('0'); 
                end
            end
        else 
            begin
                case counter of
                    1 : number1 := ord(hex_string[counter]) - 55;
                    2 : number2 := ord(hex_string[counter]) - 55;
                    3 : number3 := ord(hex_string[counter]) - 55; 
                end
            end;

        

    writeln('Hexadecimal ', hex_string, ' = Decimal ', number1*sqr(16) + number2*16 + number3);
end.