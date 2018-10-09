
# Генератор тестов для конечных автоматов
Данный репозиторий содержит пакет программ, позволяющих строить whitebox/blackbox проверяющий тест для конечных автоматов.
Whitebox: на основе мутационного автомата.
Blackbox: HSI метод и метод обхода графа переходов.

## Параметры командной строки

test.exe [-h] [-i INPUT_FSM] [-o OUTPUT_TEST] [-m MODEL_TYPE] [-mt METHOD]

параметры:
| параметр       | описание                                                        |
|----------------|-----------------------------------------------------------------|
| -h, --help     | выводит справку                                                 |
| -i INPUT_FSM   | путь к входному файлу конечного автомата                        |
| -o OUTPUT_TEST | путь к выходному файлу, содержащему тестовые последовательности |
| -m MODEL_TYPE  | Модель построения теста: black_box/white_box                    |
| -mt METHOD     | Метод генерации теста для модели black_box: transition_tour/hsi |

## Пример
**test.fsm**
```F 0
s 4 START END CONNECT DISCONNECT
i 2 INPUT-1 INPUT-2
o 2 OUTPUT-1 OUTPUT-2
n0 START
p 8
START INPUT-1 DISCONNECT OUTPUT-1
START INPUT-2 START OUTPUT-2
END INPUT-1 START OUTPUT-2
END INPUT-2 START OUTPUT-1
CONNECT INPUT-1 START OUTPUT-1
CONNECT INPUT-2 DISCONNECT OUTPUT-1
DISCONNECT INPUT-1 CONNECT OUTPUT-1
DISCONNECT INPUT-2 END OUTPUT-1
```


> test.exe -i test.fsm -o 0.seq -m white_box
test.exe -i test.fsm -o 0.seq -m black_box -mt transition_tour
test.exe -i test.fsm -o 0.seq -m black_box -mt hsi

## Формат файла конечный автомат
    F <тип, равно 0>
    s <количество состояний> <состояние 1> <состояние 2> ...
    i <количество входных символов> <входной символ 1> <входной символ 2> ...
    o <количество выходных символов> <выходной символ 1> <выходной символ 2> ...
    n0 <начальное состояние>
    p <количество переходов>
    [переход 1: <начальное состояние> <входной символ> <конечное состояние> <выходной символ>]
    ...
