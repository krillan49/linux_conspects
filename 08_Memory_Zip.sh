echo "                           Команды диспетчеров задач, просмотра памяти"

# $ top             - чемто похоже на диспетчер задач из Windows но только в терминале. Показывает какие процессы запущены от какого пользователя и сколько ресурсов на какие процессы тратится. Чтобы выйти из программы нужно нажать "q"

# $ free            - показывает сколько памяти доступно и сколько занято в байтах
# $ free -h         - показывает сколько памяти доступно, переводит байты в мегабайты или гигабайты для удобочитаемости

# $ ps                        - посмотреть запущенные данным пользователем программы (только запущенные вручную)
# $ ps -aux                   - посмотреть запущенные всеми пользователями программы (в том числе запущенные системой)
# $ ps -aux | grep a          - посмотреть все строки вывода где есть буква a (буква выделится красным)



echo "                                    Архивация, сжатие файлов"

# 1. tar - команда (архиватор) выполняет архивацию фаилов, создает папку(??) с расширением .tar. Не сжимает файлы, а лишь создает архив, тоесть вес не уменьшится. Формат .tar не совместим с Windows(? и Мак).

# Опции/флаги:
# cf  - (create folder) опция которая говорит что создаем папку архива
# tf  - (test folder) опция для тестирования, тоесть просмотра какие папки и фаилы содержит архив
# xf  - (extract folder) опция для разархивирования(извлечения) содержимого архива
# xvf - (extract v folder) опция для разархивирования(извлечения) содержимого архива с выводом инфы в терминал

# $ tar cf archive.tar video              - будет создан архив archive.tar из папки video и ее содержимого(сама папка останется)
# $ tar tf archive.tar                    - просмотр в терминале какие папки и фаилы содержит архив
# $ tar xf archive.tar                    - будет извлечено содержимое архива (сам архив останется)
# $ tar xvf archive.tar                   - будет извлечено содержимое архива, а так же его содержимон выведется в терминал


# Если нужно не только создать архив, но и сжать его, то нужно воспользоваться одним из доступных методов компресии: gzip, bzip2, xz. Все они сжимают файлы архива .tar. Разница в методе(например чтото удобнее для картинок, чтото для текста итд), скорости и эффективности сжатия(компрессии).

# xz - команда для сжатия архива формата .tar. Сжимает существующий архив, добавляя к нему расширение .xz
# Сжимает текст 10k байт в 210 байт. Проверить: $ ls -l
# $ xz archive.tar                        - архив archive.tar будет сжат и станет archive.tar.xz
# $ unxz archive.tar.xz                   - распаковка сжатого архива archive.tar.xz обратно в archive.tar

# gzip - команда для сжатия архива формата .tar. Сжимает существующий архив, добавляя к нему расширение .gz
# Сжимает текст 10k байт в 180 байт. Проверить: $ ls -l
# $ gzip archive.tar                      - архив archive.tar будет сжат и станет archive.tar.gz
# $ gunzip archive.tar.gz                 - распаковка сжатого архива archive.tar.gz обратно в archive.tar

# bzip2 - команда для сжатия архива формата .tar. Сжимает существующий архив, добавляя к нему расширение .bz2
# Сжимает текст 10k байт в 160 байт. Проверить: $ ls -l
# $ bzip2 archive.tar                     - архив archive.tar будет сжат и станет archive.tar.bz2
# $ bunzip2 archive.tar.bz2               - распаковка сжатого архива archive.tar.bz2 обратно в archive.tar


# Так же при помощи команды tar можно создавать архив и сжимать его одной командой получая архив с расширением просто, например .gz. Изначальная папка остается.
# czf   - (create zip folder) опция которая говорит что создаем папку архива и сразу ее сжимаем
# cvzf  - (create v zip folder) создаем сжатый архив с выводом инфы в терминал
# -xf   - разархивируем

# $ tar czf archive.xz test              - архивируем и сжимаем папку test в сжатый архив archive.xz
# $ tar czf archive.gz test              - архивируем и сжимаем папку test в сжатый архив archive.gz
# $ tar czf archive.bz2 test             - архивируем и сжимаем папку test в сжатый архив archive.bz2

# Если распаковывать с помощью "gunzip folder.gz" появится просто файл "folder", без расширения. Чтобы разархивировать его окончательно, я использовал "tar -xf folder".

# $ tar -xf archive.xz                   - разархивируем archive.xz и ихвлечем его содержимое (архив остается)
# $ tar -xf archive.gz                   - разархивируем archive.gz и ихвлечем его содержимое (архив остается)
# $ tar -xf archive.bz2                  - разархивируем archive.bz2 и ихвлечем его содержимое (архив остается)



# 2. zip - команда для одновременной архивации и сжатия. Создает стандартный сжатый архив универсального формата .zip, подходящего для разархивации как на Linux, так и на Windows системах, тоесь лучше использовать его, если предполагается работа с этим архивом на разных системах. Но при этом сжатие не самое эффективное. Изначальная папка остается.
# Сжимает текст 10k байт в 320 байт. Проверить: $ ls -l
# $ zip -r название_архива_что_создаем.zip название_папки_которую_хотим_архивировать
# -r  - обязательный флаг. Реверс, типа с конца на начало ??

# $ zip -r archive.zip test               - архивируем и сжимаем папку test с ее содержимвм в архив archive.zip
# $ unzip archive.zip                     - разархивируем archive.zip. Архив остается













#
