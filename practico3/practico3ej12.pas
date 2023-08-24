program getRoots;

var 
    a, b, c, discriminant, root1, root2: real;

begin
    write('Input the coefficients of a quadratic ecuation (ax^2 + bx + c = 0): ');
    readln(a, b, c);

    discriminant := sqr(b)-4*a*c;

    if discriminant >= 0 then
        begin
            root1 := (-b+sqrt(discriminant))/(2*a);
            root2 := (-b-sqrt(discriminant))/(2*a);
            if root1 = root2 then
                writeln('One repeated real solution: ', root1:0:2)
            else
                writeln('Two different real solutions: ', root1:0:2, ' and ', root2:0:2)
        end
    else
        begin
            root1 := -(b/2*a); // real part
            root2 := sqrt(abs(sqr(root1) - c/a)); // imaginary part
            writeln('Two different complex solutions: ', root1:0:2, ' (+/-) i ', root2:0:2)
        end

end.