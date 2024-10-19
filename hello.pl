:- initialization(hello).

hello :-
  % Print "Hello, World!"
  write('Hello, World!'), nl,

  % Defining primitive types
  Num = 42,
  Pi = 3.14,
  Atom = hello,
  String = "Prolog",

  % Output the values
  write('Integer: '), write(Num), nl,
  write('Float: '), write(Pi), nl,
  write('Atom: '), write(Atom), nl,
  write('String: '), write(String), nl.