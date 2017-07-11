

require "pry"
module MontyHall
 	class Simulator
 		CAR = "car"
 		GOAT = "goat"

 		def initialize(sample_size)
 			@sample_size = sample_size
 			@cnt_winning_the_car = 0
 		end
 		

 		def execute
 			# @sample_size.times =100_000
 			@sample_size.times do 


 	 		doors=[CAR, GOAT, GOAT].shuffle
 	 		your_choice= choose_door
 	 	
 	 		host_choice = choose_door({exclude: [your_choice, doors.find_index(CAR)]})
 	 		
 	 		
 	 		your_choice2 = choose_door({exclude: [your_choice, host_choice]})

 	 		@cnt_winning_the_car += 1 if doors [your_choice2].eql? CAR
 	 		end
 	 	end


 	 	def show_result
 	 		percentage = (100.0 * @cnt_winning_the_car.to_f / @sample_size.to_f ).round(1)

 	 		puts "------------------"
 	 		puts "N = #{@sample_size}"
 	 		puts "------------------"
 	 		puts "WIN : #{@cnt_winning_the_car} times."
 	 		puts "LOSE: #{@sample_size - @cnt_winning_the_car} times."
 	 		puts "------------------"
 	 		puts "By swiching your choice to the remaining door,"
 	 		puts "you got a #{percentage} percent winning rate!"
 	 		percentage2 = 100 - percentage
 	 		percentage2.round(1)
 	 		puts "When you didn't swich your choice to the door,"
 	 		puts "you got a #{percentage2} percent winning rate!"
 	 		
 	 		if percentage > percentage2
 	 			puts "In conclusion, if you swich your choice to the remaining door, "
 	 			puts "You can win more positively"

 	 		else
 	 			puts "In conclusion, if you don't swich your choice to the remaining door, "
 	 			puts "You can win more positively"
 	 		end
 	 		


 	 	end

 	 	private
 	 	def choose_door(exclude:[])
 	 		([0,1,2]-exclude).sample
 	 		
 	 	end

 	end
 		
 

 end



