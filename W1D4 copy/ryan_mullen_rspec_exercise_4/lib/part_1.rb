def my_reject(arr, &prc)
    arr - arr.select {|num| prc.call(num)}

    # new_arr = []
    # arr.each do |num|
    #     new_arr.push(num) if !prc.call(num)
    # end
    # new_arr
end


def my_one?(arr, &prc)
    count = 0
    arr.each do |num|
        count += 1 if prc.call(num)
    end
    count == 1
end


def hash_select(hash, &prc)
    new_hash = Hash.new(0)
    hash.each do |k, v|
        if prc.call(k, v)
            new_hash[k] = v
        end
    end
    new_hash
end


def xor_select(arr, prc1, prc2)
    new_arr = []
    arr.each do |ele|
        if !(prc1.call(ele) && prc2.call(ele)) && (prc1.call(ele) || prc2.call(ele))
            new_arr.push(ele)
        end
    end
    new_arr
end


def proc_count(i, arr)
    arr.count {|p| p.call(i)}
    
    # count = 0
    # arr.each do |p|
    #     if p.call(i)
    #         count += 1
    #     end
    # end
    # count
end


