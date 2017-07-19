Feature:
	Como jugador
	Quiero poder ingresar un numero
	Para intentar adivinar el numero oculto

Scenario: Debo poder ingresar un numero de 4 digitos
	Given iniciar juego con valor "1234"
	When ingresar jugada "5678"
	Then debe ver "0 picas 0 fijas"