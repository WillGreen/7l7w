# 7L7W Week 2 - Io: Day 2
# Alter division by 0
# Will Green - http://flux.org.uk

# save existing divide slot method
Number setSlot("div_default", Number getSlot("/"));

# override existing divide method
Number setSlot("/",
    method(denom,
        if (denom == 0, return 0);
        return self div_default(denom);
    )
);

# Simple testing
"4/5:" println
4 div_default(5) println
(4 / 5) println

"\n5/4:" println
5 div_default(4) println
(5 / 4) println

"\n0/3:" println
0 div_default(3) println
(0 / 3) println

"\n3/0:" println
3 div_default(0) println
(3 / 0) println

"\n9.85/0:" println
9.85 div_default(0) println
(9.85 / 0) println
