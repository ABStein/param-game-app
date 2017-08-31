class UrlParamsController < ApplicationController
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
end
 
