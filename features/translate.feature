# @announce
Feature: Replace and backup files
  As a gamer
  In order to translate XComLW
  I want to replace and backup UI files

  Scenario: Successfull translate
    Given the following files exist with path "Steam/steamapps/common/XCom-Enemy-Unknown/xew/xcomgame/localization/rus":
      | subtitles.rus         |
      | xcomgame.rus          |
      | xcomstrategygame.rus  |
      | xcomuishell.rus       |
    When I run `./xcomlwrus.sh tmp/aruba/Steam` interactively
    Then the following files should exist with path "Steam/steamapps/common/XCom-Enemy-Unknown/xew/xcomgame/localization/rus":
      | subtitles.rus_bkp         |
      | xcomgame.rus_bkp          |
      | xcomstrategygame.rus_bkp  |
      | xcomuishell.rus_bkp       |
    And the following files should not be equal:
      | subtitles.rus         | subtitles.rus_bkp         |
      | xcomgame.rus          | xcomgame.rus_bkp          |
      | xcomstrategygame.rus  | xcomstrategygame.rus_bkp  |
      | xcomuishell.rus       | xcomuishell.rus_bkp       |
