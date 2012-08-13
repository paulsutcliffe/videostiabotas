Feature: Manage Characters
  Scenario: Adding a new character
  Given I am a new authenticated user
  When I visit the "/characters" page
  And I follow "Nuevo Personaje"
  And I fill in "Nombre" with "El Calamar"
  And I press "Guardar"
  Then I should see "Personaje guardado correctamente"
  And I should see "El Calamar"
