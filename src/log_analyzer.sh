echo ' Введите путь до файла'
read path
if [ -e "$path" ]
then
lines=$(echo $(wc -l $path)|cut -d ' ' -f 1)
uniq=$(awk '!U[$1]++{count++}END{print count}' files.log)
chngs=$(($lines-$uniq))
echo "$lines $uniq $chngs"
else
echo 'Данного файла не сщуествует'
fi
