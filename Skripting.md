## Сценарии

**Ctrl+A** - начало строки **Ctrl+E** - конец строки

**echo $?** - код завершения последней операции.

**if**

if [...] then

команда

elif # иначе если

else # иначе

команда

if

![scrin](https://github.com/MalovAleksey/Linux/blob/main/skript/2024-03-05_14-56-34.png).

![script](https://github.com/MalovAleksey/Linux/blob/main/skript/2024-03-05_15-02-01.png).

**Регулярные выражения**

![scrin](https://github.com/MalovAleksey/Linux/blob/main/skript/2024-03-05_15-32-58.png).

**case - ДОПИСАТЬ**

### Цыклы

**for - ДОПИСАТЬ**

**while - ДОПИСАТЬ**


**STDIN(0)** ввод **STDOUT(1)** - вывод в терминал **STDERR(2)**- ошибки

**>** - записать в файл **>>** - дописать в файл **2>** - направить ошибки.

**cut** 

- cut -b 1-4 -вырезать 1-4 байт строки. -с - вырезать символ
- 
-  cut -b 4- -вырезат все начиная с 4 байта.
-  
-  cut -b -4 -вырезат все начиная до 4 байта.
-  
-  cut -d: -f1 /etc/passwd - вырезать первый столбец, разрелитель :

**sort** 

- sort -t: -k3 -n /etc/group - отсортировать по третьему столбцу, -n числовая сортировка, -u -вывести уникальные значения.

**uniq** 
-c - посчитать количество экземпляров каждой строки

-d отобразить только дубликаты

-u -уникальные

 cut -d: -f7 /etc/passwd | sort | uniq -c - 

 **wc** /etc/group - посчитать количество строк, слов, байт

 -с - размер объекта в байтах

 -m -количество символов

 -l -количество строк

 -w - количество слов

 **head**

 **teil**

 -f - вывести в новь поступившие строки. Просмотр логов в реальном времени.
 
 -n - указать количество строк.
 
 -q - не выводить имя файла.

 **less** - для просмотра многостраничных файлов.

**grep**

-c - вывести количество совпаиших строк.

-l - только имена файлов совпавшие с шаблоном.

-v - отличающиеся от шаблона строки.

-i - игнорировать регистр.

 **fc** - передать последнюю команду в терминале в файл.

 **read** - приглашение ввода данных.

  **&&** - логическое И, **||** - логическое ИЛИ, следующая команда выполнится только если предыдущая ренула не 0

  **" \ "** - перенос команды на следующую строку.

  **mkdir foo; cd foo; touch file1** - последовательное выполнение нескольких команд.

Присвоение переменных

**variable=1 

echo ${variable}

1**

**Пример с кавычками**

$ mylang="Pennsylvania Dutch"

$ echo "I speak ${mylang}."

I speak Pennsylvania Dutch.

$ echo 'I speak ${mylang}.'

I speak $(mylang). 

**Бэктики**

$ echo "Тhere are `wc -1 < /etc/passwd` lines in the passwd file." -в бэктиках выполнится командв и выведется её результат.

There are 28 lines in the passwd file. 

**Переменные окружения**

**printrnv** - посмотреть все переменные.

**export EDITOR=/user/bin/nano** - назначить значение переменной среды.

