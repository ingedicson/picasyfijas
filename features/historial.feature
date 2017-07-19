Feature:
	Como jugador
	Quiero poder ver mi historial de jugadas
	Para generar una estrategia de juego

Scenario: Debo poder ver la ultima jugada ingresada y su resultado
	Given iniciar juego con valor "1234"
	When ingresar jugada "5678"
	Then debe ver "5678 - 0 picas, 0 fijas"