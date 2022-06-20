def all_words_capitalized?(words)
    words.all? { |word| word[0] == word[0].upcase && word[1..-1] == word[1..-1].downcase}
end


def no_valid_url?(urls)
    urls.none? do |url| 
        return false if url.end_with?(".com", ".net", ".io", ".org")
    end
end

def any_passing_students?(students)
    students.any? do |student|
        gpa = student[:grades].sum / student[:grades].length
        gpa > 75
    end    
end









