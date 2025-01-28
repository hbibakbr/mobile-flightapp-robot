*** Settings ***
Resource                    ../../base/base.robot
Resource                    ../../keyword/login/loginPage.robot
Resource                    ../../keyword/home/homePage.robot
Resource                    ../../keyword/book/bookPage.robot
Library                     AppiumLibrary
Test Setup                  Run Keyword
...                         Open Flight Application
Test Teardown               Run Keyword
...                         Close Flight Application

*** Test Cases ***
Success book a flight ticket economy class one way
    user success login to account
    user click book button on home page
    user click departure city field
    user select from city new york
    user click arrival city field
    user select to city london
    user click class flight
    user select economy class flight
    user select start date
    user select end date
    user select flight type services
    user click checkbox day
    user click book button on book page
    user select price list
    user click confirm button
    system should be displayed ${MESSAGE_SUCCESS}

Success book a flight ticket first class one way
    user success login to account
    user click book button on home page
    user click departure city field
    user select from city new york
    user click arrival city field
    user select to city london
    user click class flight
    user select first class flight
    user select start date
    user select end date
    user select flight type services
    user click checkbox day
    user click book button on book page
    user select price list
    user click confirm button
    system should be displayed ${MESSAGE_SUCCESS}

Success book a flight ticket bussines class one way
    user success login to account
    user click book button on home page
    user click departure city field
    user select from city new york
    user click arrival city field
    user select to city london
    user click class flight
    user select bussines class flight
    user select start date
    user select end date
    user select flight type services
    user click checkbox day
    user click book button on book page
    user select price list
    user click confirm button
    system should be displayed ${MESSAGE_SUCCESS}