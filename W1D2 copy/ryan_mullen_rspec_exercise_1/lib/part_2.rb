def hipsterfy(word)
    vowel = "aeiou"
    i = word.length - 1
    while i > 0
        char = word[i]
        if vowel.include?(char)  
            return word[0...i] + word[i + 1..-1]
        end    
        i -= 1
    end
    word
end

def vowel_counts(str)
    vowel = "aeiou"
    hash = Hash.new(0)
    str.each_char do |char|
        if vowel.include?(char.downcase)
            hash[char.downcase] += 1
        end    
    end
    hash
end

def caesar_cipher(str, num)
    alpha = "abcdefghijklmnopqrstuvwxyz"
    new_str = ""
    str.each_char do |char|
        if alpha.include?(char)
            old_i = alpha.index(char)
            new_i = (old_i + num) % alpha.length
            new_str += alpha[new_i]
        else
            new_str += char
        end
    end
    new_str
end








