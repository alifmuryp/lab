echo "Enter your message"
read a
echo "${a}" | awk '{print tolower($0)}'
echo "Enter ($b)your message"


## ==== replace
# sed -i 's/ /-/' file

## ===== remove space
#echo "${a// /}"

## ===== menjadikan lower
# echo "${a}" | awk '{print tolower($0)}'
## ==== menghapus/mengganti
# echo "${a}" |awk '{sub (" ","-")($0)}1'