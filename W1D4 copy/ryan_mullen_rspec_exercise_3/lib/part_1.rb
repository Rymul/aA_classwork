def is_prime?(num)
    return false if num < 2
    (2...num).each do |n|
        return false if num % n == 0
    end
    true
end


def nth_prime(n)
    p_arr = []
    i = 2
    while p_arr.length < n
        p_arr.push(i) if is_prime?(i)
        i += 1
    end
    p_arr[-1]     
end


def prime_range(min, max)
    p_arr = []
    (min..max).each do |n|
        p_arr.push(n) if is_prime?(n)
    end
    p_arr
end




