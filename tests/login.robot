*** Settings ***
Documentation       Login tests

Resource            ${EXECDIR}/resources/main.resource

Test Setup          Start Test
Test Teardown       Finish Test

*** Variables ***
${campo_vazio}    


*** Test Cases ***
Deve logar com sucesso
    Go to Login Page
    Submit Credential    papito@gmail.com    vaibrasil
    User Must be Logged In

Não deve logar com senha errada
    [Tags]    inv_pass

    Go to Login Page
    Submit Credential    papito@gmail.com    vaibrasilddd
    Toast Message Should be    Credenciais inválidas, tente novamente!

Toast sem senha
    [Tags]    sem_senha
    Go to Login Page
    Submit Credential    papito@gmail.com    ${campo_vazio}
    Toast Message Should be    Por favor, informe a sua senha secreta!

Toast sem email
    [Tags]    sem_email
    Go to Login Page
    Submit Credential    ${campo_vazio}    vaibrasil
    Toast Message Should be    Por favor, informe o seu email!

Toast sem credencial
    [Tags]    sem_nada
    Go to Login Page
    Submit Credential    ${campo_vazio}    ${campo_vazio}
    Toast Message Should be    Por favor, informe suas credenciais!