#ruby .\03_histogram.rb

puts "Text:"
text = gets.chomp
words = text.split(" ")

#hash constructor notation
frequencies = Hash.new(0) #creates a new empty hash where values for items are defaulted to zero

#hash literal notation
#frequencies = {"i1" => 1, "i2" => 2}

words.each {|item| frequencies[item] += 1} #example of a code block

frequencies = frequencies.sort_by {|item, count| count}
frequencies.reverse!

frequencies.each {|item, count| puts item+" "+count.to_s}