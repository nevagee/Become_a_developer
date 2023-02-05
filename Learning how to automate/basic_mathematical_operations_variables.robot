***Settings***
Library    XML

*** Test Cases ***

Ukazka prace s promennymi - pocty

    ${x}=  Set Variable  10
    ${y}=  Set Variable   20
    ${v}=  evaluate  ${x}*${y}                 # udelam si promennou v jako vysledek a chci do ni ulozit vysledek x + y...zase tam musi byt klicove slovo (evaluate). Za evaluate muzu dat vsechny pocty, co se delaji pythonu

    Log to Console  ${v}

Dalsi Ukazka
    ${x}=   Set Variable   50
    ${y}=   Set Variable   50
    ${v}=   Evaluate    ${x}+${y}

    Log to Console    ${v}

    ${x}=   Set Variable    25
    ${y}=   Set Variable   5
    ${v}=   Evaluate    ${x}-${y}

    Log To Console    ${v}