#First, I'm going to swap the first and last name by calling the method "name_switch" which has one argument "normal_name", defining a variable "normal_name", splitting it into an array on the space with .split, then making "normal_name[0]" equal to "normal_name[1]", and "normal_name[1]" equal to "normal_name[0]". Then I'm going to join the array back together to make it a string.

#def name_switch(normal_name)
#  split_name = normal_name.split(" ")
#  split_name[0], split_name[1] = split_name[1],
#split_name[0]
#  split_name.join(" ")
#end
#
#p name_switch("felicia torres")


#First I'll create a method called "name_change" that takes a parameter "normal_name", then I'll create a string with all lower case and upper case values and split it to make it an array. Then I'll do the same with consonants. Then I'll create an empty string called name. Then I'll write the method "each_with_index" with two paramaters "letter, letter_index". Then I'll create an if statement with the method include? And "letter" as the parameter. the answer to that if statement will be vowels.each_with_index with two paramaters vowel and vowel_index. This will have another if statement nested inside saying if the letter is equal to vowel, or if the letter is u, then shovel into new_name "a", elsif the letter is "U" then shovel into new_name "A". If any other condition exists, then shovel into new_name the vowel at index + 1. Then I'll repeat this with the consonants. Finally I'll call new_name at the end to show my result. Once this is working, I'll integrate in my method name_switch from above into the top of my method name_change.


def name_change(normal_name)
vowels = "aeiouAEIOU".split("")
consonants = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ".split("")

changed_name = normal_name.split(" ")
changed_name[0], changed_name[1] = changed_name[1], changed_name[0]
  split_name = changed_name.join(" ")
name = split_name.split("")

new_name = ""
name.each_with_index do |letter, letter_index|
  if vowels.include?(letter)
  vowels.each_with_index do |vowel, vowel_index|
    if letter === vowel
      if letter === "u"
        new_name << "a"
      elsif letter === "U"
        new_name << "A"
      else
        new_name << vowels[vowel_index+1]
      end
    end
  end
end
  if consonants.include?(letter)
  consonants.each_with_index do |consonant, consonant_index|
    if letter === consonant
      if letter === "z"
        new_name << "b"
      elsif letter === "Z"
        new_name << "B"
      else
        new_name << consonants[consonant_index+1]
      end
    end
  end
end
    if letter === " "
      new_name << " "
    end
  end
  new_name
end


puts "Please enter a name to change. Enter 'quit' to exit."
name = gets.chomp
original_names = []
changed_names = []
if name != "quit"
  original_names << name
end
  until name === "quit"
    p altered_name = name_change(name)
    changed_names << altered_name
    name = gets.chomp
    if name != "quit"
      original_names << name
    end
  end

count = 0
while count < original_names.length
  p "#{changed_names[count]} is actually #{original_names[count]}."
  count += 1
end