*** Settings ***
Library  SeleniumLibrary
Library  RequestsLibrary
Library  JSONLibrary
Library  Collections


Suite Setup    Create Session  jsonplaceholder  http://127.0.0.1:5000/read_selected_stock
*** Variables ***
${URL}  https://www.thetestingworld.com/
${BROWSER}    Chrome
${test_session}     local test session created in Test Setup


*** Test Cases ***
Post Request With Unicode Data
    [Tags]  post
    ${data}=  Create Dictionary  stock_id=9876
    ${headers}=  Create Dictionary  Content-Type=application/x-www-form-urlencoded
    POST    http://127.0.0.1:5000/read_selected_stock   data=${data}
#    Status Should Be                 201  ${resp}

