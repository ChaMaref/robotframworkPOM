*** Settings ***
Documentation     A test suite with a single test for OrangeHRM
...               Created by hats' Robotcorder
Library           SeleniumLibrary    timeout=10

*** Variables ***
${BROWSER}    chrome
${SLEEP}    3

*** Test Cases ***
OrangeHRM test
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    ${BROWSER}
    Input Text    //input[@name="username"]
    Input Text    //input[@name="password"]    ***
    Click Link    //a[@href="https://www.linkedin.com/company/orangehrm/mycompany/"]
    Click Link    //a[@href="https://www.facebook.com/OrangeHRM/"]
    Click Link    //a[@href="https://twitter.com/orangehrm?lang=en"]
    Click Link    //a[@href="https://www.youtube.com/c/OrangeHRMInc"]
    Click Link    //a[@href="http://www.orangehrm.com"]

    Close Browser