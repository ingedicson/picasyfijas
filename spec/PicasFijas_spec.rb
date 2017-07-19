require './lib/PicasFijas.rb'

describe PicasFijas do
	it "Tiene 0 picas y 0 fijas" do
		miPicasFijas=PicasFijas.new "0000"
		result = miPicasFijas.validarNumero "1111"
		expect(result).to eq "0 picas 0 fijas"
	end

	it "Tiene 0 picas y 1 fijas" do
		miPicasFijas=PicasFijas.new "1234"
		result = miPicasFijas.validarNumero "1567"
		expect(result).to eq "0 picas 1 fijas"
	end

	it "Tiene 1 picas y 0 fijas" do
		miPicasFijas=PicasFijas.new "1234"
		result = miPicasFijas.validarNumero "5167"
		expect(result).to eq "1 picas 0 fijas"
	end

	it "Tiene 4 picas y 0 fijas" do
		miPicasFijas=PicasFijas.new "1234"
		result = miPicasFijas.validarNumero "4321"
		expect(result).to eq "4 picas 0 fijas"
	end	

end