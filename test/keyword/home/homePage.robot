*** Settings ***
Variables                              ../../../pageObject/home/homepage_locator.yaml
Library                                AppiumLibrary

*** Keywords ***
user on home page flight app and baselines is displayed
    Wait Until Element Is Visible                ${baselines}
    Element Should Contain Text                  ${baselines}    Fly with peace

user click sign in button on home page
    Wait Until Element Is Visible                ${log_in_button}
    Click Element                                ${log_in_button}

user click search button on home page
    Wait Until Element Is Visible                ${search_button}
    Click Element                                ${search_button}

system should be directed to home page and username is displayed
    Wait Until Element Is Visible                ${username_data}
    Element Should Contain Text                  ${username_data}    NGen Digital