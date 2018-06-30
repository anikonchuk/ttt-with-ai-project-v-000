module Players
  class Computer < Player

    attr_accessor :board

    WIN_COMBINATIONS = [
      [0,1,2],
      [3,4,5],
      [6,7,8],
      [0,3,6],
      [1,4,7],
      [2,5,8],
      [0,4,8],
      [2,4,6]
      ]

    def move(board)
      @board = board

    end

    #1- Find a winning move


    #2- Find a blocking move



    #3- Take the center if it's empty


    #4- Find the opposite corner


    #5- Find any open corner


  end

end
