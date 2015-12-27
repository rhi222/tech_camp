def get_days(year, month)
	month_days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
	if month == 2 then
		if (year % 4 == 0) && (year % 100 == 0) && (year % 400 != 0) then
			return 28
		elsif (year % 4 == 0) then
			return 29
		else
			return 28
		end
	end
	return month_days[month - 1]
end

## main process ##
puts "年を入力してください:"
year = gets.to_i
puts "月を入力してください:"
month = gets.to_i

days = get_days(year, month)
puts "#{year}年#{month}月は#{days}日間あります"
