class Orange_Tree
    
    def initialize 
        @height  = 0
        @oranges = 0
        @age     = 0
        
        puts "You have a brand new orange tree."
    end
    
    def tree_height
        return @height
    end
    
    def count_the_oranges
        return @oranges
    end
    
    
    
    def one_year_passes
        @oranges = 0
        puts "Your oranges have fallen off the tree"
        @age = @age + 1
        puts "Your orange tree is now #{@age} years old."
        if @age >= 20
            puts "Your orange tree has sadly died.....gone but not forgotten."
            exit
        elsif @age <= 2
            puts "Your tree is too young to grow fruit."
        else
            @oranges = @age * 2
            puts "There are #{@oranges} oranges on your tree."
        end 
        
        
        @height = @height + 15
        puts "Your orange tree has grown 15cm"
        puts "Your tree is now #{@height}cms tall."
        
        
        
        
     
        
        
    end
        def pick_an_orange
            if @oranges == 0
                puts "Your tree doesn't have any fruit."
            else
                @oranges = @oranges - 1
                puts "You pick an orange......it's delicious."
            end
        end
end

        
tree = Orange_Tree.new

tree.count_the_oranges
tree.pick_an_orange
tree.one_year_passes
puts


tree.count_the_oranges
tree.pick_an_orange
tree.tree_height
tree.one_year_passes
puts
tree.one_year_passes
puts
tree.count_the_oranges
puts
tree.one_year_passes
tree.pick_an_orange

    