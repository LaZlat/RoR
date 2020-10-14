# frozen_string_literal: true

# importinam sifravimo klase
require_relative 'ceasar_chiper.rb'

# inicijuojama sifravimo klase
chiper = CeasarChiper.new(5)

# uzsifruojame teksta
enc = chiper.encrypt_str 'Labas 99 67'

# atvaizduojame ekrane gautus rezultatus
puts "Encrypted: #{enc}"
puts "Decrypted: #{chiper.decrypt_str enc}"
