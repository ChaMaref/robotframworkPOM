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
    Sleep    2
    Input Text    name=username    Admin
    Input Password    name=password    admin123
    Click Element    //button[@class="oxd-button oxd-button--medium oxd-button--main orangehrm-login-button"]
    Click Element    //i[@class="oxd-icon bi-caret-down-fill oxd-userdropdown-icon"]
    Click Link    //a[@href="/web/index.php/auth/logout"]
    Close All Browsers

    Close Browser