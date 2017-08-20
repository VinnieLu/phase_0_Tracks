require_relative "design_game"

describe Word_guess_game do
	let (:design_game){ Word_guess_game.new("Hello")}

	it "converts word string to an array" do
		design_game.word_to_array("Hello")
		expect(design_game.full_word).to eq ["Hello"]
		expect(design_game.word_split).to eq ["H", "e", "l", "l", "o"]
	end

	it "checks to see if answer is true" do
		expect(design_game.win?).to eq false
	end

	it "checks whether you won" do
		design_game.answer = "You win! Congratulations!"
		expect(design_game.is_over?).to be_truthy
	end

	it "checks whether included word is full word" do
		design_game.full_word = ["Hello"]
		design_game.word_split = ["H", "e", "l", "l", "o"]
		expect(design_game.includes_word?("Hello")).to eq "You win! Congratulations!"
	end

end