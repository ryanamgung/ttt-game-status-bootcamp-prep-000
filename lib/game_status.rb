# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [0,3,6],
  [1,4,7],
  [2,5,8]
]

def won?(board)
  board.each do |combination|
    combination.each do |win|
      winnerX = 0
      winnerO = 0
      count = 0
      while count < 3
        if(win == "X")
          winnerX += 1
        elsif(win == "O")
          winnerO += 1
        end
        count += 1
      end

      if winnerX == 3|| winnerO == 3
        return combination.inspect
      end
  end
end
