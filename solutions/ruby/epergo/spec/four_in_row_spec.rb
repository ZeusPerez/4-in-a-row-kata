require 'spec_helper'

describe FourInRow do
  context 'vertical' do
    let(:board) { CSV.read('spec/board_vertical.csv') }

    it 'returns the result of a given board' do
      expect(FourInRow.result(board)).to eq :blue
    end
  end

  context 'horizontal' do
    let(:board) { CSV.read('spec/board_horizontal.csv') }

    it 'returns the result of a given board' do
      expect(FourInRow.result(board)).to eq :red
    end
  end

  context 'diagonal' do
    let(:board) { CSV.read('spec/board_diagonal.csv') }

    xit 'returns the result of a given board' do
      expect(FourInRow.result(board)).to eq :blue
    end
  end
end
