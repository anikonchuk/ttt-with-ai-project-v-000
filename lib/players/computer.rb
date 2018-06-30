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
    def winning_move 
      win_combo = WIN_COMBINATIONS.find do |combo|
        (@board.cells[combo[0]] == @token && @board.cells[combo[1]] == @token && @board.cells[combo[2]] == " ") || (@board.cells[combo[0]] == @token && @board.cells[combo[2]] == @token && @board.cells[combo[1]] == " ") || (@board.cells[combo[1]] == @token && @board.cells[combo[2]] == @token && @board.cells[combo[0]] == " ")
      end
      if win_combo != nil
        win_cell = win_combo.find do |spot|
          @board.cells[spot] == " "
        end
      end
    end
    

    #2- Find a blocking move-- need a way to identify other token first 
    def other_token
      if @token == "X"
        "O"
      else
        "X"
      end
    end

    def blocking_move
      block_combo = WIN_COMBINATIONS.find do |combo|
        (@board.cells[combo[0]] == other_token && @board.cells[combo[1]] == other_token && @board.cells[combo[2]] == " ") || (@board.cells[combo[0]] == other_token && @board.cells[combo[2]] == other_token && @board.cells[combo[1]] == " ") || (@board.cells[combo[1]] == other_token && @board.cells[combo[2]] == other_token && @board.cells[combo[0]] == " ")
      end
      if block_combo != nil
        block_cell = block_combo.find do |spot|
          @board.cells[spot] == " "
        end
      end
    end      
    
    #3- Take the center if it's empty
    def center_empty?
      @board.cells[4] == " "
    end

    #4- Find the opposite corner


    #5- Find any open corner


  end

end
