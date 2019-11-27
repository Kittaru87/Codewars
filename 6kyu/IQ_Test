# Bob is preparing to pass IQ test. The most frequent task in this test is to find out which one of the given numbers differs from the others. Bob observed that one number usually differs from the others in evenness. Help Bob — to check his answers, he needs a program that among the given numbers finds one that is different in evenness, and return a position of this number.

# ! Keep in mind that your task is to help Bob solve a real IQ test, which means indexes of the elements start from 1 (not 0)

##Examples :

# iq_test("2 4 7 8 10") => 3 // Third number is odd, while the rest of the numbers are even

# iq_test("1 2 1 1") => 2 // Second number is even, while the rest of the numbers are odd


# Solution:

def iq_test(numbers)

  #split the string up into an array
  numbers_array = numbers.split(" ")

  #convert to integers 
  numbers_array = numbers_array.map(&:to_i)

  #if statement - if array contains more evens than odd, output index position of odd number else even number (+1)
  if numbers_array.count(&:even?) > numbers_array.count(&:odd?)
    numbers_array.index(&:odd?)+1
  else
    numbers_array.index(&:even?)+1
  end

end
