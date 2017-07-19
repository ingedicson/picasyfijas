require 'sinatra'
require './config'
require './lib/PicasFijas.rb'

get '/' do
	session["resultado"] = ""
	session["historial"] = ""
  	session["game"]=PicasFijas.new	
	erb(:juego)
end

get '/juego' do
	session["resultado"] = ""
	session["historial"] = ""
	erb(:juego)
end

post '/juego' do
	numerooculto = params["numerooculto"]
	numerojugada = params["numerojugada"]
  	
	session["resultado"] = session["game"].validarNumero numerooculto, numerojugada
	session["historial"] = session["game"].historial
	erb(:juego)
end