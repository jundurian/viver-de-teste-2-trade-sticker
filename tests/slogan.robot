*** Settings ***
Library   Browser

*** Variables ***
${slogan}    Conectando colecionadores de figurinhas da copa.

*** Test Cases ***
Deve validar slogan da home page
    New Browser     chromium    headless=false
    New Page        https://trade-sticker-dev.vercel.app
    Get Text        .logo-container h2    contains    ${slogan}
    Take Screenshot