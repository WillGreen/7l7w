%% 7L7W Week 3 - Prolog: Day 2
%% Fibonacci: simple and tail recursive
%% Will Green - http://flux.org.uk

%% sfib is a simple implementation of Fibonacci
%% branches down tree to find solution, so grows exponentially, exhausting stack
sfib(0, 0). 
sfib(1, 1). 
sfib(X, Y) :-   X > 1, 
                X2 is X - 2, sfib(X2, Y2), 
                X1 is X - 1, sfib(X1, Y1), 
                Y is Y1 + Y2.


%% Need to find out how to make this tail recursive...
%% to be written
