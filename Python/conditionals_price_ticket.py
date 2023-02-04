#conditionals - exercising
# Podmínky - procvičování
# age = int(input("Zadejte svůj věk\n"))


# if age >= 18:
#     print("Jste dospělý")
# else:
#     print("Nejste dospělý")

regular_ticket = 150
student_ticket = 120
question = input("Jste student? Odpovezte 'ano' nebo 'ne'\n")

if question == "ano":
    print("Zaplatite 120")
else:
    print("Zaplatite 150")