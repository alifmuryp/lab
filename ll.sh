read -p "Ganti File : " file
read -p "Dari : " kolom1
read -p "sampai : " kolom2
sed -i "${kolom1},2d" $file > 10111110.txt
mv 10111110.txt $file