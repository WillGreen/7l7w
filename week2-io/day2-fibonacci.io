# 7L7W Week 2 - Io: Day 2
# Fibonacci sequence
# Will Green - http://flux.org.uk

Fibonacci := Object clone

# calculate with recursion: not efficient O(n²)
Fibonacci recursive := method(n, 
    if(n == 0) then(
        return 0
    ) else(
        if(n == 1) then(
            return 1
        ) else(
            return recursive(n - 2) + recursive(n - 1)
        )
    )
)

# calculate directly
Fibonacci direct := method(n,
    f := (((1 + (5 sqrt)) ** n) - ((1 - (5 sqrt)) ** n)) / ((2 ** n) * 5 sqrt)
    f floor  # convert to an integer
)


f := Fibonacci clone

# Following takes 21s to run on my MacBook Air
f recursive(0) println
f recursive(1) println
f recursive(4) println
f recursive(10) println 
f recursive(30) println 

# Following takes 0.1s to run on my MacBook Air
f direct(0) println
f direct(1) println
f direct(4) println
f direct(10) println 
f direct(30) println 
