# Helper Method
def position_taken?(board, location)
  !(board[location].nil? || board[location] == " ")
end

# Define your WIN_COMBINATIONS constant
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

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    if win_combination.all? {|i| board[i] == "X"} ||  win = win_combination.all? {|i| board[i] == "O"}
      return win_combination
    end
  end
  return false
end

def full?(board)
  board.all? do |character|
    character != " "
  end
end

def draw?(board)
  if won?(board) || !full?(board)
    return false
  else 
    return true
  end
end

def over?(board)
  if won?(board) || full?(board)
    return true
  else 
    false
  end
end

def winner(board)
  if won?(board)
    board[won?(board)[0]]
  end
end

