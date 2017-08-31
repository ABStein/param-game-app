Rails.application.routes.draw do
  get '/name_game_example' => 'games#name_game'
  get '/guess_query' => 'games#guess_query'
  get '/guess_url/:wildcard' => 'games#guess_url'
end
