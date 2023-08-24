program numberHasDigit;

var 
    n, d, ones, tens, hundreds, thousands: integer;
    aux : string;

begin

    write('Enter two integers, the first one with 4-digits and the second one being a single-digit number: ');
    readln(n, d); 

    thousands := n DIV 1000 MOD 10;
    hundreds := n DIV 100 MOD 10;
    tens := n DIV 10 MOD 10;
    ones := n MOD 10;

  

    aux := '';

    if d = thousands then aux := aux + '+' else aux := aux + ' ';
    if d = hundreds then aux := aux + '+' else aux := aux + ' ';
    if d = tens then aux := aux + '+' else aux := aux + ' ';
    if d = ones then aux := aux + '+' else aux := aux + ' ';

    if aux <> '    ' then 
        begin
            writeln(n); 
            writeln(aux)
        end
    else 
        writeln(d, ' can not be found as a digit of ', n);
   
end.