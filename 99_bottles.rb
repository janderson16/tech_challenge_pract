require "pry"
def bottles
  range = (1..100).to_a.reverse!
  # binding.pry
  range.each do |num|
  # for current_iteration_number in 100..1 do
    if num == 1
      puts "1 bottle of beer on the wall, 1 bottle of beer.
      Take one down and pass it around, no more bottles of beer on the wall.
      No more bottles of beer on the wall, no more bottles of beer.
      Go to the store and buy some more, 99 bottles of beer on the wall."
    elsif num == 2
      puts "#{num} bottles of beer on the wall, #{num} bottles of beer.
      Take one down and pass it around, #{num - 1} bottle of beer on the wall."
    else
      puts "#{num} bottles of beer on the wall, #{num} bottles of beer.
      Take one down and pass it around, #{num - 1} bottles of beer on the wall." 
    end
 end
end

bottles
