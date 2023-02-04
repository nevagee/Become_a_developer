
print("Vitejte v kalkulatoru na vypocet plateb")
payment = int(input("Kolik mate celkem zaplatit \n"))
tip = int(input("Kolik chcete dat spropitneho v [v %] \n"))
people = int(input("Mezi kolik lidi se ma rozdelit castka? \n"))
tip_2 = (tip / 100) * payment
result = (payment + tip_2) / people
print(f"Kazdy clovek by mel zaplatito {result}")


# nebo

print("Vitejte v kalkulatoru na vypocet plateb")
payment = int(input("Kolik mate celkem zaplatit \n"))
tip = int(input("Kolik chcete dat spropitneho v [v %] \n"))
people = int(input("Mezi kolik lidi se ma rozdelit castka? \n"))
result = (payment + (payment * tip / 100)) / 2
print(f"Kazdy clovek by mel zaplatito {result}")