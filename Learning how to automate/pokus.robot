*** Settings ***
Library    OperatingSystem

*** Variables ***   #globalni promenne definujeme v sekci VARIABLES
${Pozdrav}   Ahoj
${Jmeno}     Monika   # zapisujeme jako ${promenna} min 2 mezery a hodnota promenne (Ahoj)
# jeste se to da zapsat ${Jmeno}=  Monika
${prikaz1}   help
*** Test Cases ***

Ukazka s promennyma
    
    Log to console    ${Pozdrav}, ${Jmeno}  # kdyz chci tu promennou pouzit
    Log   Hello    #muzeme pouzit i konstanty, neco co tam je na pevno, nemuzu to zmenit
    Run   ${prikaz1}   #spustim mi to prikaz v operacnim systemu, pouziva se to proto, ze to muzu pouzivat na vice mistech, ale menim to jen  na jednom