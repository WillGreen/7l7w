# 7L7W Week 1 - Ruby: Day 2
# Grep file for a given pattern
# Will Green - http://flux.org.uk

# NB. Doesn't do any error handling on file IO

script_name = File.basename($0)

unless ARGV[0] && ARGV[1]
    puts "#{script_name} <pattern> <file>" 
    exit
end

pattern = ARGV[0]
filename = ARGV[1]

line_number = 0

File.open(filename, 'r') do |f| 
    f.each_line do |l|
        line_number += 1
        print "#{line_number} #{l}" if /#{pattern}/.match(l)
    end
end
