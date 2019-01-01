movies = {
    matrix: 10,
    peter_rabbit: 6,
    soccer: 2
    }
  
  puts "User Input"
  choice = gets.chomp
  
  case choice
    when "add"
      puts "Added!"
    when "update"
      puts "Updated!"
    when "display"
      puts "Movies!"
    when "delete"
      puts "Deleted!"
    else
      puts "Error!"
  end