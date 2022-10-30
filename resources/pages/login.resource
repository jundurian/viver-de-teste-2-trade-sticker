*** Settings ***
Documentation    Login Page

Library    Browser

*** Keywords ***
Go to Login Page
    New Page    https://trade-sticker-dev.vercel.app

Submit Credential
    [Arguments]    ${email}    ${password}
    Fill Text    input[name=email]    ${email}
    Fill Text    input[name=password]    ${password}
    Click    button >> text=Entrar

Toast Message Should be
    [Arguments]    ${expected_message}

    ${locator}    Set Variable    css=.Toastify__toast-body div >> text=${expected_message}
    Wait For Elements State    ${locator}    visible    3    