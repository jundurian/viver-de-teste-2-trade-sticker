*** Settings ***
Documentation    Dash page

Library    Browser

*** Keywords ***
User Must be Logged In
    ${slogan}    Set Variable    Aquela figurinha incrível a um clique de distância.
    Get Text    .header-content strong    equal    ${slogan}

Search User
    [Arguments]    ${target}
    Fill Text    input[placeholder^=Busque]    ${target}
    Click        css=button >> text=Buscar

Select Sticker
    [Arguments]    ${name}
    Click        xpath=//img[@alt="${name}"]/..

Get in Touch
    Click    css=button >> text=Entrar em contato

WhatsApp sticker Message
    [Arguments]    ${sticker_name}

    ${expected_message}    Set Variable
    ...    Oi, achei o seu contato no Trade Sticker. Estou interessado(a) na figurinha do ${sticker_name}, bora negociar?

    Switch Page    NEW

    Wait For Elements State    css=p >> text=${expected_message}    visible    5000
