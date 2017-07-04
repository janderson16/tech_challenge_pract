data = [
  ['Frank', 33],
  ['Stacy', 15],
  ['Juan', 24],
  ['Dom', 32],
  ['Steve', 24],
  ['Jill', 24]
]
# only name
def age_sort(data)
  data.sort_by!{|x, y| y}
  data.map! do |person|
    person[0]
  end
  data
end
# name & age
def name_age_sort(data)
  data.sort_by!{|x, y| y}
  data.map! do |person|
    "#{person[0]} (#{person[1]})"
  end
  data
end
# age hash
def age_hash(data)
  ages = {}
  data.sort_by!{|x, y| y}
  data.each do |person|
    if ages.has_key?(person[1])
      ages[person[1]] << person[0]
    else
      ages[person[1]] = [person[0]]
    end
  end
  ages
end

# puts age_hash(data)

@states = {"Oregon" => "OR",
          "Alabama" => "AL",
          "New Jersey" => "NJ",
          "Colorado" => "CO"}

@capitals = {"OR" => "Salem",
            "AL" => "Montgomery",
            "NJ" => "Trenton",
            "CO" => "Denver"}

def get_cap(state)
  if @states.has_key?(state)
    abbr = @states[state]
    @capitals[abbr]
  else
    "Uknown"
  end
end

def get_state(cap)
  if @capitals.has_value?(cap)
    abbr = @capitals.key(cap)
    @states.key(abbr)
  else
    "Uknown"
  end
end

# puts get_cap("Alabama")
# puts get_state("Denver")

@scores = {
  "A"=>1, "B"=>3, "C"=>3, "D"=>2,
  "E"=>1, "F"=>4, "G"=>2, "H"=>4,
  "I"=>1, "J"=>8, "K"=>5, "L"=>1,
  "M"=>3, "N"=>1, "O"=>1, "P"=>3,
  "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
  "U"=>1, "V"=>4, "W"=>4, "X"=>8,
  "Y"=>4, "Z"=>10
}


def letter_score(word)
  arr = word.upcase.chars
  arr.each do |letter|
      puts "#{letter} has the value of #{@scores[letter]}"
  end
end

def total_score(word)
  arr = word.upcase.chars
  arr.map! do |letter|
    @scores[letter]
  end
  puts "#{word} has the total score of #{arr.reduce(:+)}"
end
word = ['H', 'E', 'L', 'L', 'O']
# letter_score(word)
# letter_score("hello")
total_score("hello")
