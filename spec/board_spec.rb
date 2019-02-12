require_relative '../lib/board'

describe Board do
  it 'moves 1 space when give 1' do
    board = Board.new
    expect(board.make_move(0, :x)).to eq 0
  end
end
