num1 = 0
num2 = 1
fib_arr = [num1]

while num2 <= 100 do
  fib_arr << num2
  num1, num2 = num2, (num1 + num2)
end

print fib_arr