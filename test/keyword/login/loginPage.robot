*** Settings ***
Resource                     ../home/homePage.robot
Variables                    ../../../pageObject/login/loginpage_locator.yaml
Library    AppiumLibrary

*** Keywords ***
user input email
    [Arguments]                      ${email}
    Wait Until Element Is Visible    ${email_field}
    Input Text                       ${email_field}        ${email}

user input password
    [Arguments]                      ${password}
    Wait Until Element Is Visible    ${password_field}
    Input Text                       ${password_field}     ${password}

user click sign in button on login page
    Click Element                    ${sign_in_button}