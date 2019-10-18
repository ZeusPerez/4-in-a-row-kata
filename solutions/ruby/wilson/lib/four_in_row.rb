class FourInRow
  attr_accessor :totals
  LIMIT_FOR_WIN = 4

  def initialize
    @totals = {
        'B' => 0,
        'R' =>  0
    }
  end

  def winner(board)
    winner_result = find_winner(board)
    return winner_result if winner_result

    find_winner(board.transpose)
  end

  def find_winner(board)
    current_player = nil
    board.each do |rows|
      rows.each do |val|
        reset_totals if val == 'X' || current_player != val
        increment_total(val)
        return winner_from_letter(val) if current_player != 'X' && totals[val] == LIMIT_FOR_WIN

        current_player = val
      end
      reset_totals
    end
    nil
  end

  def reset_totals
    totals['B'] = 0
    totals['R'] = 0
  end

  def increment_total(val)
    totals[val] += 1 if val != 'X' && val
  end

  def winner_from_letter(letter)
    {
        'B' => :blue,
        'R' => :red
    }[letter]
  end
end
