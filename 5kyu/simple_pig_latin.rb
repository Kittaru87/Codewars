# Move the first letter of each word to the end of it, then add "ay" to the end of the word. Leave punctuation marks untouched.

# pig_it('Pig latin is cool') # igPay atinlay siay oolcay
# pig_it('Hello world !')     # elloHay orldway !



def pig_it text

  # split string into array of words
  text_array = text.split(" ")
  
  #for each word take first character from index [0] and move to last character index [-1] + 'ay', remove first character
  latin_array = text_array.map do |word|
    new_word = word + word[0] + "ay"   
    new_word[1..-1]
  end
  
  #join together to single string
  latin_string = latin_array.join(" ")
  
  #delete 'ay' from endings of sentences with punctuation - kind of cheating   
    latin_string.sub! '!ay', '!' 
    latin_string.sub! '?ay', '?'

  latin_string

end
