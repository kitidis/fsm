test.exe -i etalon.fsm -o 0.seq -m white_box
test.exe -i etalon.fsm -o 0.seq -m black_box -mt transition_tour
test.exe -i etalon.fsm -o 0.seq -m black_box -mt hsi

test.exe -i nd.fsm -o 0.seq -m white_box

test.exe -i nd.fsm -o 0.seq -m black_box -mt transition_tour
test.exe -i not_connected.fsm -o 0.seq -m black_box -mt transition_tour

test.exe -i nd.fsm -o 0.seq -m black_box -mt hsi
test.exe -i not_connected.fsm -o 0.seq -m black_box -mt hsi
test.exe -i not_fully_defined.fsm  -o 0.seq -m black_box -mt hsi

test.exe -i lit.fsm -o 0.seq -m white_box
test.exe -i lit.fsm -o 0.seq -m black_box -mt transition_tour
test.exe -i lit.fsm -o 0.seq -m black_box -mt hsi