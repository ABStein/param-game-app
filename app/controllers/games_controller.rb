class GamesController < ApplicationController
  def name_game
    @name = params[:my_name]
  end

  def guess_query
    winning_number = 42
    @guess = params[:number].to_i

    if @guess > winning_number
      @message = "too high."
    elsif @guess < winning_number
      @message = "too low."
    else
      @message = "a winner!!!" 
    end
  end
end

  def guess_url
    winnning_number = 42
    @guess = params[:number].to_i

    if @guess > winnning_number
      @message = 'too high'
    elsif @guess < winnning_number
      @message = 'too low'
    else 
      @message = 'a winner!'
    end
  end
