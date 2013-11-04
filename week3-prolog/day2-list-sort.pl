%% 7L7W Week 3 - Prolog: Day 2
%% Sort List
%% Will Green - http://flux.org.uk

%% msort is built in

%% Permutation Sort
%% Test every possible permutation for one where for [H1, H2...] H1 <= H2.
%% This is a terrible way to sort lists as the number of permutations is list size factorial!

perm_sort(List, Sorted) :- permutation(List, Sorted), perm_sorted(Sorted).
perm_sorted([]).
perm_sorted([_]).
perm_sorted([H1,H2|T]) :- H1 =< H2, perm_sorted([H2|T]).

%% Minimum Sort (a variant of Select Sort but not in place, or is there a better description?)
%% Another (slightly less) crude approach, use our minimum predicate and delete elements as we go

%% ## This doesn't currently work! ##

minimum([Min], Min).
minimum([H1,H2|Remaining], Min) :- H1 < H2, minimum([H1|Remaining], Min).
minimum([H1,H2|Remaining], Min) :- H1 >= H2, minimum([H2|Remaining], Min).

minimum_sort([]).
minimum_sort([_]).
minimum_sort(List, Sorted) :- minimum(List, Min), select(Min, List, L2), append(Min, Sorted, S2), minimum_sort(L2, S2).


%% Test Examples

%% msort([], Sorted).
%% msort([1], Sorted).
%% msort([0,5,4,3,2,1], Sorted). 
%% msort([100, 99, -6, 1.19, 65, -273], Sorted).

%% perm_sort([], Sorted).
%% perm_sort([1], Sorted).
%% perm_sort([0,5,4,3,2,1], Sorted). 
%% perm_sort([100, 99, -6, 1.19, 65, -273], Sorted).

%% minimum_sort([], Sorted).
%% minimum_sort([1], Sorted).
%% minimum_sort([0,5,4,3,2,1], Sorted). 
%% minimum_sort([100, 99, -6, 1.19, 65, -273], Sorted).
