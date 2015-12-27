def start_message
	puts "最初はグー、じゃんけん・・・"
	puts "[0]:グー"
	puts "[1]:チョキ"
	puts "[2]:パー"
end

def set_machine_choice
	rand = rand(100) % 3
	return rand
end

def try_again
	puts "input invalid data.\nplease try again!"
	exit
end

def judge_input(input)
	if (0 <= input) && (input <= 2) then
		return input
	else
		try_again
	end
end

def show_choice(input, machine)
	puts "#{input}"
	puts "#{machine}"
	choice = ["グー", "チョキ", "パー"]
	puts "あなたの手: #{choice[input]}"
	puts "相手の手: #{choice[machine]}"
end


## main process ##
while true do
start_message
machine = set_machine_choice.to_i
input = gets.to_i
judge_input(input)

	if input == machine then
		show_choice(input, machine)
		puts "あいこ"
	elsif (input == 0 && machine == 1) || (input == 1 && machine == 2) || (input == 2 && machine == 0) then
		show_choice(input, machine)
		puts "you win!!!"
		exit
	else
		show_choice(input, machine)
		puts "you lose...\nplease try again"
		exit
	end
end
