mkdir -p blank
echo $1
rsync --delete-before -a -H -v --progress --stats blank/  $1
