# frozen_string_literal: true

$LOAD_PATH << '.'
require 'calculations.rb'
require 'test/unit'
Test::Unit::AutoRunner.default_runner = 'gtk2'

# Test klase
class TestCalculations < Test::Unit::TestCase
  # Testo setup metodas
  def setup
    @array = [9, 1, 8, 4, 6, 2, 4, 9, 1, 3, 1]
    @calc = Calculations.new(@array)
  end

  # Testuoja max
  def test_max
    assert_equal('Biggest number in array: 9', @calc.max)
  end

  # Testuoja min
  def test_min
    assert_equal('Smallest number in array: 1', @calc.min)
  end

  # Testuoja count_max
  def test_count_max
    assert_equal('Count of biggest numbers in array: 2', @calc.count_max)
  end

  # Testuoja count_min
  def test_count_min
    assert_equal('Count of smallest numbers in array: 3', @calc.count_min)
  end

  # Testuoja without_min_max
  def test_without_min_max
    assert_equal('Array without max and min numbers: [8, 4, 6, 2, 4, 3]', @calc.without_min_max)
  end
end
