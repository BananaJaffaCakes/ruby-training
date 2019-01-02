movies = {
  matrix: 10,
  peter_rabbit: 6,
  soccer: 2
  }

puts "User Input"
choice = gets.chomp

case choice
  when "add"
    puts "Movie title:"
    title = gets.chomp
    puts "Rating:"
    rating = gets.chomp
    if movies[title.to_sym] == nil #NEW
      movies[title.to_sym] = rating.to_i #NEW
      puts "Movie added!"
    else
      puts "Movie already exists"
    end
    print movies
  when "update"
    puts "Movie title:"
    title = gets.chomp
    if movies[title.to_sym] == nil
      puts "Movie does not exist"
    else
      puts "New rating:"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
      puts "Rating updated!"
    end
    print movies
  when "display"
    movies.each {|k, v| puts "#{k}: #{v}"}
  when "delete"
    puts "Movie title:"
    title = gets.chomp
    if movies[title.to_sym] == nil
      puts "Movie does not exist"
    else
      movies.delete(title.to_sym) #NEW
      puts "Movie deleted!"
    end
    print movies
  else
    puts "Error!"
end
  