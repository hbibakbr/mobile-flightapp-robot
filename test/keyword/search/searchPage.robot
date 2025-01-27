*** Settings ***
Variables                    ../../../pageObject/search/searchpage_locator.yaml
Library                      AppiumLibrary

*** Keywords ***
user input booking code
    [Arguments]                          ${booking_code}
    Wait Until Element Is Visible        ${search_field}
    Input Text                           ${search_field}       ${booking_code}

user click search button on search page
    Wait Until Element Is Visible        ${searching_button}
    Click Element                        ${searching_button}

system cannot redirect user to search page results
    Element Should Be Visible            ${search_field}

system should display booking code
    Wait Until Element Is Visible        ${booking_code_result}
    Element Text Should Be               ${booking_code_result}    DA 935