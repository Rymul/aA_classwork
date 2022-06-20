def proper_factors(n)
    facts = []
    (1...n).each do |i|
        facts.push(i) if n % i == 0 
    end
    facts
end

def aliquot_sum(n)
    proper_factors(n).sum
end


def perfect_number?(n)
    n == aliquot_sum(n)                
end

def ideal_numbers(n)
    perf_arr = []
    i = 1
    while perf_arr.length < n
        if perfect_number?(i)
            perf_arr.push(i)
        end
        i += 1
    end
    perf_arr
end
