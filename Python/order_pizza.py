#Objednání pizzy, feferonky a extra sýr (procvičování)
print("Vitejte v aplikaci na objednani pizzy")
size = input("Jakou velikost pizzy chcete (S, M, L). ")
feferon = input("Chcete feforonky? A nebo N. ")
syr = input("Chcete syr navic? A nebo N. ")
price = 0
fef = 0
cheese = 15

if size == "S":
    price += 100
elif size == "M":
    price += 150
elif size == "L":
    price += 200

if fef == "A":
    if size != "S":
        price += 30
    else: 
        price += 20

if syr == "A":
    price += 15

print(f"Castka k zaplaceni {price}")
