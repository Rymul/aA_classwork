
def reverser(str, &prc)
    new_str = prc.call(str.reverse)
end


def word_changer(str, &prc)
    arr = str.split(" ")
    n_arr = []
    arr.each do |word|
        n_arr << prc.call(word)
    end
    n_arr.join(" ")
end


def greater_proc_value(num, proc_1, proc_2)
    p1 = proc_1.call(num)
    p2 = proc_2.call(num)
    return p1 if p1 > p2
    return p2 if p1 < p2
end


def and_selector(arr, proc_1, proc_2)
    new_arr = []
    arr.each do |num|
        p1 = proc_1.call(num)
        p2 = proc_2.call(num)
        new_arr << num if p1 && p2
    end
    new_arr
end


def alternating_mapper(arr, proc_1, proc_2)
    new_arr = []
    arr.each_with_index do |ele, i|
        if i % 2 == 0
           new_arr << proc_1.call(ele)
        else 
            new_arr << proc_2.call(ele)
        end
    end
    new_arr
end

