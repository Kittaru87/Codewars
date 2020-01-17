# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.
#
# Note: If the number is a multiple of both 3 and 5, only count it once.

def solution(number)

  #new array
  sum_of_multiples = []

  #push multiples into new array
  (1...number).each do |x|
      if x % 3 == 0 || x % 5 == 0
        sum_of_multiples.push(x)
      end
    end

  #sum the array
  answer = sum_of_multiples.sum   

end



solution(10)  # answer should be 23
solution(20)  #solution should be 78
solution(200) # solution should be 9168
