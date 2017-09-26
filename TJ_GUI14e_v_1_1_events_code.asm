_AutomaticCtrlBackOnClick:
;TJ_GUI14e_v_1_1_events_code.c,9 :: 		void AutomaticCtrlBackOnClick() {
SUB	SP, SP, #4
STR	LR, [SP, #0]
;TJ_GUI14e_v_1_1_events_code.c,10 :: 		DrawScreen(&HomeScr);
MOVW	R0, #lo_addr(_HomeScr+0)
MOVT	R0, #hi_addr(_HomeScr+0)
BL	_DrawScreen+0
;TJ_GUI14e_v_1_1_events_code.c,11 :: 		}
L_end_AutomaticCtrlBackOnClick:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _AutomaticCtrlBackOnClick
_AutomaticCtrlSetOnClick:
;TJ_GUI14e_v_1_1_events_code.c,13 :: 		void AutomaticCtrlSetOnClick() {
;TJ_GUI14e_v_1_1_events_code.c,15 :: 		}
L_end_AutomaticCtrlSetOnClick:
BX	LR
; end of _AutomaticCtrlSetOnClick
_FinButtAutOnClick:
;TJ_GUI14e_v_1_1_events_code.c,17 :: 		void FinButtAutOnClick() {
;TJ_GUI14e_v_1_1_events_code.c,19 :: 		}
L_end_FinButtAutOnClick:
BX	LR
; end of _FinButtAutOnClick
_FlPumButManOnClick:
;TJ_GUI14e_v_1_1_events_code.c,21 :: 		void FlPumButManOnClick() {
;TJ_GUI14e_v_1_1_events_code.c,23 :: 		}
L_end_FlPumButManOnClick:
BX	LR
; end of _FlPumButManOnClick
_FlValButtManOnClick:
;TJ_GUI14e_v_1_1_events_code.c,25 :: 		void FlValButtManOnClick() {
;TJ_GUI14e_v_1_1_events_code.c,27 :: 		}
L_end_FlValButtManOnClick:
BX	LR
; end of _FlValButtManOnClick
_HomeAdjustmentsOnClick:
;TJ_GUI14e_v_1_1_events_code.c,29 :: 		void HomeAdjustmentsOnClick() {
;TJ_GUI14e_v_1_1_events_code.c,31 :: 		}
L_end_HomeAdjustmentsOnClick:
BX	LR
; end of _HomeAdjustmentsOnClick
_HomeAlertCtrlOnClick:
;TJ_GUI14e_v_1_1_events_code.c,33 :: 		void HomeAlertCtrlOnClick() {
;TJ_GUI14e_v_1_1_events_code.c,35 :: 		}
L_end_HomeAlertCtrlOnClick:
BX	LR
; end of _HomeAlertCtrlOnClick
_HomeAutomaticCtrlOnClick:
;TJ_GUI14e_v_1_1_events_code.c,37 :: 		void HomeAutomaticCtrlOnClick() {
SUB	SP, SP, #4
STR	LR, [SP, #0]
;TJ_GUI14e_v_1_1_events_code.c,38 :: 		DrawScreen(&AutomaticCtrlScr);
MOVW	R0, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R0, #hi_addr(_AutomaticCtrlScr+0)
BL	_DrawScreen+0
;TJ_GUI14e_v_1_1_events_code.c,39 :: 		}
L_end_HomeAutomaticCtrlOnClick:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _HomeAutomaticCtrlOnClick
_HomeCheckListOnClick:
;TJ_GUI14e_v_1_1_events_code.c,41 :: 		void HomeCheckListOnClick() {
;TJ_GUI14e_v_1_1_events_code.c,43 :: 		}
L_end_HomeCheckListOnClick:
BX	LR
; end of _HomeCheckListOnClick
_HomeCtrlInfoOnClick:
;TJ_GUI14e_v_1_1_events_code.c,45 :: 		void HomeCtrlInfoOnClick() {
;TJ_GUI14e_v_1_1_events_code.c,47 :: 		}
L_end_HomeCtrlInfoOnClick:
BX	LR
; end of _HomeCtrlInfoOnClick
_HomeEngineInfoOnClick:
;TJ_GUI14e_v_1_1_events_code.c,49 :: 		void HomeEngineInfoOnClick() {
;TJ_GUI14e_v_1_1_events_code.c,51 :: 		}
L_end_HomeEngineInfoOnClick:
BX	LR
; end of _HomeEngineInfoOnClick
_HomeManualCtrlOnClick:
;TJ_GUI14e_v_1_1_events_code.c,53 :: 		void HomeManualCtrlOnClick() {
;TJ_GUI14e_v_1_1_events_code.c,55 :: 		}
L_end_HomeManualCtrlOnClick:
BX	LR
; end of _HomeManualCtrlOnClick
_HomeSaveDataOnClick:
;TJ_GUI14e_v_1_1_events_code.c,57 :: 		void HomeSaveDataOnClick() {
;TJ_GUI14e_v_1_1_events_code.c,59 :: 		}
L_end_HomeSaveDataOnClick:
BX	LR
; end of _HomeSaveDataOnClick
_IgButtManOnClick:
;TJ_GUI14e_v_1_1_events_code.c,61 :: 		void IgButtManOnClick() {
;TJ_GUI14e_v_1_1_events_code.c,63 :: 		}
L_end_IgButtManOnClick:
BX	LR
; end of _IgButtManOnClick
_IgValButtManOnClick:
;TJ_GUI14e_v_1_1_events_code.c,65 :: 		void IgValButtManOnClick() {
;TJ_GUI14e_v_1_1_events_code.c,67 :: 		}
L_end_IgValButtManOnClick:
BX	LR
; end of _IgValButtManOnClick
_LighErrAutOnClick:
;TJ_GUI14e_v_1_1_events_code.c,69 :: 		void LighErrAutOnClick() {
;TJ_GUI14e_v_1_1_events_code.c,71 :: 		}
L_end_LighErrAutOnClick:
BX	LR
; end of _LighErrAutOnClick
_LighErrManOnClick:
;TJ_GUI14e_v_1_1_events_code.c,73 :: 		void LighErrManOnClick() {
;TJ_GUI14e_v_1_1_events_code.c,75 :: 		}
L_end_LighErrManOnClick:
BX	LR
; end of _LighErrManOnClick
_LighOKAutOnClick:
;TJ_GUI14e_v_1_1_events_code.c,77 :: 		void LighOKAutOnClick() {
;TJ_GUI14e_v_1_1_events_code.c,79 :: 		}
L_end_LighOKAutOnClick:
BX	LR
; end of _LighOKAutOnClick
_LighOKManOnClick:
;TJ_GUI14e_v_1_1_events_code.c,81 :: 		void LighOKManOnClick() {
;TJ_GUI14e_v_1_1_events_code.c,83 :: 		}
L_end_LighOKManOnClick:
BX	LR
; end of _LighOKManOnClick
_ManualCtrlBackOnClick:
;TJ_GUI14e_v_1_1_events_code.c,85 :: 		void ManualCtrlBackOnClick() {
;TJ_GUI14e_v_1_1_events_code.c,87 :: 		}
L_end_ManualCtrlBackOnClick:
BX	LR
; end of _ManualCtrlBackOnClick
_ManualCtrlSetOnClick:
;TJ_GUI14e_v_1_1_events_code.c,89 :: 		void ManualCtrlSetOnClick() {
;TJ_GUI14e_v_1_1_events_code.c,91 :: 		}
L_end_ManualCtrlSetOnClick:
BX	LR
; end of _ManualCtrlSetOnClick
_OilCtrlButtMan_OnClick:
;TJ_GUI14e_v_1_1_events_code.c,93 :: 		void OilCtrlButtMan_OnClick() {
;TJ_GUI14e_v_1_1_events_code.c,95 :: 		}
L_end_OilCtrlButtMan_OnClick:
BX	LR
; end of _OilCtrlButtMan_OnClick
_StpEngButtAutOnClick:
;TJ_GUI14e_v_1_1_events_code.c,97 :: 		void StpEngButtAutOnClick() {
;TJ_GUI14e_v_1_1_events_code.c,99 :: 		}
L_end_StpEngButtAutOnClick:
BX	LR
; end of _StpEngButtAutOnClick
_StrEngButtAutOnClick:
;TJ_GUI14e_v_1_1_events_code.c,101 :: 		void StrEngButtAutOnClick() {
;TJ_GUI14e_v_1_1_events_code.c,103 :: 		}
L_end_StrEngButtAutOnClick:
BX	LR
; end of _StrEngButtAutOnClick
_StrPumButtAutOnClick:
;TJ_GUI14e_v_1_1_events_code.c,105 :: 		void StrPumButtAutOnClick() {
;TJ_GUI14e_v_1_1_events_code.c,107 :: 		}
L_end_StrPumButtAutOnClick:
BX	LR
; end of _StrPumButtAutOnClick
_StrStrButtAutOnClick:
;TJ_GUI14e_v_1_1_events_code.c,109 :: 		void StrStrButtAutOnClick() {
;TJ_GUI14e_v_1_1_events_code.c,111 :: 		}
L_end_StrStrButtAutOnClick:
BX	LR
; end of _StrStrButtAutOnClick
_StrStrButtManOnClick:
;TJ_GUI14e_v_1_1_events_code.c,113 :: 		void StrStrButtManOnClick() {
;TJ_GUI14e_v_1_1_events_code.c,115 :: 		}
L_end_StrStrButtManOnClick:
BX	LR
; end of _StrStrButtManOnClick
