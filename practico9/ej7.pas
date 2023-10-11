program Matrices;

const M = 2;
const N = 4;
const P = 3;

type
    RangoM = 1..M;
    RangoN = 1..N;
    RangoP = 1..P;
    MatrizMN = array [RangoM, RangoN] of integer;
    MatrizNP = array [RangoN, RangoP] of integer;
    MatrizMP = array [RangoM, RangoP] of integer;

var 
    MatrizA : MatrizMN;
    MatrizB : MatrizNP;
    MatrizC : MatrizMP;
    i, j : integer;

procedure productoMatrices(a : MatrizMN; b : MatrizNP; var c : MatrizMP); 

var 
    k, sum : integer;

begin {* productoMatrices *}

    k := 1;

    for i := 1 to M do
        begin
            for j := 1 to P do
                begin
                    sum := 0;

                    for k := 1 to N do
                        sum := sum + a[i, k]*b[k, j];
                    
                    c[i, j] := sum;
                    // write(c[i, j]);
                end;
        end;
end;

procedure MostrarMatrizC(matriz : MatrizMP);

begin {* MostrarMatrizC *}

    for i := 1 to M do
        begin
            for j := 1 to P do
                write(matriz[i, j], ' ');
            writeln();
        end;
    
    writeln();

end;

procedure MostrarMatrizA(matriz : MatrizMN);

begin {* MostrarMatrizA *}

    for i := 1 to M do
        begin
            for j := 1 to N do
                write(matriz[i, j], ' ');
            writeln();
        end;
    
    writeln();

end;

procedure MostrarMatrizB(matriz : MatrizNP);

begin {* MostrarMatrizB *}

    for i := 1 to N do
        begin
            for j := 1 to P do
                write(matriz[i, j], ' ');
            writeln();
        end;
    
    writeln();

end;

begin {* main *}

    {* test run start *}
    MatrizA[1, 1] := 1;
    MatrizA[1, 2] := 1;
    MatrizA[1, 3] := 1;
    MatrizA[1, 4] := 1;
    MatrizA[2, 1] := 2;
    MatrizA[2, 2] := 2;
    MatrizA[2, 3] := 2;
    MatrizA[2, 4] := 2;

    for i := 1 to N do
        for j := 1 to P do
            MatrizB[i, j] := 1;

    MostrarMatrizA(MatrizA);

    MostrarMatrizB(MatrizB);

    productoMatrices(MatrizA, MatrizB, MatrizC);

    MostrarMatrizC(MatrizC);
    {* test run end *}
    
end.