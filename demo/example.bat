..\test.exe -i etalon.fsm -o 0.seq -m white_box
..\test.exe -i etalon.fsm -o 1.seq -m black_box -mt transition_tour
..\test.exe -i etalon.fsm -o 2.seq -m black_box -mt hsi

..\test.exe -i nd.fsm -o 3.seq -m white_box

..\test.exe -i nd.fsm -o 4.seq -m black_box -mt transition_tour
..\test.exe -i not_connected.fsm -o 5.seq -m black_box -mt transition_tour

..\test.exe -i nd.fsm -o 6.seq -m black_box -mt hsi
..\test.exe -i not_connected.fsm -o 7.seq -m black_box -mt hsi
..\test.exe -i not_fully_defined.fsm  -o 8.seq -m black_box -mt hsi

..\test.exe -i lit.fsm -o 9.seq -m white_box
..\test.exe -i lit.fsm -o 10.seq -m black_box -mt transition_tour
..\test.exe -i lit.fsm -o 11.seq -m black_box -mt hsi