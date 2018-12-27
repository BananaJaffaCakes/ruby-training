print "String: "
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
  user_input.gsub!(/s/, "th")
  puts "New string: #{user_input}"
else
  print "String did not have a letter s"
end