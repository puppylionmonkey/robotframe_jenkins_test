*** Settings ***
Library    JenkinsLibrary

*** Test Cases ***
Jenkins Create And Run Job
    [Setup]    Set Jenkins Server    url=http://localhost:3000    username=puppylionmonkey    password=puppy802138
#    Create Jenkins Job    test_job
    Start Jenkins Job    test_job