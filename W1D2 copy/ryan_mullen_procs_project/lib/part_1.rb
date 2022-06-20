def my_map(arr, &prc)
    new_arr = []
    arr.each do |ele|
       new_arr << prc.call(ele)
    end
    new_arr
end


def my_select(arr, &prc)
    new_arr = []
    arr.each do |num|
        ans = prc.call(num)
        new_arr << num if ans
    end
    new_arr
end


def my_count(arr, &prc)
    count = 0
    arr.each do |ele|
        product = prc.call(ele)
        count += 1 if product
    end
    count
end


def my_any?(arr, &prc)
    arr.each do |e|
        any = prc.call(e)
        return true if any == true
    end
    false
end


def my_all?(arr, &prc)
    arr.each do |i|
        all = prc.call(i)
        return false if all == false
    end
    true
end


def my_none?(arr, &prc)
    arr.each do |el|
        none = prc.call(el)
        return false if none == true
    end
    true
end




