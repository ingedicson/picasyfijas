Feature:
	Como jugador
	Quiero poder ingresar un numero
	Para intentar adivinar el numero oculto

Scenario: Debo poder ingresar un numero de 4 digitos con 0 picas y 0 fijas
	Given iniciar juego con valor "1234"
	When ingresar jugada "5678"
	Then debe ver "0 picas 0 fijas"

Scenario: Debo poder ingresar un numero de 4 digitos con 4 picas y 0 fijas
	Given iniciar juego con valor "1234"
	When ingresar jugada "4321"
	Then debe ver "4 picas 0 fijas"