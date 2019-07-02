require("minitest/autorun")
require("minitest/rg")

require_relative("../river.rb")
require_relative("../fish.rb")

class TestRiver < MiniTest::Test

  def setup

    @fish1 = Fish.new('salmon')
    @fish2 = Fish.new('bream')
    @fish3 = Fish.new('trout')
    @fish4 = Fish.new('mackerel')
    @fish5 = Fish.new('haddock')

    @fish = [@fish1, @fish2, @fish3, @fish4, @fish5]

    @river = River.new('Esk', @fish)

  end

  def test_get_name
    assert_equal('Esk', @river.name)
  end

  def test_fish_eaten
    @river.fish_eaten(@fish1)
    assert_equal(4, @river.fish.count)
  end

  def test_fish_count
    assert_equal(5, @river.fish.count)
  end

end
