require 'spec_helper'

describe FourInRow do
  context 'horizontal winner' do
    let(:board) { CSV.read('spec/board.csv') }

    it 'returns the result of a given board' do
      expect(FourInRow.new.winner(board)).to eq :blue
    end
  end

  context 'vertical winner' do
    let(:board) { CSV.read('spec/vertical_board.csv') }

    it 'returns the result of a given board' do
      expect(FourInRow.new.winner(board)).to eq :red
    end
  end
end
