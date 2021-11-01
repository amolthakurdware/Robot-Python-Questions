*** Settings ***
Library    String
*** Test Cases ***
None Value
    ${no1}    Set Variable    5
    ${no2}    Set Variable    6
    ${var}    Set Variable If    ${no1}>${no2}    10
    Log    ${var}

Check If Variable Is None
    ${none_var}    Set Variable    ${None}
    IF    ${none_var} == ${None}
        Log    Variable is none
    ELSE
        Log    Variable is not none
    END
    Should Be Equal    ${none_var}    ${None}

Check If Variable Is Not None
    ${none_var}    Set Variable    5
    IF    ${none_var} != ${None}
        Log    Variable is not none
    END       

None And Null Are Same
    IF    ${None} == ${null}
     Log    None and null are same
    END

None Variable Is Case Incensitive
    IF    ${None} == ${none}
      Log    None variable is case insensitive
    END
        