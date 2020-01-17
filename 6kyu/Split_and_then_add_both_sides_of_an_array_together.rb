# Task
# You will receive an array as paramter that contains 1 or more integers and a number n.

# Here is a little visualization of the process:

# Step 1: Split the array in two:

# {1, 2, 5, 7, 2, 3, 5, 7, 8}
#       /            \
# {1, 2, 5, 7}    {2, 3, 5, 7, 8}
# Step 2: Put the arrays on top of each other:

#    {1, 2, 5, 7}
# {2, 3, 5, 7, 8}
# Step 3: Add them together:

# {2, 4, 7, 12, 15}
# Repeat the above steps n times or until there is only one number left, and then return the array.

# Example
# Input: {4, 2, 5, 3, 2, 5, 7}, n=2


# Round 1
# -------
# step 1: {4, 2, 5}  {3, 2, 5, 7}

# step 2:    {4, 2, 5}
#         {3, 2, 5, 7}

# step 3: {3, 6, 7, 12}


# Round 2
# -------
# step 1: {3, 6}  {7, 12}

# step 2:  {3,  6}
#          {7, 12} 

# step 3: {10, 18}


# Result: {10, 18}


Solution:

def zipping(arr)
  
  #for those arrays with only 1 number
  if arr.length <= 1
    return arr
  #for arrays with more than 1 number  
  else 
    #split array into 2 nested array 
    split_array = arr.each_slice( (arr.size/2.0).round ).to_a
    
    #if the number of char in the 1st set is bigger than the second then add last char from 1st set to first char of second set
    if split_array[0].length > split_array[1].length
      #add to the beginning of the second set
      split_array[1].insert(0, split_array[0][-1]) 
      #delete last char of first set    
      split_array[0].pop  
      split_array 
  
      #zip reverse (from back to front)
      zip_1 = split_array[1].reverse.zip(split_array[0].reverse).reverse.map(&:reverse)
              
    #else split lengths the same then just zip normally (not reverse)
    else split_array[0].length == split_array[1].length
      #zip arrays together
      zip_1 = split_array[0].zip(split_array[1])
    end
        
    #sum arrays
    final_zip = zip_1.map do |a, b|
      a.to_i + b.to_i
    end 
  end
end

def split_and_add(arr, n)
  
  array_to_split = arr
  
  n.times do
    #calling the previous zipping method
    smaller_array = zipping(array_to_split)
    #if the array length is 1 or less then return that array, else that smaller array becomes the argument for the next iteration of zipping
    if (smaller_array.length <= 1)
      return smaller_array
    else
      array_to_split = smaller_array  
    end
  end
  #return the final array
  return array_to_split

end
