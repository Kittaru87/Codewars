#Given an array/list [] of n integers , Separate The even numbers from the odds , or Separate the men from the boys

#Notes
#Return an array/list where Even numbers come first then odds

#Since , Men are stronger than Boys , Then Even numbers in ascending order While odds in descending.

#Array/list size is at least *4***.

#Array/list numbers could be a mixture of positives , negatives.

#Have no fear , It is guaranteed that no Zeroes will exists.

#Repetition of numbers in the array/list could occur , So (duplications are not included when separating).

#Solution

def men_from_boys(arr)

  #create an empty evens erray and an empty odd array
  even_array = []
  odd_array = []  
  
  #if statement - push all even numbers to even array and odd to odd array
  arr = arr.map do |num|
    if num.even?
      even_array.push(num)
    else
      odd_array.push(num)
    end
  end
  
  #even array in ascending order/odd array in descending order
  even_array = even_array.sort
  odd_array = odd_array.sort.reverse
  
  #add odd array to the end of the even array
  even_array.push(odd_array)
  
  #join them together, convert to integer array
  men_and_boys = even_array.join(", ").split(", ").map(&:to_i)
  
  #remove duplicate elements
  men_and_boys.uniq
  
end
