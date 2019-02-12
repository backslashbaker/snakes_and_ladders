require_relative "../lib/board"

describe Board do
  it "starts at position 0" do
    board = Board.new

    board.make_move(0, :x)

    expect(board.current_position(:x)).to eq 0
  end

  it "moves 1 when given 1" do
    board = Board.new

    board.make_move(1, :x)

    expect(board.current_position(:x)).to eq 1
  end

  it "gives correct position when making multiple moves" do
    board = Board.new

    board.make_move(1, :x)
    board.make_move(5, :x)

    expect(board.current_position(:x)).to eq 6
  end
end
