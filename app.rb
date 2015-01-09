require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/wordcount.rb')

get('/')do
erb(:form)
end

get('/wordcount') do
  @sentence = params.fetch('sentence')
  @word = params.fetch('word')
  @results = @sentence.wordcount(@word)
  erb(:wordcount)
end
