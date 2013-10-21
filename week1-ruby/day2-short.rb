# 7L7W Week 1 - Ruby: Day 2
# Short exercises
# Will Green - http://flux.org.uk

# print each value, one at a time
(0...16).each { |n| print "#{n} " }
puts  # newline as we didn't use puts in block

# not sure how of a good way to print only four number at a time with just each.
#  idea: use a temporary array to accumulate all four numbers, then print it (seems inelegant)
#  idea: print each number one at a time, but only add a newline every four (seems like cheating) 

# it's easy with each_slice  
(0...16).each_slice(4) { |n| puts n.join(' ') }
