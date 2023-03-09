*** Settings ***
Resource  ../main.robot
Resource    ../../../Test_old/travel.robot

*** Keywords ***
Acessar o site e logar
    E realize o cadastro
    E faça o Login


Fechar navegador    
    Close Browser