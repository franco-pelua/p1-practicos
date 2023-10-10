program Matrices;

const N = 4;

type Matriz = array [1..N, 1..N] of integer;

var
    ejMatriz, bMatriz : Matriz;
    i, j : integer;

procedure TranspuestaMatrizAB(a : Matriz; var  b : Matriz);

var 
    i, j : integer;

begin {* TranspuestaMatrizAB *}
    
    for i := 1 to N do
        for j := 1 to N do
            b[j,i] := a[i, j];

end;

procedure MostrarMatriz(matriz : Matriz);

var i, j : integer;

begin {* MostrarMatriz *}

    for i := 1 to N do
        begin
            for j := 1 to N do
                write(matriz[i, j], ' ');
            writeln();
        end;
    
    writeln();

end;

procedure TranspuestaMatrizA(var a : Matriz);

    var i, j, temp : integer;

begin {* TranspuestaMatrizA *}
    
    for i := 1 to N do
        begin
            for j := i + 1 to N do
                begin
                    temp := a[i, j];
                    a[i,j] := a[j, i];
                    a[j, i] := temp;
                end;

        end;

end;

begin {*main*}

    for i := 1 to N do
        for j := 1 to N do
            ejMatriz[i, j] := i + j - 7*i;

    MostrarMatriz(ejMatriz);

    TranspuestaMatrizA(ejMatriz);

    MostrarMatriz(ejMatriz);

end.