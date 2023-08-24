program deliveryCost;

var 
    weight : real;

begin

    write('Input the weight of your package: ');
    readln(weight);

    writeln('Peso Costo');
    if weight <= 1 then 
        writeln(weight:0:2, ' $77')
    else if weight <= 2 then
        writeln(weight:0:2, ' $133')
    else if frac(weight) <> 0 then
        writeln(weight:0:2, ' $', (77+round(weight)*56))
    else 
        writeln(weight:0:2, ' $', (77+round(weight)*56)-56)

end.