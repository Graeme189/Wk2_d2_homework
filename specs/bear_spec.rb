require("minitest/autorun")
require("minitest/rg")

require_relative("../bear.rb")
require_relative("../fish.rb")
require_relative("../river.rb")


class TestBear < MiniTest::Test

  def setup

    @fish1 = Fish.new('salmon')
    @fish2 = Fish.new('bream')
    @fish3 = Fish.new('trout')
    @fish4 = Fish.new('mackerel')
    @fish5 = Fish.new('haddock')

    @fish = [@fish1, @fish2, @fish3, @fish4, @fish5]

    @river = River.new('Esk', @fish)

    @stomach = []

    @bear = Bear.new('Wojtek', 'grizzly', @stomach)

  end

  def test_get_name
      assert_equal('Wojtek', @bear.name)
  end

  def test_get_type
    assert_equal('grizzly', @bear.type)
  end

  def test_stomach_is_empty
    assert_equal(0, @bear.stomach.count)
  end

  def test_eat_fish
    @bear.eat_fish('salmon')
    assert_equal(1, @bear.stomach.count)
  end

  def test_bear_roar
   assert_equal('grrrrrr', @bear.hear_me_roar)
 end

 def test_food_count
   assert_equal(0, @bear.food_count)
 end

end
