*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Acessar o site e logar com o Perfil ${perfil}
    IF    ${perfil} == "admin"
        Open Browser  https://www.youtube.com/
    ELSE
        Open Browser  https://www.google.com/
    END
