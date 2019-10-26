# frozen_string_literal: true

require 'pry'

class FourInRow
  class << self
    def result(board)
      new(board).result
    end
  end

  EMPTY = 'X'
  BLUE  = 'B'
  RED   = 'R'

  def initialize(board)
    @board = board
  end

  def result
    winner = check_winner
    return say_winner(winner) if winner

    winner = check_winner(@board.transpose)
    return say_winner(winner) if winner
  end

  private

  def say_winner(winner)
    case winner
    when BLUE
      :blue
    when RED
      :red
    else
      raise 'OMG'
    end
  end

  ## check_winner_horizontal can return either
  # :blue, :red or nil if no winner is detected
  def check_winner(board = @board)
    current_player = nil
    board.each_with_index do |row, _index|
      score = 0 # current player will be the winner if score >= 4
      row.each_with_index do |cell, _index|
        if cell == EMPTY
          # Previous string was broken
          score = 0
          current_player = nil
        elsif current_player && cell == current_player
          # Cell occupied for the same player of the previous one
          score += 1
        elsif score >= 4
          # We found a winner
          return current_player
        else
          current_player = cell
          score = 1
        end
      end

      return current_player if score >= 4
    end

    nil
  end
end
