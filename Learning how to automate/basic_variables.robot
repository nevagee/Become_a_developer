*** Settings ***
Library    OperatingSystem

*** Variables ***   #GLOBALNI promenne definujeme v sekci VARIABLES
${Pozdrav}   Ahoj
${Jmeno}     Monika   # zapisujeme jako ${promenna} min 2 mezery a hodnota promenne (Ahoj)
# jeste se to da zapsat ${Jmeno}=  Monika
${prikaz1}   help
*** Test Cases ***

Ukazka s promennyma
    
    Log to console    ${Pozdrav}, ${Jmeno}  # kdyz chci tu promennou pouzit
    Log   Hello    #muzeme pouzit i konstanty, neco co tam je na pevno, nemuzu to zmenit
    Run   ${prikaz1}   #spustim mi to prikaz v operacnim systemu, pouziva se to proto, ze to muzu pouzivat na vice mistech, ale menim to jen  na jednom

    #pak mame jeste LOKALNI promenne
    #ty muzeme mit uvnitr klicovych slov nebo v samotnem testu
    #${x}=  10        #u toho se pouziva bezne =; takto zapsane to nestaci, protoze robot fram, potrebuje na vsechno klicove slovo
    # takze spravny zapis LOKAL prom bude:
    ${x}=  Set Variable  10   # x promenna, set variables je klicove slovo, 10 je parametr
    Log to Console   ${x}       # kdyz si to chci vypsat

    #jeste jsou vestavene promenne treba jako:
    #$ {\n} - odsazeni radku, takze by to mohlo vypadat:
    # Log to console    ${\n}${x}

    Log Variables    #tento prikaz nam vypise do logu vsechny promenny