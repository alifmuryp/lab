read -p "file directory : " file
read -p "Custom judul : " judul
read -p "Custom url : " url
tanggal=$(date +"%m-%d-%Y""T""%T""Z")

# draft ==================================
echo "Apakah Postingan ini Draft? 
============================"
read -p "[y/n] : " draft
## ===== ini draft
case "$draft" in
    [yY][eE][sS]|[yY]) 
        draft=true
        ;;
    *)
        draft=false
        ;;
esac

# authors ==================================
echo "Apakah kamu MuryP? 
============================"
read -p "[y/nama kamu] : " autors
## ===== ini authors
case "$autors" in
    [yY][eE][sS]|[yY]) 
        name=MuryP
        ;;
    *)
        name=$autors
        ;;
esac

# komentar ==================================
echo "Ingin Gunakan Komentar ? 
============================"
read -p "[y/n] : " komentar
## ===== ini komentar
case "$komentar" in
    [yY][eE][sS]|[yY]) 
        komen=true
        ;;
    *)
        komen=false
        ;;
esac

# tipe ==================================
echo "Apakah ini tipe Post ? 
============================"
read -p "[y/n] : " tipe
## ===== ini tipe
case "$tipe" in
    [yY][eE][sS]|[yY]) 
        type=Post
        ;;
    *)
        type=Page
        ;;
esac

# taksonomi ==================================
read -p "ingin menggunakan taksonomi [y/n] : " taxonomy
## ===== ini taksonomi
case "$taxonomy" in
    [yY][eE][sS]|[yY]) 
        read -p "Your Taxonomy : " takso
hasilTakso="$takso: \\n"
        InputTaxonomy="masukkan $takso _________"
while [ "$InputTaxonomy" != "" ]
do
  echo "======================= Kosongi untuk selesai"
  read InputTaxonomy
  echo "Kamu menambahkan: $InputTaxonomy"
  hasilTakso+="- $InputTaxonomy\\n"
done
echo $hasilTakso
        ;;
    *)
        echo "Kamu tidak menggunakan taxonomy"
        ;;
esac
# img ==================================
read -p "Whant use Image [y/n] : " imgy
## ===== ini img
case "$imgy" in
    [yY][eE][sS]|[yY]) 
        read -p "image : " img
        ;;
    *)
        img="none"
        ;;
esac


# thumb ===========================
read -p "Whant use thumbnail [y/n] : " thumby
## ===== ini thumb
case "$thumby" in
    [yY][eE][sS]|[yY]) 
        read -p "Link : " thumb
        ;;
    *)
        thumb="none"
        ;;
esac



read -p "Description : " deskripsi
#================================== end quest
shopt -s xpg_echo
isi="
---\\n
title: "$judul" \\n 
slug: $url \\n 
date: $tanggal \\n
draft: $draft \\n
authors:\\n
- $name \\n
show_comments: $komen \\n
\\n
type: $type \\n
$Taxonomy: \\n
$hasilTakso\\n
image: "img/$img.png" \\n 
thumbnail : "thumb/$thumb.png" \\n 
\\n
description: "$deskripsi" \\n 
--- \\n
Hello World!
Kembali lagi dengan saya, kali ini kita akan membahas \"$judul\"
"
## build file ==========
echo $isi >> content/$file/$url.md

echo "file berhasil dibuat di : content/$file/$url.md"
