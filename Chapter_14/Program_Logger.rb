def log block_description, &block
    puts "Beginning #{block_description}..."
    output = block.call
    puts "...#{block_description} finished, returning:"
    puts output 
end

log "Outer block" do 
    log "Some little block" do 
        10*10
    end
end 

log "Yet another block" do
    puts "I've almost finished this bloody book"
end

 
    