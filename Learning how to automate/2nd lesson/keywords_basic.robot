*** Settings ***

#klicova slova jsou neco jako funkce v programovacim jazyku
# priklad: chci pri spousteni kontrolovat i nejake veci, tak si na to vytvorim klicove slovo, at to nemusim psat furt dokola



*** Test Cases ***

Ukazka prace s klicovymi slovy
#jak si vytvorim klicove slovo, vytvari se v sekci ***keywords***
   Log   Zaciname
   Moje prvni KS    Karla
   ${vysledek}=    Secti   2    5
   Log To Console    ${vysledek}
*** Keywords ***

#Moje prvni KS      
 #   Log to Console  Dobry den  #to je klicove slovo, ktere nema zadny parametr a zaroven nema zadnou navratovou hodnotu
    #kdyz to bude me chtit parametizovat, zadame do "Moje prvni KS" v test cases parametr pr: Karla
    #jak udelat z toho klicoveho slova, klicove slovo ktere ma parametr:
Moje prvni KS
    [Arguments]    ${Jmeno}  #napisu tu, kolik chci, aby to melo parametru. Je jako promenne. 
    Log To Console    Dobry den, ${Jmeno}


Secti
    [Arguments]    ${A}  ${B}
    ${v}=   Evaluate    ${A}+${B}
    [Return]   ${v}     