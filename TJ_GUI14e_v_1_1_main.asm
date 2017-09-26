_main:
;TJ_GUI14e_v_1_1_main.c,24 :: 		void main() {
;TJ_GUI14e_v_1_1_main.c,26 :: 		InitVTFTStack();
BL	_InitVTFTStack+0
;TJ_GUI14e_v_1_1_main.c,28 :: 		while (1) {
L_main0:
;TJ_GUI14e_v_1_1_main.c,29 :: 		ProcessVTFTStack();
BL	_ProcessVTFTStack+0
;TJ_GUI14e_v_1_1_main.c,30 :: 		}
IT	AL
BAL	L_main0
;TJ_GUI14e_v_1_1_main.c,32 :: 		}
L_end_main:
L__main_end_loop:
B	L__main_end_loop
; end of _main
