words = ['dog', 'cat', 'rat', 'mouse', 'rabbit', 'snake', 'rat']

puts words.sort 

unsorted = words

sorted = []

while unsorted.length > 0

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
end

puts 
puts sorted 


