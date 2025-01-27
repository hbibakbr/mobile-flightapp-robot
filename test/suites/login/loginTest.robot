*** Settings ***
Resource               ../../base/base.robot
Resource               ../../keyword/login/loginPage.robot
Resource               ../../keyword//home/homePage.robot
Library                AppiumLibrary
Test Setup             Run Keyword
...                    Open Flight Application
Test Teardown          Run Keyword    
...                    Close Flight Application

*** Variables ***
${VALID_EMAIL}         support@ngendigital.com
${VALID_PASSWORD}      abc123

*** Test Cases ***
Success to Login with valid credentials
    user on home page flight app and baselines is displayed
    user click sign in button on home page
    user input email        ${VALID_EMAIL}
    user input password     ${VALID_PASSWORD}
    user click sign in button on login page
    system should be directed to home page and username is displayed
