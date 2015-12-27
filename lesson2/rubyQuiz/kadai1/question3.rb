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
	#曜日を格納する配列オブジェクト
	weeks = ["月", "火", "水", "木", "金", "土", "日"]

	#西暦1年1月1日から経過した日にちの初期化
	days = 0

	#1年1月1日から(year - 1)年1月1日までの日にちを算出する
	year_index = year - 1
	while year_index > 0 do
		if (year_index % 4 == 0) && (year_index % 100 == 0) && (year_index % 400 != 0) then
			days = days + 365
		elsif (year_index % 4 == 0) then
			days = days + 366
		else
			days = days + 365
		end
		year_index = year_index - 1
	end

	#1月から(month -1)月までのそれぞれの月の日数の総和をdaysとして算出する
	month_index = month - 1
	while month_index > 0 do
		month_days = get_days(year, month)
		days = days + month_days
		month_index = month_index - 1
	end

	#year年のmonth月の日数を追加
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
