puts "Text:"
text = gets.chomp
words = text.split(" ")

frequencies = Hash.new(0)

words.each {|item| frequencies[item] += 1}

frequencies = frequencies.sort_by {|item, count| count}
frequencies.reverse!

frequencies.each {|item, count| puts item+" "+count.to_s}