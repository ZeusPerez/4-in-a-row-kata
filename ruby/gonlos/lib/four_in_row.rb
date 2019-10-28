# frozen_string_literal: true

class FourInRow
  class << self
    def result(board)
      winner(board)
    end

    def winner(board)
      board.each { |r| puts r.inspect }
      puts '.'
      h = horizontal_winner(board) ||
          v = vertical_winner(board) ||
              d1 = diagonal_l_r(board) ||
                   d2 = diagonal_r_l(board)
      return h if h
      return v if v
      return d1 if d1
      return d2 if d2

      nil
    end

    def horizontal_winner(board)
      # [Red,Blue,Winner]
      (0..board.size - 1).each do |row|
        (0..row.size - 5).each do |cell|
          return :blue if board[row][cell..cell + 3].uniq == ['B']
        end
      end
      false
    end

    def vertical_winner(board)
      horizontal_winner(board.transpose)
    end

    def diagonal_l_r(_board)
      false
    end

    def diagonal_r_l(_board)
      false
    end
  end
end
