require 'pry'

module Players 
    class Human < Player

    #   #move
    #   asks the user for input and returns it


        def move(board)
            puts "Select a spot"
            gets.strip
        end 
    end 
end 