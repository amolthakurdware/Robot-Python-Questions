# Video link: https://youtu.be/W-EvAUcT1-c
# Command to install ScreenCapLibrary: pip install robotframework-screencaplibrary
*** Settings ***
Library           SeleniumLibrary
Library           ScreenCapLibrary

*** Variables ***
${LOGIN URL}      https://www.google.com/
${BROWSER}        Chrome

*** Test Cases ***
Demonstrate Screen Recording
    Start Video Recording    alias=None    name=DemoRecording    fps=None    size_percentage=1    embed=True    embed_width=100px    monitor=1
    Open Google
    Type Search Query
    Verify Search
    Stop Video Recording    alias=None
    [Teardown]    Close Browser

*** Keywords ***
Open Google
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Title Should Be    Google

Type Search Query
    Input Text    //*[@name='q']    "Hello Google"
    Press Keys    //*[@name='q']    ENTER

Verify Search
    Title Should Be    \"Hello Google\" - Google Search
