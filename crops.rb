class CropRatio

  def initialize
    @total_weight = 0
    @crops = {}
  end

  def add(name, crop_weight)
    if @crops.include?(name)
      @crops[name] = @crops[name] + crop_weight
    else
      @crops[name] = crop_weight
    end

    @total_weight = @crops.values.reduce(:+)
  end

  def proportion(name)
    return (@crops[name]).to_f / @total_weight
  end

end

crop_ratio = CropRatio.new
crop_ratio.add('Wheat', 4);
crop_ratio.add('Wheat', 5);
crop_ratio.add('Rice', 1);

puts crop_ratio.proportion("Wheat")
puts crop_ratio.proportion("Rice")
