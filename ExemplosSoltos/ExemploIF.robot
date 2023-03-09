*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Acessar o site e logar com o Perfil ${perfil}
    IF  "${perfil}"=="admin"
        Open Browser  https://www.youtube.com/
        Close Browser
    ELSE
        Open Browser  https://www.google.com/
        Close Browser
    END


Acessar o site com IfLine ${perfil}
    IF  "${perfil}"=="admin"  open Browser  https://www.youtube.com/  ELSE  Open Browser  https://www.google.com/