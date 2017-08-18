#module Shout
#	def self.yell_angrily(words)
#		words + "!!!" + " :("
#	end
#
#	def self.yelling_happily(words)
#		words + "!!!" + " :)"
#	end
#end
#
#puts Shout.yell_angrily("No, biotch")
#puts Shout.yelling_happily("Yes, biotch")

module Shout
	def yell_angrily(words)
		puts words + "!!!" + " :("
	end

	def yelling_happily(words)
		puts words + "!!!" + " :)"
	end
end

class Grizzly_bear
	include Shout
end

class Mom
	include Shout
end

grizzly_bear = Grizzly_bear.new
grizzly_bear.yell_angrily("Roar")
grizzly_bear.yelling_happily("Roar")

mom = Mom.new
mom.yell_angrily("Clean your room")
mom.yelling_happily("I love you")