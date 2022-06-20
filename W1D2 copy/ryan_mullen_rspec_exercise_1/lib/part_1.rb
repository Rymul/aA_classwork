def average(num_1, num_2)
    (num_1 + num_2) / 2.0
end

def average_array(arr)
    (arr.sum * 1.0) / arr.length
end

def repeat(str, num)
    str * num
end

def yell(str)
    str.upcase + "!"
end

def alternating_case(str)
    sent = str.split(" ")
    new_sent = []
    i = 0
    while i < sent.length
        new_sent << sent[i].upcase && new_sent << sent[i + 1].downcase
        i += 2
    end
    new_sent.join(" ")  
end




