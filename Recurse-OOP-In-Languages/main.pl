factorial(0, 1).
factorial(N, Result) :-
    N > 0,
    N1 is N - 1,
    factorial(N1, R1),
    Result is N * R1.
factorial(N, _) :-
    N < 0,
    write('Invalid input: Factorial is not defined for negative numbers'), nl.

is_integer(X) :-
    integer(X),
    write('It is an integer: '),
    write(X),
    nl.

is_atom(X) :-
    atom(X),
    write('It is an atom: '),
    write(X),
    nl.

main :-
    factorial(5, Result),
    write('Factorial of 5: '), 
    write(Result), 
    nl,
    is_integer(10),
    is_atom(hello),
    nl,
    nl,
    nl.

:- main.