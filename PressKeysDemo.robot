*** Settings ***
Library    SeleniumLibrary
Library    Collections


*** Test Cases ***
Veriy Search
    Open google
    Type Text In Search Box
    Sleep    2s
    Press Keys    None    BACKSPACE     
    Sleep    2s
    Press Keys    None    BACKSPACE     
    Sleep    2s
    Press Keys    None    BACKSPACE     
    Sleep    2s
    Press Keys    None    BACKSPACE     
    Sleep    2s
    Press Keys    None    BACKSPACE     
    
        
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
