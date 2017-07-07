
def odd_freq(arr)
  occur = Hash.new 0
  arr.each do |num|
    occur[num] +=1
  end
  occur.select{|key, value| value % 2 == 1}.keys
end

arr = [2, 2, 2, 7, 2, 4, 6, 6, 0, 0, 4, 7, 7]
puts odd_freq(arr)
