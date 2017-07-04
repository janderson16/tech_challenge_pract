require "pry"
# string = "aaaavvvvvddrhjgfs"
string = "I really want to work for Wingspan"
def count_chars(string)
  hash = {}
  arr = string.chars
  # binding.pry
  arr.each do |char|
    if hash.has_key?(char)
      hash[char] += 1
    else
      hash[char] = 1
    end
  end
  hash
end

puts count_chars(string)
