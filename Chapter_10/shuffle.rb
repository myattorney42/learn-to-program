def shuffle original_array
    new_array = []                                       #the array that un-shuffled elements will pass to
    until original_array.length == 0                     #what breaks the loop
    
    random_index = rand(original_array.length)           #creating the random index that will be compared to original_array index
    
    original_index = 0                                   #starting point in the array to compare against random index
    
    jumbled_array = []                                   #the array that the randomized elements will be passed to
    
    original_array.each do |element|                     #starting iteration over original array to compare index against random index
        if original_index == random_index                
            new_array.push element                       #if the same then push the element to the spare array to be iterated again later
        else
            jumbled_array.push element                   #if they have different indeces then push to the randomized, final array
        end
        
        original_index = original_index + 1              #important to update the original index for when the loop starts again
    end
    
    original_array = jumbled_array                       #replace original with new randomized array
end

new_array

end

puts shuffle([1,2,3,4,5,6,7,8,9])
            
            
    
    