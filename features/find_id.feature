Feature: 
  To enable me to blog about my photos, I want to be able to easily search for photos and have the ids returned

  Scenario Outline: return a photo id from flickr based on a photo title search
    When I search for "<photo_title>"
    Then it should output:
"""
<photo_id>
"""

    Examples:
    | photo_title                   | photo_id |
    | Snowy Ingleborough            | 7995131413  |
    | Stanage Edge through the gap  | 7122141831  |
    | Flowing down                  | 6654391401  | 

  Scenario: returns a url for images where multiple photo's match the search title
    When I search for "bikes"
    Then it should output:
"""
Multiple photos match, and thus I'd suggested visiting:
http://www.flickr.com/search/?w=99505479%40N00&q=bikes&m=text
"""

  Scenario: outputs a message if no photo's match the search title
    When I search for "diplodocus"
    Then it should output:
"""
No photo's matched
"""

