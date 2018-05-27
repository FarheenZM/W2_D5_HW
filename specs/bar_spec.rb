require ("minitest/autorun")
require ("minitest/rg")

require_relative("../bar")

class BarTest < MiniTest::Test

  def setup()
    @bar = Bar.new(0)
  end

  def test_add_money
    @bar.add_money(10)
    assert_equal(10, @bar.total_amount)
  end

  def test_add_drink
    @bar.add_drink("Beer", 3)
    assert_equal(1, @bar.drinks.count)
  end

  def test_serve_drink
    @bar.add_drink("Beer", 3)
    assert_equal(3, @bar.serve_drink("Beer"))
    assert_equal(3, @bar.total_amount)
  end
end
