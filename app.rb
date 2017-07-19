require 'sinatra'
require './config'

get '/' do

end

get '/juego' do
	erb(:juego)
end


post '/resultado' do
	"0 picas 0 fijas"
end