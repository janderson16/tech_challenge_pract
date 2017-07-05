array = Array.new([[1,2],[3,[4,5]]])
an_array = Array.new([[1,2]])

def flatten(array, final = [])
  array.each do |element|
    element.class == Array ? flatten(element, final) : final << element
  end
  final
end

puts flatten(array)
puts flatten(an_array)
