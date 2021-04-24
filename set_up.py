import os


print("************HELLO WORLD****************")
cwd = os.getcwd()
file_name = os.path.join(cwd, "test.txt")
print("============",file_name)
with open(file_name, 'w') as fl:
    fl.write("testing")
print("************   SUCCESS  ****************")
