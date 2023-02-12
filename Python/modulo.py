# modulo = zbytek po celociselnym deleni
print(6 % 4) #kolikrat se 4 vleze do 6 a kolik mi zbyde? 2
print(10 % 3) #1
print(12 % 10)  #2
# podle modula se da urcit, jestli cislo je sude nebo liche

cislo = int(input("Zadejte cele cislo\n"))
if cislo % 2 == 0:
    print("Sude cislo")
else: 
    print("Liche cislo")
