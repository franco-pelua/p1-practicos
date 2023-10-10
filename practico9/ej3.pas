program ejercicio3;

const 
    N = 10;

type 
    CadenaN = array [1..N] of integer;

var 
    exArray : CadenaN;
    i : integer;

function cantMayores(cadn: CadenaN; num: integer) : integer;
    var 
        i, sum : integer;

begin {* cantMayores *}
    sum := 0;

    for i := 1 to N do
        if cadn[i] > num then 
            sum := sum + 1;
    
    cantMayores := sum;
end;

function ordenado(cadn: CadenaN) : boolean;

var 
    i : integer;

begin {* ordenado *}

    i := 1;

    while (i < N) and (cadn[i] < cadn[i + 1]) do
        i := i + 1;

    ordenado := i = N;

end;

begin {* main *}
    for i := 1 to N do
        exArray[i] := i;

    writeln(ordenado(exArray));
end.