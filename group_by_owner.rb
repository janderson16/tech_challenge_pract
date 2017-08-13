module FileOwners
require "pry"
  def self.group_by_owners(files)
    files.each_with_object({}) do |(key,value),out|
      out[value] ||= []
      out[value] << key
    end
  end

end

files = {
  'Input.txt' => 'Randy',
  'Code.py' => 'Stan',
  'Output.txt' => 'Randy'
}
puts FileOwners.group_by_owners(files)
