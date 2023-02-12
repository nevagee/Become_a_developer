#bmi
height = float(input("Vlozte svou vysku v meterech:"))
weight = float(input("Vlozte svou vahu v kg:"))

bmi = weight / (height * height) # nebo height **2

#print(round(bmi, 1))

if bmi < 18.5:
    print(f"Your BMI is {round(bmi,1)}. You are underweight")
elif bmi < 24.9:
    print(f"Your BMI is {round(bmi,1)}. You are normal")
elif bmi < 29.9:
    print(f"Your BMI is {round(bmi,1)}. You are overweight")
else:
    print(f"Your BMI is {round(bmi,1)}. You are extremely obese")