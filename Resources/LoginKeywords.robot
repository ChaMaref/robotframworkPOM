*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py
*** Keywords ***
Ouvrir le navigateur
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}    
    Maximize Browser Window
    Sleep    3
Saisir nom d'utilisateur
    [Arguments]    ${username}
    Input Text    ${txt_loginUserName}    ${username}
Saisir le mot de passe
    [Arguments]    ${pass}
    Input Password    ${txt_loginPassword}    ${pass}
Cliquer sur le bouton Login 
    Click Button    ${btn_login}
Valider le critére de succés Login
    Title Should Be    OrangeHRM
Fermer les fenêtres des navigateurs
    Close All Browsers
