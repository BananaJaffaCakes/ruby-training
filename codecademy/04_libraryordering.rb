#ruby .\04_libraryordering.rb

def alphabetize(arr, rev=false) #rev is set to false if arguement is missing when method called
  arr.sort!
  arr.reverse! if rev
  return arr
end
  
numbers = [1,4,2,6,20,11]
  
alphabetize(numbers, true)
  
puts numbers