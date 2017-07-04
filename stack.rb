arr = [1, 2, 6, 9, 23]

def push(arr, num)
  arr.insert(-1, num)
end

def pop(arr)
  arr.delete_at(-1)
  arr
end

def count(arr)
  counter = 0
  arr.each do |num|
    counter +=1
  end
  counter
end

def peek(arr)
  arr[-1]
end

def max(arr)
  max_num = 0
  arr.each do |num|
    if num > max_num
      max_num = num
    end
  end
  max_num
end
puts push(arr, 19)
puts pop(arr)
puts count(arr)
puts peek(arr)
puts max(arr)
