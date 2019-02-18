require_relative '../lib/board'

describe Board do
  it 'gives correct position when making a single move' do
    board = Board.new

    board.make_move(0, :x)
    board.make_move(1, :o)

    expect(board.current_position(:x)).to eq 0
    expect(board.current_position(:o)).to eq 1
  end

  it 'gives correct position when making multiple moves' do
    board = Board.new

    board.make_move(1, :x)
    board.make_move(5, :x)

    expect(board.current_position(:x)).to eq 6
  end
end
