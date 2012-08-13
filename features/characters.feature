Feature: Manage Characters
  Background:
    Given I am a new authenticated user

  Scenario: Adding a new character
    When I visit the "/characters" page
    And I follow "Nuevo Personaje"
    And I fill in "Nombre" with "El Calamar"
    And I attach the file "picture.jpg" to "Imagen"
    And I press "Guardar"
    Then I should see "Personaje guardado correctamente"
    And I should see "El Calamar"
    And I should see the image "picture.jpg"

  Scenario: Editing a character
    Given a "Pomodoro" character exists
    When I visit the "/characters" page
    And I follow "Editar"
    And I fill in "Nombre" with "Omar"
    And I press "Guardar"
    Then I should see "Personaje actualizado correctamente"
    And I should see "Omar"

  Scenario: Deleting a character
    Given a "Pomodoro" character exists
    When I visit the "/characters" page
    And I follow "Eliminar"
    Then I should see "Personaje eliminado correctamente"
    And I should not see "Pomodoro"
