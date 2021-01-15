read -p "file directory : " dir
read -p "cari : " cari
read -p "ganti : " ganti
satu="find $dir -type f -exec sed -i 's/"
dua=$cari/$ganti
tiga="/g' {} \;"
echo $satu$dua$tiga >> 10111110.sh 
chmod 777 10111110.sh
./10111110.sh
rm 10111110.sh