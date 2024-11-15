es#!/bin/bash
echo $HOME
echo $PATH

color="Gren"
ColorCode="556526565"

echo "$color - $ColorCode"

KernelVersion=$(uname -a)

echo "$KernelVersion"
echo ""
echo "Математические операции"
echo ""
OneNumber=2
TwoNumber=4

echo ""

echo 'summ=$(($OneNumber + $TwoNumber))'
echo ""
summ=$(($OneNumber + $TwoNumber))

#echo "$summ"

echo 'diff=$(($OneNumber - $TwoNumber))'
echo ""
diff=$(($OneNumber - $TwoNumber))

#echo "$diff"
echo 'mult=$(($OneNumber * $TwoNumber))'
echo ""
mult=$(($OneNumber * $TwoNumber))

#echo "$mult"
echo 'div=$(($OneNumber / $TwoNumber))'
div=$(($OneNumber / $TwoNumber))

#echo "$div"

echo ""

echo "Массивы"

echo "Индексируемые массивы"

echo ""

declare -a array1

array1[0]=1
array1[1]=2
array1[2]=3

array2=(One Two Three)

echo $array1
echo $array2

echo ""

echo ${array1[2]}
echo ${array2[1]}

echo ""

echo "Ассоциативные массивы"

declare -A array3

array3[One]=1
array3[Two]=2
array3[Three]=3

echo ${array3[Two]}

echo ""

echo ${array1[@]}
echo ${array2[@]}
echo ${!array3[@]}
echo ${array3[@]}

echo ""
echo "Второй способ наполнения ассоциативного массива"

declare -A array4=(
[four]=4
[five]="five"
[six]=6

)

echo ${!array4[@]}
echo ${array4[@]}
echo ${array4[four]}

echo ""

echo 'echo $((${array4[four]} + ${array4[six]}))'
echo $((${array4[four]} + ${array4[six]}))
echo ""

echo "Операции с массивами"
echo ""
echo "Длинна массива"

echo "Колличество элементов в массиве: ${#array1[@]}"

declare -a array
 
array[3]=1
array[5]=2
array[10]=3
echo "Колличество элементов в массиве: ${#array[@]}"
echo "Колличество элементов в массиве: ${#array[*]}"
echo "Индексы элементов в массиве: ${!array[@]}"
echo "Значение индекса 5 в массиве: ${array[5]}"
echo ""

echo "
######################################################
Установка и удаление индексированных элементов массива
######################################################
"

unset array[3]
echo "Колличество элементов в массиве: ${#array[*]}"
echo "Индексы элементов в массиве: ${!array[@]}"

echo ""

unset array

declare -a array
array[3]=2
echo "Колличество элементов в массиве: ${#array[*]}"
echo ""
echo "Индексы элементов в массиве: ${!array[@]}"

echo ""
echo "
##############################
Добавление элементов в массив
##############################"
array[4]=3

array+=(10)
array+=(11)
array+=(12)
echo ""
echo "
#############################################
Добавление в масив элементов другого массива
#############################################
"
echo ""

array+=(${array1[@]})
array+=(${array2[1]})
echo "Колличество элементов в массиве: ${#array[*]}"
echo "Индексы элементов в массиве: ${!array[@]}"
echo ${array[@]}

echo ""
echo "
##########################
Оператор if
##########################
"

if uname
then
	echo "uname works fine" && echo ""
fi

if  grep  tandem  /etc/passwd
then 
	echo "user tandem is exist" && echo ""
fi

############################################################

user=tandem
if  grep  $user  /etc/passwd
then 
        echo "user $user is exist"
else
	echo "user $user doesn't exist"
fi

###############################################################
echo ""
user=tandem
if  grep  $user  /etc/passwd
then 
        echo "user $user is exist"

elif ls /home/$user
	then  "Home directory $user"
else
        echo "user $user doesn't exist"
fi

echo ""
#####################################################################

echo "
######################
Сравнение чисел
######################
"

echo "
-eq - равно
-ge - больше или равно
-gt - больше
-le - меньше или равно 
-lt - меньше
-ne - не равно
"

#####################################

num1=1
num2=2
num3=3

if [ $num1 -eq $num2 ]
then
	echo "$num1 равно $num2"

elif  [ $num1 -gt $num2 ]
	then
	echo "$num1 больше $num2"

elif  [ $num1 -lt $num2 ]
	then
        echo "$num1 меньше $num2"

fi

echo ""
 #####################################################################

echo "
#####################
Сравнение строк
######################
"
echo ""

echo "
=  - равно
!= - не равно
\<  - меньше
\>  - больше
-n - истина если длинна строки не нулевая
-z - истина если длинна строки нулевая
"
string1="test"
string2="test1"
string3="test1"
string4=""

if [ $string1 = $string2 ]
then
        echo "$string1 равно $string2"

elif  [ $string1 \> $string2 ]
        then
        echo "$string1 больше $string2"

elif  [ $string1 \< $string2 ]
        then
        echo "$string1 меньше $string2"
elif [ -z $string1 ]
	then
	echo "string1 пустая строка"
fi

echo ""
echo  "
###################
Сравнение файлов
######################
"
echo ""


 echo "

-d -  истина если файл существует и является директорией
-e -  истина если существует файл 
-f -  истина если файл существует и является файлом
-r -  истина если  файл существует и доступен для чтения
-s -  истина если файл существует и он пустой
-w -  истина если файл существует и доступен для записи 
-x -  истина если файл существует и доступен для исполнения
-nt - проверяется является ли файл более новым по сравнению с другим
-ot - проверяется является ли файл более старым по сравнению с другим
-O  - проверяет что файл существует и его владелец текущий пользователь
-G  - проверяет что файл существует идентификатор группы  соответствует идентификатору группы пользователя
"

echo ""

homeDir=$HOME
scriptsDir=/Bash/scripts

if  [ -d $homeDir  ]
then 
	echo "Yes"

else
	echo "No"

fi

echo ""

if  [ "/home/tandem/bash/skript/tar1/1.md" -ot "/home/tandem/bash/skript/tar1/10.md"  ]
then 
        echo "Yes"

else
        echo "No"

fi


echo ""

echo "Цикл  for in"

echo ""

echo "
########################
 for var(переменная) in list
	do
		команда
	done

########################
"

readonly some_array=(one 2 three 4 five "six" seven eight nine ten "Hello my friend")

for item in "${some_array[@]}"
do
	echo "$item"
done

#######################################

for item in "${some_array[@]}"
do
	if [[ ${#item} -eq 3 ]]
	then
		echo "$item Длинна строки равна 3"
	else
        	echo "$item Длинна строки не равна 3"
	fi
done







