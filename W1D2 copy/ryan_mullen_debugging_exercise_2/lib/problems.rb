# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

def largest_prime_factor(num)
    factors = []
    p_factors = []
    (2..num).reverse_each do |factor|
        if num % factor == 0 && is_prime?(factor)
            return factor
        end
    end
end

def is_prime?(n)
    (2...n).each do |fact|
        if n % fact == 0
            return false
        end
    end
    true
end

is_prime?(7)
is_prime?(15)


def unique_chars?(str)
    duplicate = []
    str.each_char do |char|
        if duplicate.include?(char)
            return false
        end
        duplicate << char
    end
    true
end


def dupe_indices(arr)
    hash = Hash.new { |h, k| h[k] = [] }
    arr.each_with_index do |ele, idx|
        hash[ele] << idx
    end
    hash.select { |ele, idx| idx.length > 1}
end



def ana_array(arr1, arr2)
    if arr1.length == arr2.length
        if arr1.tally == arr2.tally
            return true
        end
    end
    false


    # hash1 = Hash.new(0)
    # hash2 = Hash.new(0)
    

    # arr1.each do |e1|
    #    hash1[e1] += 1
    # end
    # arr2.each do |e2|
    #     hash2[e2] += 1
    # end
    
    # if hash1 != hash2
    #     return false
    # hash1.each do |k, v|
    #     if !(hash2[k] == v)
    #         return false
        #end
    # end
    
    # true
end




