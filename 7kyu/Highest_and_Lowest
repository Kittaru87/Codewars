#In this little assignment you are given a string of space separated numbers, and have to return the highest and lowest number.

#Example:

#high_and_low("1 2 3 4 5")  # return "5 1"
#high_and_low("1 2 -3 4 5") # return "5 -3"
#high_and_low("1 9 3 4 -5") # return "9 -5"
#Notes:

#All numbers are valid Int32, no need to validate them.
#There will always be at least one number in the input string.
#Output string must be two numbers separated by a single space, and highest number is first.

#Solution

def high_and_low(numbers)

  #convert string into array
  numbers = numbers.split(" ")
  
  #convert strings into integers  
  numbers = numbers.map {|num| 
    num.to_i
  }

  #sort numbers into order from highest to lowest
  numbers = numbers.sort.reverse

  #pull first and last numbers from the array into a new array
  numbers_array = []
  numbers_array.push(numbers.first, numbers.last)

  #convert back into strings
  numbers_array = numbers_array.map {|num|
    num.to_s
  }

  #join the numbers back together with a space between
  numbers_array = numbers_array.join(" ")

end
