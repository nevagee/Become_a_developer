print(5-8)
print(5*3)
print(2**3) #dve na treti = 8
print(8/2) #deleni vyjde vzdycky jako float
#priority
#()
#**
#*/
#+-
print(5*2+6/3-5) #tady je deleno, tak mi to vrati float
print(10 +2 -5) #tu deleni neni, tak to vrati int


#BMI vypocet - basic
#height = input("Zadejte svou vysku v metrech: \n")
#weight = input("Zadejte svou vahu v kg: \n")
#print("Vas BMI je:", int(weight) / float(height)**2)

#lepsi je:
height = input("Zadejte svou vysku v metrech: \n")
weight = input("Zadejte svou vahu v kg: \n")

bmi = int(weight) / float(height) **2 #nebo int(weight) / (float(height) * float(height))
bmi = int(bmi)
print("Vas BMI je: " + str(bmi))
