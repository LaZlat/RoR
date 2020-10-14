# frozen_string_literal: true

# importuojam koordinaciu klase
require_relative 'coordinates.rb'

# staciakampio klase
class Rectangle
  # inicializuojame klase su pradiniais duomenimis
  def initialize(ilgis, plotis, xcord, ycord)
    @ilgis = ilgis
    @plotis = plotis
    @cord = Coordinates.new(xcord, ycord)
  end

  # metodas apskaiciuoti staciakampio plota
  def plotas
    @ilgis * @plotis
  end

  # metodas apskaiciuoti staciakampio perimetra
  def perimetras
    (@ilgis + @plotis) * 2
  end

  # metodas apskaiciuoti staciakampio istrizaines ilgi
  def istrizaine
    Math.sqrt(@ilgis * @ilgis + @plotis * @plotis)
  end

  # metodas apskaiciuoti staciakampio krastiniu susikirtimo koordinates
  def susikirtimas
    Coordinates.new(@cord.x + @ilgis / 2, @cord.y - @plotis / 2)
  end
end
