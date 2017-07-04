qty = 15

def basic_fibber(qty)
  fib = [0, 1]
  fib.each_with_index do |num, index|
    fib.push(fib[index] + fib[index + 1]) unless index > (qty - 3)
  end
  puts fib
end
# basic_fibber(qty)

def jagged_fibber(qty)
  fib = [0, 1]
  fib.each_with_index do |num, index|
    fib.push(fib[index] + fib[index + 1]) unless index > (qty - 3)
  end
  fib.each_slice(5){|a| p a.join(", ")}
end
jagged_fibber(qty)
