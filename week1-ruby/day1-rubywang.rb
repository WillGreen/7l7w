# 7L7W Week 1 - Ruby: Day 1
# RubyWang random number guessing game
# Will Green - http://flux.org.uk

puts 'RubyWang'
puts '--------'

while (true)
    number = rand(10)
    guess = gets.to_i
    if guess == number
        puts 'That\'s RubyWang!'
    end
end
