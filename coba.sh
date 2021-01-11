echo -e $green “User Masukan Nama Apa Saja Contoh : Mr.M2t_404”

echo -e $purple
read -p “User Namer :  ”  user

read -p “Password    : ” sandi

if [ $sandi = “Mr.M2t_404” ] #Mr.M2t_404 itu kata sandinya silahkan kalian ganti sesuai keiningan

then

clear

echo -e $green

figlet -f smslant “Login Success ”

echo -e “$green ============================================================================”

else

echo -e $red “Password Salah NYET,- :v”

exit

fi

read -r -p "Are you sure? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        echo "yes"
        ;;
    *)
        echo "no"
        ;;
esac