#conditions

print("Vitejte na horske draze")
height = int(input("Jaka je vase vyska v cm?\n"))
bill = 0

if height >= 87:
    print("Muzete jet na horske draze")
    age = int(input("Jaky je vas vek?\n"))
    if age < 12:                #if a else je vzdycky na stejne urovni
        bill = 100
        print("Cena vaseho listku je 100 KC")
    elif age < 18:              # elif = jeste dalsi podminka, pisu za to dalsi podminku
        bill = 120
        print("Cena vaseho listk je 120")
    else:
        bill = 150
        print("Cena vaseho listku je 150 Kc")

    photo = input("Chcete behem jizdy vyfotit? ano nebo ne?\n")
    if photo == "ano":
        bill = bill + 40 # nebo bill +=40
    print(f"Vase cena je: {bill}")


else: #DODRZUJ ODSAZENI
    print("Omlouvame se, ale na horske draze jet nemuzete.")

