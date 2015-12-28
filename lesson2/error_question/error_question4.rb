
def ret(a_input)
  if a_input == 0
    puts "あなたの入力した数字は0です"
  elseif a_input == 1
    puts "あなたの入力した数字は1です"
  else
    puts "あなたの入力した数字は0でも1でもありません"
  end
end

puts "0か1を入力してください"
input = gets.to_i
ret(input)

