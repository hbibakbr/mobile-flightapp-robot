*** Settings ***
Resource                     ../home/homePage.robot
Variables                    ../../../pageObject/login/loginpage_locator.yaml
Library                      AppiumLibrary

*** Variables ***
${VALID_EMAIL}            support@ngendigital.com
${VALID_PASSWORD}         abc123

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

system cannot redirect user to home page
    Element Should Be Visible        ${email_field}
    Element Should Be Visible        ${password_title_field}

user success login to account
    [Arguments]                      ${email}=${VALID_EMAIL}    ${password}=${VALID_PASSWORD}
    user click sign in button on home page
    user input email        ${email}
    user input password     ${password}
    user click sign in button on login page