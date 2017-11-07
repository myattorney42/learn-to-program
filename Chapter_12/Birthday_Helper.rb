def birthday_helper input
birthdays = []
names_list = []
File.read('birth_dates.txt').each_line do |line|
    line = line.chomp
    split_lines = line.split(',')
    names_list.push(split_lines[0])
    
    birth_dates = split_lines[1] + ',' + split_lines[2]
    birthdays.push(birth_dates)
    end
 

chris = Hash[names_list.zip(birthdays)]

puts "Christopher's birthday is #{chris[input]}"
puts chris

end



puts "Which Chris' birthday would you like to know?"
input = gets.chomp

puts birthday_helper(input)

