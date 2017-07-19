require './lib/PicasFijas.rb'

describe PicasFijas do
	it "Tiene 0 picas y 0 fijas" do
		miPicasFijas=PicasFijas.new 
		result = miPicasFijas.validarNumero "0000","1111"
		expect(result).to eq "0 picas 0 fijas"
	end

	it "Tiene 0 picas y 1 fijas" do
		miPicasFijas=PicasFijas.new 
		result = miPicasFijas.validarNumero "1234","1567"
		expect(result).to eq "0 picas 1 fijas"
	end

	it "Tiene 1 picas y 0 fijas" do
		miPicasFijas=PicasFijas.new 
		result = miPicasFijas.validarNumero "1234","5167"
		expect(result).to eq "1 picas 0 fijas"
	end

	it "Tiene 4 picas y 0 fijas" do
		miPicasFijas=PicasFijas.new 
		result = miPicasFijas.validarNumero "1234","4321"
		expect(result).to eq "4 picas 0 fijas"
	end	

	it "Ver historial de 1 jugada" do
		miPicasFijas=PicasFijas.new 
		result = miPicasFijas.historial
		expect(result).to eq "5678 - 0 picas, 0 fijas"
	end	

end