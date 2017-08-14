require "pry"
class Path

  def initialize(path)
    @current_path = path
  end

  def current_path
    @current_path
  end

  def cd(new_path)
    @current_path = @current_path.split('/').delete_if(&:empty?)
    new_path = new_path.split('/')
    if new_path[0] == ".."
      new_path.shift
      @current_path.pop
      new_path = (@current_path + new_path).join('/')
    end
    puts new_path
  end

end

path = Path.new('/a/b/c/d')
path.cd('../x')
puts path.current_path
