with open('file.txt', 'r') as fin:
    data = fin.read().splitlines(True)
with open('file.txt', 'w') as fout:
    fout.writelines(data[:2])