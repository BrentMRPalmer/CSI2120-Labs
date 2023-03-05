% Given the following database:

% Decision to skate home

% canal sections
% Format is: section number, end point 1, end point 2, distance
section( 1, rideau, mackenzieKing, 0.2 ).
section( 2, mackenzieKing, laurier, 0.2 ).
section( 3, laurier, somerset, 0.4 ).
section( 4, somerset, concord, 0.6 ).
section( 5, concord, pretoria, 0.65 ).
section( 6, pretoria, fifth, 0.8 ).
section( 7, pattersonCreek, pattersonCreek, 0.3 ).
section( 8, fifth, lansdowne, 0.7 ).
section( 9, lansdowne, bank, 0.45 ).
section( 10, bank, bronson, 1.0 ).
section( 11, bronson, dowsLake, 0.2 ).
section( 12, dowsLakeLoop, dowsLakeLoop, 1.7 ).
section( 13, dowsLake, library, 0.6 ).

% condition
% Format is section number, conditions (green|yellow|red)
condition( 1, red ).
condition( 2, red ).
condition( 3, yellow ).
condition( 4, yellow ).
condition( 5, yellow ).
condition( 6, green ).
condition( 7, yellow ).
condition( 8, green ).
condition( 9, green ).
condition( 10, yellow ).
condition( 11, yellow ).
condition( 12, red ).
condition( 13, yellow ).

% Fix the predicate isOpen/1 to evalute to true if the conditions on the section with the number X is either green or yellow.

% if conditions on a section are yellow or green, it is open.
% This predicate is broken.    

isOpen( X ) :- condition( X, yellow );
               condition( X, green ).

% Based on the above fix, change the predicate skateHome/0 to be true if 
% all sections between Summerset and Bronson are open. Your solution must use isOpen/0.

% This predicate is broken    
skateHome :-
    section( X, somerset, concord, _ ),
    isOpen( X ),
    section( Y, concord, pretoria, _ ),
    isOpen( Y ),
    section( Z, pretoria, fifth, _ ),
    isOpen( Z ),
    section( A, fifth, lansdowne, _ ),
    isOpen( A ),
    section( B, lansdowne, bank, _ ),
    isOpen( B ),
    section( C, bank, bronson, _ ),
    isOpen(C).

