*** Settings ***
Library    OperatingSystem
*** Test Cases ***
Test Keywords
    ${num1}    Set Variable    5
    ${num2}    Set Variable    10
    Add Numbers    int(${num1})    int(${num2})

    ${list_of_numbers}    Create List    1    2    3    4    5
    Print List    ${list_of_numbers}

    ${emp_dir}    Create Dictionary    1=Mangesh    2=John    3=Narendra
    Print Dir    ${emp_dir}

*** Keywords ***
Add Numbers
    [Documentation]  This keyword accepts multiple integer arguments   
    [Arguments]  ${no1}    ${no2}
    ${sum}    Evaluate    ${no1}+${no2}

Print List
    [Arguments]    ${list}
    FOR    ${index}    IN RANGE    0    5
        Log    ${list}[${index}]
  
    END

Print Dir
    [Arguments]    ${dir}
    Log    ${dir}[1]
    Log    ${dir}[2]