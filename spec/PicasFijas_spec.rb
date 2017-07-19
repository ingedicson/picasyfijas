require './lib/PicasFijas.rb'

describe PicasFijas do
	it "Tiene 0 picas y 0 fijas" do
		miPicasFijas=PicasFijas.new "0000"
		result = miPicasFijas.validarNumero "1111"
		expect(result).to eq "0 picas 0 fijas"
	end
end