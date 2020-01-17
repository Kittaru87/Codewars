
#Given a mixed array of number and string representations of integers, add up the string integers and subtract this from the total of the non-string integers.

#Return as a number.

#Solution

def div_con(x)

#create empty array for string number
  string_array = []

#if string then push to new array
  x.select do |number|
    if number.is_a?(String)
      string_array.push(number)
    end
  end

#convert strings to integer
  string_array = string_array.map do |number|
    number.to_i
  end

#add all string numbers
  string_sum = 0
  string_array.map do |number|
    string_sum += number
  end
  string_sum

#create new array for integers
  integer_array = []

#if integer push to new array
  x.select do |number|
    if number.is_a?(Integer)
      integer_array.push(number)
    end
  end

#sum integer numbers
  integer_sum = 0
  integer_array.map do |number|
    integer_sum += number
  end
  integer_sum

#minus one from the other for the answer
  answer = integer_sum - string_sum

end
