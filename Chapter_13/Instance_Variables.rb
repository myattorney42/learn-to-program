class Die
    def initialize
        roll
    end
    
    def cheat
        puts 'Which number would you like to choose?'
        @number_showing = gets.chomp 
        if @number_showing.to_i > 6
            puts "Oi, cheater! Pick a number, 1-6!"
        end
    end
        
    

    def roll
        @number_showing = 1 + rand(6)
    end

    def showing
        @number_showing
    end
end




die = Die.new
die.cheat
puts
puts die.showing
puts 
puts die.showing
die.roll
puts die.showing
puts die.roll
puts die.showing

