%% 7L7W Week 3 - Prolog: Day 1
%% Musicians, their instruments and genres
%% Will Green - http://flux.org.uk

plays('Paul McCartney', 'bass').
plays('John Lennon', 'guitar').
plays('George Harrison', 'guitar').
plays('Ringo Starr', 'drums').
plays('Miles Davis', 'trumpet').
plays('Duke Ellington', 'piano').
plays('Rebecca Black', 'voice').
plays('Ryan Adams', 'guitar').
plays('Rick Astley', 'voice').
plays('Paul McCartney', 'voice').
plays('John Lennon', 'voice').
plays('George Harrison', 'voice').
plays('Ringo Starr', 'voice').
plays('Ryan Adams', 'voice').

genre('Paul McCartney', 'rock').
genre('John Lennon', 'rock').
genre('George Harrison', 'rock').
genre('Ringo Starr', 'rock').
genre('Miles Davis', 'jazz').
genre('Duke Ellington', 'jazz').
genre('Rebecca Black', 'cheese').
genre('Ryan Adams', 'rock').
genre('Rick Astley', 'pop').

%% guitar duo, two guitar players who aren't the same person
guitar_duo(X, Y) :- plays(X, 'guitar'), plays(Y, 'guitar'), \+(X = Y).

%% guitar/singer,  singer and guitar player, can be same person
guitar_singer(X, Y) :- plays(X, 'guitar'), plays(Y, 'voice').


%% Test examples

%% Plays rock guitar
%% genre(What, 'rock'), plays(What, 'guitar').

%% Possible guitar duos
%% guitar_duo(X, Y).

%% Possible singer/guitar combinations
%% guitar_singer(X, Y).
