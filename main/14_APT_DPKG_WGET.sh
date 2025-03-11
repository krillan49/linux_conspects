echo "                                         Пакетные менеджеры"

# Linux содержит встроенный пакетный менеджер. С его помощью можно скачивать из репозитория, устанавливать, обновлять и удалять приложения. В зависимости от дистрибутива пакетный менеджер может отличаться, но принцип его работы будет неизменным.

# Пакеты - это приложения, хранящиеся в репозитории в виде архивов

# Пакетные менеджеры разные для 2х групп дистрибутивов:
# Debian дмтрибутивы(Ubuntu, Mint итд)                    - apt-get      .deb пакеты
# Red Hat Enterprise Linux дистрибутивы(CentOS итд)       - yum          .rpm пакеты



echo "                                   Пакетный менеджер apt-get (Debian)"



# APT(Advanced Package Tool) - система управления пакетами: установки, обновления, удаления итд. Работает именно с программами из репозиториев

# Если мы хотим чтото установить, обновить или удалить, то нужно это делать от имени администратора

# Вместо команд 'apt-get' или 'apt-cache' можно использовать просто 'apt'


# Существует один общий стандартный репозиторий, а так же множество дополнительных репозиториев(к ним нужно подключиться отдельными командами, которые есть обычно в подборках приложений)
# https://linuxhint.com/100_best_ubuntu_apps/            -  Подборка популярных Ubuntu приложений
# (только стандартный или все репозитории ??) все программы проходят отбор, прежде чем попасть в репозиторий, они безопасны, зашифрованы итд итп


# 1. apt-get install - команда для скачивания и установки приложений, которые есть в стандартном репозитории
# $ sudo apt-get install vim                              - установим текстовый редактор vim
# $ sudo apt-get install git-core automake nodejs         - можно установить множество пакетов сразу


# 2. apt-get remove - команда для удаления приложений. Удаляет программу и все файлы, что связаны с ней.
# $ sudo apt-get remove vim              - удалим vim
# $ sudo apt autoremove google-chrome    - (??? хз в чем разница remove и autoremove ???)


# 3. apt-get upgrade - команда для обновления всех приложений(пакетов) взятых из любых репозиториев
# $ sudo apt-get upgrade                 - обновит все установленные в системе приложения


# 4. apt-cache policy - команда ищет пакет(приложкение) на нашем ПК и выдает инфу есть ли она на компе или нет и если ее нет, то дает инфу где можно скачать и какая будет оптимальная версия
# $ apt-cache policy vim                 - выдаст инфу о приложении


# 5. apt-cache search - команда ищет пакет(приложкение) в стандартном репозитории. Может искать по неполному названию и предлагать варианты, в зависимости введенных символов.
# $ apt-cache search bluefi              - выдаст список программ в названии которых есть "bluefi"


# 6. add-apt-repository - команда для добавления новых репозиториев в систему управления пакетами. Она упрощает процесс добавления PPA(Personal Package Archives) и других сторонних репозиториев, в которых могут быть проги, которых нет в стандартных репозиториях. После этого обычно рекомендуется выполнить команду "sudo apt-get update", чтобы обновить кэш пакетов и получить доступ к прогам из добавленного репозитория
# $ sudo add-apt-repository ppa:webupd8team/atom         - добавляем репозиторий webupd8team/atom
# -y    - опция чтобы автоматически подтвердить все запросы ??
# -r    - опция чтобы удалить указанный репозиторий


# 7. apt-get update  - команда для обновления списка доступных пакетов и их версий из репозиториев. При выполнении команды система обращается к списку серверов указанным в фаиле "/etc/apt/sources.list" и других фаилах в каталоге "/etc/apt/sources.list.d/" и загружает с них информацию о доступных пакетах. Команда не устанавливает и не обновляет пакеты, она только обновляет локальный кэш информации о пакетах. После выполнения этой команды обычно используют "apt-get upgrade" для установки доступных обновлений, т по сути для этого мы и обновили инфу
# $ sudo apt-get update

# $ cat /etc/apt/sources.list       - посмотреть доки со ссылками на репозитории, которые использует apt-get, чтобы скачивать из них пакеты
# $ cat /etc/apt/sources.list.d/    - посмотреть фаилы адресами репозиториев
# $ cat /etc/apt/sources.list.d/*   - посмотреть сами адреса репозиториев из этих фаилов


# Пример с подключением к дополнительному (не стандартному) репозиторию и установке текстового редактора Атом
# $ sudo add-apt-repository ppa:webupd8team/atom
# $ sudo apt-get update
# $ sudo apt-get install atom



echo '                                            curl (Debian)'

# curl - менеджер пакетов, командная утилита, которая облегчает скачивание фаилов из командной строки

# Установим curl:
# $ sudo apt-get install curl       -  стандартным способом
# $ sudo aptitude install curl      -  либо с помощью менеджера пакетов aptitude


# Дополнительно curl умеет посылать HTTP запросы
# $ curl -X POST http://localhst:3000/questions > result.txt    - посылаем запрос на свой же локалхост и записываем ответ в фаил
# -X   - флаг позволяет выбрать метод запроса



echo "                                    Пакетный менеджер yum (Red Hat)"

# $ sudo yum install имя_пакета                - Скачать и установить из репозитория
# $ sudo yum remove имя_пакета                 - удалить установленную программу



echo "                                       wget - скачивания по URL"

# wget - команда для скачивания данных по полному URL адресу. (узнать адрес, правая кнопка -> "Копировать URL картинки")
# $ wget [полный URL-адрес]

# $ wget https://itproger.com/img/tests/1623991914.svg             - скачиваем картинку с данного URL в текущую директорию



echo "                                 DPKG - установщик программ .deb (Debian)"

# DPKG – программное обеспечение, позволяет установить программу из установочного/инсталяционного фаила с расширением .deb(Debian)

# В отличие от пакетного менеджера работает с фаилами установщиками, а не с репозиторием

# На примере Гуглхром(но также можно скачать чтото через wget), скачиваем установочный фаил .deb с оф сайта гуглхрома(предложит вариант DEB - дебиан/убунту), жмем кнопку, выбираем просто сохранить фаил, чтобы установить его вручную, а не при помощи графического интерфейса

# dpkg - команда установки из .deb при помощи DPKG
# -i   - (install) флаг значит что мы хотим устанавить
# -r   - флаг значит что хотим удалить установленную программу

# $ sudo dpkg -i название_установочного_фаила.deb    - (название берем из скаченного фаила) установка приложения из фаила .deb

# Далее можно найти наше приложение через меню приложений или запустить через терминал. Название можно взять из имени фаила, до названия версии(например до слова stable)
# $ google-chrome

# Для поиска фаилов программы можно воспользоваться:
# $ whereis имя_программы - выводит путь к местонахождению программы и местонахождению документации к ней

# $ sudo dpkg -r название_приложения        - удаление установленного приложения



echo "                                    Установщик программ .rpm (Red Hat)"

# rpm - команда позволяет установить программу из установочного/инсталяционного фаила с расширением .rpm(Red Hat)
# -i   - (install) флаг значит что мы хотим устанавить
# -e   - флаг значит что хотим удалить установленную программу

# $ sudo rpm -i название_установочного_фаила.rpm   - (название берем из скаченного фаила) установка приложения из фаила .rpm

# Если программа не запускается то стоит запустить с указанием полного пути перед именем программы(найти через whereis)

# $ sudo rpm -e название_приложения                - удаление приложения














#
