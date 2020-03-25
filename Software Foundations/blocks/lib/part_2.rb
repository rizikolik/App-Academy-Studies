def all_words_capitalized?(array)
array.all?{|ele| ele==ele.capitalize}
end

def no_valid_url?(array)
endings=['.com', '.net', '.io', '.org']
array.none? do |url|
endings.any?{|ele| url.end_with?(ele)}
end
end

def any_passing_students?(array)
array.any? do |student|
    total=student[:grades].sum/(student[:grades].length)
    total >=75

end
end