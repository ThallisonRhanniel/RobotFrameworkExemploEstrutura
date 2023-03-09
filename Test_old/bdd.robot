# https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html

** Settings **
Library  SeleniumLibrary

** Variables **
# Dados do teste
${NomeDaMusica}        Ariana Grande Positions

# Variáveis de configuracão
${URL}    https://www.youtube.com/
${Browser}    chrome

#Elementos

${Input_Pesquisa}    //input[@id="search"]
${Button_Pesquisa}    //button[@id="search-icon-legacy"]
${Primeiro_Videos}    (//yt-formatted-string[@class="style-scope ytd-video-renderer"])[1]
${Prova}    (//span[contains(text(),"Compartilhar")])[1]
** Keywords **
Dado que eu acesso o site do youtube
    Open Browser  ${URL}    ${Browser}
Quando digito o nome da música 
    Input Text    ${Input_Pesquisa}    ${NomeDaMusica}
E Clico no botão buscar
    Click Element    ${Button_Pesquisa}
E clico na primeira opcão da lista
    Wait Until Element Is Visible    ${Primeiro_Videos}    10
    Click Element    ${Primeiro_Videos}
Então o video é executado
    Wait Until Element Is Visible    ${Prova}    10
    Element Should Be Visible    ${Prova}
    Sleep    3s
    close browser

** Test Cases **
Cenário 1: Executar vídeo no site do youtube
    [Tags]    regressivo
    Dado que eu acesso o site do youtube
    QUando digito o nome da música 
    E Clico no botão buscar
    E clico na primeira opcão da lista
    Então o video é executado
 