def select_even_nums(array)
    array.select {|n| n % 2 == 0}
end


def reject_puppies(arr)
    arr.reject { |dog| dog["age"] <= 2 }
end


def count_positive_subarrays(two_arr)
    two_arr.count {|subarr| subarr.sum > 0}
end


def aba_translate(str)
    vowels = "aeiou"
    new_str = ""
    str.each_char do |char|
        if vowels.include?(char.downcase)
            new_str += char + "b" + char.downcase
        else new_str += char
        end
    end
    new_str
end


def aba_array(words)
    aba_words = words.map {|word| aba_translate(word)}
end





