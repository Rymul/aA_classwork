def zip(*arr)
    height = arr[0].length # 3
    width = arr.length # 2
    n_grid = Array.new(height) {Array.new(width)}
    arr.each_with_index do |sub, i1|
        sub.each_with_index do |ele, i2|
            n_grid[i2][i1] = ele
        end
    end
    n_grid
end


def prizz_proc(arr, prc1, prc2)
    new_arr = []
    arr.each do |ele|
        if prc1.call(ele) && !prc2.call(ele) || !prc1.call(ele) && prc2.call(ele) 
            new_arr << ele
        end
    end
    new_arr
end


def zany_zip(*arr)
    height = 0
    arr.each do |subarr|
        if subarr.length > height
            height = subarr.length
        end
    end
    # height = arr.max_by(&:length).length
    width = arr.length
    n_grid = Array.new(height) {Array.new(width)}
    arr.each_with_index do |sub, i1|
        sub.each_with_index do |ele, i2|
            if ele != nil
                n_grid[i2][i1] = ele
            else
                n_grid[i2][i1] = nil
            end
        end
    end
    n_grid
end

# new_arr = []
# (0...length).each do |i|
#     tep_arr = []
#     arr.each do |sub|
#         temp_arr << sub[i]
#         new_arr << temp_arr
#     end
#     new_arr
# end




def maximum(arr, &prc)
    new_arr = []
    largest = 0
    # return nil if arr.length == 0
    arr.each do |ele|
        if prc.call(ele) > largest
            largest = prc.call(ele)
        end
        if largest == prc.call(ele)
            new_arr << ele
        end
    end
    new_arr[-1]
end


def my_group_by(arr, &prc)
    hash = Hash.new { |h, k| h[k] =[] }
    arr.each do |ele|
        ans = prc.call(ele)
        hash[ans] << ele
    end
    hash
end


def max_tie_breaker(arr, prc1, &block2)
    new_arr = []
    largest = 0
    tie = arr[0]
    tie_arr = []
    arr.each do |ele|
        if block2.call(ele) > largest
            largest = block2.call(ele)
        end
    end    
    arr.each do |ele|
        if largest == block2.call(ele)
            new_arr << ele
        end
        if new_arr.length == 1
            return new_arr[0]
        end
    end
    new_arr.each do |e|    
        if prc1.call(e) > tie
            tie = prc1.call(e)
        end
        if tie == prc1.call(e)
            tie_arr << e
        end
    end
    if tie_arr.length == 1
        return tie_arr[0]
    else 
        return tie_arr[0]
    end
end


def silly_syllables(sent)
    vowels = "aeiou"
    new_arr = []
    arr = sent.split(" ")
    arr.each_with_index do |word, i|
        if vowel_count(word) < 2
            new_arr << word
        else
            new_arr << remove_v(word)
        end
    end
    new_arr.join(" ")
end

def remove_v(word)
    vowels = "aeiou"
    new_word = ""
    word.each_char.with_index do |char, i|
        if vowels.include?(char)
            new_word = word[i..-1]
            i = new_word.length - 1
            while i >= 0
                if vowels.include?(new_word[i])
                    return new_word[0..i]
                end
                i -= 1
            end
        end
    end
end

def vowel_count(word)
    vowels = "aeiou"
    count = 0
    word.each_char do |char|
        if vowels.include?(char)
            count += 1
        end
    end
    count
end



