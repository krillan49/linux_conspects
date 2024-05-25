echo "                                       Bash Shell скрипты"

# Bash Shell является усовершенствованной вариацией командного терминала

# Bash это интерпретатор

# Bash скрипт – файл с расширением .sh, что содержит список команд для выполнения в терминале ОС Линукс. При помощи Bash скрипта вы можете выполнять управление вашей операционной системой.

# $ bash --version                 - посмотреть версию GNU Bash

# Создаем фаил скрипта любым удобным способом. Название любое. Расширение - .sh. Для создания скрипта можно использовать любой текстовый редактор. Например nano.

# В скриптах можно описывать любые команды, терминала. При запуске файла все команды будут выполнены друг за другом в терминале.


# $ ./script.sh                    - выполнить скрипт только если есть права 'x' на этот фаил(можно поставить например a+x)
# $ bash script.sh                 - выполнить скрипт даже без прав 'x' на этот фаил



echo "                                   Базовый синтаксис. Оператор echo"

# 1. В фаиле баш-скрипта в самом верху нужно обязательно(? почемуто работает и без) прописать закомментированную строку, чтобы система поняла что это именно баш-скрипт:
#!/bin/bash
#!/bin/bash -e               # вариант с кодварс

# 2. Далее можем писать любые команды, каждую с новой строки и они будут выпонены по порядку, когда будет запущен скрипт. Например:
ls
mkdir folder
echo "folder done" # в скрипте аргумент обязательно в 2йных кавычках, можно добавлять множество в любых местах скрипта
touch folder/index.html
tree
xterm &     # & - чтобы не ждать выполнения этой команды(тут запуск терминала) и выполнять скрипт дальше
echo "All done"

printf '%s' "${rr[(("$num" & 0x1))]}"   # оператор вывода с нормальной интерполяцией ?? хз как работает

# 3. Далее сохраняем фаил скрипта, заходим в терминал и запускаем его
# $ bash script.sh                 - выполнить баш скрипт



echo "                                              Переменные"

# Чтобы создать переменную нужно указать ее название(нельзя использовать только спецсимволы), присваиваем в нее значение при помощи символа "=" (между символами не должно быть пробелов). Можно установить любое значение:
num=6                # переменная с целым числом
NUM2=45.5            # с флоат числом
str="Vasya"          # со строкой(обязательно в 2йных кавычках)
com=`ls`             # с выводом команды(обязательно в косых кавычках). ? Любая по сложности команда или набор команд ?

# $ перед именем переменной берет ее значение
per="Inter is $num"  # интерполяция переменной в строку при помощи символа "$" и присвоение в другую переменную

compname=`hostname`
ping -c 4 $compname  # применяем переменную как параметр в команде

# Чтобы вывести переменную на экран, можно воспользоваться интерполяцией в строку оператора echo,
echo -n "Per is $num..."     #=> Per is 6...
# -n  - этот флаг в скрипте просто не добавить энтер и следующая строка пойдет сразу
echo "Per is $com"           #=> выведет название фаила и все фаилы и папки в столбик
echo "$str is $NUM2"         #=> Vasya is 45.5

# Зарезервированные переменные:
# $0  - содержит название фаила в котором записана
echo "$0"              #=> script.sh



echo "                                       Операции над переменными"

a=1
b=2

# Чтобы осуществить операцию над переменными, нужно заключить ее в "$((операция))"

# + - * / ** %    - математические операторы(деление целочисленное) (?? почемуто работают только с целыми числами, а для флоат выдает ошибку)
res=$((a+b))    # можно как без $
res=$(($a+$b))  # так и с $

# let - команда переназначения переменной, тоже можно выполнять операции
let a=5
let a+=1
let a++

# При помощи команды expr
res=$(expr $a % 2)   # пробелы обязательны
c=`expr $a * $b`



echo "                                    Получение данных от пользователя"

# 1. Через нумерованные переменные

# Чтобы получить значение от передаваемых пользователем параметоров, нужно обратиться к нумерованной переменной например $1 или $2 или $7 итд, которая содержит 1й, 2й, 7й итд передаваемый пользователем в скрипт параметр. Те 0 сам скрипт, потом параметры (?тоесть нумерация просто всех слов в строке команды?)
a=$1                  # присваиваем 1й передаваемый параметр в переменную (хотя можно использовать и так)
b=$2
str=$3
res=$((a+b))
echo "$str is $res"

# Если пользователь не передаст параметр то значение по умолчанию будет 0"

# Чтобы пользователю передать данные для параметров нужно ввести их через пробел при запуске скрипта, для передачи строковых параметров не нужны кавычки, кроме одинарных если содержатся пробелы
# $ bash script.sh 10 15 Result        #=> Result is 25
# $ bash script.sh 20 15 Scuf          #=> Scuf is 35


# 2. Через команду read - считывание от пользователя с введением параметра после запуска скрипта и того как он дойдет до строки с этой командой

# В 2 строки
echo "Enter the number: "
read num

# В одну стоку
read -p "Enter the number: " num
# "Enter the number " - сообщение которое увидит пользователь в консоли
# num - переменная примет значение которое введет пользователь

echo "Your number is $num"

# Далее при запуске скрипта пользователь получит в терминале сообщение и возможность ввести параметр после него
# $ bash script.sh
#=> Enter the number:     # далее в этой же строке пользователь вводит параметр (например 6) нажимает энтер
#=> Your number is 6


# Эти 2 способа получения переменных можно комбинировать



echo "                                         Условные операторы"

# 1. Условный оператор if, далее квадратные скобки с пробелами вокруг(можно больше 1 для выравнивания), далее условия (?? переменные лучше выводить в кавычках так будут подставляться значения переменных, но работает нормально и без кавычек ??)

# операторы ==, > или < используется ТОЛЬКО для сравнения строк, чля чисел они работают некорректно
# Операторы сравнения для чисел:
# ==   это   -eq        хотя == так же работает
# >    это   -gt
# >=   это   -ge
# <    это   -lt
# <=   это   -le

read -p "Enter the number: " num

if [ "$num" -eq 5 ]; then    # далее исполняемый код с новой строки, тут например стандартную команду
  ls
elif [ "$num" -gt 10 ]; then # elif - дополнительное условие
  echo "Your number greater then 10"
elif [ "$(expr $num % 2)" -eq 0 ]; then echo "Even"   # можно писать в строку если только одна строка
else                        # после else уже не нужно писать "; then" (? если одна строка можно писать в одну строку)
  read -p "Enter your name: " name
  echo "$name"
fi                          # fi - закрывает условный оператор if

# $ bash script.sh
#=> Enter the number: 16
#=> Your number greater then 10


# 2. Условный оператор case
case $1 in # далее пишем все условия-соответсвия с новой строки и за ними скобуц
       1) echo "one";;               # равен числу
   [2-9]) echo "two-nine";;          # входит в диапазон
  "Soso") echo "privet Soso";;       # равен строке
       *) echo "wrong parametr";;    # * - аналог else
esac # закрываем словом наоборот
# $ bash script.sh 1       #=> one
# $ bash script.sh 6       #=> two-nine
# $ bash script.sh Soso    #=> privet Soso
# $ bash script.sh aaa     #=> wrong parametr



echo "                                         Циклы: for и while"

# 1. Цикл while
i=0
while [ $i -lt 10 ]; do
  echo "El = $i"
  i=$(($i+1))
done


# 2. Цикл for
for (( i=1; i<=10; i++ )); do  # пробелы вокруг скобок обязательны
  echo "El = $i"
done                           # ключевое слово закрытия цикла


# Альтернативный синтаксис for с использованием диапазона
for i in {2..5}; do   # тоесть присваиваем в переменную i значения от 2х до 5
  echo "El = $i"
done

# Можно применить к обходу вывода команд
for file in `ls *.txt`; do   # все фаилы из вывода команды будут передаваться в переменную по очереди
  cat $file
done
# тут работает и без ls
for file in *.txt; do
  cat $file
done




echo "                                          Функции(?процедуры?)"

# Функция создается без ключевых слов просто название()

divide() {   # ?? скобки в принципе не принмают параметры ??
  echo "Params: $0 $1 $2" # Нумерованные параметры в теле функции, передаются при вызыве функции, а не просто скрипта, тк это локальная область видимости функции. Но параметр 0 все равно имя скрпта

  a=5 # новые переменные объявленные в теле функции являются глобальными(те выходят в поле видимости всего скрипта)
  local b=3 # локальная переменная функции определяется через доп слово local

  echo "vars is $a $b"   #=> vars is 5 3

  if [ "$2" == 0 ]; then
    echo "ZerroError"
  else
    res=$(($1/$2))
    echo "Res is $res"
  fi

  # Нет ретурна, те ничего не возвращается, значит это не функция а процедура ??
}

echo "vars is $a $b"   #=> vars is 5       # не будет ошибки если переменная не определена

divide 10 2  # вызов функции, после названия параметры через пробел, круглые кобки не нужны
divide 10 0  # еще 1 вызов

k=$(divide $a 5) # присвоение в переменную результата функции

# Далее запускаем в терминале
# $ bash script.sh
#=> Params: script.sh 10 2
#=> Res is 5
#=> Params: script.sh 10 0
#=> ZerroError


# Тру функции
set -e # хз зачем ??

function even_or_odd() {
  local num=$1
  ensure_integer "$num"
  local rr=(Even Odd)
  printf '%s' "${rr[(("$num" & 0x1))]}"
}

function ensure_integer() {
  local text=$1
  if [[ "$text" =~ ^[+-]?[0-9]+$ ]]; then
    return 0
  fi
  printf 1>&2 '%s is Not an Integer Number\n' "$text"
  return 1
}


even_or_odd "$1"

















#