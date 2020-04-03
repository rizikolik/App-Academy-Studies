class GuessingGame
def initialize(min,max)
	@min=min
	@max=max
	@secret_num=rand(@min..@max)
	@num_attempts||=0
	"#rand"
	@game_over=false
	
end
	def num_attempts
		@num_attempts
	end
	def game_over?
		@game_over
	end
	def check_num(num)
		@num_attempts+=1
		
			if num ==@secret_num 
				@game_over=true
			puts "you win"
			elsif @secret_num >num
			puts 'too small'
			elsif @secret_num <num
			puts 'too big'
			end
	end
	def ask_user
		puts "enter a number"
		self.check_num(gets.chomp.to_i)
	end
end
