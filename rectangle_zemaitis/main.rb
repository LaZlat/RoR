# frozen_string_literal: true

# importuojam staciakampio klase
require_relative 'rectangle.rb'

# inicializuojame staciakampio klase
rect = Rectangle.new(10, 10, 0, 0)

# isvedame rezultatus
puts "Staciakampio plotas: #{rect.plotas}"
puts "Staciakampio perimetras: #{rect.perimetras}"
puts "Staciakampio istrizaines ilgis: #{rect.istrizaine}"
puts "Staciakampio susikirtimo koordinates: x=#{rect.susikirtimas.x}, y=#{rect.susikirtimas.y}"
