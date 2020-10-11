# frozen_string_literal: true

require_relative 'polindromai.rb'

puts 'Enter the count of polindromes you want to find'
count = gets.chomp.to_i

polindromes = Polindromes.new
array = polindromes.calculate(count)

array.each do |arr|
  print "#{arr},"
end
