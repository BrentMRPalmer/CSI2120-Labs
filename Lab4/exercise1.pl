% Consider a small database that represents books, readers and loans.

% Write the queries that find 
%   (1) all books published by Springer, 
% | ?- book(X, Y, 'Springer', Z, W).
%   (2) all books published after 1990, 
% | ?- book(Title, Authors, Publisher, Year, CallNumber), Year > 1990.
%   (3) all books checked out by James Brown. 
% | ?- reader(CardN, 'James Brown'), checkedOut(CardN, CallN), book(Title, Authors, Publisher, Year, CallN).
%   Next, edit the file to add a few useful entries to each of the three predicates, and run more queries to see that you have not spoiled anything.

% --------
% book( Title, Authors, Publisher, Year, CallNumber )
% --------

book(
  'The craft of Prolog',
  'R. A. O''Keefe',
  'MIT Press',
  1990,
  'QA 76.73 .P76 O38 1990'
).
book(
  'Programming in Prolog',
  'W. F. Clocksin, C. S. Mellish',
  'Springer',
  2003,
  'QA 76.73 .P76 C57 2003'
).
book(
  'Prolog for programmers',
  'F. Kluzniak, S. Szpakowicz',
  'Academic Press',
  1985,
  'QA 76.73 .P76 K58 1985'
).
book(
  'Prolog programming for artificial intelligence',
  'I. Bratko',
  'Addison-Wesley',
  2001,
  'Q 336 .B74 2001'
).
book(
  'A Brief History of Time',
  'Stephen Hawking',
  'Bantam Dell Publishing Group',
  1988,
  'Q 534 .B74 1988'
).
book(
  'Harry Potter',
  'J. K. Rowling',
  'Bloomsbury',
  1997,
  'Q 336 .B73 21997'
).

% --------
% reader( CardNumber, Name )
% --------

reader( 1234567, 'James Brown' ).
reader( 2345678, 'Jacques Brun' ).
reader( 3456789, 'Giacomo Bruno' ).
reader( 4433214, 'Brent Palmer').
reader( 1231234, 'Harry Styles').

% --------
% checkedOut( CardNumber, CallNumber )
% --------

checkedOut( 1234567, 'QA 76.73 .P76 C57 2003' ).
checkedOut( 3456789, 'Q 336 .B74 2001' ).
checkedOut( 1231234, 'Q 336 .B73 21997').
checkedOut( 4433214, 'Q 534 .B74 1988').