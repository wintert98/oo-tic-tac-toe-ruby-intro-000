class TicTacToe
  def initialize
    @board = board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end
  
    WIN_COMBINATIONS = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [2, 4, 6]
      ]
  
  
  def display_board
    print " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    print "-----------"
    print " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    print "-----------"
    print " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def input_to_index(user_input)
    index = user_input.to_i - 1
  end
  
  def move(index, value)
    @board[index] = value
  end
  
  def position_taken?(index)
    if @board[index] == " " || @board[index] == "" || @board[index] == nil
      return false 
    else
      return true
    end
  end
  
  def valid_move?(index)
    if index.between?(0,8) && !position_taken?(index)
      return true
    else 
      return false
    end
  end
  
  def turn_count
    counter = 0
    @board.each do |index| 
      if index == "X" || index == "O"
        counter += 1
      end
    end
    return counter
  end
  
  def current_player
    if turn_count % 2 == 0 
      return "X"
    else 
      return "O"
    end
  end
  
  def turn
    input = gets.strip
    index = input_to_index(input)
  end
end