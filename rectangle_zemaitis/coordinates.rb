# frozen_string_literal: true

# koordinaciu klase
class Coordinates
  def initialize(xcord, ycord)
    @x = xcord
    @y = ycord
  end
  attr_reader :x
  attr_reader :y
end
