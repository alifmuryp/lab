
list
IFS='/'
for item in "${list[@]}"; do
  split=( $item )
  echo "'${split[*]^}'"
done