

def looper(a_sum, a_num1, a_num2)
  n = 4
  while n > 0
    a_sum += a_num1
    n -= 1
    m = 2
    while m > 0
      a_sum += a_num2
      m -= 1
  end
  puts a_sum
end

sum = 0
num1 = 10
num2 = 1
looper(sum, num1, num2)
