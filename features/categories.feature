#encoding: utf-8
Feature: Categories
  Background:
    Given I am a new authenticated user

  Scenario: Create a new category
    When I visit the "/categories" page
    And I follow "Nueva Categoría"
    And I fill in "Nombre" with "Cuentos"
    And I press "Guardar"
    Then I should see "Categoría guardada correctamente"

  Scenario: Edit category
    Given a "Cuento" category exists
    When I visit the "/categories" page
    And I follow "Editar"
    And I fill in "Nombre" with "Karaoke"
    When I press "Guardar"
    Then I should see "Categoría actualizada correctamente"
    And I should see "Karaoke"

  Scenario: Delete a category
    Given a "Cuento" category exists
    When I visit the "/categories" page
    And I follow "Eliminar"
    Then I should see "Categoría eliminada correctamente"
    Then I should not see "Cuento"
