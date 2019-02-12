class Board
  def initialize
    @positions = {}
  end

  def make_move(position, marker)
    if @positions.key?(marker)
      @positions[marker] = position + current_position(marker)
    else
      @positions[marker] = position
    end
  end

  def current_position(marker)
    @positions[marker]
  end
end
