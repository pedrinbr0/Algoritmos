MAX_CHAR = 26

def missing_chars(str)

    present = Array.new(MAX_CHAR, false)

    str.each_char do |char|
        if char >= 'a' && char <= 'z'
            present[char.ord - 'a'.ord] = true
        elsif char >= 'A' && char <= 'Z'
            present[char.ord - 'A'.ord] = true
        end
    end

    res = ""
 
    MAX_CHAR.times do |i|
        if present[i] == false
            res += (i + 'a'.ord).chr
        end
    end
             
    return res
end
 
str = "The quick brown fox jumps over the dog"
 
puts missing_chars(str)