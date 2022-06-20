# ----------------------------------------------
# PHASE 1
# ----------------------------------------------



def strange_sums(numbers)
    new_nums = []
    numbers.each_with_index do |n1,i1|
        numbers.each_with_index do |n2,i2|
            if i2 > i1 && n1 + n2 == 0
                new_nums.push([n1, n2])
            end
        end
    end
    new_nums.count
end

p "strange_sums"
p strange_sums([2, -3, 3, 4, -2])     # 2
p strange_sums([42, 3, -1, -42])      # 1
p strange_sums([-5, 5])               # 1
p strange_sums([19, 6, -3, -20])      # 0
p strange_sums([9])                   # 0
p "------------"



def pair_product(arr, num)
    new_arr = []
    arr.each_with_index do |n1, i1|
        arr.each_with_index do |n2,i2|
            if i2 > i1 && n1 * n2 == num
                new_arr.push([n1, n2])
            end
        end
    end
    new_arr.length > 0
end

p "pair_product"
p pair_product([4, 2, 5, 8], 16)    # true
p pair_product([8, 1, 9, 3], 8)     # true
p pair_product([3, 4], 12)          # true
p pair_product([3, 4, 6, 2, 5], 12) # true
p pair_product([4, 2, 5, 7], 16)    # false
p pair_product([8, 4, 9, 3], 8)     # false
p pair_product([3], 12)             # false
p "------------"



def rampant_repeats(str, hash)
    new_str = ""
    str.each_char do |char|
        if hash.has_key?(char)
            new_str += char * hash[char]
        else
            new_str += char
        end
    end
    new_str

end

p "rampant_repeats"
p rampant_repeats('taco', {'a'=>3, 'c'=>2})             # 'taaacco'
p rampant_repeats('feverish', {'e'=>2, 'f'=>4, 's'=>3}) # 'ffffeeveerisssh'
p rampant_repeats('misispi', {'s'=>2, 'p'=>2})          # 'mississppi'
p rampant_repeats('faarm', {'e'=>3, 'a'=>2})            # 'faaaarm'
p "------------"



def perfect_square(num)
    sr = Math.sqrt(num)
    sr_arr = sr.to_s.split(".")
    sr_arr[1].length <= 1

end

p "perfect_square"
p perfect_square(1)     # true
p perfect_square(4)     # true
p perfect_square(64)    # true
p perfect_square(100)   # true
p perfect_square(169)   # true
p perfect_square(2)     # false
p perfect_square(40)    # false
p perfect_square(32)    # false
p perfect_square(50)    # false
p "------------"



# ----------------------------------------------
# PHASE 2
# ----------------------------------------------



def anti_prime?(num)
    num_factors = factor_count(num)
    (1...num).all? {|number| num_factors > factor_count(number)}
    
    # (1..num).each do |i|
#         return false if factors(i).length > factors(num).length
#     end
#     true
end

def factor_count(n)
    (1..n).count {|fact| n % fact == 0}
end
# def factors(n)
#     facts = []
#     (1..n).each do |f|
#         if n % f == 0
#             facts.push(f)
#         end
#     end
#     facts
# end

p "anti_prime?"
p anti_prime?(24)   # true
p anti_prime?(36)   # true
p anti_prime?(48)   # true
p anti_prime?(360)  # true
p anti_prime?(1260) # true
p anti_prime?(27)   # false
p anti_prime?(5)    # false
p anti_prime?(100)  # false
p anti_prime?(136)  # false
p anti_prime?(1024) # false
p "------------"



def matrix_addition(m1, m2)

    h = m1.length
    w = m1[0].length
    new_matrix = Array.new(h) {Array.new(w)}
    (0...h).each do |f|
        (0...w).each do |s|
            new_matrix[f][s] = m1[f][s] + m2[f][s]
        end
    end
    new_matrix
end


matrix_a = [[2,5], [4,7]]
matrix_b = [[9,1], [3,0]]
matrix_c = [[-1,0], [0,-1]]
matrix_d = [[2, -5], [7, 10], [0, 1]]
matrix_e = [[0 , 0], [12, 4], [6,  3]]

p "matrix_addition"
p matrix_addition(matrix_a, matrix_b) # [[11, 6], [7, 7]]
p matrix_addition(matrix_a, matrix_c) # [[1, 5], [4, 6]]
p matrix_addition(matrix_b, matrix_c) # [[8, 1], [3, -1]]
p matrix_addition(matrix_d, matrix_e) # [[2, -5], [19, 14], [6, 4]]
p "------------"


def mutual_factors(*nums)
    nums.inject(factors(nums[0])) { |acc, num| acc & factors(num) } 
end

def factors(n)
    (1..n).select { |f| n % f == 0}
end

p "mutual_factors"
p mutual_factors(50, 30)            # [1, 2, 5, 10]
p mutual_factors(50, 30, 45, 105)   # [1, 5]
p mutual_factors(8, 4)              # [1, 2, 4]
p mutual_factors(8, 4, 10)          # [1, 2]
p mutual_factors(12, 24)            # [1, 2, 3, 4, 6, 12]
p mutual_factors(12, 24, 64)        # [1, 2, 4]
p mutual_factors(22, 44)            # [1, 2, 11, 22]
p mutual_factors(22, 44, 11)        # [1, 11]
p mutual_factors(7)                 # [1, 7]
p mutual_factors(7, 9)              # [1]
p "------------"



def tribonacci_number(n)
    trib = [1, 1, 2]
    return 1 if n == 1
    return 1 if n == 2
    return 2 if n == 3

    while trib.length < n
        fir = trib[-3]
        sec = trib[-2]
        thir = trib[-1]
        next_num = fir + sec + thir
        trib.push(next_num)
    end
    trib.last
end

p "tribonacci_number"
p tribonacci_number(1)  # 1
p tribonacci_number(2)  # 1
p tribonacci_number(3)  # 2
p tribonacci_number(4)  # 4
p tribonacci_number(5)  # 7
p tribonacci_number(6)  # 13
p tribonacci_number(7)  # 24
p tribonacci_number(11) # 274
p "------------"


# ----------------------------------------------
# PHASE 3
# ----------------------------------------------




def matrix_addition_reloaded(*ms)
    m = ms.first
    h = m.length
    w = m[0].length
    n_matrix = Array.new(h) { [0] * w }
    ms.inject(n_matrix) do |acc, curm|
        return nil if curm.length != h || curm[0].length != w
        matrix_addition(acc, curm)
    end
end


matrix_a = [[2,5], [4,7]]
matrix_b = [[9,1], [3,0]]
matrix_c = [[-1,0], [0,-1]]
matrix_d = [[2, -5], [7, 10], [0, 1]]
matrix_e = [[0 , 0], [12, 4], [6,  3]]

p "matrix_addition_reloaded"
p matrix_addition_reloaded(matrix_a, matrix_b)              # [[11, 6], [7, 7]]
p matrix_addition_reloaded(matrix_a, matrix_b, matrix_c)    # [[10, 6], [7, 6]]
p matrix_addition_reloaded(matrix_e)                        # [[0, 0], [12, 4], [6, 3]]
p matrix_addition_reloaded(matrix_d, matrix_e)              # [[2, -5], [19, 14], [6, 4]]
p matrix_addition_reloaded(matrix_a, matrix_b, matrix_e)    # nil
p matrix_addition_reloaded(matrix_d, matrix_e, matrix_c)    # nil
p "__________"



def squarocol?(two_arr)
    return true if two_arr.any? {|row| row.uniq.length == 1 }
    return true if two_arr.transpose.any? {|col| col.uniq.length == 1 }
    false
end

p "squarocol?"
p squarocol?([
    [:a, :x , :d],
    [:b, :x , :e],
    [:c, :x , :f],
]) # true

p squarocol?([
    [:x, :y, :x],
    [:x, :z, :x],
    [:o, :o, :o],
]) # true

p squarocol?([
    [:o, :x , :o],
    [:x, :o , :x],
    [:o, :x , :o],
]) # false

p squarocol?([
    [1, 2, 2, 7],
    [1, 6, 6, 7],
    [0, 5, 2, 7],
    [4, 2, 9, 7],
]) # true

p squarocol?([
    [1, 2, 2, 7],
    [1, 6, 6, 0],
    [0, 5, 2, 7],
    [4, 2, 9, 7],
]) # false
p "__________"



# Write a method squaragonal? that accepts 2-dimensional array as an argument. 
# The method should return a boolean indicating whether or not the array contains 
# all of the same element across either of its diagonals. You may assume that the 
# 2-dimensional array has "square" dimensions, meaning it's height is the same as it's width.

# def squaragonal?(grid)
#     grid.diagonal?        

#             # sub[x][][]
#             # sub[][x][]
#             # sub[][][x]

# end


# p "squaragonal?"
# p squaragonal?([
#     [:x, :y, :o],
#     [:x, :x, :x],
#     [:o, :o, :x],
# ]) # true

# p squaragonal?([
#     [:x, :y, :o],
#     [:x, :o, :x],
#     [:o, :o, :x],
# ]) # true

# p squaragonal?([
#     [1, 2, 2, 7],
#     [1, 1, 6, 7],
#     [0, 5, 1, 7],
#     [4, 2, 9, 1],
# ]) # true

# p squaragonal?([
#     [1, 2, 2, 5],
#     [1, 6, 5, 0],
#     [0, 2, 2, 7],
#     [5, 2, 9, 7],
# ]) # false
# p "__________"



# # Pascal's triangle is a 2-dimensional array with the shape of a pyramid. 
# # The top of the pyramid is the number 1. To generate further levels of the pyramid, 
# # every element is the sum of the element above and to the left with the element above and to the right. 
# # Nonexisting elements are treated as 0 when calculating the sum. 
# # For example, here are the first 5 levels of Pascal's triangle:

# #       1
# #      1 1
# #     1 2 1
# #    1 3 3 1
# #   1 4 6 4 1

# # Write a method pascals_triangle that accepts a positive number, n, as an argument 
# # and returns a 2-dimensional array representing the first n levels of pascal's triangle.

# def pascals_triangle(n)

# end

# "pascals_triangle"
# p pascals_triangle(5)
# # [
# #     [1],
# #     [1, 1],
# #     [1, 2, 1],
# #     [1, 3, 3, 1],
# #     [1, 4, 6, 4, 1]
# # ]

# p pascals_triangle(7)
# # [
# #     [1],
# #     [1, 1],
# #     [1, 2, 1],
# #     [1, 3, 3, 1],
# #     [1, 4, 6, 4, 1],
# #     [1, 5, 10, 10, 5, 1],
# #     [1, 6, 15, 20, 15, 6, 1]
# # ]
# p "__________"



# # A "Mersenne prime" is a prime number that is one less than a power of 2. 
# # This means that it is a prime number with the form 2^x - 1, where x is some exponent.
# # 3 is a Mersenne prime because it is prime and 3 = 2^2 - 1
# # 7 is a Mersenne prime because it is prime and 7 = 2^3 - 1
# # 11 is not a Mersenne prime because although it is prime, it does not have the form 2^x - 1
# # The first three Mersenne primes are 3, 7, and 31. 
# # Write a method mersenne_prime that accepts a number, n, as an argument and returns the n-th Mersenne prime.


# "mersenne_prime"
# p mersenne_prime(1) # 3
# p mersenne_prime(2) # 7
# p mersenne_prime(3) # 31
# p mersenne_prime(4) # 127
# p mersenne_prime(6) # 131071
# p "__________"


# A triangular number is a number of the form (i * (i + 1)) / 2 where i is some positive integer. 
# Substituting i with increasing integers gives the triangular number sequence. 
# The first five numbers of the triangular number sequence are 1, 3, 6, 10, 15. 
# We can encode a word as a number by taking the sum of its letters based on 
# their position in the alphabet. For example, we can encode "cat" as 24 
# because c is the 3rd of the alphabet, a is the 1st, and t is the 20th:

# 3 + 1 + 20 = 24

# Write a method triangular_word? that accepts a word as an argument 
# and returns a boolean indicating whether or not that word's number encoding is a triangular number. 
# You can assume that the argument contains lowercase letters.


# "triangular_word?"
# p triangular_word?('abc')       # true
# p triangular_word?('ba')        # true
# p triangular_word?('lovely')    # true
# p triangular_word?('question')  # true
# p triangular_word?('aa')        # false
# p triangular_word?('cd')        # false
# p triangular_word?('cat')       # false
# p triangular_word?('sink')      # false
# p "__________"


# Write a method consecutive_collapse that accepts an array of numbers as an argument. 
# The method should return a new array that results from continuously removing consecutive 
# numbers that are adjacent in the array. If multiple adjacent pairs are consecutive numbers, 
# remove the leftmost pair first. For example:
# [3, 4, 1] -> [1]
# because 3 and 4 are consecutive and adjacent numbers, so we can remove them
# [1, 4, 3, 7] -> [1, 7]
# because 4 and 3 are consecutive and adjacent numbers, so we can remove them
# [3, 4, 5] -> [5]
# because 4 and 3 are consecutive and adjacent numbers, we don't target 4 and 5 since we 
# should prefer to remove the leftmost pair
# We can apply this rule repeatedly until we cannot collapse the array any further:

# # example 1
# [9, 8, 4, 5, 6] -> [4, 5, 6] -> [6]

# # example 2
# [3, 5, 6, 2, 1] -> [3, 2, 1] -> [1]


# "consecutive_collapse"
# # p consecutive_collapse([3, 4, 1])                     # [1]
# # p consecutive_collapse([1, 4, 3, 7])                  # [1, 7]
# # p consecutive_collapse([9, 8, 2])                     # [2]
# # p consecutive_collapse([9, 8, 4, 5, 6])               # [6]
# # p consecutive_collapse([1, 9, 8, 6, 4, 5, 7, 9, 2])   # [1, 9, 2]
# # p consecutive_collapse([3, 5, 6, 2, 1])               # [1]
# # p consecutive_collapse([5, 7, 9, 9])                  # [5, 7, 9, 9]
# # p consecutive_collapse([13, 11, 12, 12])              # []
# p "__________"



# Write a method pretentious_primes that takes accepts an 
# array and a number, n, as arguments. The method should return a new array where 
# each element of the original array is replaced according to the following rules:

# when the number argument is positive, replace an element with the n-th nearest prime number 
# that is greater than the element
# when the number argument is negative, replace an element with the n-th nearest prime number 
# that is less than the element
# For example:

# if element = 7 and n = 1, then the new element should be 11 because 11 is 
# the nearest prime greater than 7
# if the element = 7 and n = 2, then the new element should be 13 because 13 is
#  the 2nd nearest prime greater than 7
# if the element = 7 and n = -1, then the new element should be 5 because 5 is 
# the nearest prime less than 7
# if the element = 7 and n = -2, then the new element should be 3 because 3 is 
# the 2nd nearest prime less than 7
# Note that we will always be able to find a prime that is greater than a given 
# number because there are an infinite number of primes (this is given by Euclid's Theorem). 
# However, we may be unable to find a prime that is smaller than a given number, because 2 
# is the smallest prime. When a smaller prime cannot be calculated, replace the element with nil.


# "pretentious_primes"
# p pretentious_primes([4, 15, 7], 1)           # [5, 17, 11]
# p pretentious_primes([4, 15, 7], 2)           # [7, 19, 13]
# p pretentious_primes([12, 11, 14, 15, 7], 1)  # [13, 13, 17, 17, 11]
# p pretentious_primes([12, 11, 14, 15, 7], 3)  # [19, 19, 23, 23, 17]
# p pretentious_primes([4, 15, 7], -1)          # [3, 13, 5]
# p pretentious_primes([4, 15, 7], -2)          # [2, 11, 3]
# p pretentious_primes([2, 11, 21], -1)         # [nil, 7, 19]
# p pretentious_primes([32, 5, 11], -3)         # [23, nil, 3]
# p pretentious_primes([32, 5, 11], -4)         # [19, nil, 2]
# p pretentious_primes([32, 5, 11], -5)         # [17, nil, nil]
# p "__________"
