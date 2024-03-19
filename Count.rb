def count_characters(str)
    upper = lower = number = special = 0
    str.each_char do |char|
        case char
        when /[A-Z]/
            upper += 1
        when /[a-z]/
            lower += 1
        when /[0-9]/
            number += 1
        else
            special += 1
        end
    end
    puts "Letras maiúsculas: #{upper}"
    puts "Letras minúsculas: #{lower}"
    puts "Números: #{number}"
    puts "Caracteres especiais: #{special}"
end

str = "#GeeKs01fOr@gEEks07"
count_characters(str)