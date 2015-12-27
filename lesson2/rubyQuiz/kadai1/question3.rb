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


def get_week(year, month, day)
	year = 1
	month = 1
	weeks = ["月", "火", "水", "木", "金", "土", "日"]
	j_days = 31

	days = 0
	days = days + j_days
	days = days + day
	return weeks[(days - 1) % 7]
end

##main process##
puts "年を入力してください："
year = gets.to_i
puts "月を入力してください："
month = gets.to_i
puts "日を入力してください："
day = gets.to_i

week = get_week(year, month, day)
puts "#{year}年#{month}月#{day}日は#{week}曜日です"
