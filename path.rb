require "pry"
class Path

  def initialize(path)
    @current_path = path
  end

  def current_path
    @current_path
  end

  def cd(new_path)
    new_path = new_path.split('/')
    if new_path[0] == ".."
      new_path.shift
      new_path.join('/')
      binding.pry
      # @current_path.split('/').pop.push(new_path).join('/')
      @current_path.chop.insert(-1, new_path)
    end
  end

end

path = Path.new('/a/b/c/d')
path.cd('../x')
puts path.current_path
