*** Settings ***
Library  SeleniumLibrary
Variables  ../resources/locators/welcome.py      # locators for welcome page

*** Variables ***
${BROWSER} =    headlesschrome
${START_URL} =  https://qa-challenge.ensolvers.com/login

*** Keywords ***
Begin Web Test 0
    ${chrome_options} =     Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}   add_argument    headless
    Call Method    ${chrome_options}   add_argument    no-sandbox
    Call Method    ${chrome_options}   add_argument    disable-dev-shm-usage
    ${options}=     Call Method     ${chrome_options}    to_capabilities

    Create Webdriver    Remote   command_executor=http://localhost:4444/wd/hub    desired_capabilities=${options}
    Open Browser  about:blank  ${BROWSER}   desired_capabilities=${options}
    #Open Browser  about:blank  chrome
    Maximize Browser Window

Begin Web Test
    Create WebDriver With Chrome Options

Create WebDriver With Chrome Options
    ${chrome_options} =    Evaluate    selenium.webdriver.ChromeOptions() 
    Call Method    ${chrome_options}    add_argument    --log-level\=3
    Call Method    ${chrome_options}    add_argument    --start-maximized
    Call Method    ${chrome_options}    add_argument    --window-size\=2560,1080
    Call Method    ${chrome_options}    add_argument    --headless
    Call Method    ${chrome_options}    add_argument    --disable-extensions
    Call Method    ${chrome_options}    add_argument    --disable-gpu
    Call Method    ${chrome_options}    add_argument    --disable-dev-shm-usage
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Call Method    ${chrome_options}    add_argument    --disable-security-features
    Log     ${chrome_options}
    Create WebDriver    Chrome      options=${chrome_options}  
    Go to    ${START_URL}
    Wait Until Page Contains    ${MAIN_TITLE}
    Capture Page Screenshot


End Web Test
    Close Browser