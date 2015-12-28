def sum_ave(a_ary)
  a_ary.each do |num|
    sum += num
  end
  ave = sum / a_ary.length
  puts "合計は#{sum} 平均は#{ave}"
end

ary = [5,8,3,10,2]
sum_ave(ary)

