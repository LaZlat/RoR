require 'test/unit'
require_relative '../polindromai.rb'

class TestAdd < Test::Unit::TestCase
  def test_form_polindrome
    polindromes = Polindromes.new
    reversed = polindromes.form_polindrome(102)
    assert_equal 201, reversed
  end

  def test_calculate
    polindromes = Polindromes.new
    expected = 6
    expected_array = [11, 22, 33, 44, 55, 66]

    array = polindromes.calculate(expected)
    length = array.length

    assert_equal expected, length

    i = 0
    array.each do |arr|
      assert_equal expected_array[i], arr
      i += 1
    end
  end
end
