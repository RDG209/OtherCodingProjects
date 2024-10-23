count(6) :- write('Done'), nl.
count(N) :-
    (N mod 2 =:= 0 ->
        write(N), write(' is divisible by 2'), nl
    ; N mod 3 =:= 0 ->
        write(N), write(' is divisible by 3'), nl
    ;
        write(N), write(' is divisible by neither 2 nor 3'), nl
    ),
    N1 is N + 1,
    count(N1).

% handle both int and float in prolog
print_number(Num) :-
    (integer(Num) -> write('Integer: '), write(Num), nl
    ; float(Num) -> write('Float: '), write(Num), nl).

:- initialization(main).
main :- count(1), print_number(42), print_number(3.14).
