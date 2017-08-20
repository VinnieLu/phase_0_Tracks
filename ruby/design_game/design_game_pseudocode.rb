#Create a class called "Word_guess_game" and give #it an end.
#Create an attr_accessor with :word and :guess and #:answer and :word_split and :full_word.
#Create an initialize method with the instances @#word and @guess and @answer and @word_split #and @full_word.
#Create a method word_to_array that turns a word #into an array and returns two arrays, @#word_split with the word split into each #letter, and @full_word with the full word in a# single array.
#Create a method includes_word that first checks #whether @guess is equal to the @full_word[0]  #(if statement) returning @answer = "You win!",# but if not creates a loop counter = 0, if @#guess is equal to word_split[counter], then #shovel the guess into @answer, if not, then #shovel "_" into @answer, return the @answer at# the end of the method, increment the loop #counter.


#In driver code, write "puts "Enter a word to be #guessed:""
#initialize a new Word_guess_game with game = #Word_guess_game.new
#@word = gets.chomp
#call word_to_array on word.
#
#type "puts Guess the word:"
#@guess = gets.chomp
#call includes_word. Create a loop with count = 0 #until printed array == "You win!" || count == #@word.length - 1, @guess = gets.chomp, and #call includes_word.