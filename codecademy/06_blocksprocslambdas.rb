#ruby .\06_blocksprocslambdas.rb

# blocks
odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]

ints = odds_n_ends.select {|item| item.is_a? Integer}

puts ints

# procs
ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]

double_int = Proc.new {|param| param*2}

double_age = ages.collect(&double_int)

puts double_age

# lambdas
crew = {
    captain: "Picard",
    first_officer: "Riker",
    lt_cdr: "Data",
    lt: "Worf",
    ensign: "Ro",
    counselor: "Troi",
    chief_engineer: "LaForge",
    doctor: "Crusher"
  }
  
  first_half = lambda {|key, value| value < "M"}
  
  a_to_m = crew.select(&first_half)
  
  puts a_to_m

# procs vs lambdas
def batman_ironman_proc
  victor = Proc.new { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_proc

def batman_ironman_lambda
  victor = lambda { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_lambda

# Method symbols and procs
numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

strings_array = numbers_array.collect(&:to_s)

puts strings_array

# yield
def yield_name(name)
    puts "In the method! Let's yield."
    yield("Kim")
    puts "In between the yields!"
    yield(name)
    puts "Block complete! Back in the method."
  end
  
  yield_name("stteven") { |n| puts "My name is #{n}." }