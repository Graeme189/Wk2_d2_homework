require("minitest/autorun")
require("minitest/rg")

require_relative("../fish.rb")

class TestFish < MiniTest::Test

  def setup
    @fish = Fish.new('mackerel')
  end

  def test_get_name
    assert_equal('mackerel', @fish.name)
  end


end
