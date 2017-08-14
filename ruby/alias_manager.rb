#First, I'm going to swap the first and last name by calling the method "name_switch" which has one argument "normal_name", defining a variable "normal_name", splitting it into an array on the space with .split, then making "normal_name[0]" equal to "normal_name[1]", and "normal_name[1]" equal to "normal_name[0]"

#def name_switch(normal_name)
#  split_name = normal_name.split(" ")
#  split_name[0], split_name[1] = split_name[1],
#split_name[0]
#  split_name.join(" ")
#end
#
#p name_switch("felicia torres")








#Create a method "name_change". Create a loop counter at 0. Create a while loop "while <loop counter> is less than split_name.length". Then create if statements for each vowel ("aeiou") switching each vowel for its next-in-line. Then create if statements for each consonant of the alphabet, switching each for its next-in-line, skipping vowels. Then create equivalient if statements for each capital letter. Then combine the name_switch method from above into this method.

def name_change(normal_name)
  changed_name = normal_name.split(" ")
  changed_name[0], changed_name[1] = changed_name[1], changed_name[0]
  split_name = changed_name.join(" ")
  counter = 0
  new_name = ""
  while counter < split_name.length
    if split_name[counter] === "a"
      new_name += "e"
    elsif split_name[counter] === "e"
      new_name += "i"
    elsif split_name[counter] === "i"
      new_name += "o"
    elsif split_name[counter] === "o"
      new_name += "u"
    elsif split_name[counter] === "u"
      new_name += "a"
    elsif split_name[counter] === "b"
      new_name += "c"
    elsif split_name[counter] === "c"
      new_name += "d"
    elsif split_name[counter] === "d"
      new_name += "f"
    elsif split_name[counter] === "f"
      new_name += "g"
    elsif split_name[counter] === "g"
      new_name += "h"
    elsif split_name[counter] === "h"
      new_name += "j"
    elsif split_name[counter] === "j"
      new_name += "k"
    elsif split_name[counter] === "k"
      new_name += "l"
    elsif split_name[counter] === "l"
      new_name += "m"
    elsif split_name[counter] === "m"
      new_name += "n"
    elsif split_name[counter] === "n"
      new_name += "p"
    elsif split_name[counter] === "p"
      new_name += "q"
    elsif split_name[counter] === "q"
      new_name += "r"
    elsif split_name[counter] === "r"
      new_name += "s"
    elsif split_name[counter] === "s"
      new_name += "t"
    elsif split_name[counter] === "t"
      new_name += "v"
    elsif split_name[counter] === "v"
      new_name += "w"
    elsif split_name[counter] === "w"
      new_name += "x"
    elsif split_name[counter] === "x"
      new_name += "y"
    elsif split_name[counter] === "y"
      new_name += "z"
    elsif split_name[counter] === "z"
      new_name += "b"
    elsif split_name[counter] === " "
      new_name += " "
    elsif split_name[counter] === "A"
      new_name += "E"
    elsif split_name[counter] === "E"
      new_name += "E"
    elsif split_name[counter] === "I"
      new_name += "O"
    elsif split_name[counter] === "O"
      new_name += "U"
    elsif split_name[counter] === "U"
      new_name += "A"
    elsif split_name[counter] === "B"
      new_name += "C"
    elsif split_name[counter] === "C"
      new_name += "D"
    elsif split_name[counter] === "D"
      new_name += "F"
    elsif split_name[counter] === "F"
      new_name += "G"
    elsif split_name[counter] === "G"
      new_name += "H"
    elsif split_name[counter] === "H"
      new_name += "J"
    elsif split_name[counter] === "J"
      new_name += "K"
    elsif split_name[counter] === "K"
      new_name += "L"
    elsif split_name[counter] === "L"
      new_name += "M"
    elsif split_name[counter] === "M"
      new_name += "N"
    elsif split_name[counter] === "N"
      new_name += "P"
    elsif split_name[counter] === "P"
      new_name += "Q"
    elsif split_name[counter] === "Q"
      new_name += "R"
    elsif split_name[counter] === "R"
      new_name += "S"
    elsif split_name[counter] === "S"
      new_name += "T"
    elsif split_name[counter] === "T"
      new_name += "V"
    elsif split_name[counter] === "V"
      new_name += "W"
    elsif split_name[counter] === "W"
      new_name += "X"
    elsif split_name[counter] === "X"
      new_name += "X"
    elsif split_name[counter] === "Y"
      new_name += "Z"
    elsif split_name[counter] === "Z"
      new_name += "B"
    elsif split_name[counter] === " "
      new_name += " "
    end
     counter += 1
  end
  new_name
end

p name_change("Felicia Torres")