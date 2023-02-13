#Challenge: Print the Character at a Specific Index
#option 1
a = "hello"
b = "pizza"
c = ""
d = "World"
i = 15

if len(d) == 0:
    print("Empty String")
elif i < len(d):
    print(d[i])
else: 
    print("i out of range")
# option 2

a = "hello"
b = "pizza"
c = ""
d = "World"
i = 2

if not b:               #truthy vs falsy statement
    print("Empty String")
elif i < len (b):
    print(b[i])
else: 
    print("i out of range")
    
