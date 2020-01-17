# Your team is writing a fancy new text editor and you've been tasked with implementing the line numbering.

# Write a function which takes a list of strings and returns each line prepended by the correct number.

# The numbering starts at 1. The format is n: string. Notice the colon and space in between.

# Examples:

# number [] # => []
# number ["a", "b", "c"] # => ["1: a", "2: b", "3: c"]

# Solution

def number lines
  
  #new array
  new_array = []
  
  #take each letter with its index (plus 1), put it into correct format and push into new array
  lines.each_with_index do |letter, index| 
    new_array.push("#{index + 1}: #{letter}")
  end
  
  #flatten to show index
  new_array.flatten

end
