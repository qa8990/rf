*** Settings ***
Documentation  Suite for QA Ensolvers Challenge
Library     SeleniumLibrary
Resource  ../resources/common.robot  # necessary for Setup & Teardown
Variables  ../resources/locators/login.py      # locators for Login page

Suite Setup     Begin Web Test
#Test Setup      LandingPage.Load Website
#Test Teardown   LandingPage.Goto LandingPage
Suite Teardown  End Web Test

*** Test Cases ***
Navigation
    Given Ensolvers QA website
    When User access to the QA Challenge website
    Then result is 

*** Keywords ***
Ensolvers QA website
    LoginPage.Load Website

User access to the QA Challenge website
    LoginPage.Verify Website loaded
    
Then result is 
    LoginPage.Verify login form loaded

