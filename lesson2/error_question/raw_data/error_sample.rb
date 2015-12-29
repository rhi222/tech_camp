class ErrorSample

  def self.find_divi(p)
    divi = 0
    for num in 1..100 do
      if p % num == 0
        divi = divi + 1
      end
    show_divi(divi)
  end

  def self.show_divi
    puts divi
  end
end
p = gets.to_i
ErrorSample.find_divi(p)
