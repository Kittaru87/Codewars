# Simple, given a string of words, return the length of the shortest word(s).

# String will never be empty and you do not need to account for different data types.

Solution

def find_short(s)

  #split the string into an array of words
  new_s = s.split(" ")

  #sort by the length of each word 
  new_array = new_s.sort_by do |word|
    word.length
  end

  #pull the first word in the array and retrieve length
  new_array[0].length

end
