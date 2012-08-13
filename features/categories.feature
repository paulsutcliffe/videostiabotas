#encoding: utf-8
Feature: Categories
  Scenario: Create a new category
  Given I am a new authenticated user
  When I visit the "/categories" page
  And I follow "Nueva Categoría"
  And I fill in "Nombre" with "Cuentos"
  And I press "Guardar"
  Then I should see "Categoría guardada correctamente"
