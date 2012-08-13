@javascript
Feature: Manage videos
  Scenario Outline: Add different kinds of videos
    Given I am a new authenticated user
    And already exists a few categories and characters
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
