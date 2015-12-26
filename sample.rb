animals = ["dog", "cat", "rat"]
animals.each do |animal|
	puts animal
end

=begin
def mixer(fruit)
	puts "#{fruit}を細かく砕く"
	return "#{fruit}ジュース"
end

puts mixer("apple")

while true do
	input = gets.chomp
	if input == "exit" then
		exit
	end
	puts "rooping"
end

sum = 0
number = 1
while number <= 10 do
	sum += number
	puts sum
	number += 1
end

hash1 = {"title" => "るろうに剣心"}
hash2 = {:title => " 時をかける少女"}
hash3 = {title:  "君に届け"}
puts hash1
puts hash2
puts hash3
hash = {:title => "3 idiots"}
puts hash[:title]

hash = {:title => "時をかける少女"}
puts hash[:title]
hash[:title] = "るろうに剣心"
puts hash[:title]

value = gets.to_i

if value > 0 then
	puts "positive num"
elsif value < 0 then
	puts "negative num"
else
	puts "zero"
end
=end
