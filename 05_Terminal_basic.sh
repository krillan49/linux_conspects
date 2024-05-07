echo "                                             Терминал"

# Название символов:
# ~ - тильда
# ^ - карет
# & - и
# | - или
# \ - бэкслэш
# / - слэш

# Ctrl + Alt + T   - открыть терминал, так же можно зайти через меню приложений или обзор на верхней панели

# В терминале вместо полного введения названия команды, файла или папки можно ввести начальные символы и нажать tab, а терминал дополнит остальную часть названия или предложит альтернативы, если вариантов больше одного

# При помощи команд терминала(командной строки) Linux можно выполнять людые действия в операционной системе.
# Eсть некоторые дистрибутивы, что вовсе не содержат графический интерфейс
# Ctrl + Alt + F1  - любой дистрибутив можно переключить в консольный режим отключив графическую оболочку

# Папка /home/ это userspace/пользовательское пространство. Для личных файлов, фотографий итд. А корневая папка(доступная только суперюзеру), она и является корнем и обозначается она как "/"

# .            - текущая директория (иногда может пригодиться)
# ./some       - папка some в текущей директории тоже что и просто some
# ~            - (тильда) домашняя директория, аналог /home/username
# ~$           - слева от "$" пишется текущая директория (тут домашния директория)
# ~/Загрузки$  - тоесть текущая директория это /home/username/Загрузки  (Не обязательно писать "Загрузки" на русском. Можно и "Downloads")

# При введении в термил имен фаилов или директорий состоящих из нескольких слов разделенных обычным пробелом, нужно взять это название в одинарные кавычки
# $ cd ~/'Рабочий стол'       - переходим в директорию Рабочий стол

# В терминале можно запускать любые установленные приложения просто указав их названия
# $ vim              - запустим текстовый редактор vim (выход из vim  :qa и нажать энтер)
# $ firefox          - запустить браузер firefox



echo "                                       Основные команды"

# $ exit      - закрыть терминал или вернуться в состояние предыдущего пользователя который был сменен через "su"
# $ clear     - очистить терминал от записей

# $ uname -a   - получить название нашей операционной системы и ее версию


# 1. pwd - выводит текущую рабочую директорию. PWD расшифровывается как «print working directory».
# ~$ pwd    #=> /home/username


# 2. cd - выполняет переход между папками(директориями), после нее пишем полный или относительный путь.
# $ cd fname                   - перейти в папку что находится в текущей директории (относиельноый путь)
# $ cd ~                       - перейти в домашнюю директорию
# $ cd                         - перейти в домашнюю директорию
# $ cd ~/Загрузки/ваша_папка   - перейти по полному пути
# $ cd Загрузки/ваша_папка     - перейти по относительному пути
# $ cd ..                      - перейти на директорию вверх
# $ cd ../Загрузки/ваша_папка  - перейти на директорию вверх и по относительному пути


# 3. ls - просмотреть содержимое какой либо директории
# $ ls                  - просмотреть содержимое текущей директории
# $ ls /home/username   - просмотреть содержимого в папке /home/username
# $ l                   - посмотреть содержимое директории с обозначением папок как name/


# К каждой команде есть дополнительные опции (флаги). Они добавляют дополнительное действие при выполнении команды. Чтобы просмотреть все возможные опции для определенной команды пропишите после неё «--help»
# $ ls --help            - посмотреть все дополнительные опции к команде ls
# $ ls -l                - отображение подробной информации относительно файлов и папок (права доступа, кто создал, вес)
# $ ls -r                - выведет в обратном порядке (по умолчанию алфавитный)
# $ ls -p                - выведет в вормате name/  (аналог команды l)
# $ ls -p -r             - можно указывать несколько флагов


# 4. tree - команда показывает все фаилы, папки как в данной директории, так и во всх поддиректориях в виде дерева, а так же пишет общее число директорий и фаилов. Изначально не установлена так что нужно установить
# $ sudo apt install tree              - установка команды tree
# $ tree                               - посмотреть дерево от текущей директории
# $ tree www                           - посмотреть дерево от директории www по относительному пути


echo "                                   Работа с фаилами и директориями"

# 0. cat - команда выводит содержимое фаила в консоль
# $ cat some/file.txt                             - выведет в консоль содержимое фаила some/file.txt


# 1. touch - команда позволяет создать один или несколько файлов(не может создавать папки)
# $ touch index.html                              - будет создан файл index.html в текущей директории
# $ touch www/index.html                          - будет создан файл в папке www
# $ touch www/index.html www/css/style.css        - будет создано два файла в папке www и в www/css


# В Linux в зависимости от версии могут присутствовать разные встроенные или устаневливаемые текстовые редакторы. Наиболее популярными являются: nano, pico(почти копия nano), vim, gedit(редактор для графической оболочки, как стандартный блокнот на винде, открывает фаилы при 2йном нажатии именно он).

# 2. nano - команда позволяет открыть фаил для редактирования при помощи текстового редактора nano, но если фаил не существует, то он будет создан и открыт. В окне редактирования можно изменять фаил, снизу прописаны дополнительные команды, где символ "^" обозначет ctrl
# $ nano                                 - создать и открыть новый фаил в текстовом редакторе nano
# $ nano index.html                      - будет создан или открыт файл index.html
# $ nano www/index.html                  - будет создан или открыт файл index.html из папки www


# 3. mkdir - позволяет создать папку в определенной директории, можно создать как одну, так и несколько папок одновременно. Но нельзя создать сразу и папку и папку внутри нее
# $ mkdir www                            - будет создана папка www в текущей директории
# $ mkdir www/css user                   - будут созданы две папки(одна в уже существующей папке www)


# 4. cp - используется для копирования файла. При копировании можно указать новое имя и новую папку для файла.
# $ cp file.txt file2.txt                 - копирование file.txt и изменение его имени на file2.txt
# $ cp file.txt www                       - копирование file.txt из текущей директории в www/
# $ cp file.txt www/file2.txt             - копирование file.txt из текущей директории в www/ и изменение его имени на file2.txt
# $ cp ~/some/file.txt www/file2.txt      - копирование file.txt из директории ~/some/
# $ cp ~/some/file.txt .                  - копирование file.txt из директории ~/some/ в текущую директорию


# 5. mv - позволяет переместить(вырезать и вставить) файл из одной папки в другую.
# $ mv test/file.txt some                 - перемещение файла file.txt из папки test в папку some
# $ mv file.txt ..                        - перемещение файла на уровень выше(тут выше от текущего уровня рабочей директории)
# $ mv www/file.txt www/..                - перемещение фаила из папки www в текущую папку


# 6. rm - команда удаляет один или несколько файлов.
# $ rm test/some/file.txt                 - удаление файла file.txt из директории test/some/
# $ rm file.txt some.html                 - удаление файлов file.txt и some.html
# $ rm test/*                             - удалить все фаилы из директории test/
# $ rm test/*.txt                         - удалить все фаилы с расширением .txt из директории test/
# $ rm text.*                             - удалить все фаилы с названием text.
# $ rm file_*.txt                         - удаление всех файлов, что начинаются на file_ и заканчиваются .txt

# Для удаления папок нужно дописать опцию -rf
# -r - ключ используется для того, чтобы выполнять рекурсивный обход всех директорий.
# -f - (force) ключ - не запрашивать никаких подтверждений.
# $ rm -rf test/dir                       - удаление папки dir из папки test/



echo "                       Команды поиска, сортировки и записи: find, grep, sort, >"

# 1. find - команда выполняет поиск файлов и папок по их названию, типу, размеру итд и выводит их названия в консоль. Команда ищет и в указанной дирректории и во всех вложенных в указанную директориях
# $ find [путь где ищем] далее флаги типа поиска и их параметры:
# -type  - 1й флаг после которого мы указываем что ищем, "d" - папку или "f" - фаил  -type [d/f]
# -name  - флаг для поиска по названию папки или фаила, после него в кавычках стандатный аргумент поиска "*.txt"
# -iname - по названию папки или фаила без учета регистра "*.TXT"
# -perm  - по коду доступа, далее нужно указать код (? добавив 0, хз зачем и без него работает) например 0764
# -size  - по размеру фаила, перед числом размера можно указать +(больше чем) или -(меньше чем), а после единицу измерения, например k(килобайт, именно строчная) или M(мегабайт, именно заглавная) -size [+/-][число][k/M]
# -not [-name/-iname/-perm/-size] [значение поиска] - флаг ищет фаилы противоположные критерию поиска флага после него

# $ find . -type f -name "fi*.txt"            - находит все фаилы с расширением "txt" и начинающиеся на "fi" в текущей директории
# $ find ~/Загрузки -type d -iname "*n*"      - находит все папки в директории "~/Загрузки", что содержат букву "n" в названии
# $ find -type f -perm 664                    - находит в текущей директории все фаилы с доступом 664
# $ find -type f -size +1M                    - находит фаилы больше 1 мегабайта
# $ find www -type f -size -10k               - находит в папке www фаилы меньше 10 килобайт
# $ find -type f -not -name "*.txt"           - находит все фаилы с расширением НЕ "txt"
# $ find . -type f -not -perm 0664 -not -iname "*.txt" -size -100k       - поиск по множеству флагов


# 2. grep - команда для поиска информации внутри файлов, отображает строки, где были найдены совпадения. Искомый текст выведет выделенным красным, при поиске в нескольких фаилах выведет названия фаилов перед найденным в них текстом
# $ grep [доп флаги] ["текст для поиска"] [путь с именем фаила в котором ищем]
# -n  - флаг выведет номера строк в которых найдено совпадение
# -i  - флаг делает поиск нечувствительным к регистру

# $ grep "text" some/main.txt            - находит все слова "text" в файле some/main.txt
# $ grep text some/main.txt              - можно задавать значение без кавычек
# $ grep "text" some/main.txt test.txt   - находит все слова "text" в файлах some/main.txt и test.txt
# $ grep -n -i main* main.cpp            - находит слово "main" в файле main.cpp. Выводит номер строки и не учитывает регистр

# (?? почемуто не работает со звездочками до букв "*main" и ищет только если звездочки после main* ??)


# 1+2. find + grep. Обрамляем grep в -exec ... {} +, сделав его дополнительной командой
# -exec  - флаг говорит о том что после одной команды выполним другую (потом проверить с другими командами)
# {}     - обозначают в какое место подставляется вывод команды find (с именем файла), что позволяет нам дать аргумент для команды grep, теперь она знает в каких фаилах искать
# +      - grep будет выполнен сразу ко всем файлам, которые найдет find, а не к каждому по очереди. То есть + слепит все найденные адреса файлов в одну строку фактически

# $ find ~ -type f -iname "*.txt" -exec grep -n -i "*ma*" {} +       - поиск файлов и нахождение в них слова

# В каких то программах нет ключа -exec, они просто выплёвывают всё в строку.
# С I/O (потоками ввода/вывода) выполнить цепочку команд проще. Передаем результат, как аргумент с помощью синтаксиса "команда которая выдает что-то в терминал" | "команда, которой в качестве аргументов передаётся результат предыдущей команды"

# $ ls | grep t               - выведет все имена фаилов в которых есть буква "t"(? нужно именно без кавычек, тк ищем в выводе консоли), тоесть ищет именно в выводе консоли, а не внутри фаилов как обычно


# 3. sort - команда сортировки данных(? строк разделенных \n) в фаиле. Сортирует фаилы только для вывода в консоль, не меняя сам фаил. По умолчанию сортирует в алфавитном порядке
# $ sort names.txt                                 - сортировка в алфавитном порядке
# $ sort -n nums.txt                               - сортировка в числовом порядке
# $ sort -n nums.txt > nums_ord.txt                - сортировка и запись результатов в другой фаил(который создастся)














#
