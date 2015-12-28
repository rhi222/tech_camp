class Dog
	# class variable
	@@type = "犬"

	def initialize(name, dog_type)
		# instance variable
		@name = name
		@dog_type = dog_type
	end

	def self.say
		puts "ワンワン"
	end

	def say_type
		puts "わたしは#{@@type}です"
	end

	def self_introduction
		puts "私の名前は#{@name}で種類は#{@dog_type}です"
	end
end


dog = Dog.new("マロン", "トイプードル")
Dog.say
dog.say_type
dog.self_introduction
