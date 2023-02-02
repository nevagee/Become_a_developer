average = int(90)
years = int(input("Kolik je ti let\n"))
remaining_days = average - years
print(f"Zbyva vam {remaining_days} let")

remaining_months = (average - years) * 12
print(f"Zbyva vam {remaining_months} mesicu")

remaining_weeks = (average - years) * 52
print(f"Zbyva vam {remaining_weeks} tydnu")

remaining_days = (average - years) * 365
print(f"Zbyva vam {remaining_days} dni")


# nebo

age = int(input("Kolik ti je let?\n"))
remain = 90 - age
months = remain * 12
weeks = remain * 52
days = remain * 365
print(f"Zbyva ti {days} dni, {months} mesicu, {weeks}, {remain} let")