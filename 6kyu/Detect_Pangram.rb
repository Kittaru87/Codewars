# A pangram is a sentence that contains every single letter of the alphabet at least once. For example, the sentence "The quick brown fox jumps over the lazy dog" is a pangram, because it uses the letters A-Z at least once (case is irrelevant).

#Given a string, detect whether or not it is a pangram. Return True if it is, False if not. Ignore numbers and punctuation.



def panagram?(string)

  # split string into character array
  characters = string.split("")
  
  # characters = ["a", "b", etc]
  
  # create hash variable
  letter_count = {}
  
  # count number of characters and push into hash
  characters.each do |char| 
    char = char.downcase
      if letter_count[char]
       letter_count[char] += 1
      else 
       letter_count[char] = 1
      end
  end
  
  # { a => 2, b => 1 ...}
  
  # check value is more than 0
  ("a".."z").each do |letter| 
    if !letter_count[letter]
      return false
    end
  end
  
  return true
  
end
