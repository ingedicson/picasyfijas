class PicasFijas
	def initialize
		@historial=""
	end

	def validarNumero(numerooculto, numerojugada)
        fijas=0
        picas=0
		for i in 0..3 
			if  numerooculto[i] == numerojugada[i]
                fijas=fijas+1
			end

			for j in 0..3
				if  j != i and numerooculto[i] == numerojugada[j]
                	picas=picas+1
				end
			end

		end
		@historial = "#{numerojugada} - #{picas} picas, #{fijas} fijas"
		return "#{picas} picas #{fijas} fijas"
	end

	def historial
		return @historial
	end
end