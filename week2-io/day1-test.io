# 7L7W Week 2 - Io: Day 1
# Test some Io code running from a file, including executing a method in a slot
# Will Green - http://flux.org.uk

"Hello, world." println

Fish := Object clone
Fish locomotion := "swim"
Fish habitat := "wet"
Fish go_pook := method("Pook!" println)

Halibut := Fish clone
Halibut habitat = "demersal zone"

Herring := Fish clone
Herring habitat = "pelagic zone"

geoff := Halibut clone
geoff name := "Geoff"
fred := Herring clone
fred name := "Fred"

"#{geoff name} the #{geoff type} swims in the #{geoff habitat}." interpolate println
"#{fred name} the #{fred type} swims in the #{fred habitat}." interpolate println
geoff go_pook()
fred go_pook()
