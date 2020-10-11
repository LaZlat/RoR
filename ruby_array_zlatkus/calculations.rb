# frozen_string_literal: true

# calculation for array
class Calculations
  def initialize(array)
    @calc_array = array
  end

  # metodas rasti max skaitmeni masyve
  def max
    puts "Biggest number in array: #{@calc_array.max}"
  end

  # metodas rasti min skaitmeni masyve
  def min
    puts "Smallest number in array: #{@calc_array.min}"
  end

  # metodas rasti max skatimenu skaiciu masyve
  def count_max
    puts "Count of biggest numbers in array: #{@calc_array.count(@calc_array.max)}"
  end

  # metodas rasti min skaitmenu skaiciu masyve
  def count_min
    puts "Count of smallest numbers in array: #{@calc_array.count(@calc_array.max)}"
  end

  # metodas panaikina min ir max skaitmenis is masyvo
  def without_min_max
    puts "Array without max and min numbers: #{@calc_array - @calc_array.minmax}"
  end
end
