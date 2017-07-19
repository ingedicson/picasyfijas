require 'sinatra'
require './config'
require './lib/PicasFijas.rb'

get '/' do
	session["resultado"] = ""
	erb(:juego)
end

get '/juego' do
	session["resultado"] = ""
	erb(:juego)
end

post '/juego' do
	numerooculto = params["numerooculto"]
	numerojugada = params["numerojugada"]

	miPicasFijas=PicasFijas.new numerooculto
	session["resultado"] = miPicasFijas.validarNumero numerojugada
	erb(:juego)
end