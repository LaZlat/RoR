# frozen_string_literal: true

# pagrindine shifravimo clase
class CeasarChiper
  def initialize(key)
    @key = key
  end
  attr_reader :key

  # metodas skirtas stringo uzsifravimui
  def encrypt_str(input)
    output = ''
    input.split('').each do |i|
      val = i.ord + @key
      val %= 127 if val > 127
      output += val.chr
    end
    output
  end

  # metodas skirtas stringo desifravimui
  def decrypt_str(input)
    output = ''
    input.split('').each do |i|
      val = i.ord - @key
      val += 127 if val > 127
      output += val.chr
    end
    output
  end
end
