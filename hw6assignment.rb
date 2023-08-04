require_relative './hw6provided'

class MyPiece < Piece
  # The constant All_My_Pieces should be declared here
end

class MyBoard < Board
  # your enhancements here
end

class MyTetris < Tetris
  # your enhancements here
  def key_bindings
    super
    @root.bind('u', proc {@board.rotate_clockwise; @board.rotate_clockwise}) # rotate 180s
  end
end
