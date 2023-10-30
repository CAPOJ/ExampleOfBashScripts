echo -n "Введите путь до файла,оригинал заменяемой подстроки и саму замену "
read fileName orig replace
if [ -e "$fileName" ]
then
sed -i '' "s/$orig/$replace/gi" $fileName
echo -n "Строка была успешно заменена"
shcode=$(shasum -a 256 edit.sh | cut -f1 -d ' ') 
path="src/$fileName"
size=$(stat -f %z edit.sh)
data=$(date "+%Y-%m-%d %H:%M")
echo "$path - $size - $data - $shcode - sha256" >> files.log
else
echo -n "Данного файла не существует"
fi
