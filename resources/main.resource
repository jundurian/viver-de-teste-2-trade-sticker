*** Settings ***
Documentation    Arquivo principal do projeto

Library    Browser

Resource    pages/login.resource
Resource    pages/dash.resource

*** Keywords ***
Do Login
    Go to Login Page
    Submit Credential    papito@gmail.com    vaibrasil
    User Must be Logged In

Start Test
    New Browser    headless=False    browser=${BROWSER}


Finish Test
    Take Screenshot