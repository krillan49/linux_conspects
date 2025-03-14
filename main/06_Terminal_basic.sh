echo "                                         Терминал. Bash"

# https://putty.org.ru/articles/unix-linux-ref        -  справочник по командам

# Терминал - это программа позволяющая запускать оболочку/shell например zsh или bash. При помощи команд терминала(командной строки) Linux можно выполнять людые действия в операционной системе.

# Разница между оболочкой, терминалом и консолью:
# Оболочка — это интерпретатор командной строки, который работает где-то «под» вашим рабочим столом. Оболочка может работать незримо, но её команды по-прежнему будут выполняться (например, оболочка запускает ваш пользовательский сеанс).
# Терминал — это приложение, которое в Linux работает на графическом сервере (например, X11 или Wayland) с загруженной в него оболочкой. Терминал работает только тогда, когда у вас запущено окно терминала. Грубо говоря, это интерфейс для оболочки.
# «Текстовая консоль» или «виртуальная консоль» — это термин, обычно используемый для обозначения оболочки, работающей вне вашего рабочего стола. Вы можете перейти к виртуальным консолям, нажав Alt-Ctrl-F1 (Alt-Ctrl-F2 и так далее). Комбинация клавиш может отличаться в зависимости от вашего дистрибутива.

# Bash — одна из наиболее популярных современных разновидностей командной оболочки UNIX. В среде Linux она часто используется в качестве предустановленной командной оболочки. Представляет собой командный процессор, работающий, как правило, в интерактивном режиме в текстовом окне

# $ bash --version                 - посмотреть версию GNU Bash

# Команду можно запускать с курсором в любой точке строки(не обязательно двигать в конец)

# В терминале можно запускать любые установленные приложения просто указав их название
# $ vim              - запустим текстовый редактор vim (выход из vim  :qa и нажать энтер)
# $ firefox          - запустить браузер firefox



echo "                                          zsh(Z shell)"

# https://ohmyz.sh/
# https://gist.github.com/dogrocker/1efb8fd9427779c827058f873b94df95      - автоподсказки

# zsh(Z shell) - современная командная оболочка UNIX

# "hello%"
# % - в оболочке zsh значит что нет символа перехода на новую строку



echo '                                       Синтаксис директорий'

# /            - корневая директория
# .            - текущая директория
# ..           - директория выше текущей
# ./some       - папка some в текущей директории тоже, что и просто some
# /home        - директория с папками пользователей
# ~            - домашняя директория, аналог /home/username

# krillan@krillan-itp-ubuntu:~/Документы$    -    имя_пользователя@имя_сервера:текущая_директория$

# Вне зависимости от языка системы можно писать имена директорий на английском (например и "Загрузки" и "Downloads")

# При введении в терминал имен фаилов или директорий состоящих из нескольких слов, разделенных обычным пробелом, нужно взять это название в одинарные кавычки
# $ cd ~/'Рабочий стол'       - переходим в директорию Рабочий стол



echo "                                    Спецсимволы для команд и путей"

# Можно помещать в аргументы команд, например названия фаилов или в пути

# *  - обозначает любое количество любых символов
# ?  - обозначает любой одиночный символ



echo "                                     Поиск команд и их описания"

# $ whereis uptime        - выводит путь к местонахождению программы и местонахождению документации к ней

# $ man -k time           - найдет все команды которые содержат в названии или описании слово time
# $ man uptime            - выведет подменю с подробным описанием команды uptime (выход: q, поиск написать: \текст, переключиться на следующее совпадение при поиске: n)

# $ info uptime           - выведет подменю с альтернативной докумментацией к команде (выход: q)

# $ whatis uptime         - краткое описание команды uptime



echo "                                  Основные и навигационные команды"

# $ !!                       - выполнить предыдущую команду
# $ sudo !!                  - выполнить предыдущую команду от суперюзера


# $ exit      - закрыть терминал или вернуться в состояние предыдущего пользователя который был сменен через "su"
# $ clear     - очистить терминал от всех записей


# $ reboot now             - перезапустить компьютер сейчас
# $ shutdown now           - выключить компьютер сейчас


# $ hostname     - вывести название компьютера
# $ uptime       - показывает время и сколько времени включен компьютер, сколько пользователей


# 0. echo - оператор для вывода текстовых сообщений в терминал.
# ?? выведет какой-то текст(с кавычками строка, без кавычек массив) ??
# -n  - флаг отменяет перевод строки в конце строки(тоесть выведет в начале следующей строки, до адреса даже)
# $ echo "folder done"     - вывести сообщение folder done в терминал
# $ echo folder done       - тоже самое(можно без кавычек)
# $ echo -n "folder done"  - вывести сообщение folder done в терминал без перевода строки(n  - флаг в скрипте просто не добавит энтер и следующая строка пойдет сразу)

# $ echo $PATH             - вывести переменные среды


# 1. pwd - (print working directory) выводит текущую рабочую директорию
# ~$ pwd                #=> /home/username


# 2. cd - выполняет переход между директориями, после нее пишем полный или относительный путь.
# $ cd fname                   - перейти в папку fname в текущей директории (относиельноый путь)
# $ cd ~                       - перейти в домашнюю директорию активного пользователя
# $ cd                         - перейти в домашнюю директорию активного пользователя
# $ cd /                       - перейти в корневую директорию
# $ cd ~/Desktop               - перейти в директорию рабочего стола
# $ cd ~/Загрузки/ваша_папка   - перейти по полному пути
# $ cd Загрузки/ваша_папка     - перейти по относительному пути
# $ cd ..                      - перейти на директорию вверх
# $ cd ../Загрузки/ваша_папка  - перейти на директорию вверх и далее по относительному пути


# 3. ls - просмотреть содержимое какой либо директории
# $ ls                  - просмотреть содержимое текущей директории
# $ ls /home/username   - просмотреть содержимого в папке /home/username
# $ ls *.txt
# $ ls -R some          - посмотреть рекурсивно, тоесть и в директориях что находятся внутри директории some
# $ sudo ls -la -R /    - посмотреть содержимое всех директорий на компе (sudo тк некоторые доступны только суперюзеру)
# $ ls -l               - отображение подробной информации относительно файлов, линков(путь) и папок (доступ, владелец, вес)


# 4. tree - команда показывает все фаилы и папки, как в данной директории, так и во всх поддиректориях в виде дерева, а так же пишет общее число директорий и фаилов. По умолчанию не установлена
# $ sudo apt install tree              - установка команды tree
# $ tree                               - посмотреть дерево от текущей директории
# $ tree www                           - посмотреть дерево от директории www по относительному пути


echo "                                              Флаги"

# К каждой команде есть дополнительные опции (флаги). Они добавляют дополнительное действие при выполнении команды.

# $ ls --help            - посмотреть все дополнительные опции(флаги) к команде ls

# Примеры для ls
# $ ls -l                - отображение подробной информации относительно файлов, линков(путь) и папок (доступ, владелец, вес)
# $ ls -a                - показывает так же скрытые фаилы и дериктории(имена начинающиеся с . втч . и ..)
# $ ls -r                - выведет в обратном порядке (по умолчанию алфавитный)
# $ ls -p                - выведет в формате name/
# $ ls -p -r             - несколько флагов
# $ ls -la               - несколько флагов альтернативный вариант

# между -r и -R нету разницы(? или в некоторых случаях всетаки есть ?)

# атрибуты пишем не через дефис?  -v, -x...  Раньше всё через дефис было, а теперь без. Какая разница? - никакой (? только для архивов или везде ?)
# Дефис нужен там, где команда может принять аргумент, чтобы отличить флаг от аргумента ??



echo "                                    Разные дополнительные команды"

# $ bc           - превратит терминал в калькулятор, может считать float числа. 'quit' - выход

# $ calendar     - выдаст все знаменательные мировые события, случившиеся в мире сегодня и завтра(нужно установить)
# $ cal          - выдаст удобный календарь на этот месяц(нужно установить 'ncal')

# $ xterm        - открыть дополнительный терминал xterm(нужно установить)


# date - команда выводит дату и время в удобном формате в виде строки. Можно самостоятельно задать форматирование вывода. Форматирование задается после знака +. Первый символ после знака % интерпретируется как один из модификаторов. А остальные символы выводятся как обычный текст.
# $ date                                         - удобный формат даты и времени в строке
# $ date -u                                      - можно вывести в мировом UTC-формате
# $ date +'%e.%m.%Y'                             - форматирование в день.месяц.год
# $ date +’%a %d.%m.%g %R’                       - форматирование в кратком виде в 24-часовом формате
# $ date +'Сегодня %e число %m месяца %Y года'   - форматирование с дополнительным текстом
# $ TZ=America date                              - дата и время в другом часовом поясе (для страны по Столице?)
# $ TZ=America/New_York date                     - дата и время в другом часовом поясе (для страны по городу)














#
