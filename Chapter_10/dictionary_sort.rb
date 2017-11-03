def dictionary_sort array
    recursive_sort array, []
end

def recursive_sort unsorted, sorted
    if unsorted.length == 0
        return sorted
    end
    
    
    smallest = unsorted.pop
    new_unsorted = []
    
    unsorted.each do |word|
        if word.downcase < smallest.downcase
            new_unsorted.push smallest
            smallest = word
        else
            new_unsorted.push word
        end
    end
        
    sorted.push smallest
    
    recursive_sort new_unsorted, sorted
    
end

puts(dictionary_sort(['hello', 'Goodbye', 'Dog', 'cat', 'rat', 'dog']))