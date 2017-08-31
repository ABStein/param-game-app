class GamesController < ApplicationController
  def name_game 
    @name = params[:your_name_is].upcase
    @name_letter = @name.chr == "A"      #ask josh how to include an if statement
    @number_game = params[:guess_number]
    @number_answer = params[36]
  end

  def guess_query
    winnning_number = 42
    @guess = params[:wildcard].to_s

    if @guess > winnning_number
      @message = 'too high'
    elsif @guess < winnning_number
      @message = 'too low'
    else 
      @message = 'a winner!'
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
end
