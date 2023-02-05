*** Settings ***
Documentation     Cvičení na klíčová slova
...               Připravte klíčové slovo pro kalkulačku


*** Test Cases ***

Sčítání
        ${result}=          Calculate  20  15  +      # pozor je nutné pro oddělení parametrů používat min 2 mezery
        Should Be Equal     ${result}  ${35}

Odečítání
        ${result}=            Calculate  14  2  -
        Should Be Equal       ${result}   ${12} 

Násobení
        ${result}=             Calculate   2   4   *
        Should Be Equal        ${result}   ${8}


Dělení
                    ${result}=             Calculate   12   3   /
                    Should Be Equal        ${result}   ${4}


*** Keywords ***

Calculate
    [Arguments]    ${A}  ${B}  ${operator}
    ${res}=        Evaluate    ${A}${operator}${B}
    [return]       ${res}
    Log To Console    ${res}