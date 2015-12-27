

## main process ##
data = []

while true do
	puts "得点を入力しますか？:[0]yes [1]no"
	choice =gets.to_i

	if choice == 0 then
		datum = {}
		puts "生徒の名前を入力してください:"
		name = gets
		datum[:name] = "#{name}"

		puts "得点を入力してください:"
		point = gets.to_i
		datum[:point] = "#{point}"

		data << datum

	elsif choice == 1 then
		puts "this is end"
		puts "here write summury"
		data_index = data.length
		while data_index > 0 do
			puts "#{data}"
		end
		exit
	else
		puts "invalid data.\nplease try again"
	end
end
