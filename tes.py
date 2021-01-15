with open('tes.txt', 'r') as infile, \
     open('90990.txt', 'w') as outfile:
    data = infile.read()
    data = data.replace("param \= \"*\", "param \= \"ok berhasil\"")
    outfile.write(data)