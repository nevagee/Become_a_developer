*** Settings ***

*** Variables ***
#globalni promenna
${Dict1}    key=value    foo=bar
*** Test Cases ***

Ukazka prace s promennymi
#promenna na konretni test
#${Dict2}=    Create Dictionary   key=value    foo=bar   #slovnik je vzdycky jako par - klic a hodnota, pouziva se to hodne s jasenem
    ${Dict2}=    Create Dictionary    motorka=10        auto=99
    Log to Console    ${Dict2}[motorka]  #chci jit na konkretni klic[motorka]. Seznamy se oproti slovnikum vyhledavaji jako poradi.U slovniku muze byt poradi jakykoliv. 
    #v slovniku je vyhledavani podle slov
