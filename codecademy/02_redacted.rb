#COMPLETED-What could you do to make sure your redactor redacts a word regardless of whether it's upper case or lower case?
#COMPLETED-How could you make your program take multiple, separate words to REDACT?
#COMPLETED-How might you make a new redacted string and save it as a variable, rather than just printing it to the console?
#TODO Remove initial space from updated_words string

#ruby .\02_redacted.rb

puts "**Original Words (space delimited)"
text = gets.chomp
words = text.split(" ")

puts "**Redacted Words (space delimited)"
redact = gets.chomp
redact.downcase!
redact_words = redact.split(" ")


puts "**Updated Words"
updated_words = ""

words.each do |word|
  downcase_word = word.downcase
  #print "match #{downcase_word} : #{redact} print "

  print_value = 0

  redact_words.each do |redact_word|
    if downcase_word == redact_word
      print "REDACTED "
      updated_words = "#{updated_words} REDACTED"
      print_value = 1
    end
  break if print_value == 1
  end

  if print_value == 0
    print word + " "
    updated_words = "#{updated_words} #{word}"
  end
end
puts ""
print updated_words