def alphabetize(arr, rev=false) #rev is set to false if arguement is missing when method called
    arr.sort!
    if rev
      arr.reverse!
    else
      return arr
    end
  end
  
  numbers = [1,4,2,6,20,11]
  
  alphabetize(numbers, true)
  
  puts numbers