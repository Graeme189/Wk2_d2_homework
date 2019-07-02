class River

  attr_reader :name, :fish

  def initialize(name, fish)
    @name = name
    @fish = fish
  end

  def fish_eaten(name)
    @fish.delete(name)
  end

  def fish_count
    return @fish.count
  end

end
