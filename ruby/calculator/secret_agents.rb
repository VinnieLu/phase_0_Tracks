# Define the method encrypt and insert parameter x
# Inside the method set a loop counter called i equal to 0
# Create an empty string that will hold the solution
# Setup a while loop where i is less than the length of our parameter (x)
# Then set the string variable to add the next letter of the parameter's index with the index being set to i
# Then set the loop counter (i) to increase by 1 at the end of each loop
# End the while loop
# Then set the string to print using "puts"
# Then end the method
# Then call the method using any parameter

def encrypt(x)
  i = 0
  string = ""
  while i < x.length
    if x[i] == "z"
      string += "a"
      i += 1
    else
      string += x[i].next
      i += 1
    end
  end
  puts string
end

#encrypt("abc")
#encrypt("zed")

# Define a method "decrypt" with parameter x
# setup a loop starting with an i that equals 0
# Create two variables, an alphabet variable with the alphabet in it and a string variable that is empty
# Setup a while loop where i is less than the length of x
# Set a new variable (new_var) equal to alphabet.index( )
# Then inside the parenthesis add index i of x
# Then set the string variable to add a new letter that is 1 index less than it originally was
# Then set the loop counter to increase by 1 at the end of the while loop
# Then end the while loop
# Then set string to print using puts
# Then end the method
# Then call the method

def decrypt(x)
  i = 0
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  string = ""
  while i < x.length
    new_var = alphabet.index(x[i])
    string += alphabet[new_var - 1]
    i += 1
  end
  puts string
end


#decrypt("bcd")
#decrypt("afe")

#decrypt(encrypt("swordfish"))
#I expected it to return "swordfish", but instead #got "txpsegjti" which means that encrypt worked, #but decrypt didn't run. When I reversed the #encrypt and decrypt, I got "rvnqcehrg", which #means that decrypt worked but encrypt didn't. #Apparently whatever is nested inside works, but #whatever's nested outside doesn't work.


#Ask the secret agent whether to encrypt or decrypt #his password.
#Request input with gets.chomp.
#Ask agent to enter password.
#Request input with gets.chomp.
#Construct a conditional if detailing if he put in #encrypt, run encrypt, if he put in decrypt, run #decrypt, if he put in neither, output "No #recognized input"
#End your conditional if statement.


puts "Would you like to decrypt or encrypt a password?"
answer = gets.chomp
puts "Please enter your password:"
password = gets.chomp

if answer === "decrypt"
  puts decrypt(password)
elsif answer === "encrypt"
  puts encrypt(password)
else
  puts "No recognized input"
end

puts "That's all, folks."