class Player 

    attr_reader :token

    def initialize(token)
        @token = token
    end 
end 

# Player
#   #initialize
#     accepts a token to assign
#   #token
#     cannot be changed once assigned in initialize