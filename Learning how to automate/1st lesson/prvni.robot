*** Settings ***

Library    OperatingSystem   #ma v sobe moznost poustest prikazy


*** Variables ***

${x}    10
${text}     prdellll
*** Test Cases ***

Prvni test
    ${result}=   run     help
    Log    ${result}
    #Should Contain     ${text}  yyyyy     #should je overeni spravnosti, vyjede mi fail
    Should Contain     ${text}    lll     #vyjede mi pass
    #Should be true       10 > 3

    