program MatrizSimetrica;

const 
    N = 4;

type 
    MatrizN = array [1..N, 1..N] of integer;
    ArregloUni = array [1..(N*(N+1)) DIV 2] of integer;

var 
    ejMatriz : MatrizN;
    ejArregloUni: ArregloUni;
    element : integer;

procedure MostrarMatrizN(matriz : MatrizN);

var i, j : integer;

begin {* MostrarMatrizN *}

    for i := 1 to N do
        begin
            for j := 1 to N do
                write(matriz[i, j], ' ');
            writeln();
        end;
    
    writeln();

end;

procedure MostrarArregloUni(arreglo : ArregloUni);

var 
    i : integer;

begin {* MostrarArregloUni *}

    for i := 1 to (N*(N+1)) DIV 2 do
        write(arreglo[i], ' ');
    
    writeln();

end;

procedure matriz2arreglo(a : MatrizN; var arreglo : ArregloUni);

var
    i, j, counter : integer;

begin {* matriz2arreglo *}

    counter := 0;

    for i := 1 to N do
        for j := i to N do
            begin
                counter := counter + 1;
                arreglo[counter] := a[i, j];
            end;

end;

procedure arreglo2matriz(arreglo : ArregloUni; var matriz : MatrizN);

var 
    i, j, counter : integer;

begin {* arreglo2matriz *}

    counter := 0;

    for i := 1 to N do
        for j := i to N do
            begin 
                counter := counter + 1;

                if i = j then 
                        matriz[i, j] := arreglo[counter]
                else 
                    begin
                        matriz[i, j] := arreglo[counter];
                        matriz[j, i] := arreglo[counter];
                    end;
            end;

end;

function obtSim(a : ArregloUni; i, j: integer) : integer;

var 
    k, sum, aux : integer;

begin {* obtSim *}

    sum := 0;
    aux := 0;

    if i > j then 
        begin 
            aux := j;
            j := i;
            i := aux;
        end;

    for k := 1 to i-1 do
        sum := sum + N - k + 1;
    
    sum := sum + j - i + 1;

    writeln(sum);

    obtSim := a[sum];
end;

begin {* main *}

    {* test run *}

    ejMatriz[1, 1] := 72;
    ejMatriz[1, 2] := 50; ejMatriz[2, 1] := 50;
    ejMatriz[2,2] := 91;
    ejMatriz[1, 3] := 48; ejMatriz[3,1] := 48;
    ejMatriz[2, 3] := 10; ejMatriz[3, 2] := 10;
    ejMatriz[1,4] := 26; ejMatriz[4,1] := 26;
    ejMatriz[2,4] := 64; ejMatriz[4,2] := 64;
    ejMatriz[3,3] := 55;
    ejMatriz[3,4] := 30; ejMatriz[4,3] := 30;
    ejMatriz[4,4] := 87;


    matriz2arreglo(ejMatriz, ejArregloUni);

    arreglo2matriz(ejArregloUni, ejMatriz);

    MostrarArregloUni(ejArregloUni);

    element := obtSim(ejArregloUni, 2, 3);

    writeln(element);
    {* end test run *}

end.