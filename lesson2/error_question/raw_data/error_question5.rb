def cal(a_scorebox)
  sum = 0
  a_scorebox.each do |a_score|
    sum = sum + a_score[:score]
  end
  puts "合計点は#{sum}です"
  ave = sum / a_scorebox.length
  puts "平均点は#{ave}です"
end

scorebox = []
scorebox << {name: 'tanaka', score: '90'}
scorebox << {name: 'suzuki', score: '70'}
scorebox << {name: 'satoh', score: '50'}
cal(scorebox)

