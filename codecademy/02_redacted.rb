puts "Original Text"
text = gets.chomp
puts "Redacted Word"
redact = gets.chomp

words = text.split(" ")

words.each do |word|
  if word == redact
    print "REDACTED "
  else
    print word + " "
  end
end