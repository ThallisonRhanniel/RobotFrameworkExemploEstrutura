** Settings **
Library  SeleniumLibrary

** Variables **
${variavel1}    teste
${variavel2}    hhhh
${variavel3}    142312


** Keywords **
Abrir Site do Robot
    Open Browser  https://robotframework.org/  chrome

Abrir Site do Youtube
    Open Browser  https://www.youtube.com/  chrome
Fechar navegador
    Close Browser

** Test Cases **
Cenário 1: Abrindo navegador e indo para o google
    [Tags]    regressivo
    Abrir Site do Robot
    Fechar navegador

Cenário 2: Abrindo navegador e indo para o Youtube
    Abrir Site do Youtube
    Fechar navegador