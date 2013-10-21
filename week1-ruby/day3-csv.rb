# 7L7W Week 1 - Ruby: Day 3
# CSV Class
# Will Green - http://flux.org.uk

module ActsAsCsv
    def self.included(base)
        base.extend ClassMethods
    end

    module ClassMethods
        def acts_as_csv
            include InstanceMethods
        end
    end

    module InstanceMethods
        attr_accessor :headers, :csv_rows

        def read
            filename = self.class.to_s.downcase + '.txt'
            file = File.new(filename)
            @headers = file.gets.chomp.split(', ')

            @csv_rows = []
            file.each do |row|
                @csv_rows << CsvRow.new(row.chomp.split(', '), @headers)
            end
        end

        def initialize
            read
        end

        def each &block  # pass through calls to each to the rows
            @csv_rows.each &block
        end

        class CsvRow  # not very memory efficient as we store the headers with every row!
            attr_accessor :row_hash

            def initialize(row_contents, row_headers)
                @row_hash = Hash[row_headers.zip(row_contents)]  # create a hash of the header/content pairs
            end
            
            def method_missing(name, *args)
                return @row_hash.fetch(name.to_s)  # without the to_s the 'name' is a symbol, used fetch to catch misnamed headers
            end
        end
    end
end

class PeopleCsv
    include ActsAsCsv
    acts_as_csv
end

class ElementsCsv
    include ActsAsCsv
    acts_as_csv
end

puts "\nLet me tell you about the people!"
people = PeopleCsv.new
people.each { |p| puts "Hello #{p.first} from #{p.country}." }

puts "\nLet me tell you about the elements!"
elements = ElementsCsv.new
elements.each { |e| puts "#{e.name} (#{e.symbol}) has atomic number #{e.Z} and is a #{e.state} at STP." }
