*** Settings ***
Documentation       Login tests

Resource            ${EXECDIR}/resources/main.resource

Test Setup          Start Test
Test Teardown       Finish Test


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
