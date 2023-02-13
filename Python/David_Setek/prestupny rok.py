#1st option
year = int(input("Napis rok:"))

if year % 4 == 0:
    if year % 100 == 0:
        if year % 400 == 0:
            print("Je to prestupny rok")
        else:
            print("Neni to prestupny rok")
    else:
        print("Je to prestupny rok")

else:
    print("Neni to prestupny rok")

#2 option

year = int(input("Zadejte rok:"))

if (year % 100 != 0) or (year % 400 == 0 and year % 4 == 0):
    print(f"Rok {year} je rok prestupny.")
else: 
    print(f"Rok {year} je prestupny.")