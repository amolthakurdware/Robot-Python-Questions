*** Settings ***
Library    SeleniumLibrary
Library    Collections


*** Test Cases ***
# When I wrote this test case, only God and I knew this code.
# Now only god knows…
Test case 1
    Log    Test case 1 Comment line 1
    Log    Test case 1 Comment line 2
    Log    Test case 1 Comment line 3
    Log    Test case 1 Comment line 4    

*** Comments ***       
Test case 2
    Log    Test case 2 is executing     

*** Test Cases ***
Test case 3
    Log    Test case 3 is executing
       

*** Keywords ***
Open google
    Log to console   opening google
    Open browser    http://www.google.com    chrome
    Log     google is opened

Type Text In Search Box
    Log    Typing text
    Press Keys    //input[@name='q']    Please subscribe to the channel****
    Log    Text entered

Click Search Button
    Log    Typing text
    Click Element    (//input[@name='btnK'])[1]
    Log    Text entered
