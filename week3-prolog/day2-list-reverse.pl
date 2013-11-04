%% 7L7W Week 3 - Prolog: Day 2
%% Reverse List
%% Will Green - http://flux.org.uk

%% reverse is built in to GNU Prolog.

%% Reverse a list (crudely)
list_reverse([], []).
list_reverse([X|XT], Reversed) :- reverse(XT, Rest), append(Rest, [X], Reversed).

%% Better version that doesn't keep scanning the list
better_reverse(List, Reversed) :- better_reverse_3(List, [], Reversed).
better_reverse_3([], Reversed, Reversed).
better_reverse_3([Head|Tail], ThusFar, Reversed) :- better_reverse_3(Tail, [Head|ThusFar], Reversed).


%% Reverse Test examples

%% reverse([1,2,3,4,5], [5,4,3,2,1]).
%% reverse([1,2,3,4,5], [1,4,3,2,1]).
%% reverse([1,2,3,4,5], L).
%% reverse([], L).
%% reverse([1], L).

%% list_reverse([1,2,3,4,5], [5,4,3,2,1]).
%% list_reverse([1,2,3,4,5], [1,4,3,2,1]).
%% list_reverse([1,2,3,4,5], L).
%% list_reverse([], L).
%% list_reverse([1], L).

%% better_reverse([1,2,3,4,5], [5,4,3,2,1]).
%% better_reverse([1,2,3,4,5], [1,4,3,2,1]).
%% better_reverse([1,2,3,4,5], Y).
%% better_reverse([], L).
%% better_reverse([1], L).
