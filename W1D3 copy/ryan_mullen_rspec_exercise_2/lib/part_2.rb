def palindrome?(str)
    arr = str.split("")
    new_arr = []
    arr.each do |char|
        new_arr.unshift(char)
    end
    new_arr.join("") == str
end

def substrings(str)
    arr = str.split("")
    new_arr = []
    arr.each_with_index do |n1, i1|
        arr.each_with_index do |n2, i2|
                if i2 >= i1
                    new_arr.push(str[i1..i2])
                end
        end
    end
    new_arr
end


def palindrome_substrings(str)
    arr = []
    new_arr = []
    arr = substrings(str)
    arr.each do |word|
        if palindrome?(word) && word.length > 1
            new_arr.push(word)
        end
    end
    new_arr
end



