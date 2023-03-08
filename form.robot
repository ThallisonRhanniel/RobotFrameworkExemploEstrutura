** Settings **
Library  SeleniumLibrary

** Variables **
${input_name}        //input[@id="name"]
${input_phone}       id:phone
${input_email}       id:email
${input_password}    id:password
${textarea_address}  id:address
${button_submit}     name:submit

# Exemplo Xpath Radio button
# //option[contains(text(),"Uva")]


** Keywords **
Abrir navegador e acessar Site
    Open Browser  https://itera-qa.azurewebsites.net/home/automation  chrome

Preencher campos
    Input Text    ${input_name}          Thallison
    Sleep         1s    
    Input Text    ${input_phone}         988477743
    Sleep         1s    
    Input Text    ${input_email}         thallison@gmail.com
    Sleep         1s    
    Input Text    ${input_password}      12345
    Sleep         1s    
    Input Text    ${textarea_address}    Thallison Rhjanniel ggasr csalimas
    
Clicar em Submit
    Click Element   ${button_submit}
Fechar navegador
    Close Browser

** Test Cases **
Cenário 1: Preencher formulário
    Abrir navegador e acessar Site
    Preencher campos
    Clicar em Submit
    Fechar Navegador