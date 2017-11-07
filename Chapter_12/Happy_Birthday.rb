puts 'What year were you born?'
year = gets.chomp.to_i

puts 'What month (1 - 12)?'
month = gets.chomp.to_i

puts 'What day?'
day = gets.chomp.to_i

birthday = Time.local(year, month, day)

age = (Time.new - birthday)/(60 * 60 * 24 * 365)

puts 'SPANK!' * age
