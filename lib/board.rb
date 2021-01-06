class Board 

    #   #cells
    #   has an attribute to store the cells of the board

    attr_accessor :cells

    #   #initialize
    #   sets the cells of the board to a 9 element array of " "


    def initialize 
        reset!
    end 


    #   #reset!
    #   can reset the state of the cells in the board
    #   sets the cells of the board to a 9 element array of " "
  
    
    def reset!
        @cells = Array.new(9, " ")
    end 

    #   #display
    #   prints the board

    def display 
        puts " #{cells[0]} | #{cells[1]} | #{cells[2]} "
        puts "-----------"
        puts " #{cells[3]} | #{cells[4]} | #{cells[5]} "
        puts "-----------"
        puts " #{cells[6]} | #{cells[7]} | #{cells[8]} "
    end 

    #   #position
    #   takes in user input and returns the value of the board cell

    def position(input)
        cells[input.to_i - 1]
    end 


    #   #full?
    #   returns true for a full board
    #   returns false for an in-progress game

    def full? 
        cells.all? {|token| token == "X" || token == "O"}
    end 

    #   #turn_count
    #   returns the amount of turns based on cell value

    def turn_count
        cells.count {|token| token == "X" || token == "O"}

    end 

    #  #taken?
    #  returns true if the position is X or O
    #  returns false if the position is empty or blank

    def taken?(input)
        position(input) == "X" || position(input) == "O"   
    end 

    def valid_move?(input)
        input.to_i.between?(1, 9) && !taken?(input)
    end 

    #  #update
    #  updates the cells in the board with the player token according to the input

    def update(input, player)
        cells[input.to_i - 1] = player.token #either X or O
    end 



end 