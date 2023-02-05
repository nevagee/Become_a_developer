*** Settings ***
Library    Collections

*** Variables ***

@{list1}      Chrom   Edge    Mozzila    Safari

*** Test Cases ***
zkouska
    Log To Console   ${list1}
    Log To Console   ${\n}${list1}[0]
    Log To Console   ${list1}[1]
    Log To Console   ${list1}[2]
    Log To Console   ${list1}[3]
    Should Contain   ${list1}[0]      Chrom


  #zadani
  # #
# Cvičení na použití proměných a výstupu do console
*** Settings *** 
*** Variables ***
#vytvořte seznam obsahující názvy prohlížečů 
*** Test Cases ***

#Vypište všechny položky seznamu do logu i do console
Výpis do logu a console

    # sem je třeba doplnit příkazy

    #Vytvořte ověření že položka na pozici 0 v seznamu obsahuje Chrome
Test pro oveření že 0 položka seznamu obsahuje Chrome
    #použijte například  Should Contain