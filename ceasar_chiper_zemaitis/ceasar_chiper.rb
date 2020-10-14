# frozen_string_literal: true

# pagrindine shifravimo clase
class CeasarChiper
    def initialize(key)
        @key = key
    end
    attr_reader :key

    def encrypt_str(input)
        output = ''
        input.split("").each do |i|
            #puts " char: #{input[i].ord}"
            val = i.ord + @key
            if val > 127
                val %= 127
            end
            output += val.chr
        end
        return output
    end

    def decrypt_str(input)
        output = ''
        input.split("").each do |i|
            #puts " char: #{input[i].ord}"
            val = i.ord - @key
            if val > 127
                val += 127
            end
            output += val.chr
        end
        return output
    end
end