class Word_guess_game
  attr_accessor :word, :guess, :answer, :word_split, :full_word, :guess_limit
  
  def initialize(word)
    @word = word
    @guess = guess
    @answer = ""
    @word_split = word_split
    @full_word = full_word
    @guess_limit = word.length
  end
  
  def word_to_array(word_string)
    @word_split = word_string.split("")
    @full_word = []
    @full_word << word_string

        @word_split.each do |x|
        @answer += "_ "
        end

    @word_split
    @full_word
  end
  
  def win?
    @answer == "You win! Congratulations!"
  end
  
  def is_over?
    if win? || @guess_limit == 0
      return true 
    end
  end
  
  def includes_word?(guess)
    @guess_limit -= 1
    if guess == @full_word[0]
      @answer = "You win! Congratulations!"
    else
      counter = 0
      until counter == @word_split.length
        if guess == @word_split[counter]
          @answer[counter * 2] = guess 
          @answer[(counter * 2) + 1] = " "
        end
        counter += 1
      end
    end
    @answer
  end
end

puts "Enter a word to be guessed:"
  word = gets.chomp 
  game = Word_guess_game.new(word)
  game.word_to_array(word)

loop do
  if game.is_over? 
    if !game.win?
      p "You lost, biotch!"
    end
    break
  else
  puts "Guess the word:"
  guess = gets.chomp
    p game.includes_word?(guess)
  end
end