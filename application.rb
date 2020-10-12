# frozen_string_literal: true

# Leidzia naudoti kita klase
$LOAD_PATH << '.'
require 'calculations.rb'

# Inicilizuoja parametrus
integer_array_size = 0
integer_array = []

# Loopina cikla, jog per UI suvestu norimus duomenis
loop do
  puts 'Array size:'
  integer_array_size = gets.chop.to_i
  break if integer_array_size.positive?
end

integer_array_size.times do
  puts 'enter number'
  integer_number = gets.chop.to_i
  integer_array.push(integer_number)
end

# Sukuria nauja kintamaji i kuri per contructoriu perduoda array inicializuojant
calc = Calculations.new(integer_array)

# Kviecia metodus jog butu apskaiciuojami atitinkami veikmai.
puts calc.min
puts calc.max
puts calc.count_min
puts calc.count_max
puts calc.without_min_max
