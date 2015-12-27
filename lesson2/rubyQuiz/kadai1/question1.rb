def fizz_buzz
	number = 1
	while number <= 100 do
		if (number % 3 == 0) && (number % 5 == 0) then
			append_word = " FizzBuzz"
		elsif (number % 3 == 0) then
			append_word = " Fizz"
		elsif (number % 5 == 0) then
			append_word = " Buzz"
		else
			append_word = ""
		end
		puts "#{number.to_s + append_word}"
		number += 1
	end
end

fizz_buzz
