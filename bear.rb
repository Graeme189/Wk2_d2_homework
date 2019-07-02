class Bear

  attr_reader :name, :type, :stomach

  def initialize(name, type, stomach)
    @name = name
    @type = type
    @stomach = stomach
  end

  def eat_fish(fish)
    @stomach.push(fish)
  end

  def hear_me_roar
    return 'grrrrrr'
  end

  def food_count
    return @stomach.count
  end

end
