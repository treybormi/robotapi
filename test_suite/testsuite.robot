*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary

*** Keywords ***

*** Variables ***
${URL}=    http://127.0.0.1:8000/testai/tests/v1/execute

*** Test Cases ***
Retrieve test cases from API
    ${response}=    POST  ${URL}
    ${test_title}=    Set Variable  ${response.json()}[tests][0][title]
    ${steps}=    Set Variable  ${response.json()}[tests][0][steps]
    ${no_keywords}=    Get Length  ${steps}
    Log To Console    ${test_title}
    FOR  ${index}  IN  @{steps}
        ${len}=    Get Length  ${index}
        IF  ${len} == 3
            Run Keyword  ${index}[0]  ${index}[1]  ${index}[2]
        END
        IF  ${len} == 2
            Run Keyword  ${index}[0]  ${index}[1]
        END
        IF  ${len} == 1
            Run Keyword  ${index}[0]
        END  
    END