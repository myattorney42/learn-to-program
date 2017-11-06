require 'yaml'
test_array = ['Give Quiche A Chance', 'Mutants Out!', 'Chameleonic Life-Forms, No Thanks!']

test_string = test_array.to_yaml

filename = 'RimmerTShirts.txt'

File.open filename, 'w' do |f|
    f.write test_string
end

read_string = File.read filename

read_array = YAML::load read_string

puts(read_string == test_string)
puts(read_array == test_array)

test_array2 = [['hello', 'goodbye', 'red', 'blue'], [true, false], [42, '42', 'whale', 'shark']]

test_string2 = test_array2.to_yaml

File.open filename, 'w' do |f|
    f.write test_string2
end

read_string2 = File.read filename
read_array2 = YAML::load read_string2

puts read_array2

