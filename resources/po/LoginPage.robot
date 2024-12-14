*** Settings ***
Library  SeleniumLibrary
Resource    ./resources/locators/login.py

*** Keywords ***
Load Website
    Go To  ${START_URL}
    Maximize Browser Window 

Verify Website loaded
    Wait Until Page Contains    ${WEBSITE_TITLE}
    
Verify login form loaded
    Wait Until Page Contains    ${LOGIN_TITLE}
