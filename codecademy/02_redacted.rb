#COMPLETED-What could you do to make sure your redactor redacts a word regardless of whether it's upper case or lower case?
#How could you make your program take multiple, separate words to REDACT?
#How might you make a new redacted string and save it as a variable, rather than just printing it to the console?

#ruby .\02_redacted.rb

puts "**Original Words (space delimited)"
text = gets.chomp
words = text.split(" ")

puts "**Redacted Words (space delimited)"
redact = gets.chomp
redact.downcase!
redact_words = redact.split(" ")


puts "**Updated Words"
words.each do |word|
  downcase_word = word.downcase
  #print "match #{downcase_word} : #{redact} print "
  redact_words.each do |redact_word|
    if downcase_word == redact_word
      print "REDACTED "
    else
      print word + " "
    end
  end
end