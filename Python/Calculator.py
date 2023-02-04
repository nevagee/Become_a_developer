
# print("Vitejte v kalkulatoru na vypocet plateb")
# payment = int(input("Kolik mate celkem zaplatit \n"))
# tip = int(input("Kolik chcete dat spropitneho v [v %] \n"))
# people = int(input("Mezi kolik lidi se ma rozdelit castka? \n"))
# tip_2 = (tip / 100) * payment
# result = (payment + tip_2) / people
# print(f"Kazdy clovek by mel zaplatito {result}")


# nebo

# print("Vitejte v kalkulatoru na vypocet plateb")
# payment = int(input("Kolik mate celkem zaplatit \n"))
# tip = int(input("Kolik chcete dat spropitneho v [v %] \n"))
# people = int(input("Mezi kolik lidi se ma rozdelit castka? \n"))
# result = (payment + (payment * tip / 100)) / people
# print(f"Kazdy clovek by mel zaplatito {result}")

# make it more difficult

# print("Vitejte v kalkulatoru na vypocet plateb")
# payment = int(input("Kolik mate celkem zaplatit \n"))
# tip = int(input("Kolik chcete dat spropitneho v [v %] \n"))
# people = int(input("Mezi kolik lidi se ma rozdelit castka? \n"))
# result = (payment + (payment * tip / 100)) / people
# final_result = round(result, 2)             # zaokrouhlit na 2 desetinna mista
# print(f"Kazdy clovek by mel zaplatito {final_result}")


print("Vitejte v kalkulatoru na vypocet plateb")
payment = int(input("Kolik mate celkem zaplatit \n"))
tip = int(input("Kolik chcete dat spropitneho v [v %] \n"))
people = int(input("Mezi kolik lidi se ma rozdelit castka? \n"))
result = (payment + (payment * tip / 100)) / people
final_result = "{:.2f}". format(result)             # zaokrouhlit na 2 desetinna mista i kdyz to budou nuly, protoze nam v predchozim pripade vzchazelo 75.0, ted to bude 75.00
print(f"Kazdy clovek by mel zaplatito {final_result}")