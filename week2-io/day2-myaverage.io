# 7L7W Week 2 - Io: Day 2
# Add myAverage method to list
# Will Green - http://flux.org.uk

# override existing divide method
List setSlot("myAverage",
    method(
        total := self flatten sum
        length := self size
        if(length == 0) then(
            return 0
        ) else(
            return total / length
        )
    )
);

# simple testing
array1 := list(1, 2, 3, 4, 5, 6, 7, 8, 9 ,10)
array1 myAverage println

# seems to throw an exception for non-numbers anyway
array2 := list(1, 2, 3, 4, 5, 6, 7, 8, 9 ,"a") 
#array2 myAverage println
