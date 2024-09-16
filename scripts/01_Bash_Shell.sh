echo "                                       Bash Shell скрипты"

# Bash Shell является усовершенствованной вариацией командного терминала

# Bash - это интерпретатор, он может читать команды из файла, который называется скриптом (или сценарием)

# Bash скрипт – файл с расширением .sh, что содержит список команд для выполнения в терминале ОС Линукс. При помощи Bash скрипта можно выполнять управление операционной системой.

# $ bash --version                 - посмотреть версию GNU Bash

# Создаеть фаил скрипта можно любым удобным способом, например любым текстовый редактор(Например nano).
# Название любое. Расширение - ".sh".

# В скриптах можно описывать любые команды, терминала. При запуске файла все команды будут выполнены друг за другом в терминале.


# $ ./script.sh                    - выполнить скрипт только если есть права 'x' на этот фаил(можно поставить например a+x)
# $ bash script.sh                 - выполнить скрипт даже без прав 'x' на этот фаил


exit 0  # остановить скрипт например в зависимости от условия


# Запустить скрипт на Руби, если он установлен
script="
print ['z', *'a'..'z']['$1'.chars.sum { |x| x.ord - 96 } % 26]
"
echo $script | ruby



echo "                                           Базовый синтаксис"

# 1. В фаиле баш-скрипта в самом верху нужно обязательно(? почемуто работает и без) прописать закомментированную строку, чтобы система поняла что это именно баш-скрипт:
#!/bin/bash
#!/bin/bash -e               # вариант с кодварс

# 2. Далее можем писать любые команды, каждую с новой строки и они будут выпонены по порядку, когда будет запущен скрипт. Например:
ls
mkdir folder
echo "folder done"      # в скрипте аргумент echo ??обязательно в 2йных кавычках??
touch folder/index.html
tree
xterm &                 # & - чтобы не ждать выполнения этой команды(тут запуск терминала) и выполнять скрипт дальше
echo "All done"

# 3. Далее сохраняем фаил скрипта, заходим в терминал и запускаем его
# $ bash script.sh                 - выполнить баш скрипт














#
