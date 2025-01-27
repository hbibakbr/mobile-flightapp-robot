*** Settings ***
Resource                ../../base/base.robot
Resource                ../../keyword/login/loginPage.robot
Resource                ../../keyword/home/homePage.robot
Resource                ../../keyword/search/searchPage.robot
Library                 AppiumLibrary
Test Setup              Run Keyword
...                     Open Flight Application
Test Teardown           Run Keyword
...                     Close Flight Application

*** Variables ***
${VALID_BOOK_CODE}      DA935
${INVALID_BOOK_CODE}    @#@$

*** Test Cases ***
Success searching a booking code
    user success login to account
    user click search button on home page
    user input booking code    ${VALID_BOOK_CODE}
    user click search button on search page
    system should display booking code