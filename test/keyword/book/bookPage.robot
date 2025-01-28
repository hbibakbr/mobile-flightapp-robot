*** Settings ***
Variables                        ../../../pageObject/book/bookingpage_locator.yaml
Variables                        ../../../pageObject/book/confirm/confirmpage_locator.yaml
Variables                        ../../../pageObject/book/finish/finishpage_locator.yaml
Library                          AppiumLibrary

*** Variables ***
${MESSAGE_SUCCESS}              Your flight is booked

*** Keywords ***
user click departure city field
    Wait Until Element Is Visible        ${from_city_select_field}
    Click Element                        ${from_city_select_field}

user select from city new york
    Wait Until Element Is Visible        ${city_list_view}
    Click Element                        ${select_from_new_york}

user click arrival city field
    Wait Until Element Is Visible        ${to_city_select_field}
    Click Element                        ${to_city_select_field}

user select to city london
    Wait Until Element Is Visible        ${city_list_view}
    Click Element                        ${select_to_london}

user click class flight
    Wait Until Element Is Visible        ${class_select_field}
    Click Element                        ${class_select_field}

user select economy class flight
    Wait Until Element Is Visible        ${class_list_view}
    Click Element                        ${economy_class}

user select first class flight
    Wait Until Element Is Visible        ${class_list_view}
    Click Element                        ${first_class}

user select bussines class flight
    Wait Until Element Is Visible        ${class_list_view}
    Click Element                        ${business_class}

user select start date
    Click Element                        ${start_date}
    Wait Until Element Is Visible        ${date_start}
    Click Element                        ${date_start}
    Click Element                        ${ok_button}

user select end date
    Click Element                        ${end_date}
    Wait Until Element Is Visible        ${date_end}
    Click Element                        ${date_end}
    Click Element                        ${ok_button}

user select flight type services
    Wait Until Element Is Visible        ${flight_radio_button}
    Click Element                        ${flight_radio_button}

user click checkbox day
    Click Element                        ${day_checkbox}

user click book button on book page
    Click Element                        ${booking_button}

user select price list
    Wait Until Element Is Visible        ${price_button}
    Click Element                        ${price_button}

user click confirm button
    Click Element                        ${confirm_button}

system should be displayed ${MESSAGE_SUCCESS}
    [Arguments]                          ${booking_msg}=${MESSAGE_SUCCESS}
    Wait Until Element Is Visible        ${success_message}
    Element Should Contain Text          ${success_message}    ${booking_msg}