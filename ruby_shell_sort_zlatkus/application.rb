# frozen_string_literal: true

# Leidzia inicilizuoti kitas klases
$LOAD_PATH << '.'
require 'file_manager.rb'
require 'sorting_algorithm.rb'

# Inicizlizuojamos klases
file_m = FilesManager.new
sort = SortingAlgorithm.new

# Nuskaitoma is failo i masyva
array = file_m.read_file('sk1knesurusiuoti.txt')

# Kviecia shell sort metodas ir matojamas laikas
t1 = Time.now
sort.shell_sort(array)
t2 = Time.now

# Atspausdinamas laikas
puts "Time spent sorting: #{t2 - t1}"