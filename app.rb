require 'sinatra'
require './config'
require './lib/PicasFijas.rb'

get '/' do
	erb(:juego)
end

get '/juego' do
	erb(:juego)
end


post '/juego' do
	numerooculto = params["numerooculto"]
	numerojugada = params["numerojugada"]

	miPicasFijas=PicasFijas.new numerooculto
	session["resultado"] = miPicasFijas.validarNumero numerojugada
	erb(:resultado)
end