%% 7L7W Week 3 - Prolog: Day 2
%% Minimum Item in List
%% Will Green - http://flux.org.uk

%% min_list is built in in GNU Prolog.

%% Find the minimum item in a list
minimum([Min], Min).
minimum([H1,H2|Remaining], Min) :- H1 < H2, minimum([H1|Remaining], Min).
minimum([H1,H2|Remaining], Min) :- H1 >= H2, minimum([H2|Remaining], Min).


%% Test examples

%% min_list([], M). 
%% min_list([1], M).  
%% min_list([-6,1,2,3], M).  
%% min_list([1.2, 1.19, 2, 2.19], M).
%% min_list([0,1,2,3,4,5], M).

%% minimum([], M). 
%% minimum([1], M).
%% minimum([-6,1,2,3], M).  
%% minimum([1.2, 1.19, 2, 2.19], M).
%% minimum([0,1,2,3,4,5], M).
