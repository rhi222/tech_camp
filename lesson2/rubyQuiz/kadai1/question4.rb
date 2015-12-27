def start_message
	puts "最初はグー、じゃんけん・・・"
	puts "[0]:グー"
	puts "[1]:チョキ"
	puts "[2]:パー"
end

def output_machine_choice
	rand = rand(100) % 3
end




## main process ##
start_message
input = gets.to_i
machine = output_machine_choice.to_i
