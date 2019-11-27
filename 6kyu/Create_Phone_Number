# Write a function that accepts an array of 10 integers (between 0 and 9), that returns a string of those numbers in the form of a phone number.

# Example:
# createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) # => returns "(123) 456-7890"
# The returned format must be correct in order to complete this challenge.
# Don't forget the space after the closing parentheses!


def createPhoneNumber(numbers)
  
  #join to string and split to array 
  numbers = numbers.join.split("")
  
  #create 3 empty arrays
  array_one = []
  array_two = []
  array_three = []
  
  #push to new arrays - index position 0-2 to new array, 3-5 same and 6-9 same
  array_one.push(numbers[0..2])
  array_two.push(numbers[3..5])
  array_three.push(numbers[6..9])
  
  #join each array
  array_one = array_one.join("")
  array_two = array_two.join("")
  array_three = array_three.join("")
  
  #bring together
  "(#{array_one}) #{array_two}-#{array_three}"
  
end

#Better solution

def createPhoneNumber(numbers)

  "(#{numbers[0..2].join}) #{numbers[3..5].join}-#{numbers[6..9].join}"
  
end
