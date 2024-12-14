*** Settings ***
Resource    ../resources/common.robot   # necessary for Setup & Teardown
Resource    ../resources/PO/LoginPage.robot

*** Variables ***
${BROWSER} =    chrome
${START_URL} =  https://qa-challenge.ensolvers.com/login

