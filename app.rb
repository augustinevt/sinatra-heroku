require('sinatra')
require('sinatra/reloader')
require('./lib/title_case')
require('./lib/scrabble_score')
require('./lib/find_and_replace')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/title') do
  @title = params.fetch('title').title_case()
  erb(:title)
end

get('/scrabble') do
  @scrabble_score = params.fetch('scrabble-score').scrabble_score()
  erb(:scrabble)
end

get('/replace') do
  @sentence = params.fetch('sentence').find_and_replace(params.fetch('old-word'), params.fetch('new-word'))
  erb(:replace)
end
