*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot
*** Variables ***
${url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${navigateur}    gc
${username}    Admin
${password}    admin123
*** Test Cases ***
Login Test
    Ouvrir le navigateur    ${url}    ${navigateur}
    Saisir nom d'utilisateur    ${username}
    Saisir le mot de passe    ${password}
    Cliquer sur le bouton Login
    Valider le critére de succés Login
    Fermer les fenêtres des navigateurs
