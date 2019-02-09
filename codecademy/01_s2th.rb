#Add an additional if statement to re-prompt the user for input if they don't enter anything
#Think about how you might account for words in which the letter "c" sounds like an "s"
#Think about how you might preserve the user's original capitalization

input = false
while input == false
  print "String: "
  user_input = gets.chomp
  if user_input.length > 0
    input = true
  end
end

user_input.downcase!

if user_input.include? "s"
  user_input.gsub!(/s/, "th")
  puts "New string: #{user_input}"
else
  print "String did not have a letter s"
end