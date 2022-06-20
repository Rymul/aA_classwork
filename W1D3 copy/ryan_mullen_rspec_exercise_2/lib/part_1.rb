def partition(arr, num)
    two_arr = Array.new(2) {Array.new}
    arr.each do |ele|
        if ele >= num
            two_arr[1].push(ele) 
        else
            two_arr[0].push(ele)
        end
    end
    two_arr
end


def merge(hash_1, hash_2)
    combined = {}
    hash_1.each do |k1, v1|
        combined[k1] = v1
    end
    hash_2.each do |k2, v2| 
        combined[k2] = v2
    end
    combined
end



def censor(sent, arr)
    new_sent_arr = []
    sent_arr = sent.split(" ")
    sent_arr.each do |word|
        if arr.include?(word.downcase)
            new_sent_arr.push(vowel_sub(word))
        else
            new_sent_arr.push(word)
        end
    end
    new_sent_arr.join(" ")
end

def vowel_sub(word)
    vowels = "aeiou"
    new_word = ""
    word.each_char do |char|
        if vowels.include?(char.downcase)
            new_word += "*"
        else
            new_word += char
        end    
    end
    new_word
end


def power_of_two?(num)
    n = num
    while n > 0
        return true if n == 1
        return false if n % 2 != 0
        n = n / 2
    end   
end


# def power_of_two?(num)
#     n = num
#     while n > 1.0
#         n /= 2.0
#     end   
#     return n == 1.0
# end