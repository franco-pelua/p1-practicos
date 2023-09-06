program accountBalance;

var
    currentAmount, total : real;
    status : char;

begin 

    writeln('In order to calculate the account balance, you must introduce its movements. Write a D before the amount of the transaction to indicate a deposit, or a W to indicate a withdrawal. For instance; D 100.50 means Deposit 100.50. Each movement must be separated by a linebreak. Your first entry represents the starting balance of the account. In the final line, you must write X');

    readln(total);

    read(status);

    while status <> 'X' do
        begin
            readln(currentAmount);

            case status of 
                'D' : total := total + currentAmount;
                'W' : total := total - currentAmount;                
            end;
            
            read(status);
        end;
    writeln('Final balance is: ', total:0:2);
end.