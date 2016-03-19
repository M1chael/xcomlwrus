Feature: View help message
  As a gamer 
  In order to understand translator usage
  I want to view help message

  Scenario: View help message for no parameters start
    When I start translator without parameters
    Then the stderr should contain:
    """
    Usage: xcomlwrus.sh path_to_steam_library
    """
