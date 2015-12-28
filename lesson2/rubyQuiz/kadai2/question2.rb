class Fruits
	@@sum = 0

	def initialize(name, price)
		@name = name
		@price = price
		@@sum = @@sum + price
	end

	def self.get_sum
		puts "合計の価格は#{@@sum}です。"
	end
end

apple = Fruits.new("リンゴ", 120)
orange = Fruits.new("オレンジ", 200)
strawberry = Fruits.new("イチゴ", 60)
Fruits.get_sum

