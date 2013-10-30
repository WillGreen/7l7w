# 7L7W Week 2 - Io: Day 2
# Number guessing game in Io, not going to be NumberWang this time :)
# Will Green - http://flux.org.uk

# select random number between 1 and 100 and convert to integer
random_number := (Random value(99.5) + 1) floor  
previous_guess_delta := nil

"Io Guessing Game\n" println
"You have ten tries to guess a number between 1 and 100." println

10 repeat(
    guess := File standardInput readLine("What is your guess?\n" ) asNumber
    if (guess == random_number, ("Spot on. You win." println ;return ))
    guess_delta := (guess - random_number) abs;
    if (previous_guess_delta != nil) then(
        if (guess_delta < previous_guess_delta, "Getting hotter!" println);
        if (guess_delta > previous_guess_delta, "Getting colder." println); 
        if (guess_delta == previous_guess_delta, "Try something new." println); 
        ) else( "Sorry. Try again." println)
    previous_guess_delta = (guess - random_number) abs
)
