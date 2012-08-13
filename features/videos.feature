Feature: Manage videos
  Background:
    Given I am a new authenticated user
    And already exists a few categories and characters

  Scenario Outline: Add different kinds of videos
    When I visit the "/videos" page
    And I follow "Nuevo Video"
    And I fill in "Título" with "<title>"
    And I select "<character>" from "Personaje"
    And I select "<category>" from "Categoría"
    And I attach the file "<video>" to "Video"
    And I press "Guardar"
    Then I should see "Video guardado correctamente"
    And I should see "<title>"
    And I should see "<character>"
    And I should see "<category>"
    And I should see "<video>"

    Examples:
    | title                     | character | category | video     |
    | Orlando el pulpo valiente | Orlando   | Cuento   | movie.mov |
    | Omar el calamar optimista | Omar      | Canción  | movie.mov |
    | Pomodoro el choro honesto | Pomodoro  | Karaoke  | movie.mov |

  Scenario: Edit a video
    Given a "Orlando el pulpo valiente" video exists
    When I visit the "/videos" page
    And I follow "Editar"
    And I fill in "Título" with "Omar el calamar optimista"
    And I press "Guardar"
    Then I should see "Video actualizado correctamente"
    Then I should see "Omar el calamar optimista"

  Scenario: Delete a video
    Given a "Orlando el pulpo valiente" video exists
    When I visit the "/videos" page
    And I follow "Eliminar"
    Then I should see "Video eliminado correctamente"
    Then I should not see "Orlando el pulpo valiente"
