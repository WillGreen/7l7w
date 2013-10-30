# 7L7W Week 2 - Io: Day 2
# Two-dimensional list: matrix
# Will Green - http://flux.org.uk

matrix := Object clone

matrix dim := method(x, y,
    self rows := List clone
    for (i, 0, x - 1, rows append(List clone setSize(y)))
)

matrix get := method(x, y, rows at(x) at(y))
matrix set := method(x, y, value, rows at(x) atPut(y, value))
matrix transpose := method(  )   # to be written, as these are lists I think it's going to need iteration
matrix to_file := method (  )    # to be written, can use serialized
matrix from_file := method (  )  # to be written, can use doFile (though this seems very insecure)


# Simple testing
2d_list := matrix clone
2d_list dim(8, 16)

2d_list set(1, 2, 10)
2d_list set(2, 1, 100)
2d_list set(7, 15, 1000)
2d_list set(7, 1, "Hello, World.")

2d_list get(2, 1) println
2d_list get(1, 2) println
2d_list get(7, 15) println
2d_list get(7, 1) println

2d_list set(7, 1, "Goodbye, cruel World.")
2d_list get(7, 1) println
