class Coordinates
    def initialize(x, y)
        @x = x
        @y = y
    end
    attr_reader :x
    attr_reader :y
end

class Rectangle
    def initialize(ilgis, plotis, x, y)
        @ilgis = ilgis
        @plotis = plotis
        @cord = Coordinates.new(x, y)
    end

    def Plotas
        @ilgis * @plotis
    end

    def Perimetras
        (@ilgis + @plotis) * 2
    end

    def Istrizaine
        Math.sqrt(@ilgis * @ilgis + @plotis * @plotis)
    end

    def Susikirtimas
        return Coordinates.new(@cord.x+@ilgis/2, @cord.y-@plotis/2)
    end
end

rect = Rectangle.new(10, 10, 0, 0);

puts "Kvadrato plotas: #{rect.Plotas}"
puts "Kvadrato perimetras: #{rect.Perimetras()}"
puts "Kvadrato istrizaines ilgis: #{rect.Istrizaine()}"
puts "Kvadrato susikirtimo koordinates: x=#{rect.Susikirtimas().x}, y=#{rect.Susikirtimas().y}"