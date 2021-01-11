with open('merge.txt' , 'r') as infile, \ 
     open('5.txt', 'w') as outfile: 
     data = infile.read() 
     data = data.replace("tes", "halo kamo") 
     outfile.write(data) 
