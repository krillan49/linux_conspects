echo "                            Команды поиска путей к фаилам и директориям"

# locate - выведет пути ко всем фаилам(только системным и исполняемым) по названию в системе(нужно установить)
# $ sudo apt install plocate            - установить
# $ locate readme.txt                   - выведет пути ко всем фаилам readme.txt в системе
# $ locate *.txt                        - выведет пути ко всем фаилам *.txt в системе



echo "                              Команды поиска фаилов и директорий: find"

# find - команда выполняет поиск файлов и папок по их названию, типу, размеру итд и выводит их названия в консоль. Команда ищет и в указанной дирректории и во всех вложенных в указанную директориях

# $ find [путь от которого ищем] [флаги типа поиска и их параметры]

# Флаги:
# -type  - идет всегда 1м. В значении указываем что ищем: d - папку; f - фаил.   -type [d/f]
# -name  - для поиска по названию папки или фаила, в значении стандатный аргумент поиска, например: "*.txt"
# -iname - по названию папки или фаила без учета регистра "*.TXT"
# -perm  - по коду доступа, в значении нужно указать код (можно указывать и стикибит) например 0764
# -size  - по размеру фаила, перед числом размера можно указать: +(больше чем) или -(меньше чем), а после единицу измерения, например k(килобайт, именно строчная) или M(мегабайт, именно заглавная). -size [+/-][число][k/M]
# -not [-name/-iname/-perm/-size] [значение поиска] - флаг ищет фаилы противоположные критерию поиска флага после него

# Примеры:
# $ find . -type f -name "fi*.txt"            - находит все фаилы с именем соовтветсвующим "fi*.txt" в текущей директории
# $ find ~/Загрузки -type d -iname "*n*"      - находит все папки в директории "~/Загрузки", что содержат букву "n" в названии
# $ find -type f -perm 664                    - находит в текущей директории все фаилы с доступом 664
# $ find -type f -size +1M                    - находит фаилы больше 1 мегабайта
# $ find www -type f -size -10k               - находит в папке www фаилы меньше 10 килобайт
# $ find -type f -not -name "*.txt"           - находит все фаилы с расширением НЕ "txt"
# $ find . -type f -not -perm 0664 -not -iname "*.txt" -size -100k       - поиск по множеству флагов














#
