# frozen_string_literal: true

require 'test/unit'
require_relative 'rectangle.rb'

# pagrindine testavimo clase
class TestAdd < Test::Unit::TestCase
  # inicializuojame staciakampio klase kuria naudosime visiem testam
  def setup
    @rect = Rectangle.new(10, 10, 0, 0)
  end

  # testuojame staciakampio ploto skaiciavima
  def test_rectangle_plotas
    expected = 100
    result = @rect.plotas
    assert_equal expected, result
  end

  # testuojame staciakampio perimetro skaiciavima
  def test_rectangle_perimetras
    expected = 40
    result = @rect.perimetras
    assert_equal expected, result
  end

  # testuojame staciakampio istrizaines skaiciavima
  def test_rectangle_istrizaine
    expected = 14.142135623730951
    result = @rect.istrizaine
    assert_equal expected, result
  end

  # testuojame staciakampio susikirtimo tasko skaiciavima
  def test_rectangle_susikirtimas
    expected = Coordinates.new(5, -5)
    result = @rect.susikirtimas
    assert(result.x == expected.x && result.y == expected.y)
  end
end
