*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}  https://www.sunnyfounder.com/individual
${BROWSER}    Chrome

*** Test Cases ***
Test open sunnyfounder web
    Open Browser    ${URL}  ${BROWSER}



123