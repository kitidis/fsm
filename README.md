
# ��������� ������ ��� �������� ���������
������ ����������� �������� ����� ��������, ����������� ������� whitebox/blackbox ����������� ���� ��� �������� ���������.
Whitebox: �� ������ ������������ ��������.
Blackbox: HSI ����� � ����� ������ ����� ���������.

## ��������� ��������� ������

test.exe [-h] [-i INPUT_FSM] [-o OUTPUT_TEST] [-m MODEL_TYPE] [-mt METHOD]

���������:
| ��������       | ��������                                                        |
|----------------|-----------------------------------------------------------------|
| -h, --help     | ������� �������                                                 |
| -i INPUT_FSM   | ���� � �������� ����� ��������� ��������                        |
| -o OUTPUT_TEST | ���� � ��������� �����, ����������� �������� ������������������ |
| -m MODEL_TYPE  | ������ ���������� �����: black_box/white_box                    |
|-mt METHOD      | ����� ��������� ����� ��� ������ black_box: transition_tour/hsi |

## ������
**test.fsm**
`F 0`
`s 4 START END CONNECT DISCONNECT`
`i 2 INPUT-1 INPUT-2`
`o 2 OUTPUT-1 OUTPUT-2`
`n0 START`
`p 8`
`START INPUT-1 DISCONNECT OUTPUT-1`
`START INPUT-2 START OUTPUT-2`
`END INPUT-1 START OUTPUT-2`
`END INPUT-2 START OUTPUT-1`
`CONNECT INPUT-1 START OUTPUT-1`
`CONNECT INPUT-2 DISCONNECT OUTPUT-1`
`DISCONNECT INPUT-1 CONNECT OUTPUT-1`
`DISCONNECT INPUT-2 END OUTPUT-1`


> test.exe -i test.fsm -o 0.seq -m white_box
test.exe -i test.fsm -o 0.seq -m black_box -mt transition_tour
test.exe -i test.fsm -o 0.seq -m black_box -mt hsi

## ������ ����� �������� �������
F <���, ����� 0>
s <���������� ���������> <��������� 1> <��������� 2> ...
i <���������� ������� ��������> <������� ������ 1> <������� ������ 2> ...
o <���������� �������� ��������> <�������� ������ 1> <�������� ������ 2> ...
n0 <��������� ���������>
p <���������� ���������>
[������� 1: <��������� ���������> <������� ������> <�������� ���������> <�������� ������>]
...
