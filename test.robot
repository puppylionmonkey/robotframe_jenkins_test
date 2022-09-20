*** Settings ***
Library    SeleniumLibrary
Library           Collections
Library           String
Library           RequestsLibrary


*** Variables ***
${HTTP_LOCAL_SERVER}  http://127.0.0.1:5000
${BROWSER}    Chrome

*** Test Cases ***
Post Request With Json
    [Tags]    post
    ${body}=    Create Dictionary   stock_id=1111
    ${resp}=    POST    ${HTTP_LOCAL_SERVER}/    json=${body}
    Status Should Be    OK    ${resp}
    ${data}=    Evaluate    ${resp.json()}[data]
    Dictionaries Should Be Equal    ${data}    ${body}
