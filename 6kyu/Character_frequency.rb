# Write a function that takes a piece of text in the form of a string and returns the letter frequency count for the text. This count excludes numbers, spaces and all punctuation marks. Upper and lower case versions of a character are equivalent and the result should all be in lowercase.
#
# The function should return a list of tuples (in Python and Haskell) or arrays (in other languages) sorted by the most frequent letters first. The Rust implementation should return an ordered BTreeMap. Letters with the same frequency are ordered alphabetically. For example:
#
#   letter_frequency('aaAabb dddDD hhcc')
#   will return
#   [['d',5], ['a',4], ['b',2], ['c',2], ['h',2]]
# Letter frequency analysis is often used to analyse simple substitution cipher texts like those created by the Caesar cipher.

# solution

def letter_frequency(text)

 #create blank hash
 character_hash = Hash.new
 character_hash.default = 0

 #delete other characters
 text.delete! "^a-zA-Z"

 #all lower case
 text = text.downcase

 #turn string into array
 text_array = text.chars

 #move each letter to hash with number of times it appears in the array
 text_array.each do |letter|
   character_hash[letter] +=1
 end      
 character_hash

#sort hash in descending order unless values are the same, then sort alphabetically
 character_hash.sort do |(letter1, value1), (letter2, value2)|
   if value1 == value2
     letter1 <=> letter2
   else
     value2 <=> value1
   end
 end

end
