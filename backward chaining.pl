parent(john, mary).
parent(john, david).
parent(mary, ann).
parent(mary, bob).
parent(david, linda).

grandparent(GP, GC) :-
    parent(GP, P),
    parent(P, GC).

sibling(X, Y) :-
    parent(P, X),
    parent(P, Y),
    X \= Y.

% Backward chaining rule
ancestor(A, B) :-
    parent(A, B).
ancestor(A, B) :-
    parent(A, X),
    ancestor(X, B).

% Sample query
:- ancestor(john, linda).
