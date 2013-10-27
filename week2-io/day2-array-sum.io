# 7L7W Week 2 - Io: Day 2
# Sum array elements
# Will Green - http://flux.org.uk

# flatten then sum
sumArray := method(array, array flatten sum)

# create a 2D array from lists
2dArray1 := list(list(9,8), list(7,6), list(5,4), list(3,2), list(1,0))
2dArray2 := list(list(10,9), list(10,9))

sumArray(2dArray1) println
sumArray(2dArray2) println
