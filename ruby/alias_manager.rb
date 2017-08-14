#First, I'm going to swap the first and last name by calling the method "name_switch" which has one argument "normal_name", defining a variable "normal_name", splitting it into an array on the space with .split, then making "normal_name[0]" equal to "normal_name[1]", and "normal_name[1]" equal to "normal_name[0]"

def name_switch(normal_name)
  split_name = normal_name.split(" ")
  split_name[0], split_name[1] = split_name[1], split_name[0]
  split_name.join(" ")
end

p name_switch("felicia torres")

#Create a method "alias". Create a loop counter at 0. Create a while loop "while <loop counter> is less than split_name.length". Then create if statements for each vowel ("aeiou") switching each vowel for its next-in-line. Then create if statements for each consonant of the alphabet, switching each for its next-in-line, skipping vowels.

def alias(split_name)
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
    end
    counter += 1
  end

  p alias("torres felicia")