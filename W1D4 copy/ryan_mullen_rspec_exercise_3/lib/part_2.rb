def element_count(arr)
    arr.tally
end


def char_replace!(str, hash)
    str.each_char.with_index do |ele, i|
        if hash.has_key?(ele)
            str[i] = hash[ele]
        end
    end
    str
end


def product_inject(nums)
    nums.inject(:*)
    # nums.inject {|acc, cur| acc * cur}
end



