require 'spec_helper'

describe FourInRow do
  let(:board) { CSV.read('spec/board.csv') }

  it 'returns the result of a given board' do
    expect(FourInRow.result(board)).to eq :blue
  end
end
