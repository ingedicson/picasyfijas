Given(/^iniciar juego con valor "([^"]*)"$/) do |numerosistema|
visit '/juego'
	fill_in("numerooculto", :with => numerosistema) 
end

When(/^ingresar jugada "([^"]*)"$/) do |numerojugador|
 fill_in("numerojugada", :with => numerojugador) 
 click_button("Adivinar")
end

Then(/^debe ver "([^"]*)"$/) do |texto|
  expect(page.body).to match /#{texto}/m
end

