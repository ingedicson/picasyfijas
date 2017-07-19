class PicasFijas
	def initialize(numerooculto)
		@numoculto = numerooculto
	end

	def validarNumero(numerojugada)
        fijas=0
        picas=0
		for i in 0..3 
			if  @numoculto[i] == numerojugada[i]
                fijas=fijas+1
			end

			for j in 0..3
				if  j != i and @numoculto[i] == numerojugada[j]
                	picas=picas+1
				end
			end

		end
		return "#{picas} picas #{fijas} fijas"
	end
end