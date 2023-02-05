*** Settings ***

*** Variables ***    
# to tvorim pro vsechny test cases a v ***Test Cases*** pro konkretni testy, a cast s log je zpusob, jak to pouzit
@{list1}  prvni   druhy   treti   # muzu list vytvorit jako globalni promennou nebo uvinitr testu (viz nize 1b). 1.2.3. jsou prvky seznamu

*** Test Cases ***

prvni test
    @{list2}=  Create List   prvni   druhy  treti  ctvrty   #1b
    Log To Console    ${list1}      #vypsat seznam celej; (python syntaxe seznamu)
    Log To Console    ${list1}[0]    #vypsat jednu konkretni polozku; seznamy(lists) se pocitaji od nuly
# kdyz : Log to Console @{list1} tak mi to projde, protoze log to console snese vic parametru
#pouziva se, ale ${list1} ne @{list1}
# kdyz dam, ale Log  @{list1}, tak uz mi to neprojde. Klicove slovo Log ma jasne definovane parametry
   # Log    @{list1} = > @{list1} je ukazatel na nejakou promennou a log to rozepise, takze log  prvni druhy treti
   # Log  @{list} se pouziva, kdyz ten list potrebuju nekam predat. Muzeme mit nejaky klicovy slovo, ktery jako parametr bere seznamy napr: Zpracuj seznam   @{list1}.
   #Je to neco jako pole pro dalsi pouziti (vem si z pole, zpracuj z pole nebo tady mas celej seznam a neco s nim udelej)

druhy test
    @{l}=  Evaluate  ['1', '2', '3']  #list nadefinovany klasickym python zpusobem
    Log to console    ${l}