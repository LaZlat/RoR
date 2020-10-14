require_relative 'ceasar_chiper.rb'

chiper = CeasarChiper.new(5)

enc = chiper.encrypt_str "Labas 99 67"
puts "Encrypted: #{enc}"
puts "Decrypted: #{chiper.decrypt_str enc}"