def sort words_array
    recursive_sort words_array, []
end

def recursive_sort unsorted, sorted
    if unsorted.length == 0
        return sorted
    end
    
new_unsorted = []

smallest = unsorted.pop

unsorted.each do |test|
    if test < smallest
        new_unsorted.push smallest
        smallest = test 
    else
        new_unsorted.push test
    end
end

sorted.push smallest
unsorted = new_unsorted 

recursive_sort unsorted, sorted
end

puts sort(['dog', 'cat', 'rat', 'mouse', 'rabbit', 'snake', 'rat'])
