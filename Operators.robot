*** Test Cases ***
Test Operators
    Addition    3    4
    Subtraction    8    2
    Multiplication    5    2
    Exponent    5    2
    Division    3    2
    Floor Division    3    2
    Modulus    9    2
    
*** Keywords ***
Addition
   [Arguments]  ${num1}  ${num2}
   ${result}  Evaluate    int(${num1})+int(${num2}) 
   Log  ${result}

Subtraction
   [Arguments]  ${num1}  ${num2}
   ${result}  Evaluate    int(${num1})-int(${num2}) 
   Log  ${result}

Multiplication
   [Arguments]  ${num1}  ${num2}
   ${result}  Evaluate    int(${num1})*int(${num2}) 
   Log  ${result}

Floor Division
   [Arguments]  ${num1}  ${num2}
   ${result}  Evaluate    int(${num1})//int(${num2}) 
   Log  ${result}

Division
   [Arguments]  ${num1}  ${num2}
   ${result}  Evaluate    int(${num1})/int(${num2}) 
   Log  ${result}

Modulus
   [Arguments]  ${num1}  ${num2}
   ${result}  Evaluate    int(${num1})%int(${num2}) 
   Log  ${result}

Exponent
   [Arguments]  ${num1}  ${num2}
   ${result}  Evaluate    int(${num1})**int(${num2}) 
   Log  ${result}