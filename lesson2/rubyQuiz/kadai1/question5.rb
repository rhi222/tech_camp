def input_source(data)
	datum = {}
	puts "生徒の名前を入力してください:"
	name = gets.chomp
	datum[:name] = "#{name}"

	puts "得点を入力してください:"
	score = gets.to_i
	datum[:score] = "#{score}"

	data << datum
end

def show_all_data(data)
	line = "--------------------"
	puts "#{line}"
	data_index = data.length
	sum_score = 0
	while data_index > 0 do
		a_name = data[data_index - 1][:name]
		a_score = data[data_index - 1][:score]
		puts "#{a_name} : #{a_score}"
		sum_score = sum_score + a_score.to_i
		data_index = data_index - 1
	end
	puts "#{line}"
	show_average_score(data, sum_score)
end

def show_average_score (data, sum_score)
	average = sum_score / data.length
	puts "平均得点: #{average}"
end


## main process ##
data = []

while true do
	puts "得点を入力しますか？:[0]yes [1]no"
	choice =gets.to_i

	if choice == 0 then
		input_source(data)

	elsif choice == 1 then
		show_all_data(data)
		exit
	else
		puts "invalid data.\nplease try again"
	end
end
