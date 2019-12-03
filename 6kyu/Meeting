#John has invited some friends. His list is:

#s = "Fred:Corwill;Wilfred:Corwill;Barney:Tornbull;Betty:Tornbull;Bjon:Tornbull;Raphael:Corwill;Alfred:Corwill";
#Could you make a program that

#makes this string uppercase
#gives it sorted in alphabetical order by last name.
#When the last names are the same, sort them by first name. Last name and first name of a guest come in the result between parentheses separated by a comma.

#So the result of function meeting(s) will be:

#"(CORWILL, ALFRED)(CORWILL, FRED)(CORWILL, RAPHAEL)(CORWILL, WILFRED)(TORNBULL, BARNEY)(TORNBULL, BETTY)(TORNBULL, BJON)"
#It can happen that in two distinct families with the same family name two people have the same first name too.


#Solution:

def meeting(s)
    
    #replace : with a blank space
      replaced_char = s.gsub ':', ' '
    
    #capitalise all letters
      replaced_char = replaced_char.upcase
    
    #split into name, last name
      first_last = replaced_char.split(";").to_a

    #split to nested array (per each name)
      nested_names = first_last.map do |name|
        name.split(" ")
      end
      
    #push names into new array with last name first
      last_first = nested_names.map do |name|
        "(#{name[1]}, #{name[0]})"
      end
      
    #sort into alphabetical order and join
      ordered_names = last_first.sort.join("")
      
end
