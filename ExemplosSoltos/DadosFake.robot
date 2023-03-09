*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary  locale=pt_BR
*** Variables ***
${FirstName}    Thallison
*** Keywords ***
Então adiciono um fake text
    ${newName}  FakerLibrary.First Name
    Input Text  ${First_Name}    ${newName}
        
