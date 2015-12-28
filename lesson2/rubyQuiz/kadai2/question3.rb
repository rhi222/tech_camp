class Food
	@@sum_calorie = 0	
	@@foods = []

	def initialize(name, calorie)
		@name = name
		@calorie = calorie
		@@sum_calorie = @@sum_calorie + @calorie
	end

	def self.input
		puts "料理名を入力してくださいi:"
		menu = gets.chomp
		puts "カロリーを入力してくださいi:"
		calorie = gets.to_i
		food = Food.new(menu, calorie)
		@@foods << food
	end

	def self.show_all_calory
		line = "---------------"
		puts "#{line}"
		@@foods.each do |food|
			puts "#{food.name}: #{food.calorie} kcal"
		end
		puts "#{line}"
		puts "カロリー合計: #{@@sum_calorie} kcal"	
	end

	def name
		return @name
	end

	def calorie
		return @calorie
	end

end

## main process ##
while true do
	puts "[0]: カロリーを入力する"
	puts "[1]: カロリーの合計を見る"
	input = gets.to_i


	if input == 0
		Food.input
	elsif input == 1
		Food.show_all_calory
		exit
	end
end


