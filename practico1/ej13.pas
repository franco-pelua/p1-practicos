program TriangleArea;

var
    a, b, c, s : real;

begin

    writeln('Enter the length of your triangle''s sides, each separated by a space:');
    read(a, b, c);
    
    s := (a + b + c) / 2;

    writeln('The area enclosed by your triangle is: ');
    writeln(sqrt(s * (s-a) * (s-b) * (s-c)))
end.