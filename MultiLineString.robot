*** Variables ***
${string_in_variables}    SEPARATOR=${empty}   Like this video${space} 
...   if this is help
...   ing you because that matters a lot to us


*** Test Cases ***
Demo String
    Log    ${string_in_variables}
    ${string_in_testcase}    Catenate    SEPARATOR=${space}    Please 
    ...  subscribe if you haven’t yet, because more robot framework and test automation videos are coming every week on this channel
    Log    ${string_in_testcase}

