TJ_GUI14e_v_1_1_driver_IsInsideObject:
;TJ_GUI14e_v_1_1_driver.c,764 :: 		static char IsInsideObject(TObjInfo *AObjInfo, unsigned int X, unsigned int Y) {
; Y start address is: 8 (R2)
; X start address is: 4 (R1)
; AObjInfo start address is: 0 (R0)
SUB	SP, SP, #4
MOV	R6, R0
; Y end address is: 8 (R2)
; X end address is: 4 (R1)
; AObjInfo end address is: 0 (R0)
; AObjInfo start address is: 24 (R6)
; X start address is: 4 (R1)
; Y start address is: 8 (R2)
;TJ_GUI14e_v_1_1_driver.c,765 :: 		TRect *ptrPressRect = 0;
; ptrPressRect start address is: 20 (R5)
MOV	R5, #0
;TJ_GUI14e_v_1_1_driver.c,766 :: 		TRect *ptrPressCircle = 0;
; ptrPressCircle start address is: 0 (R0)
MOV	R0, #0
;TJ_GUI14e_v_1_1_driver.c,768 :: 		if ((AObjInfo->HitX == X) && (AObjInfo->HitY == Y))
ADDW	R3, R6, #8
LDRSH	R3, [R3, #0]
CMP	R3, R1
IT	NE
BNE	L_TJ_GUI14e_v_1_1_driver_IsInsideObject381
ADDW	R3, R6, #10
LDRSH	R3, [R3, #0]
CMP	R3, R2
IT	NE
BNE	L_TJ_GUI14e_v_1_1_driver_IsInsideObject380
; AObjInfo end address is: 24 (R6)
; X end address is: 4 (R1)
; Y end address is: 8 (R2)
; ptrPressRect end address is: 20 (R5)
; ptrPressCircle end address is: 0 (R0)
L_TJ_GUI14e_v_1_1_driver_IsInsideObject379:
;TJ_GUI14e_v_1_1_driver.c,769 :: 		return 1;
MOVS	R0, #1
IT	AL
BAL	L_end_IsInsideObject
;TJ_GUI14e_v_1_1_driver.c,768 :: 		if ((AObjInfo->HitX == X) && (AObjInfo->HitY == Y))
L_TJ_GUI14e_v_1_1_driver_IsInsideObject381:
; ptrPressCircle start address is: 0 (R0)
; ptrPressRect start address is: 20 (R5)
; Y start address is: 8 (R2)
; X start address is: 4 (R1)
; AObjInfo start address is: 24 (R6)
L_TJ_GUI14e_v_1_1_driver_IsInsideObject380:
;TJ_GUI14e_v_1_1_driver.c,771 :: 		switch (AObjInfo->Type) {
ADDS	R4, R6, #4
IT	AL
BAL	L_TJ_GUI14e_v_1_1_driver_IsInsideObject3
; ptrPressRect end address is: 20 (R5)
;TJ_GUI14e_v_1_1_driver.c,773 :: 		case VTFT_OT_BUTTONROUND: {
L_TJ_GUI14e_v_1_1_driver_IsInsideObject5:
;TJ_GUI14e_v_1_1_driver.c,774 :: 		ptrPressRect = (TRect *)&(((TButton_Round *)AObjInfo->Obj)->Left);
LDR	R3, [R6, #0]
; AObjInfo end address is: 24 (R6)
ADDS	R3, #8
; ptrPressRect start address is: 12 (R3)
;TJ_GUI14e_v_1_1_driver.c,775 :: 		break;
MOV	R5, R0
; ptrPressRect end address is: 12 (R3)
MOV	R0, R3
IT	AL
BAL	L_TJ_GUI14e_v_1_1_driver_IsInsideObject4
;TJ_GUI14e_v_1_1_driver.c,778 :: 		case VTFT_OT_LABEL: {
L_TJ_GUI14e_v_1_1_driver_IsInsideObject6:
;TJ_GUI14e_v_1_1_driver.c,779 :: 		ptrPressRect = (TRect *)&(((TLabel *)AObjInfo->Obj)->Left);
; AObjInfo start address is: 24 (R6)
LDR	R3, [R6, #0]
; AObjInfo end address is: 24 (R6)
ADDS	R3, #8
; ptrPressRect start address is: 12 (R3)
;TJ_GUI14e_v_1_1_driver.c,780 :: 		break;
MOV	R5, R0
; ptrPressRect end address is: 12 (R3)
MOV	R0, R3
IT	AL
BAL	L_TJ_GUI14e_v_1_1_driver_IsInsideObject4
;TJ_GUI14e_v_1_1_driver.c,783 :: 		case VTFT_OT_IMAGE: {
L_TJ_GUI14e_v_1_1_driver_IsInsideObject7:
;TJ_GUI14e_v_1_1_driver.c,784 :: 		ptrPressRect = (TRect *)&(((TImage *)AObjInfo->Obj)->Left);
; AObjInfo start address is: 24 (R6)
LDR	R3, [R6, #0]
; AObjInfo end address is: 24 (R6)
ADDS	R3, #8
; ptrPressRect start address is: 12 (R3)
;TJ_GUI14e_v_1_1_driver.c,785 :: 		break;
MOV	R5, R0
; ptrPressCircle end address is: 0 (R0)
; ptrPressRect end address is: 12 (R3)
MOV	R0, R3
IT	AL
BAL	L_TJ_GUI14e_v_1_1_driver_IsInsideObject4
;TJ_GUI14e_v_1_1_driver.c,788 :: 		case VTFT_OT_CIRCLE: {
L_TJ_GUI14e_v_1_1_driver_IsInsideObject8:
;TJ_GUI14e_v_1_1_driver.c,789 :: 		ptrPressCircle = (TRect *)&(((TCircle *)AObjInfo->Obj)->Left);
; ptrPressRect start address is: 20 (R5)
; AObjInfo start address is: 24 (R6)
LDR	R3, [R6, #0]
; AObjInfo end address is: 24 (R6)
ADDS	R3, #8
; ptrPressCircle start address is: 0 (R0)
MOV	R0, R3
;TJ_GUI14e_v_1_1_driver.c,790 :: 		break;
STR	R5, [SP, #0]
; ptrPressCircle end address is: 0 (R0)
MOV	R5, R0
LDR	R0, [SP, #0]
IT	AL
BAL	L_TJ_GUI14e_v_1_1_driver_IsInsideObject4
;TJ_GUI14e_v_1_1_driver.c,793 :: 		case VTFT_OT_CIRCLEBUTTON: {
L_TJ_GUI14e_v_1_1_driver_IsInsideObject9:
;TJ_GUI14e_v_1_1_driver.c,794 :: 		ptrPressCircle = (TRect *)&(((TCircleButton *)AObjInfo->Obj)->Left);
; AObjInfo start address is: 24 (R6)
LDR	R3, [R6, #0]
; AObjInfo end address is: 24 (R6)
ADDW	R0, R3, #8
; ptrPressCircle start address is: 0 (R0)
;TJ_GUI14e_v_1_1_driver.c,795 :: 		break;
STR	R5, [SP, #0]
; ptrPressCircle end address is: 0 (R0)
MOV	R5, R0
LDR	R0, [SP, #0]
IT	AL
BAL	L_TJ_GUI14e_v_1_1_driver_IsInsideObject4
;TJ_GUI14e_v_1_1_driver.c,798 :: 		case VTFT_OT_EVEGAUGE: {
L_TJ_GUI14e_v_1_1_driver_IsInsideObject10:
;TJ_GUI14e_v_1_1_driver.c,799 :: 		ptrPressCircle = (TRect *)&(((TEveGauge *)AObjInfo->Obj)->Left);
; AObjInfo start address is: 24 (R6)
LDR	R3, [R6, #0]
; AObjInfo end address is: 24 (R6)
ADDW	R0, R3, #8
; ptrPressCircle start address is: 0 (R0)
;TJ_GUI14e_v_1_1_driver.c,800 :: 		break;
STR	R5, [SP, #0]
; ptrPressRect end address is: 20 (R5)
MOV	R5, R0
LDR	R0, [SP, #0]
IT	AL
BAL	L_TJ_GUI14e_v_1_1_driver_IsInsideObject4
;TJ_GUI14e_v_1_1_driver.c,803 :: 		case VTFT_OT_EVEBUTTON: {
L_TJ_GUI14e_v_1_1_driver_IsInsideObject11:
;TJ_GUI14e_v_1_1_driver.c,804 :: 		ptrPressRect = (TRect *)&(((TEveButton *)AObjInfo->Obj)->Left);
; AObjInfo start address is: 24 (R6)
LDR	R3, [R6, #0]
; AObjInfo end address is: 24 (R6)
ADDS	R3, #8
; ptrPressRect start address is: 12 (R3)
;TJ_GUI14e_v_1_1_driver.c,805 :: 		break;
MOV	R5, R0
; ptrPressRect end address is: 12 (R3)
MOV	R0, R3
IT	AL
BAL	L_TJ_GUI14e_v_1_1_driver_IsInsideObject4
;TJ_GUI14e_v_1_1_driver.c,807 :: 		}
L_TJ_GUI14e_v_1_1_driver_IsInsideObject3:
; ptrPressRect start address is: 20 (R5)
; AObjInfo start address is: 24 (R6)
LDRB	R3, [R4, #0]
CMP	R3, #2
IT	EQ
BEQ	L_TJ_GUI14e_v_1_1_driver_IsInsideObject5
LDRB	R3, [R4, #0]
CMP	R3, #4
IT	EQ
BEQ	L_TJ_GUI14e_v_1_1_driver_IsInsideObject6
LDRB	R3, [R4, #0]
CMP	R3, #6
IT	EQ
BEQ	L_TJ_GUI14e_v_1_1_driver_IsInsideObject7
LDRB	R3, [R4, #0]
CMP	R3, #8
IT	EQ
BEQ	L_TJ_GUI14e_v_1_1_driver_IsInsideObject8
LDRB	R3, [R4, #0]
CMP	R3, #10
IT	EQ
BEQ	L_TJ_GUI14e_v_1_1_driver_IsInsideObject9
LDRB	R3, [R4, #0]
CMP	R3, #25
IT	EQ
BEQ	L_TJ_GUI14e_v_1_1_driver_IsInsideObject10
LDRB	R3, [R4, #0]
CMP	R3, #36
IT	EQ
BEQ	L_TJ_GUI14e_v_1_1_driver_IsInsideObject11
; AObjInfo end address is: 24 (R6)
; ptrPressRect end address is: 20 (R5)
; ptrPressCircle end address is: 0 (R0)
STR	R5, [SP, #0]
MOV	R5, R0
LDR	R0, [SP, #0]
L_TJ_GUI14e_v_1_1_driver_IsInsideObject4:
;TJ_GUI14e_v_1_1_driver.c,809 :: 		if (ptrPressRect) {
; ptrPressRect start address is: 0 (R0)
; ptrPressCircle start address is: 20 (R5)
CMP	R0, #0
IT	EQ
BEQ	L_TJ_GUI14e_v_1_1_driver_IsInsideObject12
; ptrPressCircle end address is: 20 (R5)
;TJ_GUI14e_v_1_1_driver.c,810 :: 		if ((ptrPressRect->Left <= X) && (ptrPressRect->Left+ptrPressRect->Width-1 >= X) &&
LDRSH	R3, [R0, #0]
CMP	R3, R1
IT	HI
BHI	L_TJ_GUI14e_v_1_1_driver_IsInsideObject385
LDRSH	R4, [R0, #0]
ADDS	R3, R0, #4
LDRSH	R3, [R3, #0]
ADDS	R3, R4, R3
SXTH	R3, R3
SUBS	R3, R3, #1
SXTH	R3, R3
CMP	R3, R1
IT	CC
BCC	L_TJ_GUI14e_v_1_1_driver_IsInsideObject384
; X end address is: 4 (R1)
;TJ_GUI14e_v_1_1_driver.c,811 :: 		(ptrPressRect->Top  <= Y) && (ptrPressRect->Top+ptrPressRect->Height-1 >= Y))
ADDS	R3, R0, #2
LDRSH	R3, [R3, #0]
CMP	R3, R2
IT	HI
BHI	L_TJ_GUI14e_v_1_1_driver_IsInsideObject383
ADDS	R3, R0, #2
LDRSH	R4, [R3, #0]
ADDS	R3, R0, #6
; ptrPressRect end address is: 0 (R0)
LDRSH	R3, [R3, #0]
ADDS	R3, R4, R3
SXTH	R3, R3
SUBS	R3, R3, #1
SXTH	R3, R3
CMP	R3, R2
IT	CC
BCC	L_TJ_GUI14e_v_1_1_driver_IsInsideObject382
; Y end address is: 8 (R2)
L_TJ_GUI14e_v_1_1_driver_IsInsideObject378:
;TJ_GUI14e_v_1_1_driver.c,812 :: 		return 1;
MOVS	R0, #1
IT	AL
BAL	L_end_IsInsideObject
;TJ_GUI14e_v_1_1_driver.c,810 :: 		if ((ptrPressRect->Left <= X) && (ptrPressRect->Left+ptrPressRect->Width-1 >= X) &&
L_TJ_GUI14e_v_1_1_driver_IsInsideObject385:
L_TJ_GUI14e_v_1_1_driver_IsInsideObject384:
;TJ_GUI14e_v_1_1_driver.c,811 :: 		(ptrPressRect->Top  <= Y) && (ptrPressRect->Top+ptrPressRect->Height-1 >= Y))
L_TJ_GUI14e_v_1_1_driver_IsInsideObject383:
L_TJ_GUI14e_v_1_1_driver_IsInsideObject382:
;TJ_GUI14e_v_1_1_driver.c,813 :: 		}
IT	AL
BAL	L_TJ_GUI14e_v_1_1_driver_IsInsideObject16
L_TJ_GUI14e_v_1_1_driver_IsInsideObject12:
;TJ_GUI14e_v_1_1_driver.c,814 :: 		else if (ptrPressCircle) {
; ptrPressCircle start address is: 20 (R5)
; Y start address is: 8 (R2)
; X start address is: 4 (R1)
CMP	R5, #0
IT	EQ
BEQ	L_TJ_GUI14e_v_1_1_driver_IsInsideObject17
;TJ_GUI14e_v_1_1_driver.c,815 :: 		if ((ptrPressCircle->Left <= X) && (ptrPressCircle->Left+ptrPressCircle->Width*2-1 >= X) &&
LDRSH	R3, [R5, #0]
CMP	R3, R1
IT	HI
BHI	L_TJ_GUI14e_v_1_1_driver_IsInsideObject389
LDRSH	R4, [R5, #0]
ADDS	R3, R5, #4
LDRSH	R3, [R3, #0]
LSLS	R3, R3, #1
SXTH	R3, R3
ADDS	R3, R4, R3
SXTH	R3, R3
SUBS	R3, R3, #1
SXTH	R3, R3
CMP	R3, R1
IT	CC
BCC	L_TJ_GUI14e_v_1_1_driver_IsInsideObject388
; X end address is: 4 (R1)
;TJ_GUI14e_v_1_1_driver.c,816 :: 		(ptrPressCircle->Top  <= Y) && (ptrPressCircle->Top+ptrPressCircle->Width*2-1 >= Y))
ADDS	R3, R5, #2
LDRSH	R3, [R3, #0]
CMP	R3, R2
IT	HI
BHI	L_TJ_GUI14e_v_1_1_driver_IsInsideObject387
ADDS	R3, R5, #2
LDRSH	R4, [R3, #0]
ADDS	R3, R5, #4
; ptrPressCircle end address is: 20 (R5)
LDRSH	R3, [R3, #0]
LSLS	R3, R3, #1
SXTH	R3, R3
ADDS	R3, R4, R3
SXTH	R3, R3
SUBS	R3, R3, #1
SXTH	R3, R3
CMP	R3, R2
IT	CC
BCC	L_TJ_GUI14e_v_1_1_driver_IsInsideObject386
; Y end address is: 8 (R2)
L_TJ_GUI14e_v_1_1_driver_IsInsideObject377:
;TJ_GUI14e_v_1_1_driver.c,817 :: 		return 1;
MOVS	R0, #1
IT	AL
BAL	L_end_IsInsideObject
;TJ_GUI14e_v_1_1_driver.c,815 :: 		if ((ptrPressCircle->Left <= X) && (ptrPressCircle->Left+ptrPressCircle->Width*2-1 >= X) &&
L_TJ_GUI14e_v_1_1_driver_IsInsideObject389:
L_TJ_GUI14e_v_1_1_driver_IsInsideObject388:
;TJ_GUI14e_v_1_1_driver.c,816 :: 		(ptrPressCircle->Top  <= Y) && (ptrPressCircle->Top+ptrPressCircle->Width*2-1 >= Y))
L_TJ_GUI14e_v_1_1_driver_IsInsideObject387:
L_TJ_GUI14e_v_1_1_driver_IsInsideObject386:
;TJ_GUI14e_v_1_1_driver.c,818 :: 		}
L_TJ_GUI14e_v_1_1_driver_IsInsideObject17:
L_TJ_GUI14e_v_1_1_driver_IsInsideObject16:
;TJ_GUI14e_v_1_1_driver.c,820 :: 		return 0;
MOVS	R0, #0
;TJ_GUI14e_v_1_1_driver.c,821 :: 		}
L_end_IsInsideObject:
ADD	SP, SP, #4
BX	LR
; end of TJ_GUI14e_v_1_1_driver_IsInsideObject
_DrawButtonRound:
;TJ_GUI14e_v_1_1_driver.c,823 :: 		void DrawButtonRound(TButton_Round *AButtonRound) {
; AButtonRound start address is: 0 (R0)
SUB	SP, SP, #8
STR	LR, [SP, #0]
MOV	R7, R0
; AButtonRound end address is: 0 (R0)
; AButtonRound start address is: 28 (R7)
;TJ_GUI14e_v_1_1_driver.c,827 :: 		if (AButtonRound->Visible) {
ADDS	R1, R7, #5
LDRB	R1, [R1, #0]
CMP	R1, #0
IT	EQ
BEQ	L_DrawButtonRound21
;TJ_GUI14e_v_1_1_driver.c,828 :: 		if (AButtonRound == (TButton_Round *)TouchS.ActObjInfo.Obj)
MOVW	R1, #lo_addr(_TouchS+8)
MOVT	R1, #hi_addr(_TouchS+8)
LDR	R1, [R1, #0]
CMP	R7, R1
IT	NE
BNE	L_DrawButtonRound22
;TJ_GUI14e_v_1_1_driver.c,829 :: 		FT812_Canvas_BrushSingleColor(_FT812_BRUSH_STYLE_SOLID, AButtonRound->Press_Color, AButtonRound->Opacity);
ADDS	R1, R7, #6
LDRB	R1, [R1, #0]
UXTB	R2, R1
ADDW	R1, R7, #28
LDR	R1, [R1, #0]
MOVS	R0, #1
BL	_FT812_Canvas_BrushSingleColor+0
IT	AL
BAL	L_DrawButtonRound23
L_DrawButtonRound22:
;TJ_GUI14e_v_1_1_driver.c,831 :: 		FT812_Canvas_BrushSingleColor(_FT812_BRUSH_STYLE_SOLID, AButtonRound->Color, AButtonRound->Opacity);
ADDS	R1, R7, #6
LDRB	R1, [R1, #0]
UXTB	R2, R1
ADDW	R1, R7, #24
LDR	R1, [R1, #0]
MOVS	R0, #1
BL	_FT812_Canvas_BrushSingleColor+0
L_DrawButtonRound23:
;TJ_GUI14e_v_1_1_driver.c,833 :: 		FT812_Canvas_Pen(AButtonRound->Pen_Width, AButtonRound->Pen_Color, AButtonRound->Opacity);
ADDS	R1, R7, #6
LDRB	R1, [R1, #0]
UXTB	R3, R1
ADDW	R1, R7, #20
LDR	R1, [R1, #0]
MOV	R2, R1
ADDW	R1, R7, #16
LDRB	R1, [R1, #0]
UXTB	R0, R1
MOV	R1, R2
UXTB	R2, R3
BL	_FT812_Canvas_Pen+0
;TJ_GUI14e_v_1_1_driver.c,835 :: 		if (AButtonRound->Tag)
ADDS	R1, R7, #7
LDRB	R1, [R1, #0]
CMP	R1, #0
IT	EQ
BEQ	L_DrawButtonRound24
;TJ_GUI14e_v_1_1_driver.c,836 :: 		FT812_Canvas_Tag(AButtonRound->Tag);
ADDS	R1, R7, #7
LDRB	R1, [R1, #0]
UXTB	R0, R1
BL	_FT812_Canvas_Tag+0
L_DrawButtonRound24:
;TJ_GUI14e_v_1_1_driver.c,838 :: 		FT812_Screen_BoxRound(AButtonRound->Left, AButtonRound->Top, AButtonRound->Left+AButtonRound->Width-1, AButtonRound->Top+AButtonRound->Height-1, AButtonRound->Corner_Radius);
ADDW	R1, R7, #56
LDRB	R1, [R1, #0]
UXTB	R6, R1
ADDW	R1, R7, #10
LDRSH	R2, [R1, #0]
ADDW	R1, R7, #14
LDRSH	R1, [R1, #0]
ADDS	R1, R2, R1
SXTH	R1, R1
SUBS	R5, R1, #1
ADDW	R1, R7, #8
LDRSH	R4, [R1, #0]
ADDW	R1, R7, #12
LDRSH	R1, [R1, #0]
ADDS	R1, R4, R1
SXTH	R1, R1
SUBS	R3, R1, #1
SXTH	R1, R4
STR	R7, [SP, #4]
SXTH	R0, R1
SXTH	R1, R2
SXTH	R2, R3
SXTH	R3, R5
PUSH	(R6)
BL	_FT812_Screen_BoxRound+0
ADD	SP, SP, #4
LDR	R7, [SP, #4]
;TJ_GUI14e_v_1_1_driver.c,839 :: 		if (AButtonRound->FontHandle >= 16)
ADDW	R1, R7, #48
LDRB	R1, [R1, #0]
CMP	R1, #16
IT	CC
BCC	L_DrawButtonRound25
;TJ_GUI14e_v_1_1_driver.c,840 :: 		FT812_Canvas_FontSystem(AButtonRound->FontHandle, AButtonRound->Font_Color, AButtonRound->Opacity);
ADDS	R1, R7, #6
LDRB	R1, [R1, #0]
UXTB	R3, R1
ADDW	R1, R7, #44
LDR	R1, [R1, #0]
MOV	R2, R1
ADDW	R1, R7, #48
LDRB	R1, [R1, #0]
STR	R7, [SP, #4]
UXTB	R0, R1
MOV	R1, R2
UXTB	R2, R3
BL	_FT812_Canvas_FontSystem+0
LDR	R7, [SP, #4]
IT	AL
BAL	L_DrawButtonRound26
L_DrawButtonRound25:
;TJ_GUI14e_v_1_1_driver.c,842 :: 		FT812_Canvas_FontExt(AButtonRound->FontHandle, AButtonRound->FontName, AButtonRound->Source, AButtonRound->Font_Color, AButtonRound->Opacity);
ADDS	R1, R7, #6
LDRB	R1, [R1, #0]
UXTB	R5, R1
ADDW	R1, R7, #44
LDR	R1, [R1, #0]
MOV	R4, R1
ADDW	R1, R7, #52
LDR	R1, [R1, #0]
MOV	R3, R1
ADDW	R1, R7, #40
LDR	R1, [R1, #0]
MOV	R2, R1
ADDW	R1, R7, #48
LDRB	R1, [R1, #0]
STR	R7, [SP, #4]
UXTB	R0, R1
MOV	R1, R2
MOV	R2, R3
MOV	R3, R4
PUSH	(R5)
BL	_FT812_Canvas_FontExt+0
ADD	SP, SP, #4
LDR	R7, [SP, #4]
L_DrawButtonRound26:
;TJ_GUI14e_v_1_1_driver.c,844 :: 		textWidth  = FT812_Canvas_TextWidth(AButtonRound->Caption);
ADDW	R1, R7, #32
LDR	R1, [R1, #0]
MOV	R0, R1
BL	_FT812_Canvas_TextWidth+0
; textWidth start address is: 24 (R6)
SXTH	R6, R0
;TJ_GUI14e_v_1_1_driver.c,845 :: 		textHeight = FT812_Canvas_TextHeight();
BL	_FT812_Canvas_TextHeight+0
; textHeight start address is: 0 (R0)
;TJ_GUI14e_v_1_1_driver.c,846 :: 		if (AButtonRound->TextAlign == taLeft)
ADDW	R1, R7, #36
LDRB	R1, [R1, #0]
CMP	R1, #1
IT	NE
BNE	L_DrawButtonRound27
; textWidth end address is: 24 (R6)
;TJ_GUI14e_v_1_1_driver.c,847 :: 		FT812_Screen_TextPos(AButtonRound->Left+(AButtonRound->Pen_Width)+1, AButtonRound->Top+(AButtonRound->Height-textHeight)/2, AButtonRound->Caption);
ADDW	R1, R7, #32
LDR	R1, [R1, #0]
MOV	R4, R1
ADDW	R1, R7, #10
LDRSH	R3, [R1, #0]
ADDW	R1, R7, #14
LDRSH	R1, [R1, #0]
SUB	R2, R1, R0
SXTH	R2, R2
; textHeight end address is: 0 (R0)
MOVS	R1, #2
SXTH	R1, R1
SDIV	R1, R2, R1
SXTH	R1, R1
ADDS	R3, R3, R1
ADDW	R1, R7, #8
LDRSH	R2, [R1, #0]
ADDW	R1, R7, #16
; AButtonRound end address is: 28 (R7)
LDRB	R1, [R1, #0]
ADDS	R1, R2, R1
SXTH	R1, R1
ADDS	R1, R1, #1
MOV	R2, R4
SXTH	R0, R1
SXTH	R1, R3
BL	_FT812_Screen_TextPos+0
IT	AL
BAL	L_DrawButtonRound28
L_DrawButtonRound27:
;TJ_GUI14e_v_1_1_driver.c,848 :: 		else if (AButtonRound->TextAlign == taCenter)
; textHeight start address is: 0 (R0)
; textWidth start address is: 24 (R6)
; AButtonRound start address is: 28 (R7)
ADDW	R1, R7, #36
LDRB	R1, [R1, #0]
CMP	R1, #2
IT	NE
BNE	L_DrawButtonRound29
;TJ_GUI14e_v_1_1_driver.c,849 :: 		FT812_Screen_TextPos(AButtonRound->Left+(AButtonRound->Width-textWidth)/2, AButtonRound->Top+(AButtonRound->Height-textHeight)/2, AButtonRound->Caption);
ADDW	R1, R7, #32
LDR	R1, [R1, #0]
MOV	R5, R1
ADDW	R1, R7, #10
LDRSH	R3, [R1, #0]
ADDW	R1, R7, #14
LDRSH	R1, [R1, #0]
SUB	R2, R1, R0
SXTH	R2, R2
; textHeight end address is: 0 (R0)
MOVS	R1, #2
SXTH	R1, R1
SDIV	R1, R2, R1
SXTH	R1, R1
ADDS	R4, R3, R1
ADDW	R1, R7, #8
LDRSH	R3, [R1, #0]
ADDW	R1, R7, #12
; AButtonRound end address is: 28 (R7)
LDRSH	R1, [R1, #0]
SUB	R2, R1, R6
SXTH	R2, R2
; textWidth end address is: 24 (R6)
MOVS	R1, #2
SXTH	R1, R1
SDIV	R1, R2, R1
SXTH	R1, R1
ADDS	R1, R3, R1
MOV	R2, R5
SXTH	R0, R1
SXTH	R1, R4
BL	_FT812_Screen_TextPos+0
IT	AL
BAL	L_DrawButtonRound30
L_DrawButtonRound29:
;TJ_GUI14e_v_1_1_driver.c,850 :: 		else if (AButtonRound->TextAlign == taRight)
; textHeight start address is: 0 (R0)
; textWidth start address is: 24 (R6)
; AButtonRound start address is: 28 (R7)
ADDW	R1, R7, #36
LDRB	R1, [R1, #0]
CMP	R1, #3
IT	NE
BNE	L_DrawButtonRound31
;TJ_GUI14e_v_1_1_driver.c,851 :: 		FT812_Screen_TextPos(AButtonRound->Left+AButtonRound->Width-textWidth-1, AButtonRound->Top+(AButtonRound->Height-textHeight)/2, AButtonRound->Caption);
ADDW	R1, R7, #32
LDR	R1, [R1, #0]
MOV	R4, R1
ADDW	R1, R7, #10
LDRSH	R3, [R1, #0]
ADDW	R1, R7, #14
LDRSH	R1, [R1, #0]
SUB	R2, R1, R0
SXTH	R2, R2
; textHeight end address is: 0 (R0)
MOVS	R1, #2
SXTH	R1, R1
SDIV	R1, R2, R1
SXTH	R1, R1
ADDS	R3, R3, R1
ADDW	R1, R7, #8
LDRSH	R2, [R1, #0]
ADDW	R1, R7, #12
; AButtonRound end address is: 28 (R7)
LDRSH	R1, [R1, #0]
ADDS	R1, R2, R1
SXTH	R1, R1
SUB	R1, R1, R6
SXTH	R1, R1
; textWidth end address is: 24 (R6)
SUBS	R1, R1, #1
MOV	R2, R4
SXTH	R0, R1
SXTH	R1, R3
BL	_FT812_Screen_TextPos+0
L_DrawButtonRound31:
L_DrawButtonRound30:
L_DrawButtonRound28:
;TJ_GUI14e_v_1_1_driver.c,852 :: 		}
L_DrawButtonRound21:
;TJ_GUI14e_v_1_1_driver.c,853 :: 		}
L_end_DrawButtonRound:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of _DrawButtonRound
_DrawLabel:
;TJ_GUI14e_v_1_1_driver.c,855 :: 		void DrawLabel(TLabel *ALabel) {
; ALabel start address is: 0 (R0)
SUB	SP, SP, #8
STR	LR, [SP, #0]
; ALabel end address is: 0 (R0)
; ALabel start address is: 0 (R0)
;TJ_GUI14e_v_1_1_driver.c,856 :: 		if (ALabel->Visible) {
ADDS	R1, R0, #5
LDRB	R1, [R1, #0]
CMP	R1, #0
IT	EQ
BEQ	L_DrawLabel32
;TJ_GUI14e_v_1_1_driver.c,857 :: 		if (ALabel->FontHandle >= 16)
ADDW	R1, R0, #28
LDRB	R1, [R1, #0]
CMP	R1, #16
IT	CC
BCC	L_DrawLabel33
;TJ_GUI14e_v_1_1_driver.c,858 :: 		FT812_Canvas_FontSystem(ALabel->FontHandle, ALabel->Font_Color, ALabel->Opacity);
ADDS	R1, R0, #6
LDRB	R1, [R1, #0]
UXTB	R3, R1
ADDW	R1, R0, #24
LDR	R1, [R1, #0]
MOV	R2, R1
ADDW	R1, R0, #28
LDRB	R1, [R1, #0]
STR	R0, [SP, #4]
UXTB	R0, R1
MOV	R1, R2
UXTB	R2, R3
BL	_FT812_Canvas_FontSystem+0
LDR	R0, [SP, #4]
IT	AL
BAL	L_DrawLabel34
L_DrawLabel33:
;TJ_GUI14e_v_1_1_driver.c,860 :: 		FT812_Canvas_FontExt(ALabel->FontHandle, ALabel->FontName, ALabel->Source, ALabel->Font_Color, ALabel->Opacity);
ADDS	R1, R0, #6
LDRB	R1, [R1, #0]
UXTB	R5, R1
ADDW	R1, R0, #24
LDR	R1, [R1, #0]
MOV	R4, R1
ADDW	R1, R0, #32
LDR	R1, [R1, #0]
MOV	R3, R1
ADDW	R1, R0, #20
LDR	R1, [R1, #0]
MOV	R2, R1
ADDW	R1, R0, #28
LDRB	R1, [R1, #0]
STR	R0, [SP, #4]
UXTB	R0, R1
MOV	R1, R2
MOV	R2, R3
MOV	R3, R4
PUSH	(R5)
BL	_FT812_Canvas_FontExt+0
ADD	SP, SP, #4
LDR	R0, [SP, #4]
L_DrawLabel34:
;TJ_GUI14e_v_1_1_driver.c,862 :: 		if (ALabel->Tag)
ADDS	R1, R0, #7
LDRB	R1, [R1, #0]
CMP	R1, #0
IT	EQ
BEQ	L_DrawLabel35
;TJ_GUI14e_v_1_1_driver.c,863 :: 		FT812_Canvas_Tag(ALabel->Tag);
ADDS	R1, R0, #7
LDRB	R1, [R1, #0]
STR	R0, [SP, #4]
UXTB	R0, R1
BL	_FT812_Canvas_Tag+0
LDR	R0, [SP, #4]
L_DrawLabel35:
;TJ_GUI14e_v_1_1_driver.c,865 :: 		FT812_Screen_TextPos(ALabel->Left, ALabel->Top, ALabel->Caption);
ADDW	R1, R0, #16
LDR	R1, [R1, #0]
MOV	R3, R1
ADDW	R1, R0, #10
LDRSH	R1, [R1, #0]
SXTH	R2, R1
ADDW	R1, R0, #8
; ALabel end address is: 0 (R0)
LDRSH	R1, [R1, #0]
SXTH	R0, R1
SXTH	R1, R2
MOV	R2, R3
BL	_FT812_Screen_TextPos+0
;TJ_GUI14e_v_1_1_driver.c,866 :: 		}
L_DrawLabel32:
;TJ_GUI14e_v_1_1_driver.c,867 :: 		}
L_end_DrawLabel:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of _DrawLabel
_DrawImage:
;TJ_GUI14e_v_1_1_driver.c,869 :: 		void DrawImage(TImage *AImage) {
; AImage start address is: 0 (R0)
SUB	SP, SP, #56
STR	LR, [SP, #0]
MOV	R5, R0
; AImage end address is: 0 (R0)
; AImage start address is: 20 (R5)
;TJ_GUI14e_v_1_1_driver.c,876 :: 		if (AImage->Visible) {
ADDS	R1, R5, #5
LDRB	R1, [R1, #0]
CMP	R1, #0
IT	EQ
BEQ	L_DrawImage36
;TJ_GUI14e_v_1_1_driver.c,877 :: 		if (AImage->Tag)
ADDS	R1, R5, #7
LDRB	R1, [R1, #0]
CMP	R1, #0
IT	EQ
BEQ	L_DrawImage37
;TJ_GUI14e_v_1_1_driver.c,878 :: 		FT812_Canvas_Tag(AImage->Tag);
ADDS	R1, R5, #7
LDRB	R1, [R1, #0]
UXTB	R0, R1
BL	_FT812_Canvas_Tag+0
L_DrawImage37:
;TJ_GUI14e_v_1_1_driver.c,880 :: 		if (AImage->Picture_Type != _FT812_BITMAP_FORMAT_JPEG) {
ADDW	R1, R5, #20
LDRB	R1, [R1, #0]
CMP	R1, #9
IT	EQ
BEQ	L_DrawImage38
;TJ_GUI14e_v_1_1_driver.c,881 :: 		FT812_Canvas_BmpGetInfoExt(AImage->Picture_Name, &format, &width, &height);
ADD	R4, SP, #40
ADD	R3, SP, #38
ADD	R2, SP, #36
ADDW	R1, R5, #16
LDR	R1, [R1, #0]
STR	R5, [SP, #4]
MOV	R0, R1
MOV	R1, R2
MOV	R2, R3
MOV	R3, R4
BL	_FT812_Canvas_BmpGetInfoExt+0
LDR	R5, [SP, #4]
;TJ_GUI14e_v_1_1_driver.c,882 :: 		FT812_Canvas_BmpParamsToCfg(AImage->Source, width, height, format, &bmpCfg);
ADD	R2, SP, #8
ADDW	R1, R5, #28
LDR	R1, [R1, #0]
STR	R5, [SP, #4]
PUSH	(R2)
LDRB	R3, [SP, #40]
LDRH	R2, [SP, #44]
MOV	R0, R1
LDRH	R1, [SP, #42]
BL	_FT812_Canvas_BmpParamsToCfg+0
ADD	SP, SP, #4
LDR	R5, [SP, #4]
;TJ_GUI14e_v_1_1_driver.c,883 :: 		FT812_Canvas_Bitmap(0, &bmpCfg, AImage->Blend_Color, AImage->Opacity);
ADDS	R1, R5, #6
LDRB	R1, [R1, #0]
UXTB	R3, R1
ADDW	R1, R5, #24
LDR	R1, [R1, #0]
MOV	R2, R1
ADD	R1, SP, #8
STR	R5, [SP, #4]
MOVS	R0, #0
BL	_FT812_Canvas_Bitmap+0
LDR	R5, [SP, #4]
;TJ_GUI14e_v_1_1_driver.c,884 :: 		FT812_Canvas_PixelFormat12p4();
BL	_FT812_Canvas_PixelFormat12p4+0
;TJ_GUI14e_v_1_1_driver.c,885 :: 		FT812_Canvas_CurrRectSet(FT812_Canvas_IntTo12p4(AImage->Left), FT812_Canvas_IntTo12p4(AImage->Top), FT812_Canvas_IntTo12p4(width), FT812_Canvas_IntTo12p4(height));
LDRH	R0, [SP, #40]
BL	_FT812_Canvas_IntTo12p4+0
STRH	R0, [SP, #52]
LDRH	R0, [SP, #38]
BL	_FT812_Canvas_IntTo12p4+0
STRH	R0, [SP, #48]
ADDW	R1, R5, #10
LDRSH	R1, [R1, #0]
SXTH	R0, R1
BL	_FT812_Canvas_IntTo12p4+0
STRH	R0, [SP, #44]
ADDW	R1, R5, #8
LDRSH	R1, [R1, #0]
SXTH	R0, R1
BL	_FT812_Canvas_IntTo12p4+0
LDRSH	R3, [SP, #52]
LDRSH	R2, [SP, #48]
LDRSH	R1, [SP, #44]
STR	R5, [SP, #4]
UXTH	R3, R3
UXTH	R2, R2
BL	_FT812_Canvas_CurrRectSet+0
;TJ_GUI14e_v_1_1_driver.c,886 :: 		FT812_Canvas_Transform_Identity();
BL	_FT812_Canvas_Transform_Identity+0
LDR	R5, [SP, #4]
;TJ_GUI14e_v_1_1_driver.c,887 :: 		rotationCenter.X = FT812_Canvas_IntTo12p4(AImage->RotationCenterLeft);
ADDW	R1, R5, #34
LDRSH	R1, [R1, #0]
SXTH	R0, R1
BL	_FT812_Canvas_IntTo12p4+0
STRH	R0, [SP, #32]
;TJ_GUI14e_v_1_1_driver.c,888 :: 		rotationCenter.Y = FT812_Canvas_IntTo12p4(AImage->RotationCenterTop);
ADDW	R1, R5, #36
LDRSH	R1, [R1, #0]
SXTH	R0, R1
BL	_FT812_Canvas_IntTo12p4+0
STRH	R0, [SP, #34]
;TJ_GUI14e_v_1_1_driver.c,889 :: 		FT812_Canvas_Transform_RotateAndScale(AImage->RotationAngle, &rotationCenter, AImage->ScaleX * 65536, AImage->ScaleY * 65536);
ADDW	R1, R5, #44
VLDR	#1, S1, [R1, #0]
MOV	R1, #1199570944
VMOV	S0, R1
VMUL.F32	S0, S1, S0
VCVT	#1, .F32, S0, S0
VMOV	R4, S0
ADDW	R1, R5, #40
VLDR	#1, S1, [R1, #0]
MOV	R1, #1199570944
VMOV	S0, R1
VMUL.F32	S0, S1, S0
VCVT	#1, .F32, S0, S0
VMOV	R3, S0
ADD	R2, SP, #32
ADDW	R1, R5, #32
LDRSH	R1, [R1, #0]
STR	R5, [SP, #4]
SXTH	R0, R1
MOV	R1, R2
MOV	R2, R3
MOV	R3, R4
BL	_FT812_Canvas_Transform_RotateAndScale+0
;TJ_GUI14e_v_1_1_driver.c,890 :: 		FT812_Canvas_Transform_Set();
BL	_FT812_Canvas_Transform_Set+0
;TJ_GUI14e_v_1_1_driver.c,891 :: 		FT812_Canvas_CurrRectGet(&currRect.Left, &currRect.Top, &currRect.Width, &currRect.Height);
ADD	R4, SP, #30
ADD	R3, SP, #28
ADD	R2, SP, #26
ADD	R1, SP, #24
MOV	R0, R1
MOV	R1, R2
MOV	R2, R3
MOV	R3, R4
BL	_FT812_Canvas_CurrRectGet+0
LDR	R5, [SP, #4]
;TJ_GUI14e_v_1_1_driver.c,893 :: 		bmpCfg.Size.Width  = FT812_Canvas_12p4ToInt(currRect.Width);
LDRH	R0, [SP, #28]
BL	_FT812_Canvas_12p4ToInt+0
STRH	R0, [SP, #20]
;TJ_GUI14e_v_1_1_driver.c,894 :: 		bmpCfg.Size.Height = FT812_Canvas_12p4ToInt(currRect.Height);
LDRH	R0, [SP, #30]
BL	_FT812_Canvas_12p4ToInt+0
STRH	R0, [SP, #22]
;TJ_GUI14e_v_1_1_driver.c,895 :: 		FT812_Canvas_Bitmap(0, &bmpCfg, AImage->Blend_Color, AImage->Opacity);
ADDS	R1, R5, #6
LDRB	R1, [R1, #0]
UXTB	R3, R1
ADDW	R1, R5, #24
; AImage end address is: 20 (R5)
LDR	R1, [R1, #0]
MOV	R2, R1
ADD	R1, SP, #8
MOVS	R0, #0
BL	_FT812_Canvas_Bitmap+0
;TJ_GUI14e_v_1_1_driver.c,896 :: 		FT812_Screen_Bitmap(currRect.Left, currRect.Top);
LDRSH	R1, [SP, #26]
LDRSH	R0, [SP, #24]
BL	_FT812_Screen_Bitmap+0
;TJ_GUI14e_v_1_1_driver.c,897 :: 		FT812_Canvas_Transform_Identity();
BL	_FT812_Canvas_Transform_Identity+0
;TJ_GUI14e_v_1_1_driver.c,898 :: 		FT812_Canvas_Transform_Set();
BL	_FT812_Canvas_Transform_Set+0
;TJ_GUI14e_v_1_1_driver.c,899 :: 		FT812_Canvas_PixelFormatInt();
BL	_FT812_Canvas_PixelFormatInt+0
;TJ_GUI14e_v_1_1_driver.c,900 :: 		}
L_DrawImage38:
;TJ_GUI14e_v_1_1_driver.c,901 :: 		}
L_DrawImage36:
;TJ_GUI14e_v_1_1_driver.c,902 :: 		}
L_end_DrawImage:
LDR	LR, [SP, #0]
ADD	SP, SP, #56
BX	LR
; end of _DrawImage
_DrawCircle:
;TJ_GUI14e_v_1_1_driver.c,904 :: 		void DrawCircle(TCircle *ACircle) {
; ACircle start address is: 0 (R0)
SUB	SP, SP, #8
STR	LR, [SP, #0]
; ACircle end address is: 0 (R0)
; ACircle start address is: 0 (R0)
;TJ_GUI14e_v_1_1_driver.c,905 :: 		if (ACircle->Visible) {
ADDS	R1, R0, #5
LDRB	R1, [R1, #0]
CMP	R1, #0
IT	EQ
BEQ	L_DrawCircle39
;TJ_GUI14e_v_1_1_driver.c,906 :: 		if (ACircle == (TCircle *)TouchS.ActObjInfo.Obj)
MOVW	R1, #lo_addr(_TouchS+8)
MOVT	R1, #hi_addr(_TouchS+8)
LDR	R1, [R1, #0]
CMP	R0, R1
IT	NE
BNE	L_DrawCircle40
;TJ_GUI14e_v_1_1_driver.c,907 :: 		FT812_Canvas_BrushSingleColor(_FT812_BRUSH_STYLE_SOLID, ACircle->Press_Color, ACircle->Opacity);
ADDS	R1, R0, #6
LDRB	R1, [R1, #0]
UXTB	R2, R1
ADDW	R1, R0, #24
LDR	R1, [R1, #0]
STR	R0, [SP, #4]
MOVS	R0, #1
BL	_FT812_Canvas_BrushSingleColor+0
LDR	R0, [SP, #4]
IT	AL
BAL	L_DrawCircle41
L_DrawCircle40:
;TJ_GUI14e_v_1_1_driver.c,909 :: 		FT812_Canvas_BrushSingleColor(_FT812_BRUSH_STYLE_SOLID, ACircle->Color, ACircle->Opacity);
ADDS	R1, R0, #6
LDRB	R1, [R1, #0]
UXTB	R2, R1
ADDW	R1, R0, #20
LDR	R1, [R1, #0]
STR	R0, [SP, #4]
MOVS	R0, #1
BL	_FT812_Canvas_BrushSingleColor+0
LDR	R0, [SP, #4]
L_DrawCircle41:
;TJ_GUI14e_v_1_1_driver.c,911 :: 		FT812_Canvas_Pen(ACircle->Pen_Width, ACircle->Pen_Color, ACircle->Opacity);
ADDS	R1, R0, #6
LDRB	R1, [R1, #0]
UXTB	R3, R1
ADDW	R1, R0, #16
LDR	R1, [R1, #0]
MOV	R2, R1
ADDW	R1, R0, #14
LDRB	R1, [R1, #0]
STR	R0, [SP, #4]
UXTB	R0, R1
MOV	R1, R2
UXTB	R2, R3
BL	_FT812_Canvas_Pen+0
LDR	R0, [SP, #4]
;TJ_GUI14e_v_1_1_driver.c,913 :: 		if (ACircle->Tag)
ADDS	R1, R0, #7
LDRB	R1, [R1, #0]
CMP	R1, #0
IT	EQ
BEQ	L_DrawCircle42
;TJ_GUI14e_v_1_1_driver.c,914 :: 		FT812_Canvas_Tag(ACircle->Tag);
ADDS	R1, R0, #7
LDRB	R1, [R1, #0]
STR	R0, [SP, #4]
UXTB	R0, R1
BL	_FT812_Canvas_Tag+0
LDR	R0, [SP, #4]
L_DrawCircle42:
;TJ_GUI14e_v_1_1_driver.c,918 :: 		ACircle->Radius);
ADDW	R1, R0, #12
LDRSH	R4, [R1, #0]
UXTH	R3, R4
;TJ_GUI14e_v_1_1_driver.c,917 :: 		ACircle->Top+ACircle->Radius,
ADDW	R1, R0, #10
LDRSH	R1, [R1, #0]
ADDS	R2, R1, R4
;TJ_GUI14e_v_1_1_driver.c,916 :: 		FT812_Screen_Circle(ACircle->Left+ACircle->Radius,
ADDW	R1, R0, #8
; ACircle end address is: 0 (R0)
LDRSH	R1, [R1, #0]
ADDS	R1, R1, R4
SXTH	R0, R1
;TJ_GUI14e_v_1_1_driver.c,917 :: 		ACircle->Top+ACircle->Radius,
SXTH	R1, R2
;TJ_GUI14e_v_1_1_driver.c,918 :: 		ACircle->Radius);
UXTH	R2, R3
BL	_FT812_Screen_Circle+0
;TJ_GUI14e_v_1_1_driver.c,919 :: 		}
L_DrawCircle39:
;TJ_GUI14e_v_1_1_driver.c,920 :: 		}
L_end_DrawCircle:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of _DrawCircle
_DrawCircleButton:
;TJ_GUI14e_v_1_1_driver.c,922 :: 		void DrawCircleButton(TCircleButton *ACircleButton) {
; ACircleButton start address is: 0 (R0)
SUB	SP, SP, #8
STR	LR, [SP, #0]
MOV	R6, R0
; ACircleButton end address is: 0 (R0)
; ACircleButton start address is: 24 (R6)
;TJ_GUI14e_v_1_1_driver.c,926 :: 		if (ACircleButton->Visible) {
ADDS	R1, R6, #5
LDRB	R1, [R1, #0]
CMP	R1, #0
IT	EQ
BEQ	L_DrawCircleButton43
;TJ_GUI14e_v_1_1_driver.c,927 :: 		if (ACircleButton == (TCircleButton *)TouchS.ActObjInfo.Obj)
MOVW	R1, #lo_addr(_TouchS+8)
MOVT	R1, #hi_addr(_TouchS+8)
LDR	R1, [R1, #0]
CMP	R6, R1
IT	NE
BNE	L_DrawCircleButton44
;TJ_GUI14e_v_1_1_driver.c,928 :: 		FT812_Canvas_BrushSingleColor(_FT812_BRUSH_STYLE_SOLID, ACircleButton->Press_Color, ACircleButton->Opacity);
ADDS	R1, R6, #6
LDRB	R1, [R1, #0]
UXTB	R2, R1
ADDW	R1, R6, #24
LDR	R1, [R1, #0]
MOVS	R0, #1
BL	_FT812_Canvas_BrushSingleColor+0
IT	AL
BAL	L_DrawCircleButton45
L_DrawCircleButton44:
;TJ_GUI14e_v_1_1_driver.c,930 :: 		FT812_Canvas_BrushSingleColor(_FT812_BRUSH_STYLE_SOLID, ACircleButton->Color, ACircleButton->Opacity);
ADDS	R1, R6, #6
LDRB	R1, [R1, #0]
UXTB	R2, R1
ADDW	R1, R6, #20
LDR	R1, [R1, #0]
MOVS	R0, #1
BL	_FT812_Canvas_BrushSingleColor+0
L_DrawCircleButton45:
;TJ_GUI14e_v_1_1_driver.c,932 :: 		FT812_Canvas_Pen(ACircleButton->Pen_Width, ACircleButton->Pen_Color, ACircleButton->Opacity);
ADDS	R1, R6, #6
LDRB	R1, [R1, #0]
UXTB	R3, R1
ADDW	R1, R6, #16
LDR	R1, [R1, #0]
MOV	R2, R1
ADDW	R1, R6, #14
LDRB	R1, [R1, #0]
UXTB	R0, R1
MOV	R1, R2
UXTB	R2, R3
BL	_FT812_Canvas_Pen+0
;TJ_GUI14e_v_1_1_driver.c,934 :: 		if (ACircleButton->Tag)
ADDS	R1, R6, #7
LDRB	R1, [R1, #0]
CMP	R1, #0
IT	EQ
BEQ	L_DrawCircleButton46
;TJ_GUI14e_v_1_1_driver.c,935 :: 		FT812_Canvas_Tag(ACircleButton->Tag);
ADDS	R1, R6, #7
LDRB	R1, [R1, #0]
UXTB	R0, R1
BL	_FT812_Canvas_Tag+0
L_DrawCircleButton46:
;TJ_GUI14e_v_1_1_driver.c,939 :: 		ACircleButton->Radius);
ADDW	R1, R6, #12
LDRSH	R4, [R1, #0]
UXTH	R3, R4
;TJ_GUI14e_v_1_1_driver.c,938 :: 		ACircleButton->Top+ACircleButton->Radius,
ADDW	R1, R6, #10
LDRSH	R1, [R1, #0]
ADDS	R2, R1, R4
;TJ_GUI14e_v_1_1_driver.c,937 :: 		FT812_Screen_Circle(ACircleButton->Left+ACircleButton->Radius,
ADDW	R1, R6, #8
LDRSH	R1, [R1, #0]
ADDS	R1, R1, R4
;TJ_GUI14e_v_1_1_driver.c,939 :: 		ACircleButton->Radius);
STR	R6, [SP, #4]
;TJ_GUI14e_v_1_1_driver.c,937 :: 		FT812_Screen_Circle(ACircleButton->Left+ACircleButton->Radius,
SXTH	R0, R1
;TJ_GUI14e_v_1_1_driver.c,938 :: 		ACircleButton->Top+ACircleButton->Radius,
SXTH	R1, R2
;TJ_GUI14e_v_1_1_driver.c,939 :: 		ACircleButton->Radius);
UXTH	R2, R3
BL	_FT812_Screen_Circle+0
LDR	R6, [SP, #4]
;TJ_GUI14e_v_1_1_driver.c,940 :: 		if (ACircleButton->FontHandle >= 16)
ADDW	R1, R6, #44
LDRB	R1, [R1, #0]
CMP	R1, #16
IT	CC
BCC	L_DrawCircleButton47
;TJ_GUI14e_v_1_1_driver.c,941 :: 		FT812_Canvas_FontSystem(ACircleButton->FontHandle, ACircleButton->Font_Color, ACircleButton->Opacity);
ADDS	R1, R6, #6
LDRB	R1, [R1, #0]
UXTB	R3, R1
ADDW	R1, R6, #40
LDR	R1, [R1, #0]
MOV	R2, R1
ADDW	R1, R6, #44
LDRB	R1, [R1, #0]
STR	R6, [SP, #4]
UXTB	R0, R1
MOV	R1, R2
UXTB	R2, R3
BL	_FT812_Canvas_FontSystem+0
LDR	R6, [SP, #4]
IT	AL
BAL	L_DrawCircleButton48
L_DrawCircleButton47:
;TJ_GUI14e_v_1_1_driver.c,943 :: 		FT812_Canvas_FontExt(ACircleButton->FontHandle, ACircleButton->FontName, ACircleButton->Source, ACircleButton->Font_Color, ACircleButton->Opacity);
ADDS	R1, R6, #6
LDRB	R1, [R1, #0]
UXTB	R5, R1
ADDW	R1, R6, #40
LDR	R1, [R1, #0]
MOV	R4, R1
ADDW	R1, R6, #48
LDR	R1, [R1, #0]
MOV	R3, R1
ADDW	R1, R6, #36
LDR	R1, [R1, #0]
MOV	R2, R1
ADDW	R1, R6, #44
LDRB	R1, [R1, #0]
STR	R6, [SP, #4]
UXTB	R0, R1
MOV	R1, R2
MOV	R2, R3
MOV	R3, R4
PUSH	(R5)
BL	_FT812_Canvas_FontExt+0
ADD	SP, SP, #4
LDR	R6, [SP, #4]
L_DrawCircleButton48:
;TJ_GUI14e_v_1_1_driver.c,945 :: 		textWidth  = FT812_Canvas_TextWidth(ACircleButton->Caption);
ADDW	R1, R6, #28
LDR	R1, [R1, #0]
MOV	R0, R1
BL	_FT812_Canvas_TextWidth+0
; textWidth start address is: 28 (R7)
SXTH	R7, R0
;TJ_GUI14e_v_1_1_driver.c,946 :: 		textHeight = FT812_Canvas_TextHeight();
BL	_FT812_Canvas_TextHeight+0
; textHeight start address is: 0 (R0)
;TJ_GUI14e_v_1_1_driver.c,947 :: 		if (ACircleButton->TextAlign == taLeft)
ADDW	R1, R6, #32
LDRB	R1, [R1, #0]
CMP	R1, #1
IT	NE
BNE	L_DrawCircleButton49
; textWidth end address is: 28 (R7)
;TJ_GUI14e_v_1_1_driver.c,948 :: 		FT812_Screen_TextPos(ACircleButton->Left+ACircleButton->Pen_Width+1, ACircleButton->Top+ACircleButton->Radius-textHeight/2, ACircleButton->Caption);
ADDW	R1, R6, #28
LDR	R1, [R1, #0]
MOV	R4, R1
ADDW	R1, R6, #10
LDRSH	R2, [R1, #0]
ADDW	R1, R6, #12
LDRSH	R1, [R1, #0]
ADDS	R2, R2, R1
SXTH	R2, R2
MOVS	R1, #2
SXTH	R1, R1
SDIV	R1, R0, R1
SXTH	R1, R1
; textHeight end address is: 0 (R0)
SUB	R3, R2, R1
ADDW	R1, R6, #8
LDRSH	R2, [R1, #0]
ADDW	R1, R6, #14
; ACircleButton end address is: 24 (R6)
LDRB	R1, [R1, #0]
ADDS	R1, R2, R1
SXTH	R1, R1
ADDS	R1, R1, #1
MOV	R2, R4
SXTH	R0, R1
SXTH	R1, R3
BL	_FT812_Screen_TextPos+0
IT	AL
BAL	L_DrawCircleButton50
L_DrawCircleButton49:
;TJ_GUI14e_v_1_1_driver.c,949 :: 		else if (ACircleButton->TextAlign == taCenter)
; textHeight start address is: 0 (R0)
; textWidth start address is: 28 (R7)
; ACircleButton start address is: 24 (R6)
ADDW	R1, R6, #32
LDRB	R1, [R1, #0]
CMP	R1, #2
IT	NE
BNE	L_DrawCircleButton51
;TJ_GUI14e_v_1_1_driver.c,950 :: 		FT812_Screen_TextPos(ACircleButton->Left+ACircleButton->Radius-textWidth/2, ACircleButton->Top+ACircleButton->Radius-textHeight/2, ACircleButton->Caption);
ADDW	R1, R6, #28
LDR	R1, [R1, #0]
MOV	R5, R1
ADDW	R1, R6, #10
LDRSH	R2, [R1, #0]
ADDW	R1, R6, #12
LDRSH	R4, [R1, #0]
ADDS	R2, R2, R4
SXTH	R2, R2
MOVS	R1, #2
SXTH	R1, R1
SDIV	R1, R0, R1
SXTH	R1, R1
; textHeight end address is: 0 (R0)
SUB	R3, R2, R1
ADDW	R1, R6, #8
; ACircleButton end address is: 24 (R6)
LDRSH	R1, [R1, #0]
ADDS	R2, R1, R4
SXTH	R2, R2
MOVS	R1, #2
SXTH	R1, R1
SDIV	R1, R7, R1
SXTH	R1, R1
; textWidth end address is: 28 (R7)
SUB	R1, R2, R1
MOV	R2, R5
SXTH	R0, R1
SXTH	R1, R3
BL	_FT812_Screen_TextPos+0
IT	AL
BAL	L_DrawCircleButton52
L_DrawCircleButton51:
;TJ_GUI14e_v_1_1_driver.c,951 :: 		else if (ACircleButton->TextAlign == taRight)
; textHeight start address is: 0 (R0)
; textWidth start address is: 28 (R7)
; ACircleButton start address is: 24 (R6)
ADDW	R1, R6, #32
LDRB	R1, [R1, #0]
CMP	R1, #3
IT	NE
BNE	L_DrawCircleButton53
;TJ_GUI14e_v_1_1_driver.c,952 :: 		FT812_Screen_TextPos(ACircleButton->Left+ACircleButton->Radius*2-textWidth-1, ACircleButton->Top+ACircleButton->Radius-textHeight/2, ACircleButton->Caption);
ADDW	R1, R6, #28
LDR	R1, [R1, #0]
MOV	R5, R1
ADDW	R1, R6, #10
LDRSH	R2, [R1, #0]
ADDW	R1, R6, #12
LDRSH	R4, [R1, #0]
ADDS	R2, R2, R4
SXTH	R2, R2
MOVS	R1, #2
SXTH	R1, R1
SDIV	R1, R0, R1
SXTH	R1, R1
; textHeight end address is: 0 (R0)
SUB	R3, R2, R1
ADDW	R1, R6, #8
; ACircleButton end address is: 24 (R6)
LDRSH	R2, [R1, #0]
LSLS	R1, R4, #1
SXTH	R1, R1
ADDS	R1, R2, R1
SXTH	R1, R1
SUB	R1, R1, R7
SXTH	R1, R1
; textWidth end address is: 28 (R7)
SUBS	R1, R1, #1
MOV	R2, R5
SXTH	R0, R1
SXTH	R1, R3
BL	_FT812_Screen_TextPos+0
L_DrawCircleButton53:
L_DrawCircleButton52:
L_DrawCircleButton50:
;TJ_GUI14e_v_1_1_driver.c,953 :: 		}
L_DrawCircleButton43:
;TJ_GUI14e_v_1_1_driver.c,954 :: 		}
L_end_DrawCircleButton:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of _DrawCircleButton
_DrawLine:
;TJ_GUI14e_v_1_1_driver.c,956 :: 		void DrawLine(TLine *ALine) {
; ALine start address is: 0 (R0)
SUB	SP, SP, #8
STR	LR, [SP, #0]
; ALine end address is: 0 (R0)
; ALine start address is: 0 (R0)
;TJ_GUI14e_v_1_1_driver.c,957 :: 		if (ALine->Visible) {
ADDS	R1, R0, #5
LDRB	R1, [R1, #0]
CMP	R1, #0
IT	EQ
BEQ	L_DrawLine54
;TJ_GUI14e_v_1_1_driver.c,958 :: 		FT812_Canvas_Pen(ALine->Pen_Width, ALine->Pen_Color, ALine->Opacity);
ADDS	R1, R0, #6
LDRB	R1, [R1, #0]
UXTB	R3, R1
ADDW	R1, R0, #20
LDR	R1, [R1, #0]
MOV	R2, R1
ADDW	R1, R0, #16
LDRB	R1, [R1, #0]
STR	R0, [SP, #4]
UXTB	R0, R1
MOV	R1, R2
UXTB	R2, R3
BL	_FT812_Canvas_Pen+0
LDR	R0, [SP, #4]
;TJ_GUI14e_v_1_1_driver.c,960 :: 		if (ALine->Tag)
ADDS	R1, R0, #7
LDRB	R1, [R1, #0]
CMP	R1, #0
IT	EQ
BEQ	L_DrawLine55
;TJ_GUI14e_v_1_1_driver.c,961 :: 		FT812_Canvas_Tag(ALine->Tag);
ADDS	R1, R0, #7
LDRB	R1, [R1, #0]
STR	R0, [SP, #4]
UXTB	R0, R1
BL	_FT812_Canvas_Tag+0
LDR	R0, [SP, #4]
L_DrawLine55:
;TJ_GUI14e_v_1_1_driver.c,963 :: 		FT812_Screen_Line(ALine->First_Point_X, ALine->First_Point_Y, ALine->Second_Point_X, ALine->Second_Point_Y);
ADDW	R1, R0, #14
LDRSH	R1, [R1, #0]
SXTH	R4, R1
ADDW	R1, R0, #12
LDRSH	R1, [R1, #0]
SXTH	R3, R1
ADDW	R1, R0, #10
LDRSH	R1, [R1, #0]
SXTH	R2, R1
ADDW	R1, R0, #8
; ALine end address is: 0 (R0)
LDRSH	R1, [R1, #0]
SXTH	R0, R1
SXTH	R1, R2
SXTH	R2, R3
SXTH	R3, R4
BL	_FT812_Screen_Line+0
;TJ_GUI14e_v_1_1_driver.c,964 :: 		}
L_DrawLine54:
;TJ_GUI14e_v_1_1_driver.c,965 :: 		}
L_end_DrawLine:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of _DrawLine
_DrawProgressBar:
;TJ_GUI14e_v_1_1_driver.c,967 :: 		void DrawProgressBar(TProgressBar *AProgressBar) {
; AProgressBar start address is: 0 (R0)
SUB	SP, SP, #40
STR	LR, [SP, #0]
; AProgressBar end address is: 0 (R0)
; AProgressBar start address is: 0 (R0)
;TJ_GUI14e_v_1_1_driver.c,977 :: 		if (AProgressBar->Visible) {
ADDS	R1, R0, #5
LDRB	R1, [R1, #0]
CMP	R1, #0
IT	EQ
BEQ	L_DrawProgressBar56
;TJ_GUI14e_v_1_1_driver.c,978 :: 		FT812_Canvas_BrushSingleColor(_FT812_BRUSH_STYLE_SOLID, AProgressBar->Background_Color, AProgressBar->Opacity);
ADDS	R1, R0, #6
LDRB	R1, [R1, #0]
UXTB	R2, R1
ADDW	R1, R0, #24
LDR	R1, [R1, #0]
STR	R0, [SP, #4]
MOVS	R0, #1
BL	_FT812_Canvas_BrushSingleColor+0
LDR	R0, [SP, #4]
;TJ_GUI14e_v_1_1_driver.c,980 :: 		FT812_Canvas_Pen(AProgressBar->Pen_Width, AProgressBar->Pen_Color, AProgressBar->Opacity);
ADDS	R1, R0, #6
LDRB	R1, [R1, #0]
UXTB	R3, R1
ADDW	R1, R0, #20
LDR	R1, [R1, #0]
MOV	R2, R1
ADDW	R1, R0, #16
LDRB	R1, [R1, #0]
STR	R0, [SP, #4]
UXTB	R0, R1
MOV	R1, R2
UXTB	R2, R3
BL	_FT812_Canvas_Pen+0
LDR	R0, [SP, #4]
;TJ_GUI14e_v_1_1_driver.c,982 :: 		if (AProgressBar->Tag)
ADDS	R1, R0, #7
LDRB	R1, [R1, #0]
CMP	R1, #0
IT	EQ
BEQ	L_DrawProgressBar57
;TJ_GUI14e_v_1_1_driver.c,983 :: 		FT812_Canvas_Tag(AProgressBar->Tag);
ADDS	R1, R0, #7
LDRB	R1, [R1, #0]
STR	R0, [SP, #4]
UXTB	R0, R1
BL	_FT812_Canvas_Tag+0
LDR	R0, [SP, #4]
L_DrawProgressBar57:
;TJ_GUI14e_v_1_1_driver.c,985 :: 		FT812_Screen_BoxRound(AProgressBar->Left, AProgressBar->Top, AProgressBar->Left+AProgressBar->Width-1, AProgressBar->Top+AProgressBar->Height-1, AProgressBar->Corner_Radius);
ADDW	R1, R0, #52
LDRB	R1, [R1, #0]
UXTB	R6, R1
ADDW	R1, R0, #10
LDRSH	R2, [R1, #0]
ADDW	R1, R0, #14
LDRSH	R1, [R1, #0]
ADDS	R1, R2, R1
SXTH	R1, R1
SUBS	R5, R1, #1
ADDW	R1, R0, #8
LDRSH	R4, [R1, #0]
ADDW	R1, R0, #12
LDRSH	R1, [R1, #0]
ADDS	R1, R4, R1
SXTH	R1, R1
SUBS	R3, R1, #1
SXTH	R1, R4
STR	R0, [SP, #4]
SXTH	R0, R1
SXTH	R1, R2
SXTH	R2, R3
SXTH	R3, R5
PUSH	(R6)
BL	_FT812_Screen_BoxRound+0
ADD	SP, SP, #4
LDR	R0, [SP, #4]
;TJ_GUI14e_v_1_1_driver.c,987 :: 		relPos = ((long)(AProgressBar->Position-AProgressBar->Min)*100)/(AProgressBar->Max-AProgressBar->Min);
ADDW	R1, R0, #58
LDRH	R2, [R1, #0]
ADDW	R1, R0, #54
LDRH	R3, [R1, #0]
SUB	R1, R2, R3
UXTH	R1, R1
UXTH	R2, R1
MOVS	R1, #100
MULS	R2, R1, R2
ADDW	R1, R0, #56
LDRH	R1, [R1, #0]
SUB	R1, R1, R3
UXTH	R1, R1
SDIV	R1, R2, R1
; relPos start address is: 20 (R5)
SXTH	R5, R1
;TJ_GUI14e_v_1_1_driver.c,988 :: 		if (relPos > 100)
SXTH	R1, R1
CMP	R1, #100
IT	LE
BLE	L__DrawProgressBar390
;TJ_GUI14e_v_1_1_driver.c,989 :: 		relPos = 100;
MOVS	R5, #100
SXTH	R5, R5
; relPos end address is: 20 (R5)
IT	AL
BAL	L_DrawProgressBar58
L__DrawProgressBar390:
;TJ_GUI14e_v_1_1_driver.c,988 :: 		if (relPos > 100)
;TJ_GUI14e_v_1_1_driver.c,989 :: 		relPos = 100;
L_DrawProgressBar58:
;TJ_GUI14e_v_1_1_driver.c,990 :: 		if (relPos > 0) {
; relPos start address is: 20 (R5)
CMP	R5, #0
IT	LE
BLE	L__DrawProgressBar392
;TJ_GUI14e_v_1_1_driver.c,991 :: 		FT812_Canvas_BrushSingleColor(_FT812_BRUSH_STYLE_SOLID, AProgressBar->Color, AProgressBar->Opacity);
ADDS	R1, R0, #6
LDRB	R1, [R1, #0]
UXTB	R2, R1
ADDW	R1, R0, #28
LDR	R1, [R1, #0]
STR	R0, [SP, #4]
MOVS	R0, #1
BL	_FT812_Canvas_BrushSingleColor+0
LDR	R0, [SP, #4]
;TJ_GUI14e_v_1_1_driver.c,993 :: 		offset = AProgressBar->Pen_Width/2;
ADDW	R1, R0, #16
LDRB	R2, [R1, #0]
LSRS	R4, R2, #1
UXTH	R4, R4
; offset start address is: 16 (R4)
UXTB	R4, R4
;TJ_GUI14e_v_1_1_driver.c,994 :: 		if (AProgressBar->Pen_Width%2)
AND	R1, R2, #1
UXTB	R1, R1
CMP	R1, #0
IT	EQ
BEQ	L__DrawProgressBar391
;TJ_GUI14e_v_1_1_driver.c,995 :: 		offset++;
ADDS	R4, R4, #1
UXTH	R4, R4
; offset end address is: 16 (R4)
IT	AL
BAL	L_DrawProgressBar60
L__DrawProgressBar391:
;TJ_GUI14e_v_1_1_driver.c,994 :: 		if (AProgressBar->Pen_Width%2)
;TJ_GUI14e_v_1_1_driver.c,995 :: 		offset++;
L_DrawProgressBar60:
;TJ_GUI14e_v_1_1_driver.c,997 :: 		rect.Left   = AProgressBar->Left+AProgressBar->Corner_Radius+offset;
; offset start address is: 16 (R4)
ADDW	R1, R0, #8
LDRSH	R2, [R1, #0]
ADDW	R3, R0, #52
LDRB	R1, [R3, #0]
ADDS	R1, R2, R1
SXTH	R1, R1
ADDS	R1, R1, R4
STRH	R1, [SP, #20]
;TJ_GUI14e_v_1_1_driver.c,998 :: 		rect.Top    = AProgressBar->Top+offset;
ADDW	R1, R0, #10
LDRSH	R1, [R1, #0]
ADDS	R1, R1, R4
STRH	R1, [SP, #22]
;TJ_GUI14e_v_1_1_driver.c,999 :: 		rect.Height = AProgressBar->Height-2*offset;
ADDW	R1, R0, #14
LDRSH	R2, [R1, #0]
LSLS	R1, R4, #1
UXTH	R1, R1
SUB	R1, R2, R1
STRH	R1, [SP, #26]
;TJ_GUI14e_v_1_1_driver.c,1001 :: 		rect.Width  = (long)(relPos*(AProgressBar->Width-2*(AProgressBar->Corner_Radius+offset)))/100;
ADDW	R1, R0, #12
LDRSH	R2, [R1, #0]
LDRB	R1, [R3, #0]
ADDS	R1, R1, R4
UXTH	R1, R1
; offset end address is: 16 (R4)
LSLS	R1, R1, #1
UXTH	R1, R1
SUB	R1, R2, R1
UXTH	R1, R1
MULS	R1, R5, R1
UXTH	R1, R1
UXTH	R2, R1
MOVS	R1, #100
SDIV	R1, R2, R1
STRH	R1, [SP, #24]
;TJ_GUI14e_v_1_1_driver.c,1003 :: 		if (AProgressBar->Smooth) {
ADDW	R1, R0, #62
LDRB	R1, [R1, #0]
CMP	R1, #0
IT	EQ
BEQ	L_DrawProgressBar61
;TJ_GUI14e_v_1_1_driver.c,1004 :: 		FT812_Screen_RectangleRound(rect.Left, rect.Top, rect.Left+rect.Width-1, rect.Top+rect.Height-1, 1);
MOVS	R4, #1
LDRSH	R2, [SP, #26]
LDRSH	R1, [SP, #22]
ADDS	R1, R1, R2
SXTH	R1, R1
SUBS	R3, R1, #1
LDRSH	R2, [SP, #24]
LDRSH	R1, [SP, #20]
ADDS	R1, R1, R2
SXTH	R1, R1
SUBS	R1, R1, #1
STRH	R5, [SP, #4]
STR	R0, [SP, #8]
SXTH	R2, R1
LDRSH	R1, [SP, #22]
LDRSH	R0, [SP, #20]
PUSH	(R4)
BL	_FT812_Screen_RectangleRound+0
ADD	SP, SP, #4
LDR	R0, [SP, #8]
LDRSH	R5, [SP, #4]
;TJ_GUI14e_v_1_1_driver.c,1005 :: 		}
MOV	R6, R0
SXTH	R0, R5
IT	AL
BAL	L_DrawProgressBar62
L_DrawProgressBar61:
;TJ_GUI14e_v_1_1_driver.c,1007 :: 		cntPos     = rect.Width;
; cntPos start address is: 24 (R6)
LDRSH	R6, [SP, #24]
;TJ_GUI14e_v_1_1_driver.c,1008 :: 		rect.Width = RECTWIDTH;
MOVS	R1, #8
SXTH	R1, R1
STRH	R1, [SP, #24]
; relPos end address is: 20 (R5)
; AProgressBar end address is: 0 (R0)
; cntPos end address is: 24 (R6)
;TJ_GUI14e_v_1_1_driver.c,1010 :: 		while (cntPos > 0) {
L_DrawProgressBar63:
; cntPos start address is: 24 (R6)
; relPos start address is: 20 (R5)
; AProgressBar start address is: 0 (R0)
CMP	R6, #0
IT	LE
BLE	L_DrawProgressBar64
;TJ_GUI14e_v_1_1_driver.c,1011 :: 		if (cntPos < rect.Width) {
LDRSH	R1, [SP, #24]
CMP	R6, R1
IT	GE
BGE	L_DrawProgressBar65
;TJ_GUI14e_v_1_1_driver.c,1012 :: 		rect.Width = cntPos;
STRH	R6, [SP, #24]
;TJ_GUI14e_v_1_1_driver.c,1013 :: 		}
L_DrawProgressBar65:
;TJ_GUI14e_v_1_1_driver.c,1014 :: 		FT812_Screen_RectangleRound(rect.Left, rect.Top, rect.Left+rect.Width-1, rect.Top+rect.Height-1, 1);
MOVS	R4, #1
LDRSH	R2, [SP, #26]
LDRSH	R1, [SP, #22]
ADDS	R1, R1, R2
SXTH	R1, R1
SUBS	R3, R1, #1
LDRSH	R2, [SP, #24]
LDRSH	R1, [SP, #20]
ADDS	R1, R1, R2
SXTH	R1, R1
SUBS	R1, R1, #1
STR	R0, [SP, #4]
STRH	R5, [SP, #8]
STRH	R6, [SP, #10]
SXTH	R2, R1
LDRSH	R1, [SP, #22]
LDRSH	R0, [SP, #20]
PUSH	(R4)
BL	_FT812_Screen_RectangleRound+0
ADD	SP, SP, #4
LDRSH	R6, [SP, #10]
LDRSH	R5, [SP, #8]
LDR	R0, [SP, #4]
;TJ_GUI14e_v_1_1_driver.c,1015 :: 		cntPos    -= rect.Width+RECTSPACING;
LDRSH	R1, [SP, #24]
ADDS	R2, R1, #2
SXTH	R2, R2
SUB	R6, R6, R2
SXTH	R6, R6
;TJ_GUI14e_v_1_1_driver.c,1016 :: 		rect.Left += rect.Width+RECTSPACING;
LDRSH	R1, [SP, #20]
ADDS	R1, R1, R2
STRH	R1, [SP, #20]
;TJ_GUI14e_v_1_1_driver.c,1017 :: 		}
; cntPos end address is: 24 (R6)
IT	AL
BAL	L_DrawProgressBar63
L_DrawProgressBar64:
;TJ_GUI14e_v_1_1_driver.c,1018 :: 		}
MOV	R6, R0
; AProgressBar end address is: 0 (R0)
SXTH	R0, R5
L_DrawProgressBar62:
; relPos end address is: 20 (R5)
;TJ_GUI14e_v_1_1_driver.c,1019 :: 		}
; AProgressBar start address is: 24 (R6)
; relPos start address is: 0 (R0)
; relPos end address is: 0 (R0)
; AProgressBar end address is: 24 (R6)
IT	AL
BAL	L_DrawProgressBar59
L__DrawProgressBar392:
;TJ_GUI14e_v_1_1_driver.c,990 :: 		if (relPos > 0) {
MOV	R6, R0
SXTH	R0, R5
;TJ_GUI14e_v_1_1_driver.c,1019 :: 		}
L_DrawProgressBar59:
;TJ_GUI14e_v_1_1_driver.c,1021 :: 		if (AProgressBar->Show_Position) {
; relPos start address is: 0 (R0)
; AProgressBar start address is: 24 (R6)
ADDW	R1, R6, #60
LDRB	R1, [R1, #0]
CMP	R1, #0
IT	EQ
BEQ	L_DrawProgressBar66
;TJ_GUI14e_v_1_1_driver.c,1022 :: 		if (AProgressBar->FontHandle >= 16)
ADDW	R1, R6, #44
LDRB	R1, [R1, #0]
CMP	R1, #16
IT	CC
BCC	L_DrawProgressBar67
;TJ_GUI14e_v_1_1_driver.c,1023 :: 		FT812_Canvas_FontSystem(AProgressBar->FontHandle, AProgressBar->Font_Color, AProgressBar->Opacity);
ADDS	R1, R6, #6
LDRB	R1, [R1, #0]
UXTB	R3, R1
ADDW	R1, R6, #40
LDR	R1, [R1, #0]
MOV	R2, R1
ADDW	R1, R6, #44
LDRB	R1, [R1, #0]
STR	R6, [SP, #4]
STRH	R0, [SP, #8]
UXTB	R0, R1
MOV	R1, R2
UXTB	R2, R3
BL	_FT812_Canvas_FontSystem+0
LDRSH	R0, [SP, #8]
LDR	R6, [SP, #4]
IT	AL
BAL	L_DrawProgressBar68
L_DrawProgressBar67:
;TJ_GUI14e_v_1_1_driver.c,1025 :: 		FT812_Canvas_FontExt(AProgressBar->FontHandle, AProgressBar->FontName, AProgressBar->Source, AProgressBar->Font_Color, AProgressBar->Opacity);
ADDS	R1, R6, #6
LDRB	R1, [R1, #0]
UXTB	R5, R1
ADDW	R1, R6, #40
LDR	R1, [R1, #0]
MOV	R4, R1
ADDW	R1, R6, #48
LDR	R1, [R1, #0]
MOV	R3, R1
ADDW	R1, R6, #36
LDR	R1, [R1, #0]
MOV	R2, R1
ADDW	R1, R6, #44
LDRB	R1, [R1, #0]
STR	R6, [SP, #4]
STRH	R0, [SP, #8]
UXTB	R0, R1
MOV	R1, R2
MOV	R2, R3
MOV	R3, R4
PUSH	(R5)
BL	_FT812_Canvas_FontExt+0
ADD	SP, SP, #4
LDRSH	R0, [SP, #8]
LDR	R6, [SP, #4]
L_DrawProgressBar68:
;TJ_GUI14e_v_1_1_driver.c,1026 :: 		if (AProgressBar->Show_Percentage) {
ADDW	R1, R6, #61
LDRB	R1, [R1, #0]
CMP	R1, #0
IT	EQ
BEQ	L_DrawProgressBar69
;TJ_GUI14e_v_1_1_driver.c,1027 :: 		IntToStr(relPos, str);
ADD	R1, SP, #28
STR	R6, [SP, #4]
; relPos end address is: 0 (R0)
BL	_IntToStr+0
LDR	R6, [SP, #4]
;TJ_GUI14e_v_1_1_driver.c,1028 :: 		strcat(str, "\%");
MOVW	R2, #lo_addr(?lstr1_TJ_GUI14e_v_1_1_driver+0)
MOVT	R2, #hi_addr(?lstr1_TJ_GUI14e_v_1_1_driver+0)
ADD	R1, SP, #28
MOV	R0, R1
MOV	R1, R2
BL	_strcat+0
;TJ_GUI14e_v_1_1_driver.c,1029 :: 		} else {
IT	AL
BAL	L_DrawProgressBar70
L_DrawProgressBar69:
;TJ_GUI14e_v_1_1_driver.c,1030 :: 		IntToStr(AProgressBar->Position, str);
ADD	R2, SP, #28
ADDW	R1, R6, #58
LDRH	R1, [R1, #0]
SXTH	R1, R1
STR	R6, [SP, #4]
SXTH	R0, R1
MOV	R1, R2
BL	_IntToStr+0
LDR	R6, [SP, #4]
;TJ_GUI14e_v_1_1_driver.c,1031 :: 		}
L_DrawProgressBar70:
;TJ_GUI14e_v_1_1_driver.c,1032 :: 		Ltrim(str);
ADD	R1, SP, #28
MOV	R0, R1
BL	_Ltrim+0
;TJ_GUI14e_v_1_1_driver.c,1034 :: 		text.Width  = FT812_Canvas_TextWidth(str);
ADD	R1, SP, #28
MOV	R0, R1
BL	_FT812_Canvas_TextWidth+0
STRH	R0, [SP, #16]
;TJ_GUI14e_v_1_1_driver.c,1035 :: 		text.Height = FT812_Canvas_TextHeight();
BL	_FT812_Canvas_TextHeight+0
STRH	R0, [SP, #18]
;TJ_GUI14e_v_1_1_driver.c,1036 :: 		text.Top    = AProgressBar->Top+(AProgressBar->Height-text.Height)/2;
ADDW	R1, R6, #10
LDRSH	R3, [R1, #0]
ADDW	R1, R6, #14
LDRSH	R2, [R1, #0]
LDRSH	R1, [SP, #18]
SUB	R2, R2, R1
SXTH	R2, R2
MOVS	R1, #2
SXTH	R1, R1
SDIV	R1, R2, R1
SXTH	R1, R1
ADDS	R1, R3, R1
STRH	R1, [SP, #14]
;TJ_GUI14e_v_1_1_driver.c,1037 :: 		text.Left   = AProgressBar->Left+(AProgressBar->Width-text.Width)/2;
ADDW	R1, R6, #8
LDRSH	R3, [R1, #0]
ADDW	R1, R6, #12
; AProgressBar end address is: 24 (R6)
LDRSH	R2, [R1, #0]
LDRSH	R1, [SP, #16]
SUB	R2, R2, R1
SXTH	R2, R2
MOVS	R1, #2
SXTH	R1, R1
SDIV	R1, R2, R1
SXTH	R1, R1
ADDS	R2, R3, R1
STRH	R2, [SP, #12]
;TJ_GUI14e_v_1_1_driver.c,1038 :: 		FT812_Screen_TextPos(text.Left, text.Top, str);
ADD	R1, SP, #28
SXTH	R0, R2
MOV	R2, R1
LDRSH	R1, [SP, #14]
BL	_FT812_Screen_TextPos+0
;TJ_GUI14e_v_1_1_driver.c,1039 :: 		}
L_DrawProgressBar66:
;TJ_GUI14e_v_1_1_driver.c,1040 :: 		}
L_DrawProgressBar56:
;TJ_GUI14e_v_1_1_driver.c,1041 :: 		}
L_end_DrawProgressBar:
LDR	LR, [SP, #0]
ADD	SP, SP, #40
BX	LR
; end of _DrawProgressBar
_DrawEveGauge:
;TJ_GUI14e_v_1_1_driver.c,1043 :: 		void DrawEveGauge(TEveGauge *AEveGauge) {
; AEveGauge start address is: 0 (R0)
SUB	SP, SP, #8
STR	LR, [SP, #0]
; AEveGauge end address is: 0 (R0)
; AEveGauge start address is: 0 (R0)
;TJ_GUI14e_v_1_1_driver.c,1046 :: 		if (AEveGauge->Visible) {
ADDS	R1, R0, #5
LDRB	R1, [R1, #0]
CMP	R1, #0
IT	EQ
BEQ	L_DrawEveGauge71
;TJ_GUI14e_v_1_1_driver.c,1047 :: 		if (AEveGauge == (TEveGauge *)TouchS.ActObjInfo.Obj)
MOVW	R1, #lo_addr(_TouchS+8)
MOVT	R1, #hi_addr(_TouchS+8)
LDR	R1, [R1, #0]
CMP	R0, R1
IT	NE
BNE	L_DrawEveGauge72
;TJ_GUI14e_v_1_1_driver.c,1048 :: 		FT812_Canvas_BrushSingleColor(_FT812_BRUSH_STYLE_SOLID, AEveGauge->Press_Color, AEveGauge->Opacity);
ADDS	R1, R0, #6
LDRB	R1, [R1, #0]
UXTB	R2, R1
ADDW	R1, R0, #24
LDR	R1, [R1, #0]
STR	R0, [SP, #4]
MOVS	R0, #1
BL	_FT812_Canvas_BrushSingleColor+0
LDR	R0, [SP, #4]
IT	AL
BAL	L_DrawEveGauge73
L_DrawEveGauge72:
;TJ_GUI14e_v_1_1_driver.c,1050 :: 		FT812_Canvas_BrushSingleColor(_FT812_BRUSH_STYLE_SOLID, AEveGauge->Color, AEveGauge->Opacity);
ADDS	R1, R0, #6
LDRB	R1, [R1, #0]
UXTB	R2, R1
ADDW	R1, R0, #20
LDR	R1, [R1, #0]
STR	R0, [SP, #4]
MOVS	R0, #1
BL	_FT812_Canvas_BrushSingleColor+0
LDR	R0, [SP, #4]
L_DrawEveGauge73:
;TJ_GUI14e_v_1_1_driver.c,1052 :: 		FT812_Canvas_Pen(AEveGauge->Pen_Width, AEveGauge->Pen_Color, AEveGauge->Opacity);
ADDS	R1, R0, #6
LDRB	R1, [R1, #0]
UXTB	R3, R1
ADDW	R1, R0, #16
LDR	R1, [R1, #0]
MOV	R2, R1
ADDW	R1, R0, #14
LDRB	R1, [R1, #0]
STR	R0, [SP, #4]
UXTB	R0, R1
MOV	R1, R2
UXTB	R2, R3
BL	_FT812_Canvas_Pen+0
LDR	R0, [SP, #4]
;TJ_GUI14e_v_1_1_driver.c,1054 :: 		FT812_Canvas_CPGraphics_Major(AEveGauge->Major);
ADDW	R1, R0, #28
LDRB	R1, [R1, #0]
STR	R0, [SP, #4]
UXTH	R0, R1
BL	_FT812_Canvas_CPGraphics_Major+0
LDR	R0, [SP, #4]
;TJ_GUI14e_v_1_1_driver.c,1055 :: 		FT812_Canvas_CPGraphics_Minor(AEveGauge->Minor);
ADDW	R1, R0, #29
LDRB	R1, [R1, #0]
STR	R0, [SP, #4]
UXTH	R0, R1
BL	_FT812_Canvas_CPGraphics_Minor+0
LDR	R0, [SP, #4]
;TJ_GUI14e_v_1_1_driver.c,1057 :: 		FT812_Canvas_CPGraphics_Range(AEveGauge->Range);
ADDW	R1, R0, #32
LDRH	R1, [R1, #0]
STR	R0, [SP, #4]
UXTH	R0, R1
BL	_FT812_Canvas_CPGraphics_Range+0
LDR	R0, [SP, #4]
;TJ_GUI14e_v_1_1_driver.c,1059 :: 		FT812_Canvas_CPGraphics_Value(AEveGauge->Value);
ADDW	R1, R0, #30
LDRH	R1, [R1, #0]
STR	R0, [SP, #4]
UXTH	R0, R1
BL	_FT812_Canvas_CPGraphics_Value+0
LDR	R0, [SP, #4]
;TJ_GUI14e_v_1_1_driver.c,1061 :: 		if (AEveGauge->Tag)
ADDS	R1, R0, #7
LDRB	R1, [R1, #0]
CMP	R1, #0
IT	EQ
BEQ	L_DrawEveGauge74
;TJ_GUI14e_v_1_1_driver.c,1062 :: 		FT812_Canvas_Tag(AEveGauge->Tag);
ADDS	R1, R0, #7
LDRB	R1, [R1, #0]
STR	R0, [SP, #4]
UXTB	R0, R1
BL	_FT812_Canvas_Tag+0
LDR	R0, [SP, #4]
L_DrawEveGauge74:
;TJ_GUI14e_v_1_1_driver.c,1064 :: 		drawOptions = 0;
; drawOptions start address is: 8 (R2)
MOVS	R2, #0
;TJ_GUI14e_v_1_1_driver.c,1065 :: 		if (AEveGauge->Flat)
ADDW	R1, R0, #34
LDRB	R1, [R1, #0]
CMP	R1, #0
IT	EQ
BEQ	L__DrawEveGauge393
;TJ_GUI14e_v_1_1_driver.c,1066 :: 		drawOptions |= _FT812_CP_DRAW_OPT_FLAT;
ORR	R2, R2, #256
; drawOptions end address is: 8 (R2)
IT	AL
BAL	L_DrawEveGauge75
L__DrawEveGauge393:
;TJ_GUI14e_v_1_1_driver.c,1065 :: 		if (AEveGauge->Flat)
;TJ_GUI14e_v_1_1_driver.c,1066 :: 		drawOptions |= _FT812_CP_DRAW_OPT_FLAT;
L_DrawEveGauge75:
;TJ_GUI14e_v_1_1_driver.c,1067 :: 		if (AEveGauge->NoBackground)
; drawOptions start address is: 8 (R2)
ADDW	R1, R0, #35
LDRB	R1, [R1, #0]
CMP	R1, #0
IT	EQ
BEQ	L__DrawEveGauge394
;TJ_GUI14e_v_1_1_driver.c,1068 :: 		drawOptions |= _FT812_CP_DRAW_OPT_NOBACK;
ORR	R2, R2, #4096
; drawOptions end address is: 8 (R2)
IT	AL
BAL	L_DrawEveGauge76
L__DrawEveGauge394:
;TJ_GUI14e_v_1_1_driver.c,1067 :: 		if (AEveGauge->NoBackground)
;TJ_GUI14e_v_1_1_driver.c,1068 :: 		drawOptions |= _FT812_CP_DRAW_OPT_NOBACK;
L_DrawEveGauge76:
;TJ_GUI14e_v_1_1_driver.c,1069 :: 		if (!AEveGauge->TicksVisible)
; drawOptions start address is: 8 (R2)
ADDW	R1, R0, #37
LDRB	R1, [R1, #0]
CMP	R1, #0
IT	NE
BNE	L__DrawEveGauge395
;TJ_GUI14e_v_1_1_driver.c,1070 :: 		drawOptions |= _FT812_CP_DRAW_OPT_NOTICKS;
ORR	R2, R2, #8192
; drawOptions end address is: 8 (R2)
IT	AL
BAL	L_DrawEveGauge77
L__DrawEveGauge395:
;TJ_GUI14e_v_1_1_driver.c,1069 :: 		if (!AEveGauge->TicksVisible)
;TJ_GUI14e_v_1_1_driver.c,1070 :: 		drawOptions |= _FT812_CP_DRAW_OPT_NOTICKS;
L_DrawEveGauge77:
;TJ_GUI14e_v_1_1_driver.c,1071 :: 		if (AEveGauge->NoPointer)
; drawOptions start address is: 8 (R2)
ADDW	R1, R0, #36
LDRB	R1, [R1, #0]
CMP	R1, #0
IT	EQ
BEQ	L__DrawEveGauge396
;TJ_GUI14e_v_1_1_driver.c,1072 :: 		drawOptions |= _FT812_CP_DRAW_OPT_NOPTR;
ORR	R1, R2, #16384
MOV	R2, R1
; drawOptions end address is: 8 (R2)
MOV	R1, R2
IT	AL
BAL	L_DrawEveGauge78
L__DrawEveGauge396:
;TJ_GUI14e_v_1_1_driver.c,1071 :: 		if (AEveGauge->NoPointer)
MOV	R1, R2
;TJ_GUI14e_v_1_1_driver.c,1072 :: 		drawOptions |= _FT812_CP_DRAW_OPT_NOPTR;
L_DrawEveGauge78:
;TJ_GUI14e_v_1_1_driver.c,1073 :: 		FT812_Canvas_CPGraphics_DrawingOptions(drawOptions);
; drawOptions start address is: 4 (R1)
STR	R0, [SP, #4]
; drawOptions end address is: 4 (R1)
MOV	R0, R1
BL	_FT812_Canvas_CPGraphics_DrawingOptions+0
LDR	R0, [SP, #4]
;TJ_GUI14e_v_1_1_driver.c,1077 :: 		AEveGauge->Radius);
ADDW	R1, R0, #12
LDRSH	R4, [R1, #0]
SXTH	R3, R4
;TJ_GUI14e_v_1_1_driver.c,1076 :: 		AEveGauge->Top+AEveGauge->Radius,
ADDW	R1, R0, #10
LDRSH	R1, [R1, #0]
ADDS	R2, R1, R4
;TJ_GUI14e_v_1_1_driver.c,1075 :: 		FT812_Screen_GaugeCp(AEveGauge->Left+AEveGauge->Radius,
ADDW	R1, R0, #8
; AEveGauge end address is: 0 (R0)
LDRSH	R1, [R1, #0]
ADDS	R1, R1, R4
SXTH	R0, R1
;TJ_GUI14e_v_1_1_driver.c,1076 :: 		AEveGauge->Top+AEveGauge->Radius,
SXTH	R1, R2
;TJ_GUI14e_v_1_1_driver.c,1077 :: 		AEveGauge->Radius);
SXTH	R2, R3
BL	_FT812_Screen_GaugeCP+0
;TJ_GUI14e_v_1_1_driver.c,1078 :: 		}
L_DrawEveGauge71:
;TJ_GUI14e_v_1_1_driver.c,1079 :: 		}
L_end_DrawEveGauge:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of _DrawEveGauge
_DrawEveSpinner:
;TJ_GUI14e_v_1_1_driver.c,1081 :: 		char DrawEveSpinner(TEveSpinner *AEveSpinner) {
; AEveSpinner start address is: 0 (R0)
SUB	SP, SP, #8
STR	LR, [SP, #0]
; AEveSpinner end address is: 0 (R0)
; AEveSpinner start address is: 0 (R0)
;TJ_GUI14e_v_1_1_driver.c,1082 :: 		if(*CurrentScreen->EveAnimation == (unsigned short*)AEveSpinner) {
MOVW	R1, #lo_addr(_CurrentScreen+0)
MOVT	R1, #hi_addr(_CurrentScreen+0)
LDR	R1, [R1, #0]
ADDS	R1, #96
LDR	R1, [R1, #0]
LDR	R1, [R1, #0]
CMP	R1, R0
IT	NE
BNE	L_DrawEveSpinner79
;TJ_GUI14e_v_1_1_driver.c,1083 :: 		if (AEveSpinner->Tag)
ADDS	R1, R0, #4
LDRB	R1, [R1, #0]
CMP	R1, #0
IT	EQ
BEQ	L_DrawEveSpinner80
;TJ_GUI14e_v_1_1_driver.c,1084 :: 		FT812_Canvas_Tag(AEveSpinner->Tag);
ADDS	R1, R0, #4
LDRB	R1, [R1, #0]
STR	R0, [SP, #4]
UXTB	R0, R1
BL	_FT812_Canvas_Tag+0
LDR	R0, [SP, #4]
L_DrawEveSpinner80:
;TJ_GUI14e_v_1_1_driver.c,1086 :: 		FT812_Canvas_BrushSingleColor(_FT812_BRUSH_STYLE_SOLID, AEveSpinner->Color, 255);
ADDW	R1, R0, #12
LDR	R1, [R1, #0]
STR	R0, [SP, #4]
MOVS	R2, #255
MOVS	R0, #1
BL	_FT812_Canvas_BrushSingleColor+0
LDR	R0, [SP, #4]
;TJ_GUI14e_v_1_1_driver.c,1088 :: 		FT812_Canvas_CPGraphics_Spinner(AEveSpinner->Style, AEveSpinner->Scale);
ADDW	R1, R0, #17
LDRB	R1, [R1, #0]
UXTB	R2, R1
ADDW	R1, R0, #16
LDRB	R1, [R1, #0]
STR	R0, [SP, #4]
UXTB	R0, R1
UXTB	R1, R2
BL	_FT812_Canvas_CPGraphics_Spinner+0
LDR	R0, [SP, #4]
;TJ_GUI14e_v_1_1_driver.c,1089 :: 		FT812_Screen_SpinnerCP(AEveSpinner->Left, AEveSpinner->Top);
ADDW	R1, R0, #8
LDRSH	R1, [R1, #0]
SXTH	R2, R1
ADDS	R1, R0, #6
; AEveSpinner end address is: 0 (R0)
LDRSH	R1, [R1, #0]
SXTH	R0, R1
SXTH	R1, R2
BL	_FT812_Screen_SpinnerCP+0
;TJ_GUI14e_v_1_1_driver.c,1090 :: 		return 1;
MOVS	R0, #1
IT	AL
BAL	L_end_DrawEveSpinner
;TJ_GUI14e_v_1_1_driver.c,1091 :: 		}
L_DrawEveSpinner79:
;TJ_GUI14e_v_1_1_driver.c,1092 :: 		return 0;
MOVS	R0, #0
;TJ_GUI14e_v_1_1_driver.c,1093 :: 		}
L_end_DrawEveSpinner:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of _DrawEveSpinner
_DrawEveButton:
;TJ_GUI14e_v_1_1_driver.c,1095 :: 		void DrawEveButton(TEveButton *AEveButton) {
; AEveButton start address is: 0 (R0)
SUB	SP, SP, #8
STR	LR, [SP, #0]
; AEveButton end address is: 0 (R0)
; AEveButton start address is: 0 (R0)
;TJ_GUI14e_v_1_1_driver.c,1098 :: 		if (AEveButton->Visible) {
ADDS	R1, R0, #5
LDRB	R1, [R1, #0]
CMP	R1, #0
IT	EQ
BEQ	L_DrawEveButton81
;TJ_GUI14e_v_1_1_driver.c,1099 :: 		if (AEveButton == (TEveButton *)TouchS.ActObjInfo.Obj) {
MOVW	R1, #lo_addr(_TouchS+8)
MOVT	R1, #hi_addr(_TouchS+8)
LDR	R1, [R1, #0]
CMP	R0, R1
IT	NE
BNE	L_DrawEveButton82
;TJ_GUI14e_v_1_1_driver.c,1100 :: 		FT812_Canvas_BrushGradient(_FT812_BRUSH_STYLE_SOLID, _FT812_BRUSH_GR_BOTTOM_TO_TOP, AEveButton->Press_Color, AEveButton->Press_ColorTo, AEveButton->Opacity);
ADDS	R1, R0, #6
LDRB	R1, [R1, #0]
UXTB	R3, R1
ADDW	R1, R0, #28
LDR	R1, [R1, #0]
MOV	R2, R1
ADDW	R1, R0, #20
LDR	R1, [R1, #0]
STR	R0, [SP, #4]
PUSH	(R3)
MOV	R3, R2
MOV	R2, R1
MOVS	R1, #2
MOVS	R0, #1
BL	_FT812_Canvas_BrushGradient+0
ADD	SP, SP, #4
LDR	R0, [SP, #4]
;TJ_GUI14e_v_1_1_driver.c,1101 :: 		}
IT	AL
BAL	L_DrawEveButton83
L_DrawEveButton82:
;TJ_GUI14e_v_1_1_driver.c,1103 :: 		FT812_Canvas_BrushGradient(_FT812_BRUSH_STYLE_SOLID, _FT812_BRUSH_GR_BOTTOM_TO_TOP, AEveButton->Color, AEveButton->ColorTo, AEveButton->Opacity);
ADDS	R1, R0, #6
LDRB	R1, [R1, #0]
UXTB	R3, R1
ADDW	R1, R0, #24
LDR	R1, [R1, #0]
MOV	R2, R1
ADDW	R1, R0, #16
LDR	R1, [R1, #0]
STR	R0, [SP, #4]
PUSH	(R3)
MOV	R3, R2
MOV	R2, R1
MOVS	R1, #2
MOVS	R0, #1
BL	_FT812_Canvas_BrushGradient+0
ADD	SP, SP, #4
LDR	R0, [SP, #4]
;TJ_GUI14e_v_1_1_driver.c,1104 :: 		}
L_DrawEveButton83:
;TJ_GUI14e_v_1_1_driver.c,1106 :: 		if (AEveButton->FontHandle >= 16)
ADDW	R1, R0, #44
LDRB	R1, [R1, #0]
CMP	R1, #16
IT	CC
BCC	L_DrawEveButton84
;TJ_GUI14e_v_1_1_driver.c,1107 :: 		FT812_Canvas_FontSystem(AEveButton->FontHandle, AEveButton->Font_Color, AEveButton->Opacity);
ADDS	R1, R0, #6
LDRB	R1, [R1, #0]
UXTB	R3, R1
ADDW	R1, R0, #40
LDR	R1, [R1, #0]
MOV	R2, R1
ADDW	R1, R0, #44
LDRB	R1, [R1, #0]
STR	R0, [SP, #4]
UXTB	R0, R1
MOV	R1, R2
UXTB	R2, R3
BL	_FT812_Canvas_FontSystem+0
LDR	R0, [SP, #4]
IT	AL
BAL	L_DrawEveButton85
L_DrawEveButton84:
;TJ_GUI14e_v_1_1_driver.c,1109 :: 		FT812_Canvas_FontExt(AEveButton->FontHandle, AEveButton->FontName, AEveButton->Source, AEveButton->Font_Color, AEveButton->Opacity);
ADDS	R1, R0, #6
LDRB	R1, [R1, #0]
UXTB	R5, R1
ADDW	R1, R0, #40
LDR	R1, [R1, #0]
MOV	R4, R1
ADDW	R1, R0, #48
LDR	R1, [R1, #0]
MOV	R3, R1
ADDW	R1, R0, #36
LDR	R1, [R1, #0]
MOV	R2, R1
ADDW	R1, R0, #44
LDRB	R1, [R1, #0]
STR	R0, [SP, #4]
UXTB	R0, R1
MOV	R1, R2
MOV	R2, R3
MOV	R3, R4
PUSH	(R5)
BL	_FT812_Canvas_FontExt+0
ADD	SP, SP, #4
LDR	R0, [SP, #4]
L_DrawEveButton85:
;TJ_GUI14e_v_1_1_driver.c,1111 :: 		if (AEveButton->Tag)
ADDS	R1, R0, #7
LDRB	R1, [R1, #0]
CMP	R1, #0
IT	EQ
BEQ	L_DrawEveButton86
;TJ_GUI14e_v_1_1_driver.c,1112 :: 		FT812_Canvas_Tag(AEveButton->Tag);
ADDS	R1, R0, #7
LDRB	R1, [R1, #0]
STR	R0, [SP, #4]
UXTB	R0, R1
BL	_FT812_Canvas_Tag+0
LDR	R0, [SP, #4]
L_DrawEveButton86:
;TJ_GUI14e_v_1_1_driver.c,1114 :: 		drawOptions = 0;
; drawOptions start address is: 8 (R2)
MOVS	R2, #0
;TJ_GUI14e_v_1_1_driver.c,1115 :: 		if (AEveButton->Flat)
ADDW	R1, R0, #52
LDRB	R1, [R1, #0]
CMP	R1, #0
IT	EQ
BEQ	L__DrawEveButton397
;TJ_GUI14e_v_1_1_driver.c,1116 :: 		drawOptions |= _FT812_CP_DRAW_OPT_FLAT;
ORR	R1, R2, #256
MOV	R2, R1
; drawOptions end address is: 8 (R2)
MOV	R1, R2
IT	AL
BAL	L_DrawEveButton87
L__DrawEveButton397:
;TJ_GUI14e_v_1_1_driver.c,1115 :: 		if (AEveButton->Flat)
MOV	R1, R2
;TJ_GUI14e_v_1_1_driver.c,1116 :: 		drawOptions |= _FT812_CP_DRAW_OPT_FLAT;
L_DrawEveButton87:
;TJ_GUI14e_v_1_1_driver.c,1117 :: 		FT812_Canvas_CPGraphics_DrawingOptions(drawOptions);
; drawOptions start address is: 4 (R1)
STR	R0, [SP, #4]
; drawOptions end address is: 4 (R1)
MOV	R0, R1
BL	_FT812_Canvas_CPGraphics_DrawingOptions+0
LDR	R0, [SP, #4]
;TJ_GUI14e_v_1_1_driver.c,1119 :: 		FT812_Screen_ButtonCP(AEveButton->Left, AEveButton->Top, AEveButton->Width, AEveButton->Height, AEveButton->Caption);
ADDW	R1, R0, #32
LDR	R1, [R1, #0]
MOV	R5, R1
ADDW	R1, R0, #14
LDRSH	R1, [R1, #0]
SXTH	R4, R1
ADDW	R1, R0, #12
LDRSH	R1, [R1, #0]
SXTH	R3, R1
ADDW	R1, R0, #10
LDRSH	R1, [R1, #0]
SXTH	R2, R1
ADDW	R1, R0, #8
; AEveButton end address is: 0 (R0)
LDRSH	R1, [R1, #0]
SXTH	R0, R1
SXTH	R1, R2
SXTH	R2, R3
SXTH	R3, R4
PUSH	(R5)
BL	_FT812_Screen_ButtonCP+0
ADD	SP, SP, #4
;TJ_GUI14e_v_1_1_driver.c,1120 :: 		}
L_DrawEveButton81:
;TJ_GUI14e_v_1_1_driver.c,1121 :: 		}
L_end_DrawEveButton:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of _DrawEveButton
_DisableEveAnimation:
;TJ_GUI14e_v_1_1_driver.c,1123 :: 		void DisableEveAnimation(TScreen *AScreen) {
; AScreen start address is: 0 (R0)
; AScreen end address is: 0 (R0)
; AScreen start address is: 0 (R0)
;TJ_GUI14e_v_1_1_driver.c,1124 :: 		*AScreen->EveAnimation = 0;
ADDW	R1, R0, #96
; AScreen end address is: 0 (R0)
LDR	R2, [R1, #0]
MOVS	R1, #0
STR	R1, [R2, #0]
;TJ_GUI14e_v_1_1_driver.c,1125 :: 		}
L_end_DisableEveAnimation:
BX	LR
; end of _DisableEveAnimation
_EnableEveAnimation:
;TJ_GUI14e_v_1_1_driver.c,1127 :: 		void EnableEveAnimation(TScreen *AScreen, void * AEveAnimation) {
; AEveAnimation start address is: 4 (R1)
; AScreen start address is: 0 (R0)
; AEveAnimation end address is: 4 (R1)
; AScreen end address is: 0 (R0)
; AScreen start address is: 0 (R0)
; AEveAnimation start address is: 4 (R1)
;TJ_GUI14e_v_1_1_driver.c,1128 :: 		*AScreen->EveAnimation = AEveAnimation;
ADDW	R2, R0, #96
; AScreen end address is: 0 (R0)
LDR	R2, [R2, #0]
STR	R1, [R2, #0]
; AEveAnimation end address is: 4 (R1)
;TJ_GUI14e_v_1_1_driver.c,1129 :: 		}
L_end_EnableEveAnimation:
BX	LR
; end of _EnableEveAnimation
_SetIdenticalImageSources:
;TJ_GUI14e_v_1_1_driver.c,1131 :: 		void SetIdenticalImageSources(TPointer APictureName, unsigned long ASource) {
; ASource start address is: 4 (R1)
; APictureName start address is: 0 (R0)
SUB	SP, SP, #4
; ASource end address is: 4 (R1)
; APictureName end address is: 0 (R0)
; APictureName start address is: 0 (R0)
; ASource start address is: 4 (R1)
;TJ_GUI14e_v_1_1_driver.c,1137 :: 		i    = CurrentScreen->ImagesCount;
MOVW	R3, #lo_addr(_CurrentScreen+0)
MOVT	R3, #hi_addr(_CurrentScreen+0)
LDR	R2, [R3, #0]
ADDS	R2, #24
LDRB	R4, [R2, #0]
; i start address is: 16 (R4)
;TJ_GUI14e_v_1_1_driver.c,1138 :: 		ptrO = CurrentScreen->Images;
MOV	R2, R3
LDR	R2, [R2, #0]
ADDS	R2, #28
LDR	R5, [R2, #0]
; ptrO start address is: 20 (R5)
; APictureName end address is: 0 (R0)
; ASource end address is: 4 (R1)
; ptrO end address is: 20 (R5)
STR	R1, [SP, #0]
MOV	R1, R0
LDR	R0, [SP, #0]
;TJ_GUI14e_v_1_1_driver.c,1139 :: 		while (i--) {
L_SetIdenticalImageSources88:
; ptrO start address is: 20 (R5)
; APictureName start address is: 4 (R1)
; ASource start address is: 0 (R0)
; i start address is: 16 (R4)
; ASource start address is: 0 (R0)
; ASource end address is: 0 (R0)
; APictureName start address is: 4 (R1)
; APictureName end address is: 4 (R1)
UXTB	R3, R4
SUBS	R2, R4, #1
UXTB	R4, R2
; i end address is: 16 (R4)
CMP	R3, #0
IT	EQ
BEQ	L_SetIdenticalImageSources89
; ASource end address is: 0 (R0)
; APictureName end address is: 4 (R1)
; i end address is: 16 (R4)
;TJ_GUI14e_v_1_1_driver.c,1140 :: 		pImage = (TImage *)(*ptrO);
; i start address is: 16 (R4)
; APictureName start address is: 4 (R1)
; ASource start address is: 0 (R0)
LDR	R2, [R5, #0]
; pImage start address is: 12 (R3)
MOV	R3, R2
;TJ_GUI14e_v_1_1_driver.c,1141 :: 		if (pImage->Picture_Name == APictureName)
ADDS	R2, #16
LDR	R2, [R2, #0]
CMP	R2, R1
IT	NE
BNE	L_SetIdenticalImageSources90
;TJ_GUI14e_v_1_1_driver.c,1142 :: 		pImage->Source = ASource;
ADDW	R2, R3, #28
; pImage end address is: 12 (R3)
STR	R0, [R2, #0]
L_SetIdenticalImageSources90:
;TJ_GUI14e_v_1_1_driver.c,1143 :: 		ptrO++;
ADDS	R5, R5, #4
;TJ_GUI14e_v_1_1_driver.c,1144 :: 		}
; ASource end address is: 0 (R0)
; APictureName end address is: 4 (R1)
; i end address is: 16 (R4)
; ptrO end address is: 20 (R5)
IT	AL
BAL	L_SetIdenticalImageSources88
L_SetIdenticalImageSources89:
;TJ_GUI14e_v_1_1_driver.c,1145 :: 		}
L_end_SetIdenticalImageSources:
ADD	SP, SP, #4
BX	LR
; end of _SetIdenticalImageSources
_SetIdenticalFontSources:
;TJ_GUI14e_v_1_1_driver.c,1147 :: 		void SetIdenticalFontSources(TPointer AFontName, unsigned long ASource) {
; ASource start address is: 4 (R1)
; AFontName start address is: 0 (R0)
SUB	SP, SP, #4
; ASource end address is: 4 (R1)
; AFontName end address is: 0 (R0)
; AFontName start address is: 0 (R0)
; ASource start address is: 4 (R1)
;TJ_GUI14e_v_1_1_driver.c,1157 :: 		i    = CurrentScreen->Buttons_RoundCount;
MOVW	R3, #lo_addr(_CurrentScreen+0)
MOVT	R3, #hi_addr(_CurrentScreen+0)
LDR	R2, [R3, #0]
ADDS	R2, #9
LDRB	R4, [R2, #0]
; i start address is: 16 (R4)
;TJ_GUI14e_v_1_1_driver.c,1158 :: 		ptrO = CurrentScreen->Buttons_Round;
MOV	R2, R3
LDR	R2, [R2, #0]
ADDS	R2, #12
LDR	R5, [R2, #0]
; ptrO start address is: 20 (R5)
; AFontName end address is: 0 (R0)
; ASource end address is: 4 (R1)
; ptrO end address is: 20 (R5)
STR	R1, [SP, #0]
MOV	R1, R0
LDR	R0, [SP, #0]
;TJ_GUI14e_v_1_1_driver.c,1159 :: 		while (i--) {
L_SetIdenticalFontSources91:
; ptrO start address is: 20 (R5)
; i start address is: 16 (R4)
; ASource start address is: 0 (R0)
; AFontName start address is: 4 (R1)
UXTB	R3, R4
SUBS	R4, R4, #1
UXTB	R4, R4
; i end address is: 16 (R4)
CMP	R3, #0
IT	EQ
BEQ	L_SetIdenticalFontSources92
; i end address is: 16 (R4)
;TJ_GUI14e_v_1_1_driver.c,1160 :: 		pButtonRound = (TButton_Round *)(*ptrO);
; i start address is: 16 (R4)
LDR	R2, [R5, #0]
; pButtonRound start address is: 12 (R3)
MOV	R3, R2
;TJ_GUI14e_v_1_1_driver.c,1161 :: 		if (pButtonRound->FontName == AFontName)
ADDS	R2, #40
LDR	R2, [R2, #0]
CMP	R2, R1
IT	NE
BNE	L_SetIdenticalFontSources93
;TJ_GUI14e_v_1_1_driver.c,1162 :: 		pButtonRound->Source = ASource;
ADDW	R2, R3, #52
; pButtonRound end address is: 12 (R3)
STR	R0, [R2, #0]
L_SetIdenticalFontSources93:
;TJ_GUI14e_v_1_1_driver.c,1163 :: 		ptrO++;
ADDS	R5, R5, #4
;TJ_GUI14e_v_1_1_driver.c,1164 :: 		}
; i end address is: 16 (R4)
; ptrO end address is: 20 (R5)
IT	AL
BAL	L_SetIdenticalFontSources91
L_SetIdenticalFontSources92:
;TJ_GUI14e_v_1_1_driver.c,1167 :: 		i    = CurrentScreen->LabelsCount;
MOVW	R3, #lo_addr(_CurrentScreen+0)
MOVT	R3, #hi_addr(_CurrentScreen+0)
LDR	R2, [R3, #0]
ADDS	R2, #16
LDRB	R4, [R2, #0]
; i start address is: 16 (R4)
;TJ_GUI14e_v_1_1_driver.c,1168 :: 		ptrO = CurrentScreen->Labels;
MOV	R2, R3
LDR	R2, [R2, #0]
ADDS	R2, #20
LDR	R5, [R2, #0]
; ptrO start address is: 20 (R5)
; ASource end address is: 0 (R0)
; AFontName end address is: 4 (R1)
; ptrO end address is: 20 (R5)
STR	R1, [SP, #0]
MOV	R1, R0
LDR	R0, [SP, #0]
;TJ_GUI14e_v_1_1_driver.c,1169 :: 		while (i--) {
L_SetIdenticalFontSources94:
; ptrO start address is: 20 (R5)
; i start address is: 16 (R4)
; AFontName start address is: 0 (R0)
; ASource start address is: 4 (R1)
UXTB	R3, R4
SUBS	R4, R4, #1
UXTB	R4, R4
; i end address is: 16 (R4)
CMP	R3, #0
IT	EQ
BEQ	L_SetIdenticalFontSources95
; i end address is: 16 (R4)
;TJ_GUI14e_v_1_1_driver.c,1170 :: 		pLabel = (TLabel *)(*ptrO);
; i start address is: 16 (R4)
LDR	R2, [R5, #0]
; pLabel start address is: 12 (R3)
MOV	R3, R2
;TJ_GUI14e_v_1_1_driver.c,1171 :: 		if (pLabel->FontName == AFontName)
ADDS	R2, #20
LDR	R2, [R2, #0]
CMP	R2, R0
IT	NE
BNE	L_SetIdenticalFontSources96
;TJ_GUI14e_v_1_1_driver.c,1172 :: 		pLabel->Source = ASource;
ADDW	R2, R3, #32
; pLabel end address is: 12 (R3)
STR	R1, [R2, #0]
L_SetIdenticalFontSources96:
;TJ_GUI14e_v_1_1_driver.c,1173 :: 		ptrO++;
ADDS	R5, R5, #4
;TJ_GUI14e_v_1_1_driver.c,1174 :: 		}
; i end address is: 16 (R4)
; ptrO end address is: 20 (R5)
IT	AL
BAL	L_SetIdenticalFontSources94
L_SetIdenticalFontSources95:
;TJ_GUI14e_v_1_1_driver.c,1177 :: 		i    = CurrentScreen->CircleButtonsCount;
MOVW	R3, #lo_addr(_CurrentScreen+0)
MOVT	R3, #hi_addr(_CurrentScreen+0)
LDR	R2, [R3, #0]
ADDS	R2, #40
LDRB	R4, [R2, #0]
; i start address is: 16 (R4)
;TJ_GUI14e_v_1_1_driver.c,1178 :: 		ptrO = CurrentScreen->CircleButtons;
MOV	R2, R3
LDR	R2, [R2, #0]
ADDS	R2, #44
LDR	R5, [R2, #0]
; ptrO start address is: 20 (R5)
; AFontName end address is: 0 (R0)
; ASource end address is: 4 (R1)
; ptrO end address is: 20 (R5)
STR	R1, [SP, #0]
MOV	R1, R0
LDR	R0, [SP, #0]
;TJ_GUI14e_v_1_1_driver.c,1179 :: 		while (i--) {
L_SetIdenticalFontSources97:
; ptrO start address is: 20 (R5)
; i start address is: 16 (R4)
; ASource start address is: 0 (R0)
; AFontName start address is: 4 (R1)
UXTB	R3, R4
SUBS	R4, R4, #1
UXTB	R4, R4
; i end address is: 16 (R4)
CMP	R3, #0
IT	EQ
BEQ	L_SetIdenticalFontSources98
; i end address is: 16 (R4)
;TJ_GUI14e_v_1_1_driver.c,1180 :: 		pCircleButton = (TCircleButton *)(*ptrO);
; i start address is: 16 (R4)
LDR	R2, [R5, #0]
; pCircleButton start address is: 12 (R3)
MOV	R3, R2
;TJ_GUI14e_v_1_1_driver.c,1181 :: 		if (pCircleButton->FontName == AFontName)
ADDS	R2, #36
LDR	R2, [R2, #0]
CMP	R2, R1
IT	NE
BNE	L_SetIdenticalFontSources99
;TJ_GUI14e_v_1_1_driver.c,1182 :: 		pCircleButton->Source = ASource;
ADDW	R2, R3, #48
; pCircleButton end address is: 12 (R3)
STR	R0, [R2, #0]
L_SetIdenticalFontSources99:
;TJ_GUI14e_v_1_1_driver.c,1183 :: 		ptrO++;
ADDS	R5, R5, #4
;TJ_GUI14e_v_1_1_driver.c,1184 :: 		}
; i end address is: 16 (R4)
; ptrO end address is: 20 (R5)
IT	AL
BAL	L_SetIdenticalFontSources97
L_SetIdenticalFontSources98:
;TJ_GUI14e_v_1_1_driver.c,1187 :: 		i    = CurrentScreen->ProgressBarsCount;
MOVW	R3, #lo_addr(_CurrentScreen+0)
MOVT	R3, #hi_addr(_CurrentScreen+0)
LDR	R2, [R3, #0]
ADDS	R2, #56
LDRB	R4, [R2, #0]
; i start address is: 16 (R4)
;TJ_GUI14e_v_1_1_driver.c,1188 :: 		ptrO = CurrentScreen->ProgressBars;
MOV	R2, R3
LDR	R2, [R2, #0]
ADDS	R2, #60
LDR	R5, [R2, #0]
; ptrO start address is: 20 (R5)
; ASource end address is: 0 (R0)
; AFontName end address is: 4 (R1)
; ptrO end address is: 20 (R5)
STR	R1, [SP, #0]
MOV	R1, R0
LDR	R0, [SP, #0]
;TJ_GUI14e_v_1_1_driver.c,1189 :: 		while (i--) {
L_SetIdenticalFontSources100:
; ptrO start address is: 20 (R5)
; i start address is: 16 (R4)
; AFontName start address is: 0 (R0)
; ASource start address is: 4 (R1)
UXTB	R3, R4
SUBS	R4, R4, #1
UXTB	R4, R4
; i end address is: 16 (R4)
CMP	R3, #0
IT	EQ
BEQ	L_SetIdenticalFontSources101
; i end address is: 16 (R4)
;TJ_GUI14e_v_1_1_driver.c,1190 :: 		pProgressBar = (TProgressBar *)(*ptrO);
; i start address is: 16 (R4)
LDR	R2, [R5, #0]
; pProgressBar start address is: 12 (R3)
MOV	R3, R2
;TJ_GUI14e_v_1_1_driver.c,1191 :: 		if (pProgressBar->FontName == AFontName)
ADDS	R2, #36
LDR	R2, [R2, #0]
CMP	R2, R0
IT	NE
BNE	L_SetIdenticalFontSources102
;TJ_GUI14e_v_1_1_driver.c,1192 :: 		pProgressBar->Source = ASource;
ADDW	R2, R3, #48
; pProgressBar end address is: 12 (R3)
STR	R1, [R2, #0]
L_SetIdenticalFontSources102:
;TJ_GUI14e_v_1_1_driver.c,1193 :: 		ptrO++;
ADDS	R5, R5, #4
;TJ_GUI14e_v_1_1_driver.c,1194 :: 		}
; i end address is: 16 (R4)
; ptrO end address is: 20 (R5)
IT	AL
BAL	L_SetIdenticalFontSources100
L_SetIdenticalFontSources101:
;TJ_GUI14e_v_1_1_driver.c,1197 :: 		i    = CurrentScreen->EveButtonsCount;
MOVW	R3, #lo_addr(_CurrentScreen+0)
MOVT	R3, #hi_addr(_CurrentScreen+0)
LDR	R2, [R3, #0]
ADDS	R2, #80
LDRB	R4, [R2, #0]
; i start address is: 16 (R4)
;TJ_GUI14e_v_1_1_driver.c,1198 :: 		ptrO = CurrentScreen->EveButtons;
MOV	R2, R3
LDR	R2, [R2, #0]
ADDS	R2, #84
LDR	R5, [R2, #0]
; ptrO start address is: 20 (R5)
; AFontName end address is: 0 (R0)
; ASource end address is: 4 (R1)
; ptrO end address is: 20 (R5)
STR	R1, [SP, #0]
MOV	R1, R0
LDR	R0, [SP, #0]
;TJ_GUI14e_v_1_1_driver.c,1199 :: 		while (i--) {
L_SetIdenticalFontSources103:
; ptrO start address is: 20 (R5)
; AFontName start address is: 4 (R1)
; ASource start address is: 0 (R0)
; i start address is: 16 (R4)
; ASource start address is: 0 (R0)
; ASource end address is: 0 (R0)
; AFontName start address is: 4 (R1)
; AFontName end address is: 4 (R1)
UXTB	R3, R4
SUBS	R2, R4, #1
UXTB	R4, R2
; i end address is: 16 (R4)
CMP	R3, #0
IT	EQ
BEQ	L_SetIdenticalFontSources104
; ASource end address is: 0 (R0)
; AFontName end address is: 4 (R1)
; i end address is: 16 (R4)
;TJ_GUI14e_v_1_1_driver.c,1200 :: 		pEveButton = (TEveButton *)(*ptrO);
; i start address is: 16 (R4)
; AFontName start address is: 4 (R1)
; ASource start address is: 0 (R0)
LDR	R2, [R5, #0]
; pEveButton start address is: 12 (R3)
MOV	R3, R2
;TJ_GUI14e_v_1_1_driver.c,1201 :: 		if (pEveButton->FontName == AFontName)
ADDS	R2, #36
LDR	R2, [R2, #0]
CMP	R2, R1
IT	NE
BNE	L_SetIdenticalFontSources105
;TJ_GUI14e_v_1_1_driver.c,1202 :: 		pEveButton->Source = ASource;
ADDW	R2, R3, #48
; pEveButton end address is: 12 (R3)
STR	R0, [R2, #0]
L_SetIdenticalFontSources105:
;TJ_GUI14e_v_1_1_driver.c,1203 :: 		ptrO++;
ADDS	R5, R5, #4
;TJ_GUI14e_v_1_1_driver.c,1204 :: 		}
; ASource end address is: 0 (R0)
; AFontName end address is: 4 (R1)
; i end address is: 16 (R4)
; ptrO end address is: 20 (R5)
IT	AL
BAL	L_SetIdenticalFontSources103
L_SetIdenticalFontSources104:
;TJ_GUI14e_v_1_1_driver.c,1205 :: 		}
L_end_SetIdenticalFontSources:
ADD	SP, SP, #4
BX	LR
; end of _SetIdenticalFontSources
TJ_GUI14e_v_1_1_driver_ClearDynObjSource:
;TJ_GUI14e_v_1_1_driver.c,1207 :: 		static void ClearDynObjSource() {
;TJ_GUI14e_v_1_1_driver.c,1218 :: 		i    = CurrentScreen->Buttons_RoundCount;
MOVW	R1, #lo_addr(_CurrentScreen+0)
MOVT	R1, #hi_addr(_CurrentScreen+0)
LDR	R0, [R1, #0]
ADDS	R0, #9
LDRB	R2, [R0, #0]
; i start address is: 8 (R2)
;TJ_GUI14e_v_1_1_driver.c,1219 :: 		ptrO = CurrentScreen->Buttons_Round;
MOV	R0, R1
LDR	R0, [R0, #0]
ADDS	R0, #12
LDR	R3, [R0, #0]
; ptrO start address is: 12 (R3)
; ptrO end address is: 12 (R3)
;TJ_GUI14e_v_1_1_driver.c,1220 :: 		while (i--) {
L_TJ_GUI14e_v_1_1_driver_ClearDynObjSource106:
; ptrO start address is: 12 (R3)
; i start address is: 8 (R2)
UXTB	R1, R2
SUBS	R2, R2, #1
UXTB	R2, R2
; i end address is: 8 (R2)
CMP	R1, #0
IT	EQ
BEQ	L_TJ_GUI14e_v_1_1_driver_ClearDynObjSource107
; i end address is: 8 (R2)
;TJ_GUI14e_v_1_1_driver.c,1221 :: 		pButtonRound = (TButton_Round *)(*ptrO);
; i start address is: 8 (R2)
LDR	R0, [R3, #0]
;TJ_GUI14e_v_1_1_driver.c,1222 :: 		pButtonRound->Source = 0xFFFFFFFF;
ADDW	R1, R0, #52
MOV	R0, #-1
STR	R0, [R1, #0]
;TJ_GUI14e_v_1_1_driver.c,1223 :: 		ptrO++;
ADDS	R3, R3, #4
;TJ_GUI14e_v_1_1_driver.c,1224 :: 		}
; i end address is: 8 (R2)
; ptrO end address is: 12 (R3)
IT	AL
BAL	L_TJ_GUI14e_v_1_1_driver_ClearDynObjSource106
L_TJ_GUI14e_v_1_1_driver_ClearDynObjSource107:
;TJ_GUI14e_v_1_1_driver.c,1227 :: 		i    = CurrentScreen->LabelsCount;
MOVW	R1, #lo_addr(_CurrentScreen+0)
MOVT	R1, #hi_addr(_CurrentScreen+0)
LDR	R0, [R1, #0]
ADDS	R0, #16
LDRB	R2, [R0, #0]
; i start address is: 8 (R2)
;TJ_GUI14e_v_1_1_driver.c,1228 :: 		ptrO = CurrentScreen->Labels;
MOV	R0, R1
LDR	R0, [R0, #0]
ADDS	R0, #20
LDR	R3, [R0, #0]
; ptrO start address is: 12 (R3)
; ptrO end address is: 12 (R3)
;TJ_GUI14e_v_1_1_driver.c,1229 :: 		while (i--) {
L_TJ_GUI14e_v_1_1_driver_ClearDynObjSource108:
; ptrO start address is: 12 (R3)
; i start address is: 8 (R2)
UXTB	R1, R2
SUBS	R2, R2, #1
UXTB	R2, R2
; i end address is: 8 (R2)
CMP	R1, #0
IT	EQ
BEQ	L_TJ_GUI14e_v_1_1_driver_ClearDynObjSource109
; i end address is: 8 (R2)
;TJ_GUI14e_v_1_1_driver.c,1230 :: 		pLabel = (TLabel *)(*ptrO);
; i start address is: 8 (R2)
LDR	R0, [R3, #0]
;TJ_GUI14e_v_1_1_driver.c,1231 :: 		pLabel->Source = 0xFFFFFFFF;
ADDW	R1, R0, #32
MOV	R0, #-1
STR	R0, [R1, #0]
;TJ_GUI14e_v_1_1_driver.c,1232 :: 		ptrO++;
ADDS	R3, R3, #4
;TJ_GUI14e_v_1_1_driver.c,1233 :: 		}
; i end address is: 8 (R2)
; ptrO end address is: 12 (R3)
IT	AL
BAL	L_TJ_GUI14e_v_1_1_driver_ClearDynObjSource108
L_TJ_GUI14e_v_1_1_driver_ClearDynObjSource109:
;TJ_GUI14e_v_1_1_driver.c,1236 :: 		i    = CurrentScreen->ImagesCount;
MOVW	R1, #lo_addr(_CurrentScreen+0)
MOVT	R1, #hi_addr(_CurrentScreen+0)
LDR	R0, [R1, #0]
ADDS	R0, #24
LDRB	R2, [R0, #0]
; i start address is: 8 (R2)
;TJ_GUI14e_v_1_1_driver.c,1237 :: 		ptrO = CurrentScreen->Images;
MOV	R0, R1
LDR	R0, [R0, #0]
ADDS	R0, #28
LDR	R3, [R0, #0]
; ptrO start address is: 12 (R3)
; ptrO end address is: 12 (R3)
;TJ_GUI14e_v_1_1_driver.c,1238 :: 		while (i--) {
L_TJ_GUI14e_v_1_1_driver_ClearDynObjSource110:
; ptrO start address is: 12 (R3)
; i start address is: 8 (R2)
UXTB	R1, R2
SUBS	R2, R2, #1
UXTB	R2, R2
; i end address is: 8 (R2)
CMP	R1, #0
IT	EQ
BEQ	L_TJ_GUI14e_v_1_1_driver_ClearDynObjSource111
; i end address is: 8 (R2)
;TJ_GUI14e_v_1_1_driver.c,1239 :: 		pImage = (TImage *)(*ptrO);
; i start address is: 8 (R2)
LDR	R0, [R3, #0]
;TJ_GUI14e_v_1_1_driver.c,1240 :: 		pImage->Source = 0xFFFFFFFF;
ADDW	R1, R0, #28
MOV	R0, #-1
STR	R0, [R1, #0]
;TJ_GUI14e_v_1_1_driver.c,1241 :: 		ptrO++;
ADDS	R3, R3, #4
;TJ_GUI14e_v_1_1_driver.c,1242 :: 		}
; i end address is: 8 (R2)
; ptrO end address is: 12 (R3)
IT	AL
BAL	L_TJ_GUI14e_v_1_1_driver_ClearDynObjSource110
L_TJ_GUI14e_v_1_1_driver_ClearDynObjSource111:
;TJ_GUI14e_v_1_1_driver.c,1245 :: 		i    = CurrentScreen->CircleButtonsCount;
MOVW	R1, #lo_addr(_CurrentScreen+0)
MOVT	R1, #hi_addr(_CurrentScreen+0)
LDR	R0, [R1, #0]
ADDS	R0, #40
LDRB	R2, [R0, #0]
; i start address is: 8 (R2)
;TJ_GUI14e_v_1_1_driver.c,1246 :: 		ptrO = CurrentScreen->CircleButtons;
MOV	R0, R1
LDR	R0, [R0, #0]
ADDS	R0, #44
LDR	R3, [R0, #0]
; ptrO start address is: 12 (R3)
; ptrO end address is: 12 (R3)
;TJ_GUI14e_v_1_1_driver.c,1247 :: 		while (i--) {
L_TJ_GUI14e_v_1_1_driver_ClearDynObjSource112:
; ptrO start address is: 12 (R3)
; i start address is: 8 (R2)
UXTB	R1, R2
SUBS	R2, R2, #1
UXTB	R2, R2
; i end address is: 8 (R2)
CMP	R1, #0
IT	EQ
BEQ	L_TJ_GUI14e_v_1_1_driver_ClearDynObjSource113
; i end address is: 8 (R2)
;TJ_GUI14e_v_1_1_driver.c,1248 :: 		pCircleButton = (TCircleButton *)(*ptrO);
; i start address is: 8 (R2)
LDR	R0, [R3, #0]
;TJ_GUI14e_v_1_1_driver.c,1249 :: 		pCircleButton->Source = 0xFFFFFFFF;
ADDW	R1, R0, #48
MOV	R0, #-1
STR	R0, [R1, #0]
;TJ_GUI14e_v_1_1_driver.c,1250 :: 		ptrO++;
ADDS	R3, R3, #4
;TJ_GUI14e_v_1_1_driver.c,1251 :: 		}
; i end address is: 8 (R2)
; ptrO end address is: 12 (R3)
IT	AL
BAL	L_TJ_GUI14e_v_1_1_driver_ClearDynObjSource112
L_TJ_GUI14e_v_1_1_driver_ClearDynObjSource113:
;TJ_GUI14e_v_1_1_driver.c,1254 :: 		i    = CurrentScreen->ProgressBarsCount;
MOVW	R1, #lo_addr(_CurrentScreen+0)
MOVT	R1, #hi_addr(_CurrentScreen+0)
LDR	R0, [R1, #0]
ADDS	R0, #56
LDRB	R2, [R0, #0]
; i start address is: 8 (R2)
;TJ_GUI14e_v_1_1_driver.c,1255 :: 		ptrO = CurrentScreen->ProgressBars;
MOV	R0, R1
LDR	R0, [R0, #0]
ADDS	R0, #60
LDR	R3, [R0, #0]
; ptrO start address is: 12 (R3)
; ptrO end address is: 12 (R3)
;TJ_GUI14e_v_1_1_driver.c,1256 :: 		while (i--) {
L_TJ_GUI14e_v_1_1_driver_ClearDynObjSource114:
; ptrO start address is: 12 (R3)
; i start address is: 8 (R2)
UXTB	R1, R2
SUBS	R2, R2, #1
UXTB	R2, R2
; i end address is: 8 (R2)
CMP	R1, #0
IT	EQ
BEQ	L_TJ_GUI14e_v_1_1_driver_ClearDynObjSource115
; i end address is: 8 (R2)
;TJ_GUI14e_v_1_1_driver.c,1257 :: 		pProgressBar = (TProgressBar *)(*ptrO);
; i start address is: 8 (R2)
LDR	R0, [R3, #0]
;TJ_GUI14e_v_1_1_driver.c,1258 :: 		pProgressBar->Source = 0xFFFFFFFF;
ADDW	R1, R0, #48
MOV	R0, #-1
STR	R0, [R1, #0]
;TJ_GUI14e_v_1_1_driver.c,1259 :: 		ptrO++;
ADDS	R3, R3, #4
;TJ_GUI14e_v_1_1_driver.c,1260 :: 		}
; i end address is: 8 (R2)
; ptrO end address is: 12 (R3)
IT	AL
BAL	L_TJ_GUI14e_v_1_1_driver_ClearDynObjSource114
L_TJ_GUI14e_v_1_1_driver_ClearDynObjSource115:
;TJ_GUI14e_v_1_1_driver.c,1263 :: 		i    = CurrentScreen->EveButtonsCount;
MOVW	R1, #lo_addr(_CurrentScreen+0)
MOVT	R1, #hi_addr(_CurrentScreen+0)
LDR	R0, [R1, #0]
ADDS	R0, #80
LDRB	R2, [R0, #0]
; i start address is: 8 (R2)
;TJ_GUI14e_v_1_1_driver.c,1264 :: 		ptrO = CurrentScreen->EveButtons;
MOV	R0, R1
LDR	R0, [R0, #0]
ADDS	R0, #84
LDR	R3, [R0, #0]
; ptrO start address is: 12 (R3)
; ptrO end address is: 12 (R3)
;TJ_GUI14e_v_1_1_driver.c,1265 :: 		while (i--) {
L_TJ_GUI14e_v_1_1_driver_ClearDynObjSource116:
; ptrO start address is: 12 (R3)
; i start address is: 8 (R2)
UXTB	R1, R2
SUBS	R0, R2, #1
UXTB	R2, R0
; i end address is: 8 (R2)
CMP	R1, #0
IT	EQ
BEQ	L_TJ_GUI14e_v_1_1_driver_ClearDynObjSource117
; i end address is: 8 (R2)
;TJ_GUI14e_v_1_1_driver.c,1266 :: 		pEveButton = (TEveButton *)(*ptrO);
; i start address is: 8 (R2)
LDR	R0, [R3, #0]
;TJ_GUI14e_v_1_1_driver.c,1267 :: 		pEveButton->Source = 0xFFFFFFFF;
ADDW	R1, R0, #48
MOV	R0, #-1
STR	R0, [R1, #0]
;TJ_GUI14e_v_1_1_driver.c,1268 :: 		ptrO++;
ADDS	R3, R3, #4
;TJ_GUI14e_v_1_1_driver.c,1269 :: 		}
; i end address is: 8 (R2)
; ptrO end address is: 12 (R3)
IT	AL
BAL	L_TJ_GUI14e_v_1_1_driver_ClearDynObjSource116
L_TJ_GUI14e_v_1_1_driver_ClearDynObjSource117:
;TJ_GUI14e_v_1_1_driver.c,1270 :: 		}
L_end_ClearDynObjSource:
BX	LR
; end of TJ_GUI14e_v_1_1_driver_ClearDynObjSource
_LoadCurrentScreenResToGRAM:
;TJ_GUI14e_v_1_1_driver.c,1272 :: 		void LoadCurrentScreenResToGRAM(char loadOptions) {
; loadOptions start address is: 0 (R0)
SUB	SP, SP, #16
STR	LR, [SP, #0]
UXTB	R4, R0
; loadOptions end address is: 0 (R0)
; loadOptions start address is: 16 (R4)
;TJ_GUI14e_v_1_1_driver.c,1274 :: 		long currSource = -1;
;TJ_GUI14e_v_1_1_driver.c,1285 :: 		if (loadOptions & VTFT_LOAD_RES_DYNAMIC)
AND	R1, R4, #2
SXTH	R1, R1
CMP	R1, #0
IT	EQ
BEQ	L_LoadCurrentScreenResToGRAM118
;TJ_GUI14e_v_1_1_driver.c,1286 :: 		ClearDynObjSource();
BL	TJ_GUI14e_v_1_1_driver_ClearDynObjSource+0
L_LoadCurrentScreenResToGRAM118:
;TJ_GUI14e_v_1_1_driver.c,1289 :: 		if (loadOptions & VTFT_LOAD_RES_DYNAMIC) {
AND	R1, R4, #2
SXTH	R1, R1
; loadOptions end address is: 16 (R4)
CMP	R1, #0
IT	EQ
BEQ	L_LoadCurrentScreenResToGRAM119
;TJ_GUI14e_v_1_1_driver.c,1291 :: 		tmpDynResStart = CurrentScreen->DynResStart;
MOVW	R1, #lo_addr(_CurrentScreen+0)
MOVT	R1, #hi_addr(_CurrentScreen+0)
LDR	R1, [R1, #0]
ADDS	R1, #88
;TJ_GUI14e_v_1_1_driver.c,1292 :: 		if (FT812_RES_BeginLoad(tmpDynResStart)) {
LDR	R0, [R1, #0]
BL	_FT812_RES_BeginLoad+0
CMP	R0, #0
IT	EQ
BEQ	L_LoadCurrentScreenResToGRAM120
;TJ_GUI14e_v_1_1_driver.c,1293 :: 		return;
IT	AL
BAL	L_end_LoadCurrentScreenResToGRAM
;TJ_GUI14e_v_1_1_driver.c,1294 :: 		}
L_LoadCurrentScreenResToGRAM120:
;TJ_GUI14e_v_1_1_driver.c,1297 :: 		i    = CurrentScreen->ImagesCount;
MOVW	R2, #lo_addr(_CurrentScreen+0)
MOVT	R2, #hi_addr(_CurrentScreen+0)
LDR	R1, [R2, #0]
ADDS	R1, #24
LDRB	R1, [R1, #0]
STRB	R1, [SP, #8]
;TJ_GUI14e_v_1_1_driver.c,1298 :: 		ptrO = CurrentScreen->Images;
MOV	R1, R2
LDR	R1, [R1, #0]
ADDS	R1, #28
LDR	R1, [R1, #0]
STR	R1, [SP, #12]
;TJ_GUI14e_v_1_1_driver.c,1299 :: 		while (i--) {
L_LoadCurrentScreenResToGRAM121:
LDRB	R2, [SP, #8]
LDRB	R1, [SP, #8]
SUBS	R1, R1, #1
STRB	R1, [SP, #8]
CMP	R2, #0
IT	EQ
BEQ	L_LoadCurrentScreenResToGRAM122
;TJ_GUI14e_v_1_1_driver.c,1300 :: 		pImage = (TImage *)(*ptrO);
LDR	R1, [SP, #12]
LDR	R1, [R1, #0]
; pImage start address is: 8 (R2)
MOV	R2, R1
;TJ_GUI14e_v_1_1_driver.c,1301 :: 		if (pImage->Source == 0xFFFFFFFF) {
ADDS	R1, #28
LDR	R1, [R1, #0]
CMP	R1, #-1
IT	NE
BNE	L_LoadCurrentScreenResToGRAM123
;TJ_GUI14e_v_1_1_driver.c,1302 :: 		currSource = FT812_Res_LoadBitmapExt(pImage->Picture_Name);
ADDW	R1, R2, #16
LDR	R1, [R1, #0]
STR	R2, [SP, #4]
MOV	R0, R1
BL	_FT812_RES_LoadBitmapExt+0
LDR	R2, [SP, #4]
; currSource start address is: 12 (R3)
MOV	R3, R0
;TJ_GUI14e_v_1_1_driver.c,1303 :: 		pImage->Source = currSource;
ADDW	R1, R2, #28
STR	R0, [R1, #0]
;TJ_GUI14e_v_1_1_driver.c,1304 :: 		SetIdenticalImageSources(pImage->Picture_Name, currSource);
ADDW	R1, R2, #16
; pImage end address is: 8 (R2)
LDR	R1, [R1, #0]
MOV	R0, R1
; currSource end address is: 12 (R3)
MOV	R1, R3
BL	_SetIdenticalImageSources+0
;TJ_GUI14e_v_1_1_driver.c,1305 :: 		}
L_LoadCurrentScreenResToGRAM123:
;TJ_GUI14e_v_1_1_driver.c,1306 :: 		ptrO++;
LDR	R1, [SP, #12]
ADDS	R1, R1, #4
STR	R1, [SP, #12]
;TJ_GUI14e_v_1_1_driver.c,1307 :: 		}
IT	AL
BAL	L_LoadCurrentScreenResToGRAM121
L_LoadCurrentScreenResToGRAM122:
;TJ_GUI14e_v_1_1_driver.c,1310 :: 		i    = CurrentScreen->Buttons_RoundCount;
MOVW	R2, #lo_addr(_CurrentScreen+0)
MOVT	R2, #hi_addr(_CurrentScreen+0)
LDR	R1, [R2, #0]
ADDS	R1, #9
LDRB	R1, [R1, #0]
STRB	R1, [SP, #8]
;TJ_GUI14e_v_1_1_driver.c,1311 :: 		ptrO = CurrentScreen->Buttons_Round;
MOV	R1, R2
LDR	R1, [R1, #0]
ADDS	R1, #12
LDR	R1, [R1, #0]
STR	R1, [SP, #12]
;TJ_GUI14e_v_1_1_driver.c,1312 :: 		while (i--) {
L_LoadCurrentScreenResToGRAM124:
LDRB	R2, [SP, #8]
LDRB	R1, [SP, #8]
SUBS	R1, R1, #1
STRB	R1, [SP, #8]
CMP	R2, #0
IT	EQ
BEQ	L_LoadCurrentScreenResToGRAM125
;TJ_GUI14e_v_1_1_driver.c,1313 :: 		pButtonRound = (TButton_Round *)(*ptrO);
LDR	R1, [SP, #12]
LDR	R1, [R1, #0]
; pButtonRound start address is: 8 (R2)
MOV	R2, R1
;TJ_GUI14e_v_1_1_driver.c,1314 :: 		if (pButtonRound->FontHandle < 16)
ADDS	R1, #48
LDRB	R1, [R1, #0]
CMP	R1, #16
IT	CS
BCS	L_LoadCurrentScreenResToGRAM126
;TJ_GUI14e_v_1_1_driver.c,1315 :: 		if (pButtonRound->Source == 0xFFFFFFFF) {
ADDW	R1, R2, #52
LDR	R1, [R1, #0]
CMP	R1, #-1
IT	NE
BNE	L_LoadCurrentScreenResToGRAM127
;TJ_GUI14e_v_1_1_driver.c,1316 :: 		currSource = FT812_Res_LoadFontExt(pButtonRound->FontName);
ADDW	R1, R2, #40
LDR	R1, [R1, #0]
STR	R2, [SP, #4]
MOV	R0, R1
BL	_FT812_RES_LoadFontExt+0
LDR	R2, [SP, #4]
; currSource start address is: 12 (R3)
MOV	R3, R0
;TJ_GUI14e_v_1_1_driver.c,1317 :: 		pButtonRound->Source = currSource;
ADDW	R1, R2, #52
STR	R0, [R1, #0]
;TJ_GUI14e_v_1_1_driver.c,1318 :: 		SetIdenticalFontSources(pButtonRound->FontName, currSource);
ADDW	R1, R2, #40
; pButtonRound end address is: 8 (R2)
LDR	R1, [R1, #0]
MOV	R0, R1
; currSource end address is: 12 (R3)
MOV	R1, R3
BL	_SetIdenticalFontSources+0
;TJ_GUI14e_v_1_1_driver.c,1319 :: 		}
L_LoadCurrentScreenResToGRAM127:
L_LoadCurrentScreenResToGRAM126:
;TJ_GUI14e_v_1_1_driver.c,1320 :: 		ptrO++;
LDR	R1, [SP, #12]
ADDS	R1, R1, #4
STR	R1, [SP, #12]
;TJ_GUI14e_v_1_1_driver.c,1321 :: 		}
IT	AL
BAL	L_LoadCurrentScreenResToGRAM124
L_LoadCurrentScreenResToGRAM125:
;TJ_GUI14e_v_1_1_driver.c,1324 :: 		i    = CurrentScreen->LabelsCount;
MOVW	R2, #lo_addr(_CurrentScreen+0)
MOVT	R2, #hi_addr(_CurrentScreen+0)
LDR	R1, [R2, #0]
ADDS	R1, #16
LDRB	R1, [R1, #0]
STRB	R1, [SP, #8]
;TJ_GUI14e_v_1_1_driver.c,1325 :: 		ptrO = CurrentScreen->Labels;
MOV	R1, R2
LDR	R1, [R1, #0]
ADDS	R1, #20
LDR	R1, [R1, #0]
STR	R1, [SP, #12]
;TJ_GUI14e_v_1_1_driver.c,1326 :: 		while (i--) {
L_LoadCurrentScreenResToGRAM128:
LDRB	R2, [SP, #8]
LDRB	R1, [SP, #8]
SUBS	R1, R1, #1
STRB	R1, [SP, #8]
CMP	R2, #0
IT	EQ
BEQ	L_LoadCurrentScreenResToGRAM129
;TJ_GUI14e_v_1_1_driver.c,1327 :: 		pLabel = (TLabel *)(*ptrO);
LDR	R1, [SP, #12]
LDR	R1, [R1, #0]
; pLabel start address is: 8 (R2)
MOV	R2, R1
;TJ_GUI14e_v_1_1_driver.c,1328 :: 		if (pLabel->FontHandle < 16)
ADDS	R1, #28
LDRB	R1, [R1, #0]
CMP	R1, #16
IT	CS
BCS	L_LoadCurrentScreenResToGRAM130
;TJ_GUI14e_v_1_1_driver.c,1329 :: 		if (pLabel->Source == 0xFFFFFFFF) {
ADDW	R1, R2, #32
LDR	R1, [R1, #0]
CMP	R1, #-1
IT	NE
BNE	L_LoadCurrentScreenResToGRAM131
;TJ_GUI14e_v_1_1_driver.c,1330 :: 		currSource = FT812_Res_LoadFontExt(pLabel->FontName);
ADDW	R1, R2, #20
LDR	R1, [R1, #0]
STR	R2, [SP, #4]
MOV	R0, R1
BL	_FT812_RES_LoadFontExt+0
LDR	R2, [SP, #4]
; currSource start address is: 12 (R3)
MOV	R3, R0
;TJ_GUI14e_v_1_1_driver.c,1331 :: 		pLabel->Source = currSource;
ADDW	R1, R2, #32
STR	R0, [R1, #0]
;TJ_GUI14e_v_1_1_driver.c,1332 :: 		SetIdenticalFontSources(pLabel->FontName, currSource);
ADDW	R1, R2, #20
; pLabel end address is: 8 (R2)
LDR	R1, [R1, #0]
MOV	R0, R1
; currSource end address is: 12 (R3)
MOV	R1, R3
BL	_SetIdenticalFontSources+0
;TJ_GUI14e_v_1_1_driver.c,1333 :: 		}
L_LoadCurrentScreenResToGRAM131:
L_LoadCurrentScreenResToGRAM130:
;TJ_GUI14e_v_1_1_driver.c,1334 :: 		ptrO++;
LDR	R1, [SP, #12]
ADDS	R1, R1, #4
STR	R1, [SP, #12]
;TJ_GUI14e_v_1_1_driver.c,1335 :: 		}
IT	AL
BAL	L_LoadCurrentScreenResToGRAM128
L_LoadCurrentScreenResToGRAM129:
;TJ_GUI14e_v_1_1_driver.c,1338 :: 		i    = CurrentScreen->CircleButtonsCount;
MOVW	R2, #lo_addr(_CurrentScreen+0)
MOVT	R2, #hi_addr(_CurrentScreen+0)
LDR	R1, [R2, #0]
ADDS	R1, #40
LDRB	R1, [R1, #0]
STRB	R1, [SP, #8]
;TJ_GUI14e_v_1_1_driver.c,1339 :: 		ptrO = CurrentScreen->CircleButtons;
MOV	R1, R2
LDR	R1, [R1, #0]
ADDS	R1, #44
LDR	R1, [R1, #0]
STR	R1, [SP, #12]
;TJ_GUI14e_v_1_1_driver.c,1340 :: 		while (i--) {
L_LoadCurrentScreenResToGRAM132:
LDRB	R2, [SP, #8]
LDRB	R1, [SP, #8]
SUBS	R1, R1, #1
STRB	R1, [SP, #8]
CMP	R2, #0
IT	EQ
BEQ	L_LoadCurrentScreenResToGRAM133
;TJ_GUI14e_v_1_1_driver.c,1341 :: 		pCircleButton = (TCircleButton *)(*ptrO);
LDR	R1, [SP, #12]
LDR	R1, [R1, #0]
; pCircleButton start address is: 8 (R2)
MOV	R2, R1
;TJ_GUI14e_v_1_1_driver.c,1342 :: 		if (pCircleButton->FontHandle < 16)
ADDS	R1, #44
LDRB	R1, [R1, #0]
CMP	R1, #16
IT	CS
BCS	L_LoadCurrentScreenResToGRAM134
;TJ_GUI14e_v_1_1_driver.c,1343 :: 		if (pCircleButton->Source == 0xFFFFFFFF) {
ADDW	R1, R2, #48
LDR	R1, [R1, #0]
CMP	R1, #-1
IT	NE
BNE	L_LoadCurrentScreenResToGRAM135
;TJ_GUI14e_v_1_1_driver.c,1344 :: 		currSource = FT812_Res_LoadFontExt(pCircleButton->FontName);
ADDW	R1, R2, #36
LDR	R1, [R1, #0]
STR	R2, [SP, #4]
MOV	R0, R1
BL	_FT812_RES_LoadFontExt+0
LDR	R2, [SP, #4]
; currSource start address is: 12 (R3)
MOV	R3, R0
;TJ_GUI14e_v_1_1_driver.c,1345 :: 		pCircleButton->Source = currSource;
ADDW	R1, R2, #48
STR	R0, [R1, #0]
;TJ_GUI14e_v_1_1_driver.c,1346 :: 		SetIdenticalFontSources(pCircleButton->FontName, currSource);
ADDW	R1, R2, #36
; pCircleButton end address is: 8 (R2)
LDR	R1, [R1, #0]
MOV	R0, R1
; currSource end address is: 12 (R3)
MOV	R1, R3
BL	_SetIdenticalFontSources+0
;TJ_GUI14e_v_1_1_driver.c,1347 :: 		}
L_LoadCurrentScreenResToGRAM135:
L_LoadCurrentScreenResToGRAM134:
;TJ_GUI14e_v_1_1_driver.c,1348 :: 		ptrO++;
LDR	R1, [SP, #12]
ADDS	R1, R1, #4
STR	R1, [SP, #12]
;TJ_GUI14e_v_1_1_driver.c,1349 :: 		}
IT	AL
BAL	L_LoadCurrentScreenResToGRAM132
L_LoadCurrentScreenResToGRAM133:
;TJ_GUI14e_v_1_1_driver.c,1352 :: 		i    = CurrentScreen->ProgressBarsCount;
MOVW	R2, #lo_addr(_CurrentScreen+0)
MOVT	R2, #hi_addr(_CurrentScreen+0)
LDR	R1, [R2, #0]
ADDS	R1, #56
LDRB	R1, [R1, #0]
STRB	R1, [SP, #8]
;TJ_GUI14e_v_1_1_driver.c,1353 :: 		ptrO = CurrentScreen->ProgressBars;
MOV	R1, R2
LDR	R1, [R1, #0]
ADDS	R1, #60
LDR	R1, [R1, #0]
STR	R1, [SP, #12]
;TJ_GUI14e_v_1_1_driver.c,1354 :: 		while (i--) {
L_LoadCurrentScreenResToGRAM136:
LDRB	R2, [SP, #8]
LDRB	R1, [SP, #8]
SUBS	R1, R1, #1
STRB	R1, [SP, #8]
CMP	R2, #0
IT	EQ
BEQ	L_LoadCurrentScreenResToGRAM137
;TJ_GUI14e_v_1_1_driver.c,1355 :: 		pProgressBar = (TProgressBar *)(*ptrO);
LDR	R1, [SP, #12]
LDR	R1, [R1, #0]
; pProgressBar start address is: 8 (R2)
MOV	R2, R1
;TJ_GUI14e_v_1_1_driver.c,1356 :: 		if (pProgressBar->FontHandle < 16)
ADDS	R1, #44
LDRB	R1, [R1, #0]
CMP	R1, #16
IT	CS
BCS	L_LoadCurrentScreenResToGRAM138
;TJ_GUI14e_v_1_1_driver.c,1357 :: 		if (pProgressBar->Source == 0xFFFFFFFF) {
ADDW	R1, R2, #48
LDR	R1, [R1, #0]
CMP	R1, #-1
IT	NE
BNE	L_LoadCurrentScreenResToGRAM139
;TJ_GUI14e_v_1_1_driver.c,1358 :: 		currSource = FT812_Res_LoadFontExt(pProgressBar->FontName);
ADDW	R1, R2, #36
LDR	R1, [R1, #0]
STR	R2, [SP, #4]
MOV	R0, R1
BL	_FT812_RES_LoadFontExt+0
LDR	R2, [SP, #4]
; currSource start address is: 12 (R3)
MOV	R3, R0
;TJ_GUI14e_v_1_1_driver.c,1359 :: 		pProgressBar->Source = currSource;
ADDW	R1, R2, #48
STR	R0, [R1, #0]
;TJ_GUI14e_v_1_1_driver.c,1360 :: 		SetIdenticalFontSources(pProgressBar->FontName, currSource);
ADDW	R1, R2, #36
; pProgressBar end address is: 8 (R2)
LDR	R1, [R1, #0]
MOV	R0, R1
; currSource end address is: 12 (R3)
MOV	R1, R3
BL	_SetIdenticalFontSources+0
;TJ_GUI14e_v_1_1_driver.c,1361 :: 		}
L_LoadCurrentScreenResToGRAM139:
L_LoadCurrentScreenResToGRAM138:
;TJ_GUI14e_v_1_1_driver.c,1362 :: 		ptrO++;
LDR	R1, [SP, #12]
ADDS	R1, R1, #4
STR	R1, [SP, #12]
;TJ_GUI14e_v_1_1_driver.c,1363 :: 		}
IT	AL
BAL	L_LoadCurrentScreenResToGRAM136
L_LoadCurrentScreenResToGRAM137:
;TJ_GUI14e_v_1_1_driver.c,1366 :: 		i    = CurrentScreen->EveButtonsCount;
MOVW	R2, #lo_addr(_CurrentScreen+0)
MOVT	R2, #hi_addr(_CurrentScreen+0)
LDR	R1, [R2, #0]
ADDS	R1, #80
LDRB	R1, [R1, #0]
STRB	R1, [SP, #8]
;TJ_GUI14e_v_1_1_driver.c,1367 :: 		ptrO = CurrentScreen->EveButtons;
MOV	R1, R2
LDR	R1, [R1, #0]
ADDS	R1, #84
LDR	R1, [R1, #0]
STR	R1, [SP, #12]
;TJ_GUI14e_v_1_1_driver.c,1368 :: 		while (i--) {
L_LoadCurrentScreenResToGRAM140:
LDRB	R2, [SP, #8]
LDRB	R1, [SP, #8]
SUBS	R1, R1, #1
STRB	R1, [SP, #8]
CMP	R2, #0
IT	EQ
BEQ	L_LoadCurrentScreenResToGRAM141
;TJ_GUI14e_v_1_1_driver.c,1369 :: 		pEveButton = (TEveButton *)(*ptrO);
LDR	R1, [SP, #12]
LDR	R1, [R1, #0]
; pEveButton start address is: 8 (R2)
MOV	R2, R1
;TJ_GUI14e_v_1_1_driver.c,1370 :: 		if (pEveButton->FontHandle < 16)
ADDS	R1, #44
LDRB	R1, [R1, #0]
CMP	R1, #16
IT	CS
BCS	L_LoadCurrentScreenResToGRAM142
;TJ_GUI14e_v_1_1_driver.c,1371 :: 		if (pEveButton->Source == 0xFFFFFFFF) {
ADDW	R1, R2, #48
LDR	R1, [R1, #0]
CMP	R1, #-1
IT	NE
BNE	L_LoadCurrentScreenResToGRAM143
;TJ_GUI14e_v_1_1_driver.c,1372 :: 		currSource = FT812_Res_LoadFontExt(pEveButton->FontName);
ADDW	R1, R2, #36
LDR	R1, [R1, #0]
STR	R2, [SP, #4]
MOV	R0, R1
BL	_FT812_RES_LoadFontExt+0
LDR	R2, [SP, #4]
; currSource start address is: 12 (R3)
MOV	R3, R0
;TJ_GUI14e_v_1_1_driver.c,1373 :: 		pEveButton->Source = currSource;
ADDW	R1, R2, #48
STR	R0, [R1, #0]
;TJ_GUI14e_v_1_1_driver.c,1374 :: 		SetIdenticalFontSources(pEveButton->FontName, currSource);
ADDW	R1, R2, #36
; pEveButton end address is: 8 (R2)
LDR	R1, [R1, #0]
MOV	R0, R1
; currSource end address is: 12 (R3)
MOV	R1, R3
BL	_SetIdenticalFontSources+0
;TJ_GUI14e_v_1_1_driver.c,1375 :: 		}
L_LoadCurrentScreenResToGRAM143:
L_LoadCurrentScreenResToGRAM142:
;TJ_GUI14e_v_1_1_driver.c,1376 :: 		ptrO++;
LDR	R1, [SP, #12]
ADDS	R1, R1, #4
STR	R1, [SP, #12]
;TJ_GUI14e_v_1_1_driver.c,1377 :: 		}
IT	AL
BAL	L_LoadCurrentScreenResToGRAM140
L_LoadCurrentScreenResToGRAM141:
;TJ_GUI14e_v_1_1_driver.c,1379 :: 		FT812_RES_EndLoad();
BL	_FT812_RES_EndLoad+0
;TJ_GUI14e_v_1_1_driver.c,1380 :: 		}
L_LoadCurrentScreenResToGRAM119:
;TJ_GUI14e_v_1_1_driver.c,1381 :: 		}
L_end_LoadCurrentScreenResToGRAM:
LDR	LR, [SP, #0]
ADD	SP, SP, #16
BX	LR
; end of _LoadCurrentScreenResToGRAM
_DrawObject:
;TJ_GUI14e_v_1_1_driver.c,1383 :: 		void DrawObject(TPointer aObj, char aObjType) {
; aObjType start address is: 4 (R1)
; aObj start address is: 0 (R0)
SUB	SP, SP, #8
STR	LR, [SP, #0]
; aObjType end address is: 4 (R1)
; aObj end address is: 0 (R0)
; aObj start address is: 0 (R0)
; aObjType start address is: 4 (R1)
;TJ_GUI14e_v_1_1_driver.c,1386 :: 		drawHandler = DrawHandlerTable[aObjType];
LSLS	R3, R1, #2
; aObjType end address is: 4 (R1)
MOVW	R2, #lo_addr(_DrawHandlerTable+0)
MOVT	R2, #hi_addr(_DrawHandlerTable+0)
ADDS	R2, R2, R3
LDR	R2, [R2, #0]
STR	R2, [SP, #4]
;TJ_GUI14e_v_1_1_driver.c,1387 :: 		if (drawHandler)
CMP	R2, #0
IT	EQ
BEQ	L_DrawObject144
;TJ_GUI14e_v_1_1_driver.c,1388 :: 		drawHandler(aObj);
; aObj end address is: 0 (R0)
LDR	R4, [SP, #4]
BLX	R4
L_DrawObject144:
;TJ_GUI14e_v_1_1_driver.c,1389 :: 		}
L_end_DrawObject:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of _DrawObject
_DrawScreenO:
;TJ_GUI14e_v_1_1_driver.c,1391 :: 		void DrawScreenO(TScreen *aScreen, char aOptions) {
SUB	SP, SP, #72
STR	LR, [SP, #0]
STR	R0, [SP, #64]
STRB	R1, [SP, #68]
;TJ_GUI14e_v_1_1_driver.c,1419 :: 		if (aOptions & VTFT_DISPLAY_EFF_LIGHTS_FADE) {
LDRB	R2, [SP, #68]
AND	R2, R2, #4
SXTH	R2, R2
CMP	R2, #0
IT	EQ
BEQ	L_DrawScreenO145
;TJ_GUI14e_v_1_1_driver.c,1420 :: 		FT812_PWM_Get(0, &pwmDuty);
ADD	R2, SP, #10
MOV	R1, R2
MOVS	R0, #0
BL	_FT812_PWM_Get+0
;TJ_GUI14e_v_1_1_driver.c,1421 :: 		FT812_PWM_FadeOut(pwmDuty, 0, pwmDuty/32? pwmDuty/32 : 1, 1);
LDRB	R2, [SP, #10]
LSRS	R2, R2, #5
UXTB	R2, R2
CMP	R2, #0
IT	EQ
BEQ	L_DrawScreenO146
LDRB	R2, [SP, #10]
LSRS	R2, R2, #5
STRB	R2, [SP, #4]
IT	AL
BAL	L_DrawScreenO147
L_DrawScreenO146:
MOVS	R2, #1
STRB	R2, [SP, #4]
L_DrawScreenO147:
MOVS	R3, #1
LDRB	R2, [SP, #4]
MOVS	R1, #0
LDRB	R0, [SP, #10]
BL	_FT812_PWM_FadeOut+0
;TJ_GUI14e_v_1_1_driver.c,1422 :: 		}
IT	AL
BAL	L_DrawScreenO148
L_DrawScreenO145:
;TJ_GUI14e_v_1_1_driver.c,1423 :: 		else if (aOptions & VTFT_DISPLAY_EFF_LIGHTS_OFF) {
LDRB	R2, [SP, #68]
AND	R2, R2, #8
SXTH	R2, R2
CMP	R2, #0
IT	EQ
BEQ	L_DrawScreenO149
;TJ_GUI14e_v_1_1_driver.c,1424 :: 		FT812_PWM_Get(0, &pwmDuty);
ADD	R2, SP, #10
MOV	R1, R2
MOVS	R0, #0
BL	_FT812_PWM_Get+0
;TJ_GUI14e_v_1_1_driver.c,1425 :: 		FT812_PWM_Duty(0);
MOVS	R0, #0
BL	_FT812_PWM_Duty+0
;TJ_GUI14e_v_1_1_driver.c,1426 :: 		}
L_DrawScreenO149:
L_DrawScreenO148:
;TJ_GUI14e_v_1_1_driver.c,1428 :: 		if (CurrentScreen != aScreen) {
LDR	R3, [SP, #64]
MOVW	R2, #lo_addr(_CurrentScreen+0)
MOVT	R2, #hi_addr(_CurrentScreen+0)
LDR	R2, [R2, #0]
CMP	R2, R3
IT	EQ
BEQ	L_DrawScreenO150
;TJ_GUI14e_v_1_1_driver.c,1430 :: 		memset(&TouchS.ActObjInfo, 0, sizeof(TObjInfo));
MOVS	R2, #12
SXTH	R2, R2
MOVS	R1, #0
MOVW	R0, #lo_addr(_TouchS+8)
MOVT	R0, #hi_addr(_TouchS+8)
BL	_memset+0
;TJ_GUI14e_v_1_1_driver.c,1431 :: 		}
L_DrawScreenO150:
;TJ_GUI14e_v_1_1_driver.c,1433 :: 		CurrentScreen = aScreen;
LDR	R3, [SP, #64]
MOVW	R2, #lo_addr(_CurrentScreen+0)
MOVT	R2, #hi_addr(_CurrentScreen+0)
STR	R3, [R2, #0]
;TJ_GUI14e_v_1_1_driver.c,1435 :: 		LoadCurrentScreenResToGRAM(aOptions);
LDRB	R0, [SP, #68]
BL	_LoadCurrentScreenResToGRAM+0
;TJ_GUI14e_v_1_1_driver.c,1438 :: 		cntButtonRound  = CurrentScreen->Buttons_RoundCount;
MOVW	R3, #lo_addr(_CurrentScreen+0)
MOVT	R3, #hi_addr(_CurrentScreen+0)
LDR	R2, [R3, #0]
ADDS	R2, #9
LDRB	R2, [R2, #0]
STRB	R2, [SP, #11]
;TJ_GUI14e_v_1_1_driver.c,1439 :: 		cntLabel        = CurrentScreen->LabelsCount;
MOV	R2, R3
LDR	R2, [R2, #0]
ADDS	R2, #16
LDRB	R2, [R2, #0]
STRB	R2, [SP, #12]
;TJ_GUI14e_v_1_1_driver.c,1440 :: 		cntImage        = CurrentScreen->ImagesCount;
MOV	R2, R3
LDR	R2, [R2, #0]
ADDS	R2, #24
LDRB	R2, [R2, #0]
STRB	R2, [SP, #13]
;TJ_GUI14e_v_1_1_driver.c,1441 :: 		cntCircle       = CurrentScreen->CirclesCount;
MOV	R2, R3
LDR	R2, [R2, #0]
ADDS	R2, #32
LDRB	R2, [R2, #0]
STRB	R2, [SP, #14]
;TJ_GUI14e_v_1_1_driver.c,1442 :: 		cntCircleButton = CurrentScreen->CircleButtonsCount;
MOV	R2, R3
LDR	R2, [R2, #0]
ADDS	R2, #40
LDRB	R2, [R2, #0]
STRB	R2, [SP, #15]
;TJ_GUI14e_v_1_1_driver.c,1443 :: 		cntLine         = CurrentScreen->LinesCount;
MOV	R2, R3
LDR	R2, [R2, #0]
ADDS	R2, #48
LDRB	R2, [R2, #0]
STRB	R2, [SP, #16]
;TJ_GUI14e_v_1_1_driver.c,1444 :: 		cntProgressBar  = CurrentScreen->ProgressBarsCount;
MOV	R2, R3
LDR	R2, [R2, #0]
ADDS	R2, #56
LDRB	R2, [R2, #0]
STRB	R2, [SP, #17]
;TJ_GUI14e_v_1_1_driver.c,1445 :: 		cntEveGauge     = CurrentScreen->EveGaugesCount;
MOV	R2, R3
LDR	R2, [R2, #0]
ADDS	R2, #64
LDRB	R2, [R2, #0]
STRB	R2, [SP, #18]
;TJ_GUI14e_v_1_1_driver.c,1446 :: 		cntEveSpinner   = CurrentScreen->EveSpinnersCount;
MOV	R2, R3
LDR	R2, [R2, #0]
ADDS	R2, #72
LDRB	R2, [R2, #0]
STRB	R2, [SP, #19]
;TJ_GUI14e_v_1_1_driver.c,1447 :: 		cntEveButton    = CurrentScreen->EveButtonsCount;
MOV	R2, R3
LDR	R2, [R2, #0]
ADDS	R2, #80
LDRB	R2, [R2, #0]
STRB	R2, [SP, #20]
;TJ_GUI14e_v_1_1_driver.c,1449 :: 		pButtonRound  = CurrentScreen->Buttons_Round;
MOV	R2, R3
LDR	R2, [R2, #0]
ADDS	R2, #12
LDR	R2, [R2, #0]
STR	R2, [SP, #24]
;TJ_GUI14e_v_1_1_driver.c,1450 :: 		pLabel        = CurrentScreen->Labels;
MOV	R2, R3
LDR	R2, [R2, #0]
ADDS	R2, #20
LDR	R2, [R2, #0]
STR	R2, [SP, #28]
;TJ_GUI14e_v_1_1_driver.c,1451 :: 		pImage        = CurrentScreen->Images;
MOV	R2, R3
LDR	R2, [R2, #0]
ADDS	R2, #28
LDR	R2, [R2, #0]
STR	R2, [SP, #32]
;TJ_GUI14e_v_1_1_driver.c,1452 :: 		pCircle       = CurrentScreen->Circles;
MOV	R2, R3
LDR	R2, [R2, #0]
ADDS	R2, #36
LDR	R2, [R2, #0]
STR	R2, [SP, #36]
;TJ_GUI14e_v_1_1_driver.c,1453 :: 		pCircleButton = CurrentScreen->CircleButtons;
MOV	R2, R3
LDR	R2, [R2, #0]
ADDS	R2, #44
LDR	R2, [R2, #0]
STR	R2, [SP, #40]
;TJ_GUI14e_v_1_1_driver.c,1454 :: 		pLine         = CurrentScreen->Lines;
MOV	R2, R3
LDR	R2, [R2, #0]
ADDS	R2, #52
LDR	R2, [R2, #0]
STR	R2, [SP, #44]
;TJ_GUI14e_v_1_1_driver.c,1455 :: 		pProgressBar  = CurrentScreen->ProgressBars;
MOV	R2, R3
LDR	R2, [R2, #0]
ADDS	R2, #60
LDR	R2, [R2, #0]
STR	R2, [SP, #48]
;TJ_GUI14e_v_1_1_driver.c,1456 :: 		pEveGauge     = CurrentScreen->EveGauges;
MOV	R2, R3
LDR	R2, [R2, #0]
ADDS	R2, #68
LDR	R2, [R2, #0]
STR	R2, [SP, #52]
;TJ_GUI14e_v_1_1_driver.c,1457 :: 		pEveSpinner   = CurrentScreen->EveSpinners;
MOV	R2, R3
LDR	R2, [R2, #0]
ADDS	R2, #76
LDR	R2, [R2, #0]
STR	R2, [SP, #56]
;TJ_GUI14e_v_1_1_driver.c,1458 :: 		pEveButton    = CurrentScreen->EveButtons;
MOV	R2, R3
LDR	R2, [R2, #0]
ADDS	R2, #84
LDR	R2, [R2, #0]
STR	R2, [SP, #60]
;TJ_GUI14e_v_1_1_driver.c,1460 :: 		FT812_Screen_BeginUpdateCP();
BL	_FT812_Screen_BeginUpdateCP+0
;TJ_GUI14e_v_1_1_driver.c,1462 :: 		if ((FT812_Controller.Display.Width != CurrentScreen->Width) ||
MOVW	R2, #lo_addr(_CurrentScreen+0)
MOVT	R2, #hi_addr(_CurrentScreen+0)
LDR	R2, [R2, #0]
ADDS	R2, R2, #4
LDRH	R3, [R2, #0]
;TJ_GUI14e_v_1_1_driver.c,1463 :: 		(FT812_Controller.Display.Height != CurrentScreen->Height)) {
MOVW	R2, #lo_addr(_FT812_Controller+312)
MOVT	R2, #hi_addr(_FT812_Controller+312)
LDRH	R2, [R2, #0]
CMP	R2, R3
IT	NE
BNE	L__DrawScreenO400
MOVW	R2, #lo_addr(_CurrentScreen+0)
MOVT	R2, #hi_addr(_CurrentScreen+0)
LDR	R2, [R2, #0]
ADDS	R2, R2, #6
LDRH	R3, [R2, #0]
MOVW	R2, #lo_addr(_FT812_Controller+314)
MOVT	R2, #hi_addr(_FT812_Controller+314)
LDRH	R2, [R2, #0]
CMP	R2, R3
IT	NE
BNE	L__DrawScreenO399
IT	AL
BAL	L_DrawScreenO153
L__DrawScreenO400:
L__DrawScreenO399:
;TJ_GUI14e_v_1_1_driver.c,1464 :: 		FT812_Controller.Display.Width = CurrentScreen->Width;
MOVW	R4, #lo_addr(_CurrentScreen+0)
MOVT	R4, #hi_addr(_CurrentScreen+0)
LDR	R2, [R4, #0]
ADDS	R2, R2, #4
LDRH	R3, [R2, #0]
MOVW	R2, #lo_addr(_FT812_Controller+312)
MOVT	R2, #hi_addr(_FT812_Controller+312)
STRH	R3, [R2, #0]
;TJ_GUI14e_v_1_1_driver.c,1465 :: 		FT812_Controller.Display.Height = CurrentScreen->Height;
MOV	R2, R4
LDR	R2, [R2, #0]
ADDS	R2, R2, #6
LDRH	R3, [R2, #0]
MOVW	R2, #lo_addr(_FT812_Controller+314)
MOVT	R2, #hi_addr(_FT812_Controller+314)
STRH	R3, [R2, #0]
;TJ_GUI14e_v_1_1_driver.c,1466 :: 		FT812_Canvas_UnClip();
BL	_FT812_Canvas_UnClip+0
;TJ_GUI14e_v_1_1_driver.c,1468 :: 		if (FT812_Controller.Display.Width > FT812_Controller.Display.Height) {
MOVW	R2, #lo_addr(_FT812_Controller+314)
MOVT	R2, #hi_addr(_FT812_Controller+314)
LDRH	R3, [R2, #0]
MOVW	R2, #lo_addr(_FT812_Controller+312)
MOVT	R2, #hi_addr(_FT812_Controller+312)
LDRH	R2, [R2, #0]
CMP	R2, R3
IT	LS
BLS	L_DrawScreenO154
;TJ_GUI14e_v_1_1_driver.c,1469 :: 		FT812_CP_CmdSetRotate(VTFT_FT812_CONFIG_DISPLAY.Rotate180 % 2);
MOVS	R0, #0
BL	_FT812_CP_CmdSetRotate+0
;TJ_GUI14e_v_1_1_driver.c,1470 :: 		}
IT	AL
BAL	L_DrawScreenO155
L_DrawScreenO154:
;TJ_GUI14e_v_1_1_driver.c,1472 :: 		FT812_CP_CmdSetRotate((VTFT_FT812_CONFIG_DISPLAY.Rotate180 % 2) + 2);
MOVS	R0, #2
BL	_FT812_CP_CmdSetRotate+0
;TJ_GUI14e_v_1_1_driver.c,1473 :: 		}
L_DrawScreenO155:
;TJ_GUI14e_v_1_1_driver.c,1474 :: 		}
L_DrawScreenO153:
;TJ_GUI14e_v_1_1_driver.c,1476 :: 		FT812_Canvas_BrushSingleColor(_FT812_BRUSH_STYLE_SOLID, CurrentScreen->Color, 255);
MOVW	R2, #lo_addr(_CurrentScreen+0)
MOVT	R2, #hi_addr(_CurrentScreen+0)
LDR	R2, [R2, #0]
LDR	R2, [R2, #0]
MOV	R1, R2
MOVS	R2, #255
MOVS	R0, #1
BL	_FT812_Canvas_BrushSingleColor+0
;TJ_GUI14e_v_1_1_driver.c,1477 :: 		FT812_Canvas_Tag(0);
MOVS	R0, #0
BL	_FT812_Canvas_Tag+0
;TJ_GUI14e_v_1_1_driver.c,1478 :: 		FT812_Screen_Clear(_FT812_CLEAR_ALL);
MOVS	R0, #7
BL	_FT812_Screen_Clear+0
;TJ_GUI14e_v_1_1_driver.c,1479 :: 		FT812_CP_CmdStop();
BL	_FT812_CP_CmdStop+0
;TJ_GUI14e_v_1_1_driver.c,1481 :: 		actObjOrder = -1;
MOVW	R2, #65535
SXTH	R2, R2
STRH	R2, [SP, #8]
;TJ_GUI14e_v_1_1_driver.c,1482 :: 		if (TouchS.ActObjInfo.Obj)
MOVW	R2, #lo_addr(_TouchS+8)
MOVT	R2, #hi_addr(_TouchS+8)
LDR	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_DrawScreenO156
;TJ_GUI14e_v_1_1_driver.c,1483 :: 		if (TouchS.ActObjInfo.Flags & VTFT_INT_BRING_TO_FRONT)
MOVW	R2, #lo_addr(_TouchS+14)
MOVT	R2, #hi_addr(_TouchS+14)
LDRB	R2, [R2, #0]
AND	R2, R2, #4
SXTH	R2, R2
CMP	R2, #0
IT	EQ
BEQ	L_DrawScreenO157
;TJ_GUI14e_v_1_1_driver.c,1484 :: 		actObjOrder = TouchS.ActObjInfo.Order;
MOVW	R2, #lo_addr(_TouchS+13)
MOVT	R2, #hi_addr(_TouchS+13)
LDRB	R2, [R2, #0]
STRH	R2, [SP, #8]
L_DrawScreenO157:
L_DrawScreenO156:
;TJ_GUI14e_v_1_1_driver.c,1486 :: 		cOrder = 0;
MOVS	R2, #0
STRB	R2, [SP, #5]
;TJ_GUI14e_v_1_1_driver.c,1487 :: 		while (cOrder < CurrentScreen->ObjectsCount) {
L_DrawScreenO158:
MOVW	R2, #lo_addr(_CurrentScreen+0)
MOVT	R2, #hi_addr(_CurrentScreen+0)
LDR	R2, [R2, #0]
ADDS	R2, #8
LDRB	R3, [R2, #0]
LDRB	R2, [SP, #5]
CMP	R2, R3
IT	CS
BCS	L_DrawScreenO159
;TJ_GUI14e_v_1_1_driver.c,1488 :: 		saveOrder = cOrder;
LDRB	R2, [SP, #5]
STRB	R2, [SP, #6]
;TJ_GUI14e_v_1_1_driver.c,1489 :: 		if (pButtonRound) {
LDR	R2, [SP, #24]
CMP	R2, #0
IT	EQ
BEQ	L_DrawScreenO160
;TJ_GUI14e_v_1_1_driver.c,1490 :: 		while ((*pButtonRound)->Order == cOrder) {
L_DrawScreenO161:
LDR	R2, [SP, #24]
LDR	R2, [R2, #0]
ADDS	R2, R2, #4
LDRB	R3, [R2, #0]
LDRB	R2, [SP, #5]
CMP	R3, R2
IT	NE
BNE	L_DrawScreenO162
;TJ_GUI14e_v_1_1_driver.c,1491 :: 		if (actObjOrder != cOrder) // draw pressed object at the end
LDRB	R3, [SP, #5]
LDRSH	R2, [SP, #8]
CMP	R2, R3
IT	EQ
BEQ	L_DrawScreenO163
;TJ_GUI14e_v_1_1_driver.c,1492 :: 		DrawButtonRound(*pButtonRound);
LDR	R2, [SP, #24]
LDR	R2, [R2, #0]
MOV	R0, R2
BL	_DrawButtonRound+0
L_DrawScreenO163:
;TJ_GUI14e_v_1_1_driver.c,1493 :: 		cOrder++;
LDRB	R2, [SP, #5]
ADDS	R2, R2, #1
STRB	R2, [SP, #5]
;TJ_GUI14e_v_1_1_driver.c,1494 :: 		pButtonRound++;
LDR	R2, [SP, #24]
ADDS	R2, R2, #4
STR	R2, [SP, #24]
;TJ_GUI14e_v_1_1_driver.c,1495 :: 		cntButtonRound--;
LDRB	R2, [SP, #11]
SUBS	R2, R2, #1
UXTB	R2, R2
STRB	R2, [SP, #11]
;TJ_GUI14e_v_1_1_driver.c,1496 :: 		if (!cntButtonRound) {
CMP	R2, #0
IT	NE
BNE	L_DrawScreenO164
;TJ_GUI14e_v_1_1_driver.c,1497 :: 		pButtonRound = 0;
MOVS	R2, #0
STR	R2, [SP, #24]
;TJ_GUI14e_v_1_1_driver.c,1498 :: 		break;
IT	AL
BAL	L_DrawScreenO162
;TJ_GUI14e_v_1_1_driver.c,1499 :: 		}
L_DrawScreenO164:
;TJ_GUI14e_v_1_1_driver.c,1500 :: 		}
IT	AL
BAL	L_DrawScreenO161
L_DrawScreenO162:
;TJ_GUI14e_v_1_1_driver.c,1501 :: 		if (saveOrder != cOrder)
LDRB	R3, [SP, #5]
LDRB	R2, [SP, #6]
CMP	R2, R3
IT	EQ
BEQ	L_DrawScreenO165
;TJ_GUI14e_v_1_1_driver.c,1502 :: 		continue;
IT	AL
BAL	L_DrawScreenO158
L_DrawScreenO165:
;TJ_GUI14e_v_1_1_driver.c,1503 :: 		}
L_DrawScreenO160:
;TJ_GUI14e_v_1_1_driver.c,1505 :: 		if (pLabel) {
LDR	R2, [SP, #28]
CMP	R2, #0
IT	EQ
BEQ	L_DrawScreenO166
;TJ_GUI14e_v_1_1_driver.c,1506 :: 		while ((*pLabel)->Order == cOrder) {
L_DrawScreenO167:
LDR	R2, [SP, #28]
LDR	R2, [R2, #0]
ADDS	R2, R2, #4
LDRB	R3, [R2, #0]
LDRB	R2, [SP, #5]
CMP	R3, R2
IT	NE
BNE	L_DrawScreenO168
;TJ_GUI14e_v_1_1_driver.c,1507 :: 		if (actObjOrder != cOrder) // draw pressed object at the end
LDRB	R3, [SP, #5]
LDRSH	R2, [SP, #8]
CMP	R2, R3
IT	EQ
BEQ	L_DrawScreenO169
;TJ_GUI14e_v_1_1_driver.c,1508 :: 		DrawLabel(*pLabel);
LDR	R2, [SP, #28]
LDR	R2, [R2, #0]
MOV	R0, R2
BL	_DrawLabel+0
L_DrawScreenO169:
;TJ_GUI14e_v_1_1_driver.c,1509 :: 		cOrder++;
LDRB	R2, [SP, #5]
ADDS	R2, R2, #1
STRB	R2, [SP, #5]
;TJ_GUI14e_v_1_1_driver.c,1510 :: 		pLabel++;
LDR	R2, [SP, #28]
ADDS	R2, R2, #4
STR	R2, [SP, #28]
;TJ_GUI14e_v_1_1_driver.c,1511 :: 		cntLabel--;
LDRB	R2, [SP, #12]
SUBS	R2, R2, #1
UXTB	R2, R2
STRB	R2, [SP, #12]
;TJ_GUI14e_v_1_1_driver.c,1512 :: 		if (!cntLabel) {
CMP	R2, #0
IT	NE
BNE	L_DrawScreenO170
;TJ_GUI14e_v_1_1_driver.c,1513 :: 		pLabel = 0;
MOVS	R2, #0
STR	R2, [SP, #28]
;TJ_GUI14e_v_1_1_driver.c,1514 :: 		break;
IT	AL
BAL	L_DrawScreenO168
;TJ_GUI14e_v_1_1_driver.c,1515 :: 		}
L_DrawScreenO170:
;TJ_GUI14e_v_1_1_driver.c,1516 :: 		}
IT	AL
BAL	L_DrawScreenO167
L_DrawScreenO168:
;TJ_GUI14e_v_1_1_driver.c,1517 :: 		if (saveOrder != cOrder)
LDRB	R3, [SP, #5]
LDRB	R2, [SP, #6]
CMP	R2, R3
IT	EQ
BEQ	L_DrawScreenO171
;TJ_GUI14e_v_1_1_driver.c,1518 :: 		continue;
IT	AL
BAL	L_DrawScreenO158
L_DrawScreenO171:
;TJ_GUI14e_v_1_1_driver.c,1519 :: 		}
L_DrawScreenO166:
;TJ_GUI14e_v_1_1_driver.c,1521 :: 		if (pImage) {
LDR	R2, [SP, #32]
CMP	R2, #0
IT	EQ
BEQ	L_DrawScreenO172
;TJ_GUI14e_v_1_1_driver.c,1522 :: 		while ((*pImage)->Order == cOrder) {
L_DrawScreenO173:
LDR	R2, [SP, #32]
LDR	R2, [R2, #0]
ADDS	R2, R2, #4
LDRB	R3, [R2, #0]
LDRB	R2, [SP, #5]
CMP	R3, R2
IT	NE
BNE	L_DrawScreenO174
;TJ_GUI14e_v_1_1_driver.c,1523 :: 		if (actObjOrder != cOrder) // draw pressed object at the end
LDRB	R3, [SP, #5]
LDRSH	R2, [SP, #8]
CMP	R2, R3
IT	EQ
BEQ	L_DrawScreenO175
;TJ_GUI14e_v_1_1_driver.c,1524 :: 		DrawImage(*pImage);
LDR	R2, [SP, #32]
LDR	R2, [R2, #0]
MOV	R0, R2
BL	_DrawImage+0
L_DrawScreenO175:
;TJ_GUI14e_v_1_1_driver.c,1525 :: 		cOrder++;
LDRB	R2, [SP, #5]
ADDS	R2, R2, #1
STRB	R2, [SP, #5]
;TJ_GUI14e_v_1_1_driver.c,1526 :: 		pImage++;
LDR	R2, [SP, #32]
ADDS	R2, R2, #4
STR	R2, [SP, #32]
;TJ_GUI14e_v_1_1_driver.c,1527 :: 		cntImage--;
LDRB	R2, [SP, #13]
SUBS	R2, R2, #1
UXTB	R2, R2
STRB	R2, [SP, #13]
;TJ_GUI14e_v_1_1_driver.c,1528 :: 		if (!cntImage) {
CMP	R2, #0
IT	NE
BNE	L_DrawScreenO176
;TJ_GUI14e_v_1_1_driver.c,1529 :: 		pImage = 0;
MOVS	R2, #0
STR	R2, [SP, #32]
;TJ_GUI14e_v_1_1_driver.c,1530 :: 		break;
IT	AL
BAL	L_DrawScreenO174
;TJ_GUI14e_v_1_1_driver.c,1531 :: 		}
L_DrawScreenO176:
;TJ_GUI14e_v_1_1_driver.c,1532 :: 		}
IT	AL
BAL	L_DrawScreenO173
L_DrawScreenO174:
;TJ_GUI14e_v_1_1_driver.c,1533 :: 		if (saveOrder != cOrder)
LDRB	R3, [SP, #5]
LDRB	R2, [SP, #6]
CMP	R2, R3
IT	EQ
BEQ	L_DrawScreenO177
;TJ_GUI14e_v_1_1_driver.c,1534 :: 		continue;
IT	AL
BAL	L_DrawScreenO158
L_DrawScreenO177:
;TJ_GUI14e_v_1_1_driver.c,1535 :: 		}
L_DrawScreenO172:
;TJ_GUI14e_v_1_1_driver.c,1537 :: 		if (pCircle) {
LDR	R2, [SP, #36]
CMP	R2, #0
IT	EQ
BEQ	L_DrawScreenO178
;TJ_GUI14e_v_1_1_driver.c,1538 :: 		while ((*pCircle)->Order == cOrder) {
L_DrawScreenO179:
LDR	R2, [SP, #36]
LDR	R2, [R2, #0]
ADDS	R2, R2, #4
LDRB	R3, [R2, #0]
LDRB	R2, [SP, #5]
CMP	R3, R2
IT	NE
BNE	L_DrawScreenO180
;TJ_GUI14e_v_1_1_driver.c,1539 :: 		if (actObjOrder != cOrder) // draw pressed object at the end
LDRB	R3, [SP, #5]
LDRSH	R2, [SP, #8]
CMP	R2, R3
IT	EQ
BEQ	L_DrawScreenO181
;TJ_GUI14e_v_1_1_driver.c,1540 :: 		DrawCircle(*pCircle);
LDR	R2, [SP, #36]
LDR	R2, [R2, #0]
MOV	R0, R2
BL	_DrawCircle+0
L_DrawScreenO181:
;TJ_GUI14e_v_1_1_driver.c,1541 :: 		cOrder++;
LDRB	R2, [SP, #5]
ADDS	R2, R2, #1
STRB	R2, [SP, #5]
;TJ_GUI14e_v_1_1_driver.c,1542 :: 		pCircle++;
LDR	R2, [SP, #36]
ADDS	R2, R2, #4
STR	R2, [SP, #36]
;TJ_GUI14e_v_1_1_driver.c,1543 :: 		cntCircle--;
LDRB	R2, [SP, #14]
SUBS	R2, R2, #1
UXTB	R2, R2
STRB	R2, [SP, #14]
;TJ_GUI14e_v_1_1_driver.c,1544 :: 		if (!cntCircle) {
CMP	R2, #0
IT	NE
BNE	L_DrawScreenO182
;TJ_GUI14e_v_1_1_driver.c,1545 :: 		pCircle = 0;
MOVS	R2, #0
STR	R2, [SP, #36]
;TJ_GUI14e_v_1_1_driver.c,1546 :: 		break;
IT	AL
BAL	L_DrawScreenO180
;TJ_GUI14e_v_1_1_driver.c,1547 :: 		}
L_DrawScreenO182:
;TJ_GUI14e_v_1_1_driver.c,1548 :: 		}
IT	AL
BAL	L_DrawScreenO179
L_DrawScreenO180:
;TJ_GUI14e_v_1_1_driver.c,1549 :: 		if (saveOrder != cOrder)
LDRB	R3, [SP, #5]
LDRB	R2, [SP, #6]
CMP	R2, R3
IT	EQ
BEQ	L_DrawScreenO183
;TJ_GUI14e_v_1_1_driver.c,1550 :: 		continue;
IT	AL
BAL	L_DrawScreenO158
L_DrawScreenO183:
;TJ_GUI14e_v_1_1_driver.c,1551 :: 		}
L_DrawScreenO178:
;TJ_GUI14e_v_1_1_driver.c,1553 :: 		if (pCircleButton) {
LDR	R2, [SP, #40]
CMP	R2, #0
IT	EQ
BEQ	L_DrawScreenO184
;TJ_GUI14e_v_1_1_driver.c,1554 :: 		while ((*pCircleButton)->Order == cOrder) {
L_DrawScreenO185:
LDR	R2, [SP, #40]
LDR	R2, [R2, #0]
ADDS	R2, R2, #4
LDRB	R3, [R2, #0]
LDRB	R2, [SP, #5]
CMP	R3, R2
IT	NE
BNE	L_DrawScreenO186
;TJ_GUI14e_v_1_1_driver.c,1555 :: 		if (actObjOrder != cOrder) // draw pressed object at the end
LDRB	R3, [SP, #5]
LDRSH	R2, [SP, #8]
CMP	R2, R3
IT	EQ
BEQ	L_DrawScreenO187
;TJ_GUI14e_v_1_1_driver.c,1556 :: 		DrawCircleButton(*pCircleButton);
LDR	R2, [SP, #40]
LDR	R2, [R2, #0]
MOV	R0, R2
BL	_DrawCircleButton+0
L_DrawScreenO187:
;TJ_GUI14e_v_1_1_driver.c,1557 :: 		cOrder++;
LDRB	R2, [SP, #5]
ADDS	R2, R2, #1
STRB	R2, [SP, #5]
;TJ_GUI14e_v_1_1_driver.c,1558 :: 		pCircleButton++;
LDR	R2, [SP, #40]
ADDS	R2, R2, #4
STR	R2, [SP, #40]
;TJ_GUI14e_v_1_1_driver.c,1559 :: 		cntCircleButton--;
LDRB	R2, [SP, #15]
SUBS	R2, R2, #1
UXTB	R2, R2
STRB	R2, [SP, #15]
;TJ_GUI14e_v_1_1_driver.c,1560 :: 		if (!cntCircleButton) {
CMP	R2, #0
IT	NE
BNE	L_DrawScreenO188
;TJ_GUI14e_v_1_1_driver.c,1561 :: 		pCircleButton = 0;
MOVS	R2, #0
STR	R2, [SP, #40]
;TJ_GUI14e_v_1_1_driver.c,1562 :: 		break;
IT	AL
BAL	L_DrawScreenO186
;TJ_GUI14e_v_1_1_driver.c,1563 :: 		}
L_DrawScreenO188:
;TJ_GUI14e_v_1_1_driver.c,1564 :: 		}
IT	AL
BAL	L_DrawScreenO185
L_DrawScreenO186:
;TJ_GUI14e_v_1_1_driver.c,1565 :: 		if (saveOrder != cOrder)
LDRB	R3, [SP, #5]
LDRB	R2, [SP, #6]
CMP	R2, R3
IT	EQ
BEQ	L_DrawScreenO189
;TJ_GUI14e_v_1_1_driver.c,1566 :: 		continue;
IT	AL
BAL	L_DrawScreenO158
L_DrawScreenO189:
;TJ_GUI14e_v_1_1_driver.c,1567 :: 		}
L_DrawScreenO184:
;TJ_GUI14e_v_1_1_driver.c,1569 :: 		if (pLine) {
LDR	R2, [SP, #44]
CMP	R2, #0
IT	EQ
BEQ	L_DrawScreenO190
;TJ_GUI14e_v_1_1_driver.c,1570 :: 		while ((*pLine)->Order == cOrder) {
L_DrawScreenO191:
LDR	R2, [SP, #44]
LDR	R2, [R2, #0]
ADDS	R2, R2, #4
LDRB	R3, [R2, #0]
LDRB	R2, [SP, #5]
CMP	R3, R2
IT	NE
BNE	L_DrawScreenO192
;TJ_GUI14e_v_1_1_driver.c,1571 :: 		if (actObjOrder != cOrder) // draw pressed object at the end
LDRB	R3, [SP, #5]
LDRSH	R2, [SP, #8]
CMP	R2, R3
IT	EQ
BEQ	L_DrawScreenO193
;TJ_GUI14e_v_1_1_driver.c,1572 :: 		DrawLine(*pLine);
LDR	R2, [SP, #44]
LDR	R2, [R2, #0]
MOV	R0, R2
BL	_DrawLine+0
L_DrawScreenO193:
;TJ_GUI14e_v_1_1_driver.c,1573 :: 		cOrder++;
LDRB	R2, [SP, #5]
ADDS	R2, R2, #1
STRB	R2, [SP, #5]
;TJ_GUI14e_v_1_1_driver.c,1574 :: 		pLine++;
LDR	R2, [SP, #44]
ADDS	R2, R2, #4
STR	R2, [SP, #44]
;TJ_GUI14e_v_1_1_driver.c,1575 :: 		cntLine--;
LDRB	R2, [SP, #16]
SUBS	R2, R2, #1
UXTB	R2, R2
STRB	R2, [SP, #16]
;TJ_GUI14e_v_1_1_driver.c,1576 :: 		if (!cntLine) {
CMP	R2, #0
IT	NE
BNE	L_DrawScreenO194
;TJ_GUI14e_v_1_1_driver.c,1577 :: 		pLine = 0;
MOVS	R2, #0
STR	R2, [SP, #44]
;TJ_GUI14e_v_1_1_driver.c,1578 :: 		break;
IT	AL
BAL	L_DrawScreenO192
;TJ_GUI14e_v_1_1_driver.c,1579 :: 		}
L_DrawScreenO194:
;TJ_GUI14e_v_1_1_driver.c,1580 :: 		}
IT	AL
BAL	L_DrawScreenO191
L_DrawScreenO192:
;TJ_GUI14e_v_1_1_driver.c,1581 :: 		if (saveOrder != cOrder)
LDRB	R3, [SP, #5]
LDRB	R2, [SP, #6]
CMP	R2, R3
IT	EQ
BEQ	L_DrawScreenO195
;TJ_GUI14e_v_1_1_driver.c,1582 :: 		continue;
IT	AL
BAL	L_DrawScreenO158
L_DrawScreenO195:
;TJ_GUI14e_v_1_1_driver.c,1583 :: 		}
L_DrawScreenO190:
;TJ_GUI14e_v_1_1_driver.c,1585 :: 		if (pProgressBar) {
LDR	R2, [SP, #48]
CMP	R2, #0
IT	EQ
BEQ	L_DrawScreenO196
;TJ_GUI14e_v_1_1_driver.c,1586 :: 		while ((*pProgressBar)->Order == cOrder) {
L_DrawScreenO197:
LDR	R2, [SP, #48]
LDR	R2, [R2, #0]
ADDS	R2, R2, #4
LDRB	R3, [R2, #0]
LDRB	R2, [SP, #5]
CMP	R3, R2
IT	NE
BNE	L_DrawScreenO198
;TJ_GUI14e_v_1_1_driver.c,1587 :: 		if (actObjOrder != cOrder) // draw pressed object at the end
LDRB	R3, [SP, #5]
LDRSH	R2, [SP, #8]
CMP	R2, R3
IT	EQ
BEQ	L_DrawScreenO199
;TJ_GUI14e_v_1_1_driver.c,1588 :: 		DrawProgressBar(*pProgressBar);
LDR	R2, [SP, #48]
LDR	R2, [R2, #0]
MOV	R0, R2
BL	_DrawProgressBar+0
L_DrawScreenO199:
;TJ_GUI14e_v_1_1_driver.c,1589 :: 		cOrder++;
LDRB	R2, [SP, #5]
ADDS	R2, R2, #1
STRB	R2, [SP, #5]
;TJ_GUI14e_v_1_1_driver.c,1590 :: 		pProgressBar++;
LDR	R2, [SP, #48]
ADDS	R2, R2, #4
STR	R2, [SP, #48]
;TJ_GUI14e_v_1_1_driver.c,1591 :: 		cntProgressBar--;
LDRB	R2, [SP, #17]
SUBS	R2, R2, #1
UXTB	R2, R2
STRB	R2, [SP, #17]
;TJ_GUI14e_v_1_1_driver.c,1592 :: 		if (!cntProgressBar) {
CMP	R2, #0
IT	NE
BNE	L_DrawScreenO200
;TJ_GUI14e_v_1_1_driver.c,1593 :: 		pProgressBar = 0;
MOVS	R2, #0
STR	R2, [SP, #48]
;TJ_GUI14e_v_1_1_driver.c,1594 :: 		break;
IT	AL
BAL	L_DrawScreenO198
;TJ_GUI14e_v_1_1_driver.c,1595 :: 		}
L_DrawScreenO200:
;TJ_GUI14e_v_1_1_driver.c,1596 :: 		}
IT	AL
BAL	L_DrawScreenO197
L_DrawScreenO198:
;TJ_GUI14e_v_1_1_driver.c,1597 :: 		if (saveOrder != cOrder)
LDRB	R3, [SP, #5]
LDRB	R2, [SP, #6]
CMP	R2, R3
IT	EQ
BEQ	L_DrawScreenO201
;TJ_GUI14e_v_1_1_driver.c,1598 :: 		continue;
IT	AL
BAL	L_DrawScreenO158
L_DrawScreenO201:
;TJ_GUI14e_v_1_1_driver.c,1599 :: 		}
L_DrawScreenO196:
;TJ_GUI14e_v_1_1_driver.c,1601 :: 		if (pEveGauge) {
LDR	R2, [SP, #52]
CMP	R2, #0
IT	EQ
BEQ	L_DrawScreenO202
;TJ_GUI14e_v_1_1_driver.c,1602 :: 		while ((*pEveGauge)->Order == cOrder) {
L_DrawScreenO203:
LDR	R2, [SP, #52]
LDR	R2, [R2, #0]
ADDS	R2, R2, #4
LDRB	R3, [R2, #0]
LDRB	R2, [SP, #5]
CMP	R3, R2
IT	NE
BNE	L_DrawScreenO204
;TJ_GUI14e_v_1_1_driver.c,1603 :: 		if (actObjOrder != cOrder) // draw pressed object at the end
LDRB	R3, [SP, #5]
LDRSH	R2, [SP, #8]
CMP	R2, R3
IT	EQ
BEQ	L_DrawScreenO205
;TJ_GUI14e_v_1_1_driver.c,1604 :: 		DrawEveGauge(*pEveGauge);
LDR	R2, [SP, #52]
LDR	R2, [R2, #0]
MOV	R0, R2
BL	_DrawEveGauge+0
L_DrawScreenO205:
;TJ_GUI14e_v_1_1_driver.c,1605 :: 		cOrder++;
LDRB	R2, [SP, #5]
ADDS	R2, R2, #1
STRB	R2, [SP, #5]
;TJ_GUI14e_v_1_1_driver.c,1606 :: 		pEveGauge++;
LDR	R2, [SP, #52]
ADDS	R2, R2, #4
STR	R2, [SP, #52]
;TJ_GUI14e_v_1_1_driver.c,1607 :: 		cntEveGauge--;
LDRB	R2, [SP, #18]
SUBS	R2, R2, #1
UXTB	R2, R2
STRB	R2, [SP, #18]
;TJ_GUI14e_v_1_1_driver.c,1608 :: 		if (!cntEveGauge) {
CMP	R2, #0
IT	NE
BNE	L_DrawScreenO206
;TJ_GUI14e_v_1_1_driver.c,1609 :: 		pEveGauge = 0;
MOVS	R2, #0
STR	R2, [SP, #52]
;TJ_GUI14e_v_1_1_driver.c,1610 :: 		break;
IT	AL
BAL	L_DrawScreenO204
;TJ_GUI14e_v_1_1_driver.c,1611 :: 		}
L_DrawScreenO206:
;TJ_GUI14e_v_1_1_driver.c,1612 :: 		}
IT	AL
BAL	L_DrawScreenO203
L_DrawScreenO204:
;TJ_GUI14e_v_1_1_driver.c,1613 :: 		if (saveOrder != cOrder)
LDRB	R3, [SP, #5]
LDRB	R2, [SP, #6]
CMP	R2, R3
IT	EQ
BEQ	L_DrawScreenO207
;TJ_GUI14e_v_1_1_driver.c,1614 :: 		continue;
IT	AL
BAL	L_DrawScreenO158
L_DrawScreenO207:
;TJ_GUI14e_v_1_1_driver.c,1615 :: 		}
L_DrawScreenO202:
;TJ_GUI14e_v_1_1_driver.c,1617 :: 		if (pEveButton) {
LDR	R2, [SP, #60]
CMP	R2, #0
IT	EQ
BEQ	L_DrawScreenO208
;TJ_GUI14e_v_1_1_driver.c,1618 :: 		while ((*pEveButton)->Order == cOrder) {
L_DrawScreenO209:
LDR	R2, [SP, #60]
LDR	R2, [R2, #0]
ADDS	R2, R2, #4
LDRB	R3, [R2, #0]
LDRB	R2, [SP, #5]
CMP	R3, R2
IT	NE
BNE	L_DrawScreenO210
;TJ_GUI14e_v_1_1_driver.c,1619 :: 		if (actObjOrder != cOrder) // draw pressed object at the end
LDRB	R3, [SP, #5]
LDRSH	R2, [SP, #8]
CMP	R2, R3
IT	EQ
BEQ	L_DrawScreenO211
;TJ_GUI14e_v_1_1_driver.c,1620 :: 		DrawEveButton(*pEveButton);
LDR	R2, [SP, #60]
LDR	R2, [R2, #0]
MOV	R0, R2
BL	_DrawEveButton+0
L_DrawScreenO211:
;TJ_GUI14e_v_1_1_driver.c,1621 :: 		cOrder++;
LDRB	R2, [SP, #5]
ADDS	R2, R2, #1
STRB	R2, [SP, #5]
;TJ_GUI14e_v_1_1_driver.c,1622 :: 		pEveButton++;
LDR	R2, [SP, #60]
ADDS	R2, R2, #4
STR	R2, [SP, #60]
;TJ_GUI14e_v_1_1_driver.c,1623 :: 		cntEveButton--;
LDRB	R2, [SP, #20]
SUBS	R2, R2, #1
UXTB	R2, R2
STRB	R2, [SP, #20]
;TJ_GUI14e_v_1_1_driver.c,1624 :: 		if (!cntEveButton) {
CMP	R2, #0
IT	NE
BNE	L_DrawScreenO212
;TJ_GUI14e_v_1_1_driver.c,1625 :: 		pEveButton = 0;
MOVS	R2, #0
STR	R2, [SP, #60]
;TJ_GUI14e_v_1_1_driver.c,1626 :: 		break;
IT	AL
BAL	L_DrawScreenO210
;TJ_GUI14e_v_1_1_driver.c,1627 :: 		}
L_DrawScreenO212:
;TJ_GUI14e_v_1_1_driver.c,1628 :: 		}
IT	AL
BAL	L_DrawScreenO209
L_DrawScreenO210:
;TJ_GUI14e_v_1_1_driver.c,1629 :: 		if (saveOrder != cOrder)
LDRB	R3, [SP, #5]
LDRB	R2, [SP, #6]
CMP	R2, R3
IT	EQ
BEQ	L_DrawScreenO213
;TJ_GUI14e_v_1_1_driver.c,1630 :: 		continue;
IT	AL
BAL	L_DrawScreenO158
L_DrawScreenO213:
;TJ_GUI14e_v_1_1_driver.c,1631 :: 		}
L_DrawScreenO208:
;TJ_GUI14e_v_1_1_driver.c,1633 :: 		cOrder++;
LDRB	R2, [SP, #5]
ADDS	R2, R2, #1
STRB	R2, [SP, #5]
;TJ_GUI14e_v_1_1_driver.c,1634 :: 		}
IT	AL
BAL	L_DrawScreenO158
L_DrawScreenO159:
;TJ_GUI14e_v_1_1_driver.c,1637 :: 		if (TouchS.ActObjInfo.Obj)
MOVW	R2, #lo_addr(_TouchS+8)
MOVT	R2, #hi_addr(_TouchS+8)
LDR	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_DrawScreenO214
;TJ_GUI14e_v_1_1_driver.c,1638 :: 		DrawObject(TouchS.ActObjInfo.Obj, TouchS.ActObjInfo.Type);
MOVW	R2, #lo_addr(_TouchS+12)
MOVT	R2, #hi_addr(_TouchS+12)
LDRB	R3, [R2, #0]
MOVW	R2, #lo_addr(_TouchS+8)
MOVT	R2, #hi_addr(_TouchS+8)
LDR	R2, [R2, #0]
UXTB	R1, R3
MOV	R0, R2
BL	_DrawObject+0
L_DrawScreenO214:
;TJ_GUI14e_v_1_1_driver.c,1640 :: 		while(cntEveSpinner > 0) {
L_DrawScreenO215:
LDRB	R2, [SP, #19]
CMP	R2, #0
IT	LS
BLS	L_DrawScreenO216
;TJ_GUI14e_v_1_1_driver.c,1641 :: 		if(DrawEveSpinner(*pEveSpinner) != 0) {
LDR	R2, [SP, #56]
LDR	R2, [R2, #0]
MOV	R0, R2
BL	_DrawEveSpinner+0
CMP	R0, #0
IT	EQ
BEQ	L_DrawScreenO217
;TJ_GUI14e_v_1_1_driver.c,1642 :: 		break;
IT	AL
BAL	L_DrawScreenO216
;TJ_GUI14e_v_1_1_driver.c,1643 :: 		}
L_DrawScreenO217:
;TJ_GUI14e_v_1_1_driver.c,1644 :: 		pEveSpinner++;
LDR	R2, [SP, #56]
ADDS	R2, R2, #4
STR	R2, [SP, #56]
;TJ_GUI14e_v_1_1_driver.c,1645 :: 		cntEveSpinner--;
LDRB	R2, [SP, #19]
SUBS	R2, R2, #1
STRB	R2, [SP, #19]
;TJ_GUI14e_v_1_1_driver.c,1646 :: 		}
IT	AL
BAL	L_DrawScreenO215
L_DrawScreenO216:
;TJ_GUI14e_v_1_1_driver.c,1648 :: 		if(cntEveSpinner == 0) {
LDRB	R2, [SP, #19]
CMP	R2, #0
IT	NE
BNE	L_DrawScreenO218
;TJ_GUI14e_v_1_1_driver.c,1649 :: 		FT812_Screen_EndUpdate();
BL	_FT812_Screen_EndUpdate+0
;TJ_GUI14e_v_1_1_driver.c,1650 :: 		FT812_Screen_Show();
BL	_FT812_Screen_Show+0
;TJ_GUI14e_v_1_1_driver.c,1651 :: 		}
IT	AL
BAL	L_DrawScreenO219
L_DrawScreenO218:
;TJ_GUI14e_v_1_1_driver.c,1653 :: 		FT812_CP_EndUpdate();
BL	_FT812_CP_EndUpdate+0
;TJ_GUI14e_v_1_1_driver.c,1654 :: 		FT812_Display_WaitSwapComplete(2000);
MOVW	R0, #2000
BL	_FT812_Display_WaitSwapComplete+0
;TJ_GUI14e_v_1_1_driver.c,1655 :: 		}
L_DrawScreenO219:
;TJ_GUI14e_v_1_1_driver.c,1658 :: 		if (aOptions & VTFT_DISPLAY_EFF_LIGHTS_FADE) {
LDRB	R2, [SP, #68]
AND	R2, R2, #4
SXTH	R2, R2
CMP	R2, #0
IT	EQ
BEQ	L_DrawScreenO220
;TJ_GUI14e_v_1_1_driver.c,1659 :: 		FT812_PWM_FadeIn(0, pwmDuty, 1, 3);
MOVS	R3, #3
MOVS	R2, #1
LDRB	R1, [SP, #10]
MOVS	R0, #0
BL	_FT812_PWM_FadeIn+0
;TJ_GUI14e_v_1_1_driver.c,1660 :: 		}
IT	AL
BAL	L_DrawScreenO221
L_DrawScreenO220:
;TJ_GUI14e_v_1_1_driver.c,1661 :: 		else if (aOptions & VTFT_DISPLAY_EFF_LIGHTS_OFF) {
LDRB	R2, [SP, #68]
AND	R2, R2, #8
SXTH	R2, R2
CMP	R2, #0
IT	EQ
BEQ	L_DrawScreenO222
;TJ_GUI14e_v_1_1_driver.c,1662 :: 		FT812_PWM_Duty(pwmDuty);
LDRB	R0, [SP, #10]
BL	_FT812_PWM_Duty+0
;TJ_GUI14e_v_1_1_driver.c,1663 :: 		}
L_DrawScreenO222:
L_DrawScreenO221:
;TJ_GUI14e_v_1_1_driver.c,1665 :: 		}
L_end_DrawScreenO:
LDR	LR, [SP, #0]
ADD	SP, SP, #72
BX	LR
; end of _DrawScreenO
_DrawScreen:
;TJ_GUI14e_v_1_1_driver.c,1667 :: 		void DrawScreen(TScreen *aScreen) {
; aScreen start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
; aScreen end address is: 0 (R0)
; aScreen start address is: 0 (R0)
;TJ_GUI14e_v_1_1_driver.c,1668 :: 		if (aScreen != CurrentScreen)
MOVW	R1, #lo_addr(_CurrentScreen+0)
MOVT	R1, #hi_addr(_CurrentScreen+0)
LDR	R1, [R1, #0]
CMP	R0, R1
IT	EQ
BEQ	L_DrawScreen223
;TJ_GUI14e_v_1_1_driver.c,1669 :: 		DrawScreenO(aScreen, VTFT_LOAD_RES_ALL | VTFT_DISPLAY_EFF_LIGHTS_FADE);
MOVS	R1, #7
; aScreen end address is: 0 (R0)
BL	_DrawScreenO+0
IT	AL
BAL	L_DrawScreen224
L_DrawScreen223:
;TJ_GUI14e_v_1_1_driver.c,1671 :: 		DrawScreenO(aScreen, VTFT_LOAD_RES_NONE);
; aScreen start address is: 0 (R0)
MOVS	R1, #0
; aScreen end address is: 0 (R0)
BL	_DrawScreenO+0
L_DrawScreen224:
;TJ_GUI14e_v_1_1_driver.c,1672 :: 		}
L_end_DrawScreen:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _DrawScreen
_GetActiveObjectByXY:
;TJ_GUI14e_v_1_1_driver.c,1674 :: 		char GetActiveObjectByXY(int X, int Y, TObjInfo *AObjInfo) {
; AObjInfo start address is: 8 (R2)
; Y start address is: 4 (R1)
; X start address is: 0 (R0)
SUB	SP, SP, #12
STR	LR, [SP, #0]
SXTH	R7, R0
SXTH	R8, R1
MOV	R6, R2
; AObjInfo end address is: 8 (R2)
; Y end address is: 4 (R1)
; X end address is: 0 (R0)
; X start address is: 28 (R7)
; Y start address is: 32 (R8)
; AObjInfo start address is: 24 (R6)
;TJ_GUI14e_v_1_1_driver.c,1688 :: 		memset(AObjInfo, 0, sizeof(TObjInfo));
MOVS	R2, #12
SXTH	R2, R2
MOVS	R1, #0
MOV	R0, R6
BL	_memset+0
;TJ_GUI14e_v_1_1_driver.c,1692 :: 		hiOrder = -1;
; hiOrder start address is: 0 (R0)
MOVW	R0, #65535
SXTH	R0, R0
;TJ_GUI14e_v_1_1_driver.c,1695 :: 		i    = CurrentScreen->Buttons_RoundCount;
MOVW	R4, #lo_addr(_CurrentScreen+0)
MOVT	R4, #hi_addr(_CurrentScreen+0)
LDR	R3, [R4, #0]
ADDS	R3, #9
LDRB	R5, [R3, #0]
; i start address is: 4 (R1)
UXTB	R1, R5
;TJ_GUI14e_v_1_1_driver.c,1696 :: 		ptrO = CurrentScreen->Buttons_Round+CurrentScreen->Buttons_RoundCount-1;
MOV	R3, R4
LDR	R3, [R3, #0]
ADDS	R3, #12
LDR	R4, [R3, #0]
LSLS	R3, R5, #2
ADDS	R3, R4, R3
SUBS	R3, R3, #4
; ptrO start address is: 8 (R2)
MOV	R2, R3
; X end address is: 28 (R7)
; Y end address is: 32 (R8)
; AObjInfo end address is: 24 (R6)
; hiOrder end address is: 0 (R0)
; i end address is: 4 (R1)
; ptrO end address is: 8 (R2)
STRB	R1, [SP, #4]
STR	R2, [SP, #8]
SXTH	R2, R7
SXTH	R1, R8
SXTH	R5, R0
MOV	R0, R6
LDR	R7, [SP, #8]
LDRB	R8, [SP, #4]
;TJ_GUI14e_v_1_1_driver.c,1697 :: 		while (i--) {
L_GetActiveObjectByXY225:
; i start address is: 24 (R6)
; ptrO start address is: 28 (R7)
; i start address is: 32 (R8)
; hiOrder start address is: 20 (R5)
; AObjInfo start address is: 0 (R0)
; Y start address is: 4 (R1)
; X start address is: 8 (R2)
UXTB	R4, R8
SUB	R6, R8, #1
UXTB	R6, R6
; i end address is: 32 (R8)
; i start address is: 24 (R6)
; i end address is: 24 (R6)
CMP	R4, #0
IT	EQ
BEQ	L__GetActiveObjectByXY439
; i end address is: 24 (R6)
;TJ_GUI14e_v_1_1_driver.c,1698 :: 		pButtonRound = (TButton_Round *)(*ptrO);
; i start address is: 24 (R6)
LDR	R3, [R7, #0]
; pButtonRound start address is: 32 (R8)
MOV	R8, R3
;TJ_GUI14e_v_1_1_driver.c,1699 :: 		if (pButtonRound->Order < hiOrder)
ADDS	R3, R3, #4
LDRB	R3, [R3, #0]
CMP	R3, R5
IT	GE
BGE	L_GetActiveObjectByXY227
; pButtonRound end address is: 32 (R8)
; ptrO end address is: 28 (R7)
; i end address is: 24 (R6)
;TJ_GUI14e_v_1_1_driver.c,1700 :: 		break;
SXTH	R6, R5
IT	AL
BAL	L_GetActiveObjectByXY226
L_GetActiveObjectByXY227:
;TJ_GUI14e_v_1_1_driver.c,1701 :: 		if (pButtonRound->Active) {
; i start address is: 24 (R6)
; ptrO start address is: 28 (R7)
; pButtonRound start address is: 32 (R8)
ADD	R3, R8, #57
LDRB	R3, [R3, #0]
CMP	R3, #0
IT	EQ
BEQ	L_GetActiveObjectByXY228
;TJ_GUI14e_v_1_1_driver.c,1702 :: 		if ((pButtonRound->Left <= X) && (pButtonRound->Left+pButtonRound->Width-1 >= X) &&
ADD	R3, R8, #8
LDRSH	R3, [R3, #0]
CMP	R3, R2
IT	GT
BGT	L__GetActiveObjectByXY412
ADD	R3, R8, #8
LDRSH	R4, [R3, #0]
ADD	R3, R8, #12
LDRSH	R3, [R3, #0]
ADDS	R3, R4, R3
SXTH	R3, R3
SUBS	R3, R3, #1
SXTH	R3, R3
CMP	R3, R2
IT	LT
BLT	L__GetActiveObjectByXY411
;TJ_GUI14e_v_1_1_driver.c,1703 :: 		(pButtonRound->Top  <= Y) && (pButtonRound->Top+pButtonRound->Height-1 >= Y)) {
ADD	R3, R8, #10
LDRSH	R3, [R3, #0]
CMP	R3, R1
IT	GT
BGT	L__GetActiveObjectByXY410
ADD	R3, R8, #10
LDRSH	R4, [R3, #0]
ADD	R3, R8, #14
LDRSH	R3, [R3, #0]
ADDS	R3, R4, R3
SXTH	R3, R3
SUBS	R3, R3, #1
SXTH	R3, R3
CMP	R3, R1
IT	LT
BLT	L__GetActiveObjectByXY409
; ptrO end address is: 28 (R7)
; hiOrder end address is: 20 (R5)
; i end address is: 24 (R6)
L__GetActiveObjectByXY408:
;TJ_GUI14e_v_1_1_driver.c,1704 :: 		AObjInfo->Obj   = (void *)pButtonRound;
STR	R8, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,1705 :: 		AObjInfo->Type  = VTFT_OT_BUTTONROUND;
ADDS	R4, R0, #4
MOVS	R3, #2
STRB	R3, [R4, #0]
;TJ_GUI14e_v_1_1_driver.c,1706 :: 		AObjInfo->Order = pButtonRound->Order;
ADDS	R4, R0, #5
ADD	R3, R8, #4
LDRB	R3, [R3, #0]
STRB	R3, [R4, #0]
;TJ_GUI14e_v_1_1_driver.c,1707 :: 		AObjInfo->Flags = VTFT_INT_BRING_TO_FRONT;
ADDS	R4, R0, #6
MOVS	R3, #4
STRB	R3, [R4, #0]
;TJ_GUI14e_v_1_1_driver.c,1708 :: 		if (pButtonRound->Press_Color != pButtonRound->Color)
ADD	R3, R8, #28
LDR	R4, [R3, #0]
ADD	R3, R8, #24
LDR	R3, [R3, #0]
CMP	R4, R3
IT	EQ
BEQ	L_GetActiveObjectByXY232
;TJ_GUI14e_v_1_1_driver.c,1709 :: 		AObjInfo->Flags |= VTFT_INT_REPAINT_ON_DOWN | VTFT_INT_REPAINT_ON_UP;
ADDS	R4, R0, #6
LDRB	R3, [R4, #0]
ORR	R3, R3, #3
STRB	R3, [R4, #0]
L_GetActiveObjectByXY232:
;TJ_GUI14e_v_1_1_driver.c,1711 :: 		hiOrder         = pButtonRound->Order;
ADD	R3, R8, #4
; pButtonRound end address is: 32 (R8)
LDRB	R6, [R3, #0]
; hiOrder start address is: 24 (R6)
UXTB	R6, R6
;TJ_GUI14e_v_1_1_driver.c,1713 :: 		break;
; hiOrder end address is: 24 (R6)
IT	AL
BAL	L_GetActiveObjectByXY226
;TJ_GUI14e_v_1_1_driver.c,1702 :: 		if ((pButtonRound->Left <= X) && (pButtonRound->Left+pButtonRound->Width-1 >= X) &&
L__GetActiveObjectByXY412:
; i start address is: 24 (R6)
; hiOrder start address is: 20 (R5)
; ptrO start address is: 28 (R7)
L__GetActiveObjectByXY411:
;TJ_GUI14e_v_1_1_driver.c,1703 :: 		(pButtonRound->Top  <= Y) && (pButtonRound->Top+pButtonRound->Height-1 >= Y)) {
L__GetActiveObjectByXY410:
L__GetActiveObjectByXY409:
;TJ_GUI14e_v_1_1_driver.c,1715 :: 		}
L_GetActiveObjectByXY228:
;TJ_GUI14e_v_1_1_driver.c,1716 :: 		ptrO--;
SUBS	R7, R7, #4
;TJ_GUI14e_v_1_1_driver.c,1717 :: 		}
; ptrO end address is: 28 (R7)
; hiOrder end address is: 20 (R5)
; i end address is: 24 (R6)
UXTB	R8, R6
IT	AL
BAL	L_GetActiveObjectByXY225
L__GetActiveObjectByXY439:
;TJ_GUI14e_v_1_1_driver.c,1697 :: 		while (i--) {
SXTH	R6, R5
;TJ_GUI14e_v_1_1_driver.c,1717 :: 		}
L_GetActiveObjectByXY226:
;TJ_GUI14e_v_1_1_driver.c,1720 :: 		i    = CurrentScreen->LabelsCount;
; hiOrder start address is: 24 (R6)
MOVW	R4, #lo_addr(_CurrentScreen+0)
MOVT	R4, #hi_addr(_CurrentScreen+0)
LDR	R3, [R4, #0]
ADDS	R3, #16
LDRB	R5, [R3, #0]
; i start address is: 28 (R7)
UXTB	R7, R5
;TJ_GUI14e_v_1_1_driver.c,1721 :: 		ptrO = CurrentScreen->Labels+CurrentScreen->LabelsCount-1;
MOV	R3, R4
LDR	R3, [R3, #0]
ADDS	R3, #20
LDR	R4, [R3, #0]
LSLS	R3, R5, #2
ADD	R8, R4, R3, LSL #0
SUB	R8, R8, #4
; ptrO start address is: 32 (R8)
; hiOrder end address is: 24 (R6)
; i end address is: 28 (R7)
; AObjInfo end address is: 0 (R0)
; Y end address is: 4 (R1)
; X end address is: 8 (R2)
; ptrO end address is: 32 (R8)
STRH	R2, [SP, #4]
MOV	R2, R0
SXTH	R5, R6
UXTB	R6, R7
LDRSH	R0, [SP, #4]
;TJ_GUI14e_v_1_1_driver.c,1722 :: 		while (i--) {
L_GetActiveObjectByXY233:
; ptrO start address is: 32 (R8)
; i start address is: 24 (R6)
; i start address is: 24 (R6)
; hiOrder start address is: 20 (R5)
; X start address is: 0 (R0)
; Y start address is: 4 (R1)
; AObjInfo start address is: 8 (R2)
UXTB	R4, R6
SUBS	R6, R6, #1
UXTB	R6, R6
; i end address is: 24 (R6)
CMP	R4, #0
IT	EQ
BEQ	L__GetActiveObjectByXY440
; i end address is: 24 (R6)
;TJ_GUI14e_v_1_1_driver.c,1723 :: 		pLabel = (TLabel *)(*ptrO);
; i start address is: 24 (R6)
LDR	R3, [R8, #0]
; pLabel start address is: 28 (R7)
MOV	R7, R3
;TJ_GUI14e_v_1_1_driver.c,1724 :: 		if (pLabel->Order < hiOrder)
ADDS	R3, R3, #4
LDRB	R3, [R3, #0]
CMP	R3, R5
IT	GE
BGE	L_GetActiveObjectByXY235
; pLabel end address is: 28 (R7)
; i end address is: 24 (R6)
; ptrO end address is: 32 (R8)
;TJ_GUI14e_v_1_1_driver.c,1725 :: 		break;
SXTH	R6, R5
IT	AL
BAL	L_GetActiveObjectByXY234
L_GetActiveObjectByXY235:
;TJ_GUI14e_v_1_1_driver.c,1726 :: 		if (pLabel->Active) {
; ptrO start address is: 32 (R8)
; i start address is: 24 (R6)
; pLabel start address is: 28 (R7)
ADDW	R3, R7, #36
LDRB	R3, [R3, #0]
CMP	R3, #0
IT	EQ
BEQ	L_GetActiveObjectByXY236
;TJ_GUI14e_v_1_1_driver.c,1727 :: 		if ((pLabel->Left <= X) && (pLabel->Left+pLabel->Width-1 >= X) &&
ADDW	R3, R7, #8
LDRSH	R3, [R3, #0]
CMP	R3, R0
IT	GT
BGT	L__GetActiveObjectByXY416
ADDW	R3, R7, #8
LDRSH	R4, [R3, #0]
ADDW	R3, R7, #12
LDRSH	R3, [R3, #0]
ADDS	R3, R4, R3
SXTH	R3, R3
SUBS	R3, R3, #1
SXTH	R3, R3
CMP	R3, R0
IT	LT
BLT	L__GetActiveObjectByXY415
;TJ_GUI14e_v_1_1_driver.c,1728 :: 		(pLabel->Top  <= Y) && (pLabel->Top+pLabel->Height-1 >= Y)) {
ADDW	R3, R7, #10
LDRSH	R3, [R3, #0]
CMP	R3, R1
IT	GT
BGT	L__GetActiveObjectByXY414
ADDW	R3, R7, #10
LDRSH	R4, [R3, #0]
ADDW	R3, R7, #14
LDRSH	R3, [R3, #0]
ADDS	R3, R4, R3
SXTH	R3, R3
SUBS	R3, R3, #1
SXTH	R3, R3
CMP	R3, R1
IT	LT
BLT	L__GetActiveObjectByXY413
; hiOrder end address is: 20 (R5)
; i end address is: 24 (R6)
; ptrO end address is: 32 (R8)
L__GetActiveObjectByXY407:
;TJ_GUI14e_v_1_1_driver.c,1729 :: 		AObjInfo->Obj   = (void *)pLabel;
STR	R7, [R2, #0]
;TJ_GUI14e_v_1_1_driver.c,1730 :: 		AObjInfo->Type  = VTFT_OT_LABEL;
ADDS	R4, R2, #4
MOVS	R3, #4
STRB	R3, [R4, #0]
;TJ_GUI14e_v_1_1_driver.c,1731 :: 		AObjInfo->Order = pLabel->Order;
ADDS	R4, R2, #5
ADDS	R3, R7, #4
LDRB	R3, [R3, #0]
STRB	R3, [R4, #0]
;TJ_GUI14e_v_1_1_driver.c,1732 :: 		AObjInfo->Flags = VTFT_INT_BRING_TO_FRONT;
ADDS	R4, R2, #6
MOVS	R3, #4
STRB	R3, [R4, #0]
;TJ_GUI14e_v_1_1_driver.c,1734 :: 		hiOrder         = pLabel->Order;
ADDS	R3, R7, #4
; pLabel end address is: 28 (R7)
LDRB	R6, [R3, #0]
; hiOrder start address is: 24 (R6)
UXTB	R6, R6
;TJ_GUI14e_v_1_1_driver.c,1736 :: 		break;
; hiOrder end address is: 24 (R6)
IT	AL
BAL	L_GetActiveObjectByXY234
;TJ_GUI14e_v_1_1_driver.c,1727 :: 		if ((pLabel->Left <= X) && (pLabel->Left+pLabel->Width-1 >= X) &&
L__GetActiveObjectByXY416:
; ptrO start address is: 32 (R8)
; i start address is: 24 (R6)
; hiOrder start address is: 20 (R5)
L__GetActiveObjectByXY415:
;TJ_GUI14e_v_1_1_driver.c,1728 :: 		(pLabel->Top  <= Y) && (pLabel->Top+pLabel->Height-1 >= Y)) {
L__GetActiveObjectByXY414:
L__GetActiveObjectByXY413:
;TJ_GUI14e_v_1_1_driver.c,1738 :: 		}
L_GetActiveObjectByXY236:
;TJ_GUI14e_v_1_1_driver.c,1739 :: 		ptrO--;
SUB	R8, R8, #4
;TJ_GUI14e_v_1_1_driver.c,1740 :: 		}
; hiOrder end address is: 20 (R5)
; i end address is: 24 (R6)
; ptrO end address is: 32 (R8)
IT	AL
BAL	L_GetActiveObjectByXY233
L__GetActiveObjectByXY440:
;TJ_GUI14e_v_1_1_driver.c,1722 :: 		while (i--) {
SXTH	R6, R5
;TJ_GUI14e_v_1_1_driver.c,1740 :: 		}
L_GetActiveObjectByXY234:
;TJ_GUI14e_v_1_1_driver.c,1743 :: 		i    = CurrentScreen->ImagesCount;
; hiOrder start address is: 24 (R6)
MOVW	R4, #lo_addr(_CurrentScreen+0)
MOVT	R4, #hi_addr(_CurrentScreen+0)
LDR	R3, [R4, #0]
ADDS	R3, #24
LDRB	R5, [R3, #0]
; i start address is: 28 (R7)
UXTB	R7, R5
;TJ_GUI14e_v_1_1_driver.c,1744 :: 		ptrO = CurrentScreen->Images+CurrentScreen->ImagesCount-1;
MOV	R3, R4
LDR	R3, [R3, #0]
ADDS	R3, #28
LDR	R4, [R3, #0]
LSLS	R3, R5, #2
ADD	R8, R4, R3, LSL #0
SUB	R8, R8, #4
; ptrO start address is: 32 (R8)
; X end address is: 0 (R0)
; AObjInfo end address is: 8 (R2)
; hiOrder end address is: 24 (R6)
; i end address is: 28 (R7)
; Y end address is: 4 (R1)
; ptrO end address is: 32 (R8)
STR	R2, [SP, #4]
SXTH	R2, R0
SXTH	R5, R6
UXTB	R6, R7
LDR	R0, [SP, #4]
;TJ_GUI14e_v_1_1_driver.c,1745 :: 		while (i--) {
L_GetActiveObjectByXY240:
; ptrO start address is: 32 (R8)
; i start address is: 24 (R6)
; i start address is: 24 (R6)
; hiOrder start address is: 20 (R5)
; AObjInfo start address is: 0 (R0)
; Y start address is: 4 (R1)
; X start address is: 8 (R2)
UXTB	R4, R6
SUBS	R6, R6, #1
UXTB	R6, R6
; i end address is: 24 (R6)
CMP	R4, #0
IT	EQ
BEQ	L__GetActiveObjectByXY441
; i end address is: 24 (R6)
;TJ_GUI14e_v_1_1_driver.c,1746 :: 		pImage = (TImage *)(*ptrO);
; i start address is: 24 (R6)
LDR	R3, [R8, #0]
; pImage start address is: 28 (R7)
MOV	R7, R3
;TJ_GUI14e_v_1_1_driver.c,1747 :: 		if (pImage->Order < hiOrder)
ADDS	R3, R3, #4
LDRB	R3, [R3, #0]
CMP	R3, R5
IT	GE
BGE	L_GetActiveObjectByXY242
; pImage end address is: 28 (R7)
; i end address is: 24 (R6)
; ptrO end address is: 32 (R8)
;TJ_GUI14e_v_1_1_driver.c,1748 :: 		break;
SXTH	R6, R5
IT	AL
BAL	L_GetActiveObjectByXY241
L_GetActiveObjectByXY242:
;TJ_GUI14e_v_1_1_driver.c,1749 :: 		if (pImage->Active) {
; ptrO start address is: 32 (R8)
; i start address is: 24 (R6)
; pImage start address is: 28 (R7)
ADDW	R3, R7, #48
LDRB	R3, [R3, #0]
CMP	R3, #0
IT	EQ
BEQ	L_GetActiveObjectByXY243
;TJ_GUI14e_v_1_1_driver.c,1750 :: 		if ((pImage->Left <= X) && (pImage->Left+pImage->Width-1 >= X) &&
ADDW	R3, R7, #8
LDRSH	R3, [R3, #0]
CMP	R3, R2
IT	GT
BGT	L__GetActiveObjectByXY420
ADDW	R3, R7, #8
LDRSH	R4, [R3, #0]
ADDW	R3, R7, #12
LDRSH	R3, [R3, #0]
ADDS	R3, R4, R3
SXTH	R3, R3
SUBS	R3, R3, #1
SXTH	R3, R3
CMP	R3, R2
IT	LT
BLT	L__GetActiveObjectByXY419
;TJ_GUI14e_v_1_1_driver.c,1751 :: 		(pImage->Top  <= Y) && (pImage->Top+pImage->Height-1 >= Y)) {
ADDW	R3, R7, #10
LDRSH	R3, [R3, #0]
CMP	R3, R1
IT	GT
BGT	L__GetActiveObjectByXY418
ADDW	R3, R7, #10
LDRSH	R4, [R3, #0]
ADDW	R3, R7, #14
LDRSH	R3, [R3, #0]
ADDS	R3, R4, R3
SXTH	R3, R3
SUBS	R3, R3, #1
SXTH	R3, R3
CMP	R3, R1
IT	LT
BLT	L__GetActiveObjectByXY417
; hiOrder end address is: 20 (R5)
; i end address is: 24 (R6)
; ptrO end address is: 32 (R8)
L__GetActiveObjectByXY406:
;TJ_GUI14e_v_1_1_driver.c,1752 :: 		AObjInfo->Obj   = (void *)pImage;
STR	R7, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,1753 :: 		AObjInfo->Type  = VTFT_OT_IMAGE;
ADDS	R4, R0, #4
MOVS	R3, #6
STRB	R3, [R4, #0]
;TJ_GUI14e_v_1_1_driver.c,1754 :: 		AObjInfo->Order = pImage->Order;
ADDS	R4, R0, #5
ADDS	R3, R7, #4
LDRB	R3, [R3, #0]
STRB	R3, [R4, #0]
;TJ_GUI14e_v_1_1_driver.c,1755 :: 		AObjInfo->Flags = VTFT_INT_BRING_TO_FRONT;
ADDS	R4, R0, #6
MOVS	R3, #4
STRB	R3, [R4, #0]
;TJ_GUI14e_v_1_1_driver.c,1757 :: 		hiOrder         = pImage->Order;
ADDS	R3, R7, #4
; pImage end address is: 28 (R7)
LDRB	R6, [R3, #0]
; hiOrder start address is: 24 (R6)
UXTB	R6, R6
;TJ_GUI14e_v_1_1_driver.c,1759 :: 		break;
; hiOrder end address is: 24 (R6)
IT	AL
BAL	L_GetActiveObjectByXY241
;TJ_GUI14e_v_1_1_driver.c,1750 :: 		if ((pImage->Left <= X) && (pImage->Left+pImage->Width-1 >= X) &&
L__GetActiveObjectByXY420:
; ptrO start address is: 32 (R8)
; i start address is: 24 (R6)
; hiOrder start address is: 20 (R5)
L__GetActiveObjectByXY419:
;TJ_GUI14e_v_1_1_driver.c,1751 :: 		(pImage->Top  <= Y) && (pImage->Top+pImage->Height-1 >= Y)) {
L__GetActiveObjectByXY418:
L__GetActiveObjectByXY417:
;TJ_GUI14e_v_1_1_driver.c,1761 :: 		}
L_GetActiveObjectByXY243:
;TJ_GUI14e_v_1_1_driver.c,1762 :: 		ptrO--;
SUB	R8, R8, #4
;TJ_GUI14e_v_1_1_driver.c,1763 :: 		}
; hiOrder end address is: 20 (R5)
; i end address is: 24 (R6)
; ptrO end address is: 32 (R8)
IT	AL
BAL	L_GetActiveObjectByXY240
L__GetActiveObjectByXY441:
;TJ_GUI14e_v_1_1_driver.c,1745 :: 		while (i--) {
SXTH	R6, R5
;TJ_GUI14e_v_1_1_driver.c,1763 :: 		}
L_GetActiveObjectByXY241:
;TJ_GUI14e_v_1_1_driver.c,1766 :: 		i    = CurrentScreen->CirclesCount;
; hiOrder start address is: 24 (R6)
MOVW	R4, #lo_addr(_CurrentScreen+0)
MOVT	R4, #hi_addr(_CurrentScreen+0)
LDR	R3, [R4, #0]
ADDS	R3, #32
LDRB	R5, [R3, #0]
; i start address is: 28 (R7)
UXTB	R7, R5
;TJ_GUI14e_v_1_1_driver.c,1767 :: 		ptrO = CurrentScreen->Circles+CurrentScreen->CirclesCount-1;
MOV	R3, R4
LDR	R3, [R3, #0]
ADDS	R3, #36
LDR	R4, [R3, #0]
LSLS	R3, R5, #2
ADD	R8, R4, R3, LSL #0
SUB	R8, R8, #4
; ptrO start address is: 32 (R8)
; hiOrder end address is: 24 (R6)
; i end address is: 28 (R7)
; AObjInfo end address is: 0 (R0)
; Y end address is: 4 (R1)
; X end address is: 8 (R2)
; ptrO end address is: 32 (R8)
STRH	R2, [SP, #4]
MOV	R2, R0
SXTH	R5, R6
UXTB	R6, R7
LDRSH	R0, [SP, #4]
;TJ_GUI14e_v_1_1_driver.c,1768 :: 		while (i--) {
L_GetActiveObjectByXY247:
; ptrO start address is: 32 (R8)
; i start address is: 24 (R6)
; i start address is: 24 (R6)
; hiOrder start address is: 20 (R5)
; X start address is: 0 (R0)
; Y start address is: 4 (R1)
; AObjInfo start address is: 8 (R2)
UXTB	R4, R6
SUBS	R6, R6, #1
UXTB	R6, R6
; i end address is: 24 (R6)
CMP	R4, #0
IT	EQ
BEQ	L__GetActiveObjectByXY442
; i end address is: 24 (R6)
;TJ_GUI14e_v_1_1_driver.c,1769 :: 		pCircle = (TCircle *)(*ptrO);
; i start address is: 24 (R6)
LDR	R3, [R8, #0]
; pCircle start address is: 28 (R7)
MOV	R7, R3
;TJ_GUI14e_v_1_1_driver.c,1770 :: 		if (pCircle->Order < hiOrder)
ADDS	R3, R3, #4
LDRB	R3, [R3, #0]
CMP	R3, R5
IT	GE
BGE	L_GetActiveObjectByXY249
; pCircle end address is: 28 (R7)
; i end address is: 24 (R6)
; ptrO end address is: 32 (R8)
;TJ_GUI14e_v_1_1_driver.c,1771 :: 		break;
SXTH	R6, R5
IT	AL
BAL	L_GetActiveObjectByXY248
L_GetActiveObjectByXY249:
;TJ_GUI14e_v_1_1_driver.c,1772 :: 		if (pCircle->Active) {
; ptrO start address is: 32 (R8)
; i start address is: 24 (R6)
; pCircle start address is: 28 (R7)
ADDW	R3, R7, #28
LDRB	R3, [R3, #0]
CMP	R3, #0
IT	EQ
BEQ	L_GetActiveObjectByXY250
;TJ_GUI14e_v_1_1_driver.c,1774 :: 		if ((pCircle->Left <= X) && (pCircle->Left+pCircle->Radius*2-1 >= X) &&
ADDW	R3, R7, #8
LDRSH	R3, [R3, #0]
CMP	R3, R0
IT	GT
BGT	L__GetActiveObjectByXY424
ADDW	R3, R7, #8
LDRSH	R4, [R3, #0]
ADDW	R3, R7, #12
LDRSH	R3, [R3, #0]
LSLS	R3, R3, #1
SXTH	R3, R3
ADDS	R3, R4, R3
SXTH	R3, R3
SUBS	R3, R3, #1
SXTH	R3, R3
CMP	R3, R0
IT	LT
BLT	L__GetActiveObjectByXY423
;TJ_GUI14e_v_1_1_driver.c,1775 :: 		(pCircle->Top  <= Y) && (pCircle->Top+pCircle->Radius*2-1 >= Y)) {
ADDW	R3, R7, #10
LDRSH	R3, [R3, #0]
CMP	R3, R1
IT	GT
BGT	L__GetActiveObjectByXY422
ADDW	R3, R7, #10
LDRSH	R4, [R3, #0]
ADDW	R3, R7, #12
LDRSH	R3, [R3, #0]
LSLS	R3, R3, #1
SXTH	R3, R3
ADDS	R3, R4, R3
SXTH	R3, R3
SUBS	R3, R3, #1
SXTH	R3, R3
CMP	R3, R1
IT	LT
BLT	L__GetActiveObjectByXY421
; hiOrder end address is: 20 (R5)
; i end address is: 24 (R6)
; ptrO end address is: 32 (R8)
L__GetActiveObjectByXY405:
;TJ_GUI14e_v_1_1_driver.c,1776 :: 		AObjInfo->Obj   = (void *)pCircle;
STR	R7, [R2, #0]
;TJ_GUI14e_v_1_1_driver.c,1777 :: 		AObjInfo->Type  = VTFT_OT_CIRCLE;
ADDS	R4, R2, #4
MOVS	R3, #8
STRB	R3, [R4, #0]
;TJ_GUI14e_v_1_1_driver.c,1778 :: 		AObjInfo->Order = pCircle->Order;
ADDS	R4, R2, #5
ADDS	R3, R7, #4
LDRB	R3, [R3, #0]
STRB	R3, [R4, #0]
;TJ_GUI14e_v_1_1_driver.c,1779 :: 		AObjInfo->Flags = VTFT_INT_BRING_TO_FRONT;
ADDS	R4, R2, #6
MOVS	R3, #4
STRB	R3, [R4, #0]
;TJ_GUI14e_v_1_1_driver.c,1780 :: 		if (pCircle->Press_Color != pCircle->Color)
ADDW	R3, R7, #24
LDR	R4, [R3, #0]
ADDW	R3, R7, #20
LDR	R3, [R3, #0]
CMP	R4, R3
IT	EQ
BEQ	L_GetActiveObjectByXY254
;TJ_GUI14e_v_1_1_driver.c,1781 :: 		AObjInfo->Flags |= VTFT_INT_REPAINT_ON_DOWN | VTFT_INT_REPAINT_ON_UP;
ADDS	R4, R2, #6
LDRB	R3, [R4, #0]
ORR	R3, R3, #3
STRB	R3, [R4, #0]
L_GetActiveObjectByXY254:
;TJ_GUI14e_v_1_1_driver.c,1783 :: 		hiOrder         = pCircle->Order;
ADDS	R3, R7, #4
; pCircle end address is: 28 (R7)
LDRB	R6, [R3, #0]
; hiOrder start address is: 24 (R6)
UXTB	R6, R6
;TJ_GUI14e_v_1_1_driver.c,1785 :: 		break;
; hiOrder end address is: 24 (R6)
IT	AL
BAL	L_GetActiveObjectByXY248
;TJ_GUI14e_v_1_1_driver.c,1774 :: 		if ((pCircle->Left <= X) && (pCircle->Left+pCircle->Radius*2-1 >= X) &&
L__GetActiveObjectByXY424:
; ptrO start address is: 32 (R8)
; i start address is: 24 (R6)
; hiOrder start address is: 20 (R5)
L__GetActiveObjectByXY423:
;TJ_GUI14e_v_1_1_driver.c,1775 :: 		(pCircle->Top  <= Y) && (pCircle->Top+pCircle->Radius*2-1 >= Y)) {
L__GetActiveObjectByXY422:
L__GetActiveObjectByXY421:
;TJ_GUI14e_v_1_1_driver.c,1787 :: 		}
L_GetActiveObjectByXY250:
;TJ_GUI14e_v_1_1_driver.c,1788 :: 		ptrO--;
SUB	R8, R8, #4
;TJ_GUI14e_v_1_1_driver.c,1789 :: 		}
; hiOrder end address is: 20 (R5)
; i end address is: 24 (R6)
; ptrO end address is: 32 (R8)
IT	AL
BAL	L_GetActiveObjectByXY247
L__GetActiveObjectByXY442:
;TJ_GUI14e_v_1_1_driver.c,1768 :: 		while (i--) {
SXTH	R6, R5
;TJ_GUI14e_v_1_1_driver.c,1789 :: 		}
L_GetActiveObjectByXY248:
;TJ_GUI14e_v_1_1_driver.c,1792 :: 		i    = CurrentScreen->CircleButtonsCount;
; hiOrder start address is: 24 (R6)
MOVW	R4, #lo_addr(_CurrentScreen+0)
MOVT	R4, #hi_addr(_CurrentScreen+0)
LDR	R3, [R4, #0]
ADDS	R3, #40
LDRB	R5, [R3, #0]
; i start address is: 28 (R7)
UXTB	R7, R5
;TJ_GUI14e_v_1_1_driver.c,1793 :: 		ptrO = CurrentScreen->CircleButtons+CurrentScreen->CircleButtonsCount-1;
MOV	R3, R4
LDR	R3, [R3, #0]
ADDS	R3, #44
LDR	R4, [R3, #0]
LSLS	R3, R5, #2
ADD	R8, R4, R3, LSL #0
SUB	R8, R8, #4
; ptrO start address is: 32 (R8)
; X end address is: 0 (R0)
; AObjInfo end address is: 8 (R2)
; hiOrder end address is: 24 (R6)
; i end address is: 28 (R7)
; Y end address is: 4 (R1)
; ptrO end address is: 32 (R8)
STR	R2, [SP, #4]
SXTH	R2, R0
SXTH	R5, R6
UXTB	R6, R7
LDR	R0, [SP, #4]
;TJ_GUI14e_v_1_1_driver.c,1794 :: 		while (i--) {
L_GetActiveObjectByXY255:
; ptrO start address is: 32 (R8)
; i start address is: 24 (R6)
; i start address is: 24 (R6)
; hiOrder start address is: 20 (R5)
; AObjInfo start address is: 0 (R0)
; Y start address is: 4 (R1)
; X start address is: 8 (R2)
UXTB	R4, R6
SUBS	R6, R6, #1
UXTB	R6, R6
; i end address is: 24 (R6)
CMP	R4, #0
IT	EQ
BEQ	L__GetActiveObjectByXY443
; i end address is: 24 (R6)
;TJ_GUI14e_v_1_1_driver.c,1795 :: 		pCircleButton = (TCircleButton *)(*ptrO);
; i start address is: 24 (R6)
LDR	R3, [R8, #0]
; pCircleButton start address is: 28 (R7)
MOV	R7, R3
;TJ_GUI14e_v_1_1_driver.c,1796 :: 		if (pCircleButton->Order < hiOrder)
ADDS	R3, R3, #4
LDRB	R3, [R3, #0]
CMP	R3, R5
IT	GE
BGE	L_GetActiveObjectByXY257
; pCircleButton end address is: 28 (R7)
; i end address is: 24 (R6)
; ptrO end address is: 32 (R8)
;TJ_GUI14e_v_1_1_driver.c,1797 :: 		break;
SXTH	R6, R5
IT	AL
BAL	L_GetActiveObjectByXY256
L_GetActiveObjectByXY257:
;TJ_GUI14e_v_1_1_driver.c,1798 :: 		if (pCircleButton->Active) {
; ptrO start address is: 32 (R8)
; i start address is: 24 (R6)
; pCircleButton start address is: 28 (R7)
ADDW	R3, R7, #52
LDRB	R3, [R3, #0]
CMP	R3, #0
IT	EQ
BEQ	L_GetActiveObjectByXY258
;TJ_GUI14e_v_1_1_driver.c,1800 :: 		if ((pCircleButton->Left <= X) && (pCircleButton->Left+pCircleButton->Radius*2-1 >= X) &&
ADDW	R3, R7, #8
LDRSH	R3, [R3, #0]
CMP	R3, R2
IT	GT
BGT	L__GetActiveObjectByXY428
ADDW	R3, R7, #8
LDRSH	R4, [R3, #0]
ADDW	R3, R7, #12
LDRSH	R3, [R3, #0]
LSLS	R3, R3, #1
SXTH	R3, R3
ADDS	R3, R4, R3
SXTH	R3, R3
SUBS	R3, R3, #1
SXTH	R3, R3
CMP	R3, R2
IT	LT
BLT	L__GetActiveObjectByXY427
;TJ_GUI14e_v_1_1_driver.c,1801 :: 		(pCircleButton->Top  <= Y) && (pCircleButton->Top+pCircleButton->Radius*2-1 >= Y)) {
ADDW	R3, R7, #10
LDRSH	R3, [R3, #0]
CMP	R3, R1
IT	GT
BGT	L__GetActiveObjectByXY426
ADDW	R3, R7, #10
LDRSH	R4, [R3, #0]
ADDW	R3, R7, #12
LDRSH	R3, [R3, #0]
LSLS	R3, R3, #1
SXTH	R3, R3
ADDS	R3, R4, R3
SXTH	R3, R3
SUBS	R3, R3, #1
SXTH	R3, R3
CMP	R3, R1
IT	LT
BLT	L__GetActiveObjectByXY425
; hiOrder end address is: 20 (R5)
; i end address is: 24 (R6)
; ptrO end address is: 32 (R8)
L__GetActiveObjectByXY404:
;TJ_GUI14e_v_1_1_driver.c,1802 :: 		AObjInfo->Obj   = (void *)pCircleButton;
STR	R7, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,1803 :: 		AObjInfo->Type  = VTFT_OT_CIRCLEBUTTON;
ADDS	R4, R0, #4
MOVS	R3, #10
STRB	R3, [R4, #0]
;TJ_GUI14e_v_1_1_driver.c,1804 :: 		AObjInfo->Order = pCircleButton->Order;
ADDS	R4, R0, #5
ADDS	R3, R7, #4
LDRB	R3, [R3, #0]
STRB	R3, [R4, #0]
;TJ_GUI14e_v_1_1_driver.c,1805 :: 		AObjInfo->Flags = VTFT_INT_BRING_TO_FRONT;
ADDS	R4, R0, #6
MOVS	R3, #4
STRB	R3, [R4, #0]
;TJ_GUI14e_v_1_1_driver.c,1806 :: 		if (pCircleButton->Press_Color != pCircleButton->Color)
ADDW	R3, R7, #24
LDR	R4, [R3, #0]
ADDW	R3, R7, #20
LDR	R3, [R3, #0]
CMP	R4, R3
IT	EQ
BEQ	L_GetActiveObjectByXY262
;TJ_GUI14e_v_1_1_driver.c,1807 :: 		AObjInfo->Flags |= VTFT_INT_REPAINT_ON_DOWN | VTFT_INT_REPAINT_ON_UP;
ADDS	R4, R0, #6
LDRB	R3, [R4, #0]
ORR	R3, R3, #3
STRB	R3, [R4, #0]
L_GetActiveObjectByXY262:
;TJ_GUI14e_v_1_1_driver.c,1809 :: 		hiOrder         = pCircleButton->Order;
ADDS	R3, R7, #4
; pCircleButton end address is: 28 (R7)
LDRB	R6, [R3, #0]
; hiOrder start address is: 24 (R6)
UXTB	R6, R6
;TJ_GUI14e_v_1_1_driver.c,1811 :: 		break;
; hiOrder end address is: 24 (R6)
IT	AL
BAL	L_GetActiveObjectByXY256
;TJ_GUI14e_v_1_1_driver.c,1800 :: 		if ((pCircleButton->Left <= X) && (pCircleButton->Left+pCircleButton->Radius*2-1 >= X) &&
L__GetActiveObjectByXY428:
; ptrO start address is: 32 (R8)
; i start address is: 24 (R6)
; hiOrder start address is: 20 (R5)
L__GetActiveObjectByXY427:
;TJ_GUI14e_v_1_1_driver.c,1801 :: 		(pCircleButton->Top  <= Y) && (pCircleButton->Top+pCircleButton->Radius*2-1 >= Y)) {
L__GetActiveObjectByXY426:
L__GetActiveObjectByXY425:
;TJ_GUI14e_v_1_1_driver.c,1813 :: 		}
L_GetActiveObjectByXY258:
;TJ_GUI14e_v_1_1_driver.c,1814 :: 		ptrO--;
SUB	R8, R8, #4
;TJ_GUI14e_v_1_1_driver.c,1815 :: 		}
; hiOrder end address is: 20 (R5)
; i end address is: 24 (R6)
; ptrO end address is: 32 (R8)
IT	AL
BAL	L_GetActiveObjectByXY255
L__GetActiveObjectByXY443:
;TJ_GUI14e_v_1_1_driver.c,1794 :: 		while (i--) {
SXTH	R6, R5
;TJ_GUI14e_v_1_1_driver.c,1815 :: 		}
L_GetActiveObjectByXY256:
;TJ_GUI14e_v_1_1_driver.c,1818 :: 		i    = CurrentScreen->EveGaugesCount;
; hiOrder start address is: 24 (R6)
MOVW	R4, #lo_addr(_CurrentScreen+0)
MOVT	R4, #hi_addr(_CurrentScreen+0)
LDR	R3, [R4, #0]
ADDS	R3, #64
LDRB	R5, [R3, #0]
; i start address is: 28 (R7)
UXTB	R7, R5
;TJ_GUI14e_v_1_1_driver.c,1819 :: 		ptrO = CurrentScreen->EveGauges+CurrentScreen->EveGaugesCount-1;
MOV	R3, R4
LDR	R3, [R3, #0]
ADDS	R3, #68
LDR	R4, [R3, #0]
LSLS	R3, R5, #2
ADD	R8, R4, R3, LSL #0
SUB	R8, R8, #4
; ptrO start address is: 32 (R8)
; hiOrder end address is: 24 (R6)
; i end address is: 28 (R7)
; AObjInfo end address is: 0 (R0)
; Y end address is: 4 (R1)
; X end address is: 8 (R2)
; ptrO end address is: 32 (R8)
STRH	R2, [SP, #4]
MOV	R2, R0
SXTH	R5, R6
UXTB	R6, R7
LDRSH	R0, [SP, #4]
;TJ_GUI14e_v_1_1_driver.c,1820 :: 		while (i--) {
L_GetActiveObjectByXY263:
; ptrO start address is: 32 (R8)
; i start address is: 24 (R6)
; i start address is: 24 (R6)
; hiOrder start address is: 20 (R5)
; X start address is: 0 (R0)
; Y start address is: 4 (R1)
; AObjInfo start address is: 8 (R2)
UXTB	R4, R6
SUBS	R6, R6, #1
UXTB	R6, R6
; i end address is: 24 (R6)
CMP	R4, #0
IT	EQ
BEQ	L__GetActiveObjectByXY444
; i end address is: 24 (R6)
;TJ_GUI14e_v_1_1_driver.c,1821 :: 		pEveGauge = (TEveGauge *)(*ptrO);
; i start address is: 24 (R6)
LDR	R3, [R8, #0]
; pEveGauge start address is: 28 (R7)
MOV	R7, R3
;TJ_GUI14e_v_1_1_driver.c,1822 :: 		if (pEveGauge->Order < hiOrder)
ADDS	R3, R3, #4
LDRB	R3, [R3, #0]
CMP	R3, R5
IT	GE
BGE	L_GetActiveObjectByXY265
; pEveGauge end address is: 28 (R7)
; i end address is: 24 (R6)
; ptrO end address is: 32 (R8)
;TJ_GUI14e_v_1_1_driver.c,1823 :: 		break;
SXTH	R6, R5
IT	AL
BAL	L_GetActiveObjectByXY264
L_GetActiveObjectByXY265:
;TJ_GUI14e_v_1_1_driver.c,1824 :: 		if (pEveGauge->Active) {
; ptrO start address is: 32 (R8)
; i start address is: 24 (R6)
; pEveGauge start address is: 28 (R7)
ADDW	R3, R7, #38
LDRB	R3, [R3, #0]
CMP	R3, #0
IT	EQ
BEQ	L_GetActiveObjectByXY266
;TJ_GUI14e_v_1_1_driver.c,1826 :: 		if ((pEveGauge->Left <= X) && (pEveGauge->Left+pEveGauge->Radius*2-1 >= X) &&
ADDW	R3, R7, #8
LDRSH	R3, [R3, #0]
CMP	R3, R0
IT	GT
BGT	L__GetActiveObjectByXY432
ADDW	R3, R7, #8
LDRSH	R4, [R3, #0]
ADDW	R3, R7, #12
LDRSH	R3, [R3, #0]
LSLS	R3, R3, #1
SXTH	R3, R3
ADDS	R3, R4, R3
SXTH	R3, R3
SUBS	R3, R3, #1
SXTH	R3, R3
CMP	R3, R0
IT	LT
BLT	L__GetActiveObjectByXY431
;TJ_GUI14e_v_1_1_driver.c,1827 :: 		(pEveGauge->Top  <= Y) && (pEveGauge->Top+pEveGauge->Radius*2-1 >= Y)) {
ADDW	R3, R7, #10
LDRSH	R3, [R3, #0]
CMP	R3, R1
IT	GT
BGT	L__GetActiveObjectByXY430
ADDW	R3, R7, #10
LDRSH	R4, [R3, #0]
ADDW	R3, R7, #12
LDRSH	R3, [R3, #0]
LSLS	R3, R3, #1
SXTH	R3, R3
ADDS	R3, R4, R3
SXTH	R3, R3
SUBS	R3, R3, #1
SXTH	R3, R3
CMP	R3, R1
IT	LT
BLT	L__GetActiveObjectByXY429
; hiOrder end address is: 20 (R5)
; i end address is: 24 (R6)
; ptrO end address is: 32 (R8)
L__GetActiveObjectByXY403:
;TJ_GUI14e_v_1_1_driver.c,1828 :: 		AObjInfo->Obj   = (void *)pEveGauge;
STR	R7, [R2, #0]
;TJ_GUI14e_v_1_1_driver.c,1829 :: 		AObjInfo->Type  = VTFT_OT_EVEGAUGE;
ADDS	R4, R2, #4
MOVS	R3, #25
STRB	R3, [R4, #0]
;TJ_GUI14e_v_1_1_driver.c,1830 :: 		AObjInfo->Order = pEveGauge->Order;
ADDS	R4, R2, #5
ADDS	R3, R7, #4
LDRB	R3, [R3, #0]
STRB	R3, [R4, #0]
;TJ_GUI14e_v_1_1_driver.c,1831 :: 		AObjInfo->Flags = VTFT_INT_BRING_TO_FRONT;
ADDS	R4, R2, #6
MOVS	R3, #4
STRB	R3, [R4, #0]
;TJ_GUI14e_v_1_1_driver.c,1832 :: 		if (pEveGauge->Press_Color != pEveGauge->Color)
ADDW	R3, R7, #24
LDR	R4, [R3, #0]
ADDW	R3, R7, #20
LDR	R3, [R3, #0]
CMP	R4, R3
IT	EQ
BEQ	L_GetActiveObjectByXY270
;TJ_GUI14e_v_1_1_driver.c,1833 :: 		AObjInfo->Flags |= VTFT_INT_REPAINT_ON_DOWN | VTFT_INT_REPAINT_ON_UP;
ADDS	R4, R2, #6
LDRB	R3, [R4, #0]
ORR	R3, R3, #3
STRB	R3, [R4, #0]
L_GetActiveObjectByXY270:
;TJ_GUI14e_v_1_1_driver.c,1835 :: 		hiOrder         = pEveGauge->Order;
ADDS	R3, R7, #4
; pEveGauge end address is: 28 (R7)
LDRB	R6, [R3, #0]
; hiOrder start address is: 24 (R6)
UXTB	R6, R6
;TJ_GUI14e_v_1_1_driver.c,1837 :: 		break;
; hiOrder end address is: 24 (R6)
IT	AL
BAL	L_GetActiveObjectByXY264
;TJ_GUI14e_v_1_1_driver.c,1826 :: 		if ((pEveGauge->Left <= X) && (pEveGauge->Left+pEveGauge->Radius*2-1 >= X) &&
L__GetActiveObjectByXY432:
; ptrO start address is: 32 (R8)
; i start address is: 24 (R6)
; hiOrder start address is: 20 (R5)
L__GetActiveObjectByXY431:
;TJ_GUI14e_v_1_1_driver.c,1827 :: 		(pEveGauge->Top  <= Y) && (pEveGauge->Top+pEveGauge->Radius*2-1 >= Y)) {
L__GetActiveObjectByXY430:
L__GetActiveObjectByXY429:
;TJ_GUI14e_v_1_1_driver.c,1839 :: 		}
L_GetActiveObjectByXY266:
;TJ_GUI14e_v_1_1_driver.c,1840 :: 		ptrO--;
SUB	R8, R8, #4
;TJ_GUI14e_v_1_1_driver.c,1841 :: 		}
; hiOrder end address is: 20 (R5)
; i end address is: 24 (R6)
; ptrO end address is: 32 (R8)
IT	AL
BAL	L_GetActiveObjectByXY263
L__GetActiveObjectByXY444:
;TJ_GUI14e_v_1_1_driver.c,1820 :: 		while (i--) {
SXTH	R6, R5
;TJ_GUI14e_v_1_1_driver.c,1841 :: 		}
L_GetActiveObjectByXY264:
;TJ_GUI14e_v_1_1_driver.c,1844 :: 		i    = CurrentScreen->EveButtonsCount;
; hiOrder start address is: 24 (R6)
MOVW	R4, #lo_addr(_CurrentScreen+0)
MOVT	R4, #hi_addr(_CurrentScreen+0)
LDR	R3, [R4, #0]
ADDS	R3, #80
LDRB	R5, [R3, #0]
; i start address is: 28 (R7)
UXTB	R7, R5
;TJ_GUI14e_v_1_1_driver.c,1845 :: 		ptrO = CurrentScreen->EveButtons+CurrentScreen->EveButtonsCount-1;
MOV	R3, R4
LDR	R3, [R3, #0]
ADDS	R3, #84
LDR	R4, [R3, #0]
LSLS	R3, R5, #2
ADD	R8, R4, R3, LSL #0
SUB	R8, R8, #4
; ptrO start address is: 32 (R8)
; X end address is: 0 (R0)
; AObjInfo end address is: 8 (R2)
; hiOrder end address is: 24 (R6)
; i end address is: 28 (R7)
; Y end address is: 4 (R1)
; ptrO end address is: 32 (R8)
STR	R2, [SP, #4]
SXTH	R2, R0
SXTH	R5, R6
UXTB	R6, R7
LDR	R0, [SP, #4]
;TJ_GUI14e_v_1_1_driver.c,1846 :: 		while (i--) {
L_GetActiveObjectByXY271:
; ptrO start address is: 32 (R8)
; i start address is: 24 (R6)
; hiOrder start address is: 20 (R5)
; i start address is: 24 (R6)
; hiOrder start address is: 20 (R5)
; hiOrder end address is: 20 (R5)
; AObjInfo start address is: 0 (R0)
; Y start address is: 4 (R1)
; X start address is: 8 (R2)
UXTB	R4, R6
SUBS	R3, R6, #1
UXTB	R6, R3
; i end address is: 24 (R6)
CMP	R4, #0
IT	EQ
BEQ	L_GetActiveObjectByXY272
; hiOrder end address is: 20 (R5)
; i end address is: 24 (R6)
;TJ_GUI14e_v_1_1_driver.c,1847 :: 		pEveButton = (TEveButton *)(*ptrO);
; i start address is: 24 (R6)
; hiOrder start address is: 20 (R5)
LDR	R3, [R8, #0]
; pEveButton start address is: 28 (R7)
MOV	R7, R3
;TJ_GUI14e_v_1_1_driver.c,1848 :: 		if (pEveButton->Order < hiOrder)
ADDS	R3, R3, #4
LDRB	R3, [R3, #0]
CMP	R3, R5
IT	GE
BGE	L_GetActiveObjectByXY273
; hiOrder end address is: 20 (R5)
; i end address is: 24 (R6)
; pEveButton end address is: 28 (R7)
; ptrO end address is: 32 (R8)
;TJ_GUI14e_v_1_1_driver.c,1849 :: 		break;
IT	AL
BAL	L_GetActiveObjectByXY272
L_GetActiveObjectByXY273:
;TJ_GUI14e_v_1_1_driver.c,1850 :: 		if (pEveButton->Active) {
; ptrO start address is: 32 (R8)
; pEveButton start address is: 28 (R7)
; i start address is: 24 (R6)
; hiOrder start address is: 20 (R5)
ADDW	R3, R7, #53
LDRB	R3, [R3, #0]
CMP	R3, #0
IT	EQ
BEQ	L_GetActiveObjectByXY274
;TJ_GUI14e_v_1_1_driver.c,1851 :: 		if ((pEveButton->Left <= X) && (pEveButton->Left+pEveButton->Width-1 >= X) &&
ADDW	R3, R7, #8
LDRSH	R3, [R3, #0]
CMP	R3, R2
IT	GT
BGT	L__GetActiveObjectByXY438
ADDW	R3, R7, #8
LDRSH	R4, [R3, #0]
ADDW	R3, R7, #12
LDRSH	R3, [R3, #0]
ADDS	R3, R4, R3
SXTH	R3, R3
SUBS	R3, R3, #1
SXTH	R3, R3
CMP	R3, R2
IT	LT
BLT	L__GetActiveObjectByXY437
;TJ_GUI14e_v_1_1_driver.c,1852 :: 		(pEveButton->Top  <= Y) && (pEveButton->Top+pEveButton->Height-1 >= Y)) {
ADDW	R3, R7, #10
LDRSH	R3, [R3, #0]
CMP	R3, R1
IT	GT
BGT	L__GetActiveObjectByXY436
ADDW	R3, R7, #10
LDRSH	R4, [R3, #0]
ADDW	R3, R7, #14
LDRSH	R3, [R3, #0]
ADDS	R3, R4, R3
SXTH	R3, R3
SUBS	R3, R3, #1
SXTH	R3, R3
CMP	R3, R1
IT	LT
BLT	L__GetActiveObjectByXY435
; hiOrder end address is: 20 (R5)
; i end address is: 24 (R6)
; ptrO end address is: 32 (R8)
L__GetActiveObjectByXY402:
;TJ_GUI14e_v_1_1_driver.c,1853 :: 		AObjInfo->Obj   = (void *)pEveButton;
STR	R7, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,1854 :: 		AObjInfo->Type  = VTFT_OT_EVEBUTTON;
ADDS	R4, R0, #4
MOVS	R3, #36
STRB	R3, [R4, #0]
;TJ_GUI14e_v_1_1_driver.c,1855 :: 		AObjInfo->Order = pEveButton->Order;
ADDS	R4, R0, #5
ADDS	R3, R7, #4
LDRB	R3, [R3, #0]
STRB	R3, [R4, #0]
;TJ_GUI14e_v_1_1_driver.c,1856 :: 		AObjInfo->Flags = VTFT_INT_BRING_TO_FRONT;
ADDS	R4, R0, #6
MOVS	R3, #4
STRB	R3, [R4, #0]
;TJ_GUI14e_v_1_1_driver.c,1857 :: 		if ((pEveButton->Press_Color != pEveButton->Color) ||
ADDW	R3, R7, #20
LDR	R4, [R3, #0]
ADDW	R3, R7, #16
LDR	R3, [R3, #0]
;TJ_GUI14e_v_1_1_driver.c,1858 :: 		(pEveButton->Press_ColorTo != pEveButton->ColorTo))
CMP	R4, R3
IT	NE
BNE	L__GetActiveObjectByXY434
ADDW	R3, R7, #28
LDR	R4, [R3, #0]
ADDW	R3, R7, #24
; pEveButton end address is: 28 (R7)
LDR	R3, [R3, #0]
CMP	R4, R3
IT	NE
BNE	L__GetActiveObjectByXY433
IT	AL
BAL	L_GetActiveObjectByXY280
L__GetActiveObjectByXY434:
L__GetActiveObjectByXY433:
;TJ_GUI14e_v_1_1_driver.c,1859 :: 		AObjInfo->Flags |= VTFT_INT_REPAINT_ON_DOWN | VTFT_INT_REPAINT_ON_UP;
ADDS	R4, R0, #6
LDRB	R3, [R4, #0]
ORR	R3, R3, #3
STRB	R3, [R4, #0]
L_GetActiveObjectByXY280:
;TJ_GUI14e_v_1_1_driver.c,1863 :: 		break;
IT	AL
BAL	L_GetActiveObjectByXY272
;TJ_GUI14e_v_1_1_driver.c,1851 :: 		if ((pEveButton->Left <= X) && (pEveButton->Left+pEveButton->Width-1 >= X) &&
L__GetActiveObjectByXY438:
; ptrO start address is: 32 (R8)
; i start address is: 24 (R6)
; hiOrder start address is: 20 (R5)
L__GetActiveObjectByXY437:
;TJ_GUI14e_v_1_1_driver.c,1852 :: 		(pEveButton->Top  <= Y) && (pEveButton->Top+pEveButton->Height-1 >= Y)) {
L__GetActiveObjectByXY436:
L__GetActiveObjectByXY435:
;TJ_GUI14e_v_1_1_driver.c,1865 :: 		}
L_GetActiveObjectByXY274:
;TJ_GUI14e_v_1_1_driver.c,1866 :: 		ptrO--;
SUB	R8, R8, #4
;TJ_GUI14e_v_1_1_driver.c,1867 :: 		}
; hiOrder end address is: 20 (R5)
; i end address is: 24 (R6)
; ptrO end address is: 32 (R8)
IT	AL
BAL	L_GetActiveObjectByXY271
L_GetActiveObjectByXY272:
;TJ_GUI14e_v_1_1_driver.c,1869 :: 		if (AObjInfo->Obj) {
LDR	R3, [R0, #0]
CMP	R3, #0
IT	EQ
BEQ	L_GetActiveObjectByXY281
;TJ_GUI14e_v_1_1_driver.c,1870 :: 		AObjInfo->HitX = X;
ADDW	R3, R0, #8
STRH	R2, [R3, #0]
; X end address is: 8 (R2)
;TJ_GUI14e_v_1_1_driver.c,1871 :: 		AObjInfo->HitY = Y;
ADDW	R3, R0, #10
; AObjInfo end address is: 0 (R0)
STRH	R1, [R3, #0]
; Y end address is: 4 (R1)
;TJ_GUI14e_v_1_1_driver.c,1872 :: 		return 1;
MOVS	R0, #1
IT	AL
BAL	L_end_GetActiveObjectByXY
;TJ_GUI14e_v_1_1_driver.c,1873 :: 		}
L_GetActiveObjectByXY281:
;TJ_GUI14e_v_1_1_driver.c,1875 :: 		return 0;
MOVS	R0, #0
;TJ_GUI14e_v_1_1_driver.c,1877 :: 		}
L_end_GetActiveObjectByXY:
LDR	LR, [SP, #0]
ADD	SP, SP, #12
BX	LR
; end of _GetActiveObjectByXY
_GetActiveObjectByTag:
;TJ_GUI14e_v_1_1_driver.c,1879 :: 		char GetActiveObjectByTag(char ATag, TObjInfo *AObjInfo) {
; AObjInfo start address is: 4 (R1)
; ATag start address is: 0 (R0)
SUB	SP, SP, #8
STR	LR, [SP, #0]
UXTB	R7, R0
MOV	R6, R1
; AObjInfo end address is: 4 (R1)
; ATag end address is: 0 (R0)
; ATag start address is: 28 (R7)
; AObjInfo start address is: 24 (R6)
;TJ_GUI14e_v_1_1_driver.c,1892 :: 		memset(AObjInfo, 0, sizeof(TObjInfo));
MOVS	R2, #12
SXTH	R2, R2
MOVS	R1, #0
MOV	R0, R6
BL	_memset+0
;TJ_GUI14e_v_1_1_driver.c,1897 :: 		i    = CurrentScreen->Buttons_RoundCount;
MOVW	R3, #lo_addr(_CurrentScreen+0)
MOVT	R3, #hi_addr(_CurrentScreen+0)
LDR	R2, [R3, #0]
ADDS	R2, #9
LDRB	R4, [R2, #0]
; i start address is: 0 (R0)
UXTB	R0, R4
;TJ_GUI14e_v_1_1_driver.c,1898 :: 		ptrO = CurrentScreen->Buttons_Round+CurrentScreen->Buttons_RoundCount-1;
MOV	R2, R3
LDR	R2, [R2, #0]
ADDS	R2, #12
LDR	R3, [R2, #0]
LSLS	R2, R4, #2
ADDS	R4, R3, R2
SUBS	R4, R4, #4
; ptrO start address is: 16 (R4)
; ATag end address is: 28 (R7)
; AObjInfo end address is: 24 (R6)
; i end address is: 0 (R0)
; ptrO end address is: 16 (R4)
UXTB	R1, R7
UXTB	R5, R0
MOV	R0, R6
;TJ_GUI14e_v_1_1_driver.c,1899 :: 		while (i--) {
L_GetActiveObjectByTag283:
; i start address is: 20 (R5)
; ptrO start address is: 16 (R4)
; i start address is: 20 (R5)
; AObjInfo start address is: 0 (R0)
; ATag start address is: 4 (R1)
UXTB	R3, R5
SUBS	R5, R5, #1
UXTB	R5, R5
; i end address is: 20 (R5)
CMP	R3, #0
IT	EQ
BEQ	L_GetActiveObjectByTag284
; i end address is: 20 (R5)
;TJ_GUI14e_v_1_1_driver.c,1900 :: 		pButtonRound = (TButton_Round *)(*ptrO);
; i start address is: 20 (R5)
LDR	R2, [R4, #0]
; pButtonRound start address is: 24 (R6)
MOV	R6, R2
;TJ_GUI14e_v_1_1_driver.c,1901 :: 		if (pButtonRound->Tag == ATag) {
ADDS	R2, R2, #7
LDRB	R2, [R2, #0]
CMP	R2, R1
IT	NE
BNE	L_GetActiveObjectByTag285
; ptrO end address is: 16 (R4)
; i end address is: 20 (R5)
;TJ_GUI14e_v_1_1_driver.c,1902 :: 		if (pButtonRound->Active) {
ADDW	R2, R6, #57
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_GetActiveObjectByTag286
;TJ_GUI14e_v_1_1_driver.c,1903 :: 		AObjInfo->Obj   = (void *)pButtonRound;
STR	R6, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,1904 :: 		AObjInfo->Type  = VTFT_OT_BUTTONROUND;
ADDS	R3, R0, #4
MOVS	R2, #2
STRB	R2, [R3, #0]
;TJ_GUI14e_v_1_1_driver.c,1905 :: 		AObjInfo->Order = pButtonRound->Order;
ADDS	R3, R0, #5
ADDS	R2, R6, #4
LDRB	R2, [R2, #0]
STRB	R2, [R3, #0]
;TJ_GUI14e_v_1_1_driver.c,1906 :: 		AObjInfo->Flags = VTFT_INT_BRING_TO_FRONT;
ADDS	R3, R0, #6
MOVS	R2, #4
STRB	R2, [R3, #0]
;TJ_GUI14e_v_1_1_driver.c,1907 :: 		if (pButtonRound->Press_Color != pButtonRound->Color)
ADDW	R2, R6, #28
LDR	R3, [R2, #0]
ADDW	R2, R6, #24
; pButtonRound end address is: 24 (R6)
LDR	R2, [R2, #0]
CMP	R3, R2
IT	EQ
BEQ	L_GetActiveObjectByTag287
;TJ_GUI14e_v_1_1_driver.c,1908 :: 		AObjInfo->Flags |= VTFT_INT_REPAINT_ON_DOWN | VTFT_INT_REPAINT_ON_UP;
ADDS	R3, R0, #6
LDRB	R2, [R3, #0]
ORR	R2, R2, #3
STRB	R2, [R3, #0]
L_GetActiveObjectByTag287:
;TJ_GUI14e_v_1_1_driver.c,1910 :: 		}
L_GetActiveObjectByTag286:
;TJ_GUI14e_v_1_1_driver.c,1911 :: 		break;
IT	AL
BAL	L_GetActiveObjectByTag284
;TJ_GUI14e_v_1_1_driver.c,1912 :: 		}
L_GetActiveObjectByTag285:
;TJ_GUI14e_v_1_1_driver.c,1913 :: 		ptrO--;
; i start address is: 20 (R5)
; ptrO start address is: 16 (R4)
SUBS	R4, R4, #4
;TJ_GUI14e_v_1_1_driver.c,1914 :: 		}
; ptrO end address is: 16 (R4)
; i end address is: 20 (R5)
IT	AL
BAL	L_GetActiveObjectByTag283
L_GetActiveObjectByTag284:
;TJ_GUI14e_v_1_1_driver.c,1917 :: 		i    = CurrentScreen->LabelsCount;
MOVW	R3, #lo_addr(_CurrentScreen+0)
MOVT	R3, #hi_addr(_CurrentScreen+0)
LDR	R2, [R3, #0]
ADDS	R2, #16
LDRB	R4, [R2, #0]
; i start address is: 20 (R5)
UXTB	R5, R4
;TJ_GUI14e_v_1_1_driver.c,1918 :: 		ptrO = CurrentScreen->Labels+CurrentScreen->LabelsCount-1;
MOV	R2, R3
LDR	R2, [R2, #0]
ADDS	R2, #20
LDR	R3, [R2, #0]
LSLS	R2, R4, #2
ADDS	R6, R3, R2
SUBS	R6, R6, #4
; ptrO start address is: 24 (R6)
; i end address is: 20 (R5)
; AObjInfo end address is: 0 (R0)
; ATag end address is: 4 (R1)
; ptrO end address is: 24 (R6)
STRB	R1, [SP, #4]
MOV	R1, R0
UXTB	R4, R5
LDRB	R0, [SP, #4]
;TJ_GUI14e_v_1_1_driver.c,1919 :: 		while (i--) {
L_GetActiveObjectByTag288:
; ptrO start address is: 24 (R6)
; i start address is: 16 (R4)
; i start address is: 16 (R4)
; ATag start address is: 0 (R0)
; AObjInfo start address is: 4 (R1)
UXTB	R3, R4
SUBS	R4, R4, #1
UXTB	R4, R4
; i end address is: 16 (R4)
CMP	R3, #0
IT	EQ
BEQ	L_GetActiveObjectByTag289
; i end address is: 16 (R4)
;TJ_GUI14e_v_1_1_driver.c,1920 :: 		pLabel = (TLabel *)(*ptrO);
; i start address is: 16 (R4)
LDR	R2, [R6, #0]
; pLabel start address is: 20 (R5)
MOV	R5, R2
;TJ_GUI14e_v_1_1_driver.c,1921 :: 		if (pLabel->Tag == ATag) {
ADDS	R2, R2, #7
LDRB	R2, [R2, #0]
CMP	R2, R0
IT	NE
BNE	L_GetActiveObjectByTag290
; i end address is: 16 (R4)
; ptrO end address is: 24 (R6)
;TJ_GUI14e_v_1_1_driver.c,1922 :: 		if (pLabel->Active) {
ADDW	R2, R5, #36
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_GetActiveObjectByTag291
;TJ_GUI14e_v_1_1_driver.c,1923 :: 		AObjInfo->Obj   = (void *)pLabel;
STR	R5, [R1, #0]
;TJ_GUI14e_v_1_1_driver.c,1924 :: 		AObjInfo->Type  = VTFT_OT_LABEL;
ADDS	R3, R1, #4
MOVS	R2, #4
STRB	R2, [R3, #0]
;TJ_GUI14e_v_1_1_driver.c,1925 :: 		AObjInfo->Order = pLabel->Order;
ADDS	R3, R1, #5
ADDS	R2, R5, #4
; pLabel end address is: 20 (R5)
LDRB	R2, [R2, #0]
STRB	R2, [R3, #0]
;TJ_GUI14e_v_1_1_driver.c,1926 :: 		AObjInfo->Flags = VTFT_INT_BRING_TO_FRONT;
ADDS	R3, R1, #6
MOVS	R2, #4
STRB	R2, [R3, #0]
;TJ_GUI14e_v_1_1_driver.c,1927 :: 		}
L_GetActiveObjectByTag291:
;TJ_GUI14e_v_1_1_driver.c,1928 :: 		break;
IT	AL
BAL	L_GetActiveObjectByTag289
;TJ_GUI14e_v_1_1_driver.c,1929 :: 		}
L_GetActiveObjectByTag290:
;TJ_GUI14e_v_1_1_driver.c,1930 :: 		ptrO--;
; ptrO start address is: 24 (R6)
; i start address is: 16 (R4)
SUBS	R6, R6, #4
;TJ_GUI14e_v_1_1_driver.c,1931 :: 		}
; i end address is: 16 (R4)
; ptrO end address is: 24 (R6)
IT	AL
BAL	L_GetActiveObjectByTag288
L_GetActiveObjectByTag289:
;TJ_GUI14e_v_1_1_driver.c,1934 :: 		i    = CurrentScreen->ImagesCount;
MOVW	R3, #lo_addr(_CurrentScreen+0)
MOVT	R3, #hi_addr(_CurrentScreen+0)
LDR	R2, [R3, #0]
ADDS	R2, #24
LDRB	R4, [R2, #0]
; i start address is: 20 (R5)
UXTB	R5, R4
;TJ_GUI14e_v_1_1_driver.c,1935 :: 		ptrO = CurrentScreen->Images+CurrentScreen->ImagesCount-1;
MOV	R2, R3
LDR	R2, [R2, #0]
ADDS	R2, #28
LDR	R3, [R2, #0]
LSLS	R2, R4, #2
ADDS	R6, R3, R2
SUBS	R6, R6, #4
; ptrO start address is: 24 (R6)
; ATag end address is: 0 (R0)
; AObjInfo end address is: 4 (R1)
; i end address is: 20 (R5)
; ptrO end address is: 24 (R6)
STR	R1, [SP, #4]
UXTB	R1, R0
UXTB	R4, R5
LDR	R0, [SP, #4]
;TJ_GUI14e_v_1_1_driver.c,1936 :: 		while (i--) {
L_GetActiveObjectByTag292:
; ptrO start address is: 24 (R6)
; i start address is: 16 (R4)
; i start address is: 16 (R4)
; AObjInfo start address is: 0 (R0)
; ATag start address is: 4 (R1)
UXTB	R3, R4
SUBS	R4, R4, #1
UXTB	R4, R4
; i end address is: 16 (R4)
CMP	R3, #0
IT	EQ
BEQ	L_GetActiveObjectByTag293
; i end address is: 16 (R4)
;TJ_GUI14e_v_1_1_driver.c,1937 :: 		pImage = (TImage *)(*ptrO);
; i start address is: 16 (R4)
LDR	R2, [R6, #0]
; pImage start address is: 20 (R5)
MOV	R5, R2
;TJ_GUI14e_v_1_1_driver.c,1938 :: 		if (pImage->Tag == ATag) {
ADDS	R2, R2, #7
LDRB	R2, [R2, #0]
CMP	R2, R1
IT	NE
BNE	L_GetActiveObjectByTag294
; i end address is: 16 (R4)
; ptrO end address is: 24 (R6)
;TJ_GUI14e_v_1_1_driver.c,1939 :: 		if (pImage->Active) {
ADDW	R2, R5, #48
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_GetActiveObjectByTag295
;TJ_GUI14e_v_1_1_driver.c,1940 :: 		AObjInfo->Obj   = (void *)pImage;
STR	R5, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,1941 :: 		AObjInfo->Type  = VTFT_OT_IMAGE;
ADDS	R3, R0, #4
MOVS	R2, #6
STRB	R2, [R3, #0]
;TJ_GUI14e_v_1_1_driver.c,1942 :: 		AObjInfo->Order = pImage->Order;
ADDS	R3, R0, #5
ADDS	R2, R5, #4
; pImage end address is: 20 (R5)
LDRB	R2, [R2, #0]
STRB	R2, [R3, #0]
;TJ_GUI14e_v_1_1_driver.c,1943 :: 		AObjInfo->Flags = VTFT_INT_BRING_TO_FRONT;
ADDS	R3, R0, #6
MOVS	R2, #4
STRB	R2, [R3, #0]
;TJ_GUI14e_v_1_1_driver.c,1944 :: 		}
L_GetActiveObjectByTag295:
;TJ_GUI14e_v_1_1_driver.c,1945 :: 		break;
IT	AL
BAL	L_GetActiveObjectByTag293
;TJ_GUI14e_v_1_1_driver.c,1946 :: 		}
L_GetActiveObjectByTag294:
;TJ_GUI14e_v_1_1_driver.c,1947 :: 		ptrO--;
; ptrO start address is: 24 (R6)
; i start address is: 16 (R4)
SUBS	R6, R6, #4
;TJ_GUI14e_v_1_1_driver.c,1948 :: 		}
; i end address is: 16 (R4)
; ptrO end address is: 24 (R6)
IT	AL
BAL	L_GetActiveObjectByTag292
L_GetActiveObjectByTag293:
;TJ_GUI14e_v_1_1_driver.c,1951 :: 		i    = CurrentScreen->CirclesCount;
MOVW	R3, #lo_addr(_CurrentScreen+0)
MOVT	R3, #hi_addr(_CurrentScreen+0)
LDR	R2, [R3, #0]
ADDS	R2, #32
LDRB	R4, [R2, #0]
; i start address is: 20 (R5)
UXTB	R5, R4
;TJ_GUI14e_v_1_1_driver.c,1952 :: 		ptrO = CurrentScreen->Circles+CurrentScreen->CirclesCount-1;
MOV	R2, R3
LDR	R2, [R2, #0]
ADDS	R2, #36
LDR	R3, [R2, #0]
LSLS	R2, R4, #2
ADDS	R6, R3, R2
SUBS	R6, R6, #4
; ptrO start address is: 24 (R6)
; i end address is: 20 (R5)
; AObjInfo end address is: 0 (R0)
; ATag end address is: 4 (R1)
; ptrO end address is: 24 (R6)
STRB	R1, [SP, #4]
MOV	R1, R0
UXTB	R4, R5
LDRB	R0, [SP, #4]
;TJ_GUI14e_v_1_1_driver.c,1953 :: 		while (i--) {
L_GetActiveObjectByTag296:
; ptrO start address is: 24 (R6)
; i start address is: 16 (R4)
; i start address is: 16 (R4)
; ATag start address is: 0 (R0)
; AObjInfo start address is: 4 (R1)
UXTB	R3, R4
SUBS	R4, R4, #1
UXTB	R4, R4
; i end address is: 16 (R4)
CMP	R3, #0
IT	EQ
BEQ	L_GetActiveObjectByTag297
; i end address is: 16 (R4)
;TJ_GUI14e_v_1_1_driver.c,1954 :: 		pCircle = (TCircle *)(*ptrO);
; i start address is: 16 (R4)
LDR	R2, [R6, #0]
; pCircle start address is: 20 (R5)
MOV	R5, R2
;TJ_GUI14e_v_1_1_driver.c,1955 :: 		if (pCircle->Tag == ATag) {
ADDS	R2, R2, #7
LDRB	R2, [R2, #0]
CMP	R2, R0
IT	NE
BNE	L_GetActiveObjectByTag298
; i end address is: 16 (R4)
; ptrO end address is: 24 (R6)
;TJ_GUI14e_v_1_1_driver.c,1956 :: 		if (pCircle->Active) {
ADDW	R2, R5, #28
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_GetActiveObjectByTag299
;TJ_GUI14e_v_1_1_driver.c,1957 :: 		AObjInfo->Obj   = (void *)pCircle;
STR	R5, [R1, #0]
;TJ_GUI14e_v_1_1_driver.c,1958 :: 		AObjInfo->Type  = VTFT_OT_CIRCLE;
ADDS	R3, R1, #4
MOVS	R2, #8
STRB	R2, [R3, #0]
;TJ_GUI14e_v_1_1_driver.c,1959 :: 		AObjInfo->Order = pCircle->Order;
ADDS	R3, R1, #5
ADDS	R2, R5, #4
LDRB	R2, [R2, #0]
STRB	R2, [R3, #0]
;TJ_GUI14e_v_1_1_driver.c,1960 :: 		AObjInfo->Flags = VTFT_INT_BRING_TO_FRONT;
ADDS	R3, R1, #6
MOVS	R2, #4
STRB	R2, [R3, #0]
;TJ_GUI14e_v_1_1_driver.c,1961 :: 		if (pCircle->Press_Color != pCircle->Color)
ADDW	R2, R5, #24
LDR	R3, [R2, #0]
ADDW	R2, R5, #20
; pCircle end address is: 20 (R5)
LDR	R2, [R2, #0]
CMP	R3, R2
IT	EQ
BEQ	L_GetActiveObjectByTag300
;TJ_GUI14e_v_1_1_driver.c,1962 :: 		AObjInfo->Flags |= VTFT_INT_REPAINT_ON_DOWN | VTFT_INT_REPAINT_ON_UP;
ADDS	R3, R1, #6
LDRB	R2, [R3, #0]
ORR	R2, R2, #3
STRB	R2, [R3, #0]
L_GetActiveObjectByTag300:
;TJ_GUI14e_v_1_1_driver.c,1964 :: 		}
L_GetActiveObjectByTag299:
;TJ_GUI14e_v_1_1_driver.c,1965 :: 		break;
IT	AL
BAL	L_GetActiveObjectByTag297
;TJ_GUI14e_v_1_1_driver.c,1966 :: 		}
L_GetActiveObjectByTag298:
;TJ_GUI14e_v_1_1_driver.c,1967 :: 		ptrO--;
; ptrO start address is: 24 (R6)
; i start address is: 16 (R4)
SUBS	R6, R6, #4
;TJ_GUI14e_v_1_1_driver.c,1968 :: 		}
; i end address is: 16 (R4)
; ptrO end address is: 24 (R6)
IT	AL
BAL	L_GetActiveObjectByTag296
L_GetActiveObjectByTag297:
;TJ_GUI14e_v_1_1_driver.c,1971 :: 		i    = CurrentScreen->CircleButtonsCount;
MOVW	R3, #lo_addr(_CurrentScreen+0)
MOVT	R3, #hi_addr(_CurrentScreen+0)
LDR	R2, [R3, #0]
ADDS	R2, #40
LDRB	R4, [R2, #0]
; i start address is: 20 (R5)
UXTB	R5, R4
;TJ_GUI14e_v_1_1_driver.c,1972 :: 		ptrO = CurrentScreen->CircleButtons+CurrentScreen->CircleButtonsCount-1;
MOV	R2, R3
LDR	R2, [R2, #0]
ADDS	R2, #44
LDR	R3, [R2, #0]
LSLS	R2, R4, #2
ADDS	R6, R3, R2
SUBS	R6, R6, #4
; ptrO start address is: 24 (R6)
; ATag end address is: 0 (R0)
; AObjInfo end address is: 4 (R1)
; i end address is: 20 (R5)
; ptrO end address is: 24 (R6)
STR	R1, [SP, #4]
UXTB	R1, R0
UXTB	R4, R5
LDR	R0, [SP, #4]
;TJ_GUI14e_v_1_1_driver.c,1973 :: 		while (i--) {
L_GetActiveObjectByTag301:
; ptrO start address is: 24 (R6)
; i start address is: 16 (R4)
; i start address is: 16 (R4)
; AObjInfo start address is: 0 (R0)
; ATag start address is: 4 (R1)
UXTB	R3, R4
SUBS	R4, R4, #1
UXTB	R4, R4
; i end address is: 16 (R4)
CMP	R3, #0
IT	EQ
BEQ	L_GetActiveObjectByTag302
; i end address is: 16 (R4)
;TJ_GUI14e_v_1_1_driver.c,1974 :: 		pCircleButton = (TCircleButton *)(*ptrO);
; i start address is: 16 (R4)
LDR	R2, [R6, #0]
; pCircleButton start address is: 20 (R5)
MOV	R5, R2
;TJ_GUI14e_v_1_1_driver.c,1975 :: 		if (pCircleButton->Tag == ATag) {
ADDS	R2, R2, #7
LDRB	R2, [R2, #0]
CMP	R2, R1
IT	NE
BNE	L_GetActiveObjectByTag303
; i end address is: 16 (R4)
; ptrO end address is: 24 (R6)
;TJ_GUI14e_v_1_1_driver.c,1976 :: 		if (pCircleButton->Active) {
ADDW	R2, R5, #52
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_GetActiveObjectByTag304
;TJ_GUI14e_v_1_1_driver.c,1977 :: 		AObjInfo->Obj   = (void *)pCircleButton;
STR	R5, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,1978 :: 		AObjInfo->Type  = VTFT_OT_CIRCLEBUTTON;
ADDS	R3, R0, #4
MOVS	R2, #10
STRB	R2, [R3, #0]
;TJ_GUI14e_v_1_1_driver.c,1979 :: 		AObjInfo->Order = pCircleButton->Order;
ADDS	R3, R0, #5
ADDS	R2, R5, #4
LDRB	R2, [R2, #0]
STRB	R2, [R3, #0]
;TJ_GUI14e_v_1_1_driver.c,1980 :: 		AObjInfo->Flags = VTFT_INT_BRING_TO_FRONT;
ADDS	R3, R0, #6
MOVS	R2, #4
STRB	R2, [R3, #0]
;TJ_GUI14e_v_1_1_driver.c,1981 :: 		if (pCircleButton->Press_Color != pCircleButton->Color)
ADDW	R2, R5, #24
LDR	R3, [R2, #0]
ADDW	R2, R5, #20
; pCircleButton end address is: 20 (R5)
LDR	R2, [R2, #0]
CMP	R3, R2
IT	EQ
BEQ	L_GetActiveObjectByTag305
;TJ_GUI14e_v_1_1_driver.c,1982 :: 		AObjInfo->Flags |= VTFT_INT_REPAINT_ON_DOWN | VTFT_INT_REPAINT_ON_UP;
ADDS	R3, R0, #6
LDRB	R2, [R3, #0]
ORR	R2, R2, #3
STRB	R2, [R3, #0]
L_GetActiveObjectByTag305:
;TJ_GUI14e_v_1_1_driver.c,1984 :: 		}
L_GetActiveObjectByTag304:
;TJ_GUI14e_v_1_1_driver.c,1985 :: 		break;
IT	AL
BAL	L_GetActiveObjectByTag302
;TJ_GUI14e_v_1_1_driver.c,1986 :: 		}
L_GetActiveObjectByTag303:
;TJ_GUI14e_v_1_1_driver.c,1987 :: 		ptrO--;
; ptrO start address is: 24 (R6)
; i start address is: 16 (R4)
SUBS	R6, R6, #4
;TJ_GUI14e_v_1_1_driver.c,1988 :: 		}
; i end address is: 16 (R4)
; ptrO end address is: 24 (R6)
IT	AL
BAL	L_GetActiveObjectByTag301
L_GetActiveObjectByTag302:
;TJ_GUI14e_v_1_1_driver.c,1991 :: 		i    = CurrentScreen->EveGaugesCount;
MOVW	R3, #lo_addr(_CurrentScreen+0)
MOVT	R3, #hi_addr(_CurrentScreen+0)
LDR	R2, [R3, #0]
ADDS	R2, #64
LDRB	R4, [R2, #0]
; i start address is: 20 (R5)
UXTB	R5, R4
;TJ_GUI14e_v_1_1_driver.c,1992 :: 		ptrO = CurrentScreen->EveGauges+CurrentScreen->EveGaugesCount-1;
MOV	R2, R3
LDR	R2, [R2, #0]
ADDS	R2, #68
LDR	R3, [R2, #0]
LSLS	R2, R4, #2
ADDS	R6, R3, R2
SUBS	R6, R6, #4
; ptrO start address is: 24 (R6)
; i end address is: 20 (R5)
; AObjInfo end address is: 0 (R0)
; ATag end address is: 4 (R1)
; ptrO end address is: 24 (R6)
STRB	R1, [SP, #4]
MOV	R1, R0
UXTB	R4, R5
LDRB	R0, [SP, #4]
;TJ_GUI14e_v_1_1_driver.c,1993 :: 		while (i--) {
L_GetActiveObjectByTag306:
; ptrO start address is: 24 (R6)
; i start address is: 16 (R4)
; i start address is: 16 (R4)
; ATag start address is: 0 (R0)
; AObjInfo start address is: 4 (R1)
UXTB	R3, R4
SUBS	R4, R4, #1
UXTB	R4, R4
; i end address is: 16 (R4)
CMP	R3, #0
IT	EQ
BEQ	L_GetActiveObjectByTag307
; i end address is: 16 (R4)
;TJ_GUI14e_v_1_1_driver.c,1994 :: 		pEveGauge = (TEveGauge *)(*ptrO);
; i start address is: 16 (R4)
LDR	R2, [R6, #0]
; pEveGauge start address is: 20 (R5)
MOV	R5, R2
;TJ_GUI14e_v_1_1_driver.c,1995 :: 		if (pEveGauge->Tag == ATag) {
ADDS	R2, R2, #7
LDRB	R2, [R2, #0]
CMP	R2, R0
IT	NE
BNE	L_GetActiveObjectByTag308
; i end address is: 16 (R4)
; ptrO end address is: 24 (R6)
;TJ_GUI14e_v_1_1_driver.c,1996 :: 		if (pEveGauge->Active) {
ADDW	R2, R5, #38
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_GetActiveObjectByTag309
;TJ_GUI14e_v_1_1_driver.c,1997 :: 		AObjInfo->Obj   = (void *)pEveGauge;
STR	R5, [R1, #0]
;TJ_GUI14e_v_1_1_driver.c,1998 :: 		AObjInfo->Type  = VTFT_OT_EVEGAUGE;
ADDS	R3, R1, #4
MOVS	R2, #25
STRB	R2, [R3, #0]
;TJ_GUI14e_v_1_1_driver.c,1999 :: 		AObjInfo->Order = pEveGauge->Order;
ADDS	R3, R1, #5
ADDS	R2, R5, #4
LDRB	R2, [R2, #0]
STRB	R2, [R3, #0]
;TJ_GUI14e_v_1_1_driver.c,2000 :: 		AObjInfo->Flags = VTFT_INT_BRING_TO_FRONT;
ADDS	R3, R1, #6
MOVS	R2, #4
STRB	R2, [R3, #0]
;TJ_GUI14e_v_1_1_driver.c,2001 :: 		if (pEveGauge->Press_Color != pEveGauge->Color)
ADDW	R2, R5, #24
LDR	R3, [R2, #0]
ADDW	R2, R5, #20
; pEveGauge end address is: 20 (R5)
LDR	R2, [R2, #0]
CMP	R3, R2
IT	EQ
BEQ	L_GetActiveObjectByTag310
;TJ_GUI14e_v_1_1_driver.c,2002 :: 		AObjInfo->Flags |= VTFT_INT_REPAINT_ON_DOWN | VTFT_INT_REPAINT_ON_UP;
ADDS	R3, R1, #6
LDRB	R2, [R3, #0]
ORR	R2, R2, #3
STRB	R2, [R3, #0]
L_GetActiveObjectByTag310:
;TJ_GUI14e_v_1_1_driver.c,2004 :: 		}
L_GetActiveObjectByTag309:
;TJ_GUI14e_v_1_1_driver.c,2005 :: 		break;
IT	AL
BAL	L_GetActiveObjectByTag307
;TJ_GUI14e_v_1_1_driver.c,2006 :: 		}
L_GetActiveObjectByTag308:
;TJ_GUI14e_v_1_1_driver.c,2007 :: 		ptrO--;
; ptrO start address is: 24 (R6)
; i start address is: 16 (R4)
SUBS	R6, R6, #4
;TJ_GUI14e_v_1_1_driver.c,2008 :: 		}
; i end address is: 16 (R4)
; ptrO end address is: 24 (R6)
IT	AL
BAL	L_GetActiveObjectByTag306
L_GetActiveObjectByTag307:
;TJ_GUI14e_v_1_1_driver.c,2011 :: 		i    = CurrentScreen->EveButtonsCount;
MOVW	R3, #lo_addr(_CurrentScreen+0)
MOVT	R3, #hi_addr(_CurrentScreen+0)
LDR	R2, [R3, #0]
ADDS	R2, #80
LDRB	R4, [R2, #0]
; i start address is: 20 (R5)
UXTB	R5, R4
;TJ_GUI14e_v_1_1_driver.c,2012 :: 		ptrO = CurrentScreen->EveButtons+CurrentScreen->EveButtonsCount-1;
MOV	R2, R3
LDR	R2, [R2, #0]
ADDS	R2, #84
LDR	R3, [R2, #0]
LSLS	R2, R4, #2
ADDS	R6, R3, R2
SUBS	R6, R6, #4
; ptrO start address is: 24 (R6)
; ATag end address is: 0 (R0)
; AObjInfo end address is: 4 (R1)
; i end address is: 20 (R5)
; ptrO end address is: 24 (R6)
STR	R1, [SP, #4]
UXTB	R1, R0
UXTB	R4, R5
LDR	R0, [SP, #4]
;TJ_GUI14e_v_1_1_driver.c,2013 :: 		while (i--) {
L_GetActiveObjectByTag311:
; ptrO start address is: 24 (R6)
; i start address is: 16 (R4)
; i start address is: 16 (R4)
; AObjInfo start address is: 0 (R0)
; ATag start address is: 4 (R1)
UXTB	R3, R4
SUBS	R2, R4, #1
UXTB	R4, R2
; i end address is: 16 (R4)
CMP	R3, #0
IT	EQ
BEQ	L_GetActiveObjectByTag312
; i end address is: 16 (R4)
;TJ_GUI14e_v_1_1_driver.c,2014 :: 		pEveButton = (TEveButton *)(*ptrO);
; i start address is: 16 (R4)
LDR	R2, [R6, #0]
; pEveButton start address is: 20 (R5)
MOV	R5, R2
;TJ_GUI14e_v_1_1_driver.c,2015 :: 		if (pEveButton->Tag == ATag) {
ADDS	R2, R2, #7
LDRB	R2, [R2, #0]
CMP	R2, R1
IT	NE
BNE	L_GetActiveObjectByTag313
; i end address is: 16 (R4)
; ptrO end address is: 24 (R6)
;TJ_GUI14e_v_1_1_driver.c,2016 :: 		if (pEveButton->Active) {
ADDW	R2, R5, #53
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_GetActiveObjectByTag314
;TJ_GUI14e_v_1_1_driver.c,2017 :: 		AObjInfo->Obj   = (void *)pEveButton;
STR	R5, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2018 :: 		AObjInfo->Type  = VTFT_OT_EVEBUTTON;
ADDS	R3, R0, #4
MOVS	R2, #36
STRB	R2, [R3, #0]
;TJ_GUI14e_v_1_1_driver.c,2019 :: 		AObjInfo->Order = pEveButton->Order;
ADDS	R3, R0, #5
ADDS	R2, R5, #4
LDRB	R2, [R2, #0]
STRB	R2, [R3, #0]
;TJ_GUI14e_v_1_1_driver.c,2020 :: 		AObjInfo->Flags = VTFT_INT_BRING_TO_FRONT;
ADDS	R3, R0, #6
MOVS	R2, #4
STRB	R2, [R3, #0]
;TJ_GUI14e_v_1_1_driver.c,2021 :: 		if ((pEveButton->Press_Color != pEveButton->Color) ||
ADDW	R2, R5, #20
LDR	R3, [R2, #0]
ADDW	R2, R5, #16
LDR	R2, [R2, #0]
;TJ_GUI14e_v_1_1_driver.c,2022 :: 		(pEveButton->Press_ColorTo != pEveButton->ColorTo))
CMP	R3, R2
IT	NE
BNE	L__GetActiveObjectByTag447
ADDW	R2, R5, #28
LDR	R3, [R2, #0]
ADDW	R2, R5, #24
; pEveButton end address is: 20 (R5)
LDR	R2, [R2, #0]
CMP	R3, R2
IT	NE
BNE	L__GetActiveObjectByTag446
IT	AL
BAL	L_GetActiveObjectByTag317
L__GetActiveObjectByTag447:
L__GetActiveObjectByTag446:
;TJ_GUI14e_v_1_1_driver.c,2023 :: 		AObjInfo->Flags |= VTFT_INT_REPAINT_ON_DOWN | VTFT_INT_REPAINT_ON_UP;
ADDS	R3, R0, #6
LDRB	R2, [R3, #0]
ORR	R2, R2, #3
STRB	R2, [R3, #0]
L_GetActiveObjectByTag317:
;TJ_GUI14e_v_1_1_driver.c,2025 :: 		}
L_GetActiveObjectByTag314:
;TJ_GUI14e_v_1_1_driver.c,2026 :: 		break;
IT	AL
BAL	L_GetActiveObjectByTag312
;TJ_GUI14e_v_1_1_driver.c,2027 :: 		}
L_GetActiveObjectByTag313:
;TJ_GUI14e_v_1_1_driver.c,2028 :: 		ptrO--;
; ptrO start address is: 24 (R6)
; i start address is: 16 (R4)
SUBS	R6, R6, #4
;TJ_GUI14e_v_1_1_driver.c,2029 :: 		}
; i end address is: 16 (R4)
; ptrO end address is: 24 (R6)
IT	AL
BAL	L_GetActiveObjectByTag311
L_GetActiveObjectByTag312:
;TJ_GUI14e_v_1_1_driver.c,2031 :: 		if (AObjInfo->Obj) {
LDR	R2, [R0, #0]
CMP	R2, #0
IT	EQ
BEQ	L_GetActiveObjectByTag318
;TJ_GUI14e_v_1_1_driver.c,2032 :: 		AObjInfo->HitTag = ATag;
ADDS	R2, R0, #7
; AObjInfo end address is: 0 (R0)
STRB	R1, [R2, #0]
; ATag end address is: 4 (R1)
;TJ_GUI14e_v_1_1_driver.c,2033 :: 		return 1;
MOVS	R0, #1
IT	AL
BAL	L_end_GetActiveObjectByTag
;TJ_GUI14e_v_1_1_driver.c,2034 :: 		}
L_GetActiveObjectByTag318:
;TJ_GUI14e_v_1_1_driver.c,2036 :: 		return 0;
MOVS	R0, #0
;TJ_GUI14e_v_1_1_driver.c,2038 :: 		}
L_end_GetActiveObjectByTag:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of _GetActiveObjectByTag
TJ_GUI14e_v_1_1_driver_ProcessEvent:
;TJ_GUI14e_v_1_1_driver.c,2040 :: 		static void ProcessEvent(TEvent *pEvent) {
; pEvent start address is: 0 (R0)
SUB	SP, SP, #8
STR	LR, [SP, #0]
MOV	R5, R0
; pEvent end address is: 0 (R0)
; pEvent start address is: 20 (R5)
;TJ_GUI14e_v_1_1_driver.c,2041 :: 		if (pEvent) {
CMP	R5, #0
IT	EQ
BEQ	L_TJ_GUI14e_v_1_1_driver_ProcessEvent320
;TJ_GUI14e_v_1_1_driver.c,2042 :: 		if (pEvent->Sound.SndAct == VTFT_SNDACT_PLAY)
ADDS	R1, R5, #4
LDRB	R1, [R1, #0]
CMP	R1, #1
IT	NE
BNE	L_TJ_GUI14e_v_1_1_driver_ProcessEvent321
;TJ_GUI14e_v_1_1_driver.c,2043 :: 		FT812_Sound_SetAndPlay(pEvent->Sound.Effect, pEvent->Sound.Pitch, pEvent->Sound.Volume);
ADDS	R4, R5, #4
ADDS	R1, R4, #3
LDRB	R1, [R1, #0]
UXTB	R3, R1
ADDS	R1, R4, #2
LDRB	R1, [R1, #0]
UXTB	R2, R1
ADDS	R1, R4, #1
LDRB	R1, [R1, #0]
STR	R5, [SP, #4]
UXTB	R0, R1
UXTB	R1, R2
UXTB	R2, R3
BL	_FT812_Sound_SetAndPlay+0
LDR	R5, [SP, #4]
IT	AL
BAL	L_TJ_GUI14e_v_1_1_driver_ProcessEvent322
L_TJ_GUI14e_v_1_1_driver_ProcessEvent321:
;TJ_GUI14e_v_1_1_driver.c,2044 :: 		else if (pEvent->Sound.SndAct == VTFT_SNDACT_STOP)
ADDS	R4, R5, #4
LDRB	R4, [R4, #0]
CMP	R4, #2
IT	NE
BNE	L_TJ_GUI14e_v_1_1_driver_ProcessEvent323
;TJ_GUI14e_v_1_1_driver.c,2045 :: 		FT812_Sound_Stop();
STR	R5, [SP, #4]
BL	_FT812_Sound_Stop+0
LDR	R5, [SP, #4]
L_TJ_GUI14e_v_1_1_driver_ProcessEvent323:
L_TJ_GUI14e_v_1_1_driver_ProcessEvent322:
;TJ_GUI14e_v_1_1_driver.c,2046 :: 		if (pEvent->Action)
LDR	R4, [R5, #0]
CMP	R4, #0
IT	EQ
BEQ	L_TJ_GUI14e_v_1_1_driver_ProcessEvent324
;TJ_GUI14e_v_1_1_driver.c,2047 :: 		pEvent->Action();
LDR	R1, [R5, #0]
; pEvent end address is: 20 (R5)
BLX	R1
L_TJ_GUI14e_v_1_1_driver_ProcessEvent324:
;TJ_GUI14e_v_1_1_driver.c,2048 :: 		}
L_TJ_GUI14e_v_1_1_driver_ProcessEvent320:
;TJ_GUI14e_v_1_1_driver.c,2049 :: 		}
L_end_ProcessEvent:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of TJ_GUI14e_v_1_1_driver_ProcessEvent
TJ_GUI14e_v_1_1_driver_ProcessCEvent:
;TJ_GUI14e_v_1_1_driver.c,2051 :: 		static void ProcessCEvent(TCEvent *pEventC) {
; pEventC start address is: 0 (R0)
SUB	SP, SP, #8
STR	LR, [SP, #0]
MOV	R5, R0
; pEventC end address is: 0 (R0)
; pEventC start address is: 20 (R5)
;TJ_GUI14e_v_1_1_driver.c,2052 :: 		if (pEventC) {
CMP	R5, #0
IT	EQ
BEQ	L_TJ_GUI14e_v_1_1_driver_ProcessCEvent325
;TJ_GUI14e_v_1_1_driver.c,2053 :: 		if (pEventC->Sound.SndAct == VTFT_SNDACT_PLAY)
ADDS	R1, R5, #4
LDRB	R1, [R1, #0]
CMP	R1, #1
IT	NE
BNE	L_TJ_GUI14e_v_1_1_driver_ProcessCEvent326
;TJ_GUI14e_v_1_1_driver.c,2054 :: 		FT812_Sound_SetAndPlay(pEventC->Sound.Effect, pEventC->Sound.Pitch, pEventC->Sound.Volume);
ADDS	R4, R5, #4
ADDS	R1, R4, #3
LDRB	R1, [R1, #0]
UXTB	R3, R1
ADDS	R1, R4, #2
LDRB	R1, [R1, #0]
UXTB	R2, R1
ADDS	R1, R4, #1
LDRB	R1, [R1, #0]
STR	R5, [SP, #4]
UXTB	R0, R1
UXTB	R1, R2
UXTB	R2, R3
BL	_FT812_Sound_SetAndPlay+0
LDR	R5, [SP, #4]
IT	AL
BAL	L_TJ_GUI14e_v_1_1_driver_ProcessCEvent327
L_TJ_GUI14e_v_1_1_driver_ProcessCEvent326:
;TJ_GUI14e_v_1_1_driver.c,2055 :: 		else if (pEventC->Sound.SndAct == VTFT_SNDACT_STOP)
ADDS	R4, R5, #4
LDRB	R4, [R4, #0]
CMP	R4, #2
IT	NE
BNE	L_TJ_GUI14e_v_1_1_driver_ProcessCEvent328
;TJ_GUI14e_v_1_1_driver.c,2056 :: 		FT812_Sound_Stop();
STR	R5, [SP, #4]
BL	_FT812_Sound_Stop+0
LDR	R5, [SP, #4]
L_TJ_GUI14e_v_1_1_driver_ProcessCEvent328:
L_TJ_GUI14e_v_1_1_driver_ProcessCEvent327:
;TJ_GUI14e_v_1_1_driver.c,2057 :: 		if (pEventC->Action)
LDR	R4, [R5, #0]
CMP	R4, #0
IT	EQ
BEQ	L_TJ_GUI14e_v_1_1_driver_ProcessCEvent329
;TJ_GUI14e_v_1_1_driver.c,2058 :: 		pEventC->Action();
LDR	R1, [R5, #0]
; pEventC end address is: 20 (R5)
BLX	R1
L_TJ_GUI14e_v_1_1_driver_ProcessCEvent329:
;TJ_GUI14e_v_1_1_driver.c,2059 :: 		}
L_TJ_GUI14e_v_1_1_driver_ProcessCEvent325:
;TJ_GUI14e_v_1_1_driver.c,2060 :: 		}
L_end_ProcessCEvent:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of TJ_GUI14e_v_1_1_driver_ProcessCEvent
TJ_GUI14e_v_1_1_driver_OnEvent:
;TJ_GUI14e_v_1_1_driver.c,2062 :: 		static void OnEvent(TObjInfo *AObjInfo, char AEventType){
; AEventType start address is: 4 (R1)
; AObjInfo start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
; AEventType end address is: 4 (R1)
; AObjInfo end address is: 0 (R0)
; AObjInfo start address is: 0 (R0)
; AEventType start address is: 4 (R1)
;TJ_GUI14e_v_1_1_driver.c,2064 :: 		TEvent  *pEvent = 0;
; pEvent start address is: 12 (R3)
MOV	R3, #0
;TJ_GUI14e_v_1_1_driver.c,2066 :: 		switch (AObjInfo->Type) {
ADDS	R4, R0, #4
IT	AL
BAL	L_TJ_GUI14e_v_1_1_driver_OnEvent330
; pEvent end address is: 12 (R3)
;TJ_GUI14e_v_1_1_driver.c,2068 :: 		case VTFT_OT_BUTTONROUND: {
L_TJ_GUI14e_v_1_1_driver_OnEvent332:
;TJ_GUI14e_v_1_1_driver.c,2069 :: 		ppEvent = &(((TButton_Round *)AObjInfo->Obj)->OnUp);
LDR	R2, [R0, #0]
; AObjInfo end address is: 0 (R0)
ADDW	R3, R2, #60
;TJ_GUI14e_v_1_1_driver.c,2070 :: 		pEvent  = ppEvent[AEventType];
LSLS	R2, R1, #2
; AEventType end address is: 4 (R1)
ADDS	R2, R3, R2
LDR	R0, [R2, #0]
; pEvent start address is: 0 (R0)
;TJ_GUI14e_v_1_1_driver.c,2071 :: 		break;
; pEvent end address is: 0 (R0)
IT	AL
BAL	L_TJ_GUI14e_v_1_1_driver_OnEvent331
;TJ_GUI14e_v_1_1_driver.c,2074 :: 		case VTFT_OT_LABEL: {
L_TJ_GUI14e_v_1_1_driver_OnEvent333:
;TJ_GUI14e_v_1_1_driver.c,2075 :: 		ppEvent = &(((TLabel *)AObjInfo->Obj)->OnUp);
; AEventType start address is: 4 (R1)
; AObjInfo start address is: 0 (R0)
LDR	R2, [R0, #0]
; AObjInfo end address is: 0 (R0)
ADDW	R3, R2, #40
;TJ_GUI14e_v_1_1_driver.c,2076 :: 		pEvent  = ppEvent[AEventType];
LSLS	R2, R1, #2
; AEventType end address is: 4 (R1)
ADDS	R2, R3, R2
LDR	R0, [R2, #0]
; pEvent start address is: 0 (R0)
;TJ_GUI14e_v_1_1_driver.c,2077 :: 		break;
; pEvent end address is: 0 (R0)
IT	AL
BAL	L_TJ_GUI14e_v_1_1_driver_OnEvent331
;TJ_GUI14e_v_1_1_driver.c,2080 :: 		case VTFT_OT_IMAGE: {
L_TJ_GUI14e_v_1_1_driver_OnEvent334:
;TJ_GUI14e_v_1_1_driver.c,2081 :: 		ppEvent = &(((TImage *)AObjInfo->Obj)->OnUp);
; AEventType start address is: 4 (R1)
; AObjInfo start address is: 0 (R0)
LDR	R2, [R0, #0]
; AObjInfo end address is: 0 (R0)
ADDW	R3, R2, #52
;TJ_GUI14e_v_1_1_driver.c,2082 :: 		pEvent  = ppEvent[AEventType];
LSLS	R2, R1, #2
; AEventType end address is: 4 (R1)
ADDS	R2, R3, R2
LDR	R0, [R2, #0]
; pEvent start address is: 0 (R0)
;TJ_GUI14e_v_1_1_driver.c,2083 :: 		break;
; pEvent end address is: 0 (R0)
IT	AL
BAL	L_TJ_GUI14e_v_1_1_driver_OnEvent331
;TJ_GUI14e_v_1_1_driver.c,2086 :: 		case VTFT_OT_CIRCLE: {
L_TJ_GUI14e_v_1_1_driver_OnEvent335:
;TJ_GUI14e_v_1_1_driver.c,2087 :: 		ppEvent = &(((TCircle *)AObjInfo->Obj)->OnUp);
; AEventType start address is: 4 (R1)
; AObjInfo start address is: 0 (R0)
LDR	R2, [R0, #0]
; AObjInfo end address is: 0 (R0)
ADDW	R3, R2, #32
;TJ_GUI14e_v_1_1_driver.c,2088 :: 		pEvent  = ppEvent[AEventType];
LSLS	R2, R1, #2
; AEventType end address is: 4 (R1)
ADDS	R2, R3, R2
LDR	R0, [R2, #0]
; pEvent start address is: 0 (R0)
;TJ_GUI14e_v_1_1_driver.c,2089 :: 		break;
; pEvent end address is: 0 (R0)
IT	AL
BAL	L_TJ_GUI14e_v_1_1_driver_OnEvent331
;TJ_GUI14e_v_1_1_driver.c,2092 :: 		case VTFT_OT_CIRCLEBUTTON: {
L_TJ_GUI14e_v_1_1_driver_OnEvent336:
;TJ_GUI14e_v_1_1_driver.c,2093 :: 		ppEvent = &(((TCircleButton *)AObjInfo->Obj)->OnUp);
; AEventType start address is: 4 (R1)
; AObjInfo start address is: 0 (R0)
LDR	R2, [R0, #0]
; AObjInfo end address is: 0 (R0)
ADDW	R3, R2, #56
;TJ_GUI14e_v_1_1_driver.c,2094 :: 		pEvent  = ppEvent[AEventType];
LSLS	R2, R1, #2
; AEventType end address is: 4 (R1)
ADDS	R2, R3, R2
LDR	R0, [R2, #0]
; pEvent start address is: 0 (R0)
;TJ_GUI14e_v_1_1_driver.c,2095 :: 		break;
; pEvent end address is: 0 (R0)
IT	AL
BAL	L_TJ_GUI14e_v_1_1_driver_OnEvent331
;TJ_GUI14e_v_1_1_driver.c,2098 :: 		case VTFT_OT_EVEGAUGE: {
L_TJ_GUI14e_v_1_1_driver_OnEvent337:
;TJ_GUI14e_v_1_1_driver.c,2099 :: 		ppEvent = &(((TEveGauge *)AObjInfo->Obj)->OnUp);
; AEventType start address is: 4 (R1)
; AObjInfo start address is: 0 (R0)
LDR	R2, [R0, #0]
; AObjInfo end address is: 0 (R0)
ADDW	R3, R2, #40
;TJ_GUI14e_v_1_1_driver.c,2100 :: 		pEvent  = ppEvent[AEventType];
LSLS	R2, R1, #2
; AEventType end address is: 4 (R1)
ADDS	R2, R3, R2
LDR	R0, [R2, #0]
; pEvent start address is: 0 (R0)
;TJ_GUI14e_v_1_1_driver.c,2101 :: 		break;
; pEvent end address is: 0 (R0)
IT	AL
BAL	L_TJ_GUI14e_v_1_1_driver_OnEvent331
;TJ_GUI14e_v_1_1_driver.c,2104 :: 		case VTFT_OT_EVEBUTTON: {
L_TJ_GUI14e_v_1_1_driver_OnEvent338:
;TJ_GUI14e_v_1_1_driver.c,2105 :: 		ppEvent = &(((TEveButton *)AObjInfo->Obj)->OnUp);
; AEventType start address is: 4 (R1)
; AObjInfo start address is: 0 (R0)
LDR	R2, [R0, #0]
; AObjInfo end address is: 0 (R0)
ADDW	R3, R2, #56
;TJ_GUI14e_v_1_1_driver.c,2106 :: 		pEvent  = ppEvent[AEventType];
LSLS	R2, R1, #2
; AEventType end address is: 4 (R1)
ADDS	R2, R3, R2
LDR	R0, [R2, #0]
; pEvent start address is: 0 (R0)
;TJ_GUI14e_v_1_1_driver.c,2107 :: 		break;
; pEvent end address is: 0 (R0)
IT	AL
BAL	L_TJ_GUI14e_v_1_1_driver_OnEvent331
;TJ_GUI14e_v_1_1_driver.c,2109 :: 		} // end switch
L_TJ_GUI14e_v_1_1_driver_OnEvent330:
; pEvent start address is: 12 (R3)
; AEventType start address is: 4 (R1)
; AObjInfo start address is: 0 (R0)
LDRB	R2, [R4, #0]
CMP	R2, #2
IT	EQ
BEQ	L_TJ_GUI14e_v_1_1_driver_OnEvent332
LDRB	R2, [R4, #0]
CMP	R2, #4
IT	EQ
BEQ	L_TJ_GUI14e_v_1_1_driver_OnEvent333
LDRB	R2, [R4, #0]
CMP	R2, #6
IT	EQ
BEQ	L_TJ_GUI14e_v_1_1_driver_OnEvent334
LDRB	R2, [R4, #0]
CMP	R2, #8
IT	EQ
BEQ	L_TJ_GUI14e_v_1_1_driver_OnEvent335
LDRB	R2, [R4, #0]
CMP	R2, #10
IT	EQ
BEQ	L_TJ_GUI14e_v_1_1_driver_OnEvent336
LDRB	R2, [R4, #0]
CMP	R2, #25
IT	EQ
BEQ	L_TJ_GUI14e_v_1_1_driver_OnEvent337
LDRB	R2, [R4, #0]
CMP	R2, #36
IT	EQ
BEQ	L_TJ_GUI14e_v_1_1_driver_OnEvent338
; AObjInfo end address is: 0 (R0)
; AEventType end address is: 4 (R1)
; pEvent end address is: 12 (R3)
MOV	R0, R3
L_TJ_GUI14e_v_1_1_driver_OnEvent331:
;TJ_GUI14e_v_1_1_driver.c,2111 :: 		if (pEvent) {
; pEvent start address is: 0 (R0)
CMP	R0, #0
IT	EQ
BEQ	L_TJ_GUI14e_v_1_1_driver_OnEvent339
;TJ_GUI14e_v_1_1_driver.c,2112 :: 		ProcessEvent(pEvent);
; pEvent end address is: 0 (R0)
BL	TJ_GUI14e_v_1_1_driver_ProcessEvent+0
;TJ_GUI14e_v_1_1_driver.c,2113 :: 		}
L_TJ_GUI14e_v_1_1_driver_OnEvent339:
;TJ_GUI14e_v_1_1_driver.c,2114 :: 		}
L_end_OnEvent:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of TJ_GUI14e_v_1_1_driver_OnEvent
TJ_GUI14e_v_1_1_driver_Process_TP_Press:
;TJ_GUI14e_v_1_1_driver.c,2116 :: 		static void Process_TP_Press() {
SUB	SP, SP, #4
STR	LR, [SP, #0]
;TJ_GUI14e_v_1_1_driver.c,2118 :: 		if (CurrentScreen->Active)
MOVW	R0, #lo_addr(_CurrentScreen+0)
MOVT	R0, #hi_addr(_CurrentScreen+0)
LDR	R0, [R0, #0]
ADDS	R0, #92
LDRB	R0, [R0, #0]
CMP	R0, #0
IT	EQ
BEQ	L_TJ_GUI14e_v_1_1_driver_Process_TP_Press340
;TJ_GUI14e_v_1_1_driver.c,2119 :: 		if ((CurrentScreen->SniffObjectEvents) || (!TouchS.ActObjInfo.Obj))
MOVW	R0, #lo_addr(_CurrentScreen+0)
MOVT	R0, #hi_addr(_CurrentScreen+0)
LDR	R0, [R0, #0]
ADDS	R0, #100
LDRB	R0, [R0, #0]
CMP	R0, #0
IT	NE
BNE	L_TJ_GUI14e_v_1_1_driver_Process_TP_Press450
MOVW	R0, #lo_addr(_TouchS+8)
MOVT	R0, #hi_addr(_TouchS+8)
LDR	R0, [R0, #0]
CMP	R0, #0
IT	EQ
BEQ	L_TJ_GUI14e_v_1_1_driver_Process_TP_Press449
IT	AL
BAL	L_TJ_GUI14e_v_1_1_driver_Process_TP_Press343
L_TJ_GUI14e_v_1_1_driver_Process_TP_Press450:
L_TJ_GUI14e_v_1_1_driver_Process_TP_Press449:
;TJ_GUI14e_v_1_1_driver.c,2120 :: 		ProcessEvent(CurrentScreen->OnPress);
MOVW	R0, #lo_addr(_CurrentScreen+0)
MOVT	R0, #hi_addr(_CurrentScreen+0)
LDR	R0, [R0, #0]
ADDS	R0, #116
LDR	R0, [R0, #0]
BL	TJ_GUI14e_v_1_1_driver_ProcessEvent+0
L_TJ_GUI14e_v_1_1_driver_Process_TP_Press343:
L_TJ_GUI14e_v_1_1_driver_Process_TP_Press340:
;TJ_GUI14e_v_1_1_driver.c,2123 :: 		if (!TouchS.ActObjInfo.Obj)
MOVW	R0, #lo_addr(_TouchS+8)
MOVT	R0, #hi_addr(_TouchS+8)
LDR	R0, [R0, #0]
CMP	R0, #0
IT	NE
BNE	L_TJ_GUI14e_v_1_1_driver_Process_TP_Press344
;TJ_GUI14e_v_1_1_driver.c,2124 :: 		return;
IT	AL
BAL	L_end_Process_TP_Press
L_TJ_GUI14e_v_1_1_driver_Process_TP_Press344:
;TJ_GUI14e_v_1_1_driver.c,2126 :: 		OnEvent(&TouchS.ActObjInfo, VTFT_EVT_PRESS);
MOVS	R1, #3
MOVW	R0, #lo_addr(_TouchS+8)
MOVT	R0, #hi_addr(_TouchS+8)
BL	TJ_GUI14e_v_1_1_driver_OnEvent+0
;TJ_GUI14e_v_1_1_driver.c,2127 :: 		}
L_end_Process_TP_Press:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of TJ_GUI14e_v_1_1_driver_Process_TP_Press
TJ_GUI14e_v_1_1_driver_Process_TP_Up:
;TJ_GUI14e_v_1_1_driver.c,2129 :: 		static void Process_TP_Up() {
SUB	SP, SP, #20
STR	LR, [SP, #0]
;TJ_GUI14e_v_1_1_driver.c,2134 :: 		if (CurrentScreen->Active)
MOVW	R0, #lo_addr(_CurrentScreen+0)
MOVT	R0, #hi_addr(_CurrentScreen+0)
LDR	R0, [R0, #0]
ADDS	R0, #92
LDRB	R0, [R0, #0]
CMP	R0, #0
IT	EQ
BEQ	L_TJ_GUI14e_v_1_1_driver_Process_TP_Up345
;TJ_GUI14e_v_1_1_driver.c,2135 :: 		if ((CurrentScreen->SniffObjectEvents) || (!TouchS.ActObjInfo.Obj))
MOVW	R0, #lo_addr(_CurrentScreen+0)
MOVT	R0, #hi_addr(_CurrentScreen+0)
LDR	R0, [R0, #0]
ADDS	R0, #100
LDRB	R0, [R0, #0]
CMP	R0, #0
IT	NE
BNE	L_TJ_GUI14e_v_1_1_driver_Process_TP_Up453
MOVW	R0, #lo_addr(_TouchS+8)
MOVT	R0, #hi_addr(_TouchS+8)
LDR	R0, [R0, #0]
CMP	R0, #0
IT	EQ
BEQ	L_TJ_GUI14e_v_1_1_driver_Process_TP_Up452
IT	AL
BAL	L_TJ_GUI14e_v_1_1_driver_Process_TP_Up348
L_TJ_GUI14e_v_1_1_driver_Process_TP_Up453:
L_TJ_GUI14e_v_1_1_driver_Process_TP_Up452:
;TJ_GUI14e_v_1_1_driver.c,2136 :: 		ProcessEvent(CurrentScreen->OnUp);
MOVW	R0, #lo_addr(_CurrentScreen+0)
MOVT	R0, #hi_addr(_CurrentScreen+0)
LDR	R0, [R0, #0]
ADDS	R0, #104
LDR	R0, [R0, #0]
BL	TJ_GUI14e_v_1_1_driver_ProcessEvent+0
L_TJ_GUI14e_v_1_1_driver_Process_TP_Up348:
L_TJ_GUI14e_v_1_1_driver_Process_TP_Up345:
;TJ_GUI14e_v_1_1_driver.c,2138 :: 		actObj = TouchS.ActObjInfo;
MOV	R3, #12
ADD	R2, SP, #8
MOVW	R1, #lo_addr(_TouchS+8)
MOVT	R1, #hi_addr(_TouchS+8)
L_TJ_GUI14e_v_1_1_driver_Process_TP_Up349:
LDRB	R0, [R1, #0]
STRB	R0, [R2, #0]
SUBS	R3, R3, #1
ADDS	R1, R1, #1
ADDS	R2, R2, #1
CMP	R3, #0
IT	NE
BNE	L_TJ_GUI14e_v_1_1_driver_Process_TP_Up349
;TJ_GUI14e_v_1_1_driver.c,2140 :: 		memset(&TouchS.ActObjInfo, 0, sizeof(TObjInfo));
MOVS	R2, #12
SXTH	R2, R2
MOVS	R1, #0
MOVW	R0, #lo_addr(_TouchS+8)
MOVT	R0, #hi_addr(_TouchS+8)
BL	_memset+0
;TJ_GUI14e_v_1_1_driver.c,2143 :: 		if (!actObj.Obj)
LDR	R0, [SP, #8]
CMP	R0, #0
IT	NE
BNE	L_TJ_GUI14e_v_1_1_driver_Process_TP_Up350
;TJ_GUI14e_v_1_1_driver.c,2144 :: 		return;
IT	AL
BAL	L_end_Process_TP_Up
L_TJ_GUI14e_v_1_1_driver_Process_TP_Up350:
;TJ_GUI14e_v_1_1_driver.c,2146 :: 		isClick = IsInsideObject(&actObj, TouchS.X, TouchS.Y);
MOVW	R0, #lo_addr(_TouchS+4)
MOVT	R0, #hi_addr(_TouchS+4)
LDRSH	R2, [R0, #0]
MOVW	R0, #lo_addr(_TouchS+2)
MOVT	R0, #hi_addr(_TouchS+2)
LDRSH	R1, [R0, #0]
ADD	R0, SP, #8
BL	TJ_GUI14e_v_1_1_driver_IsInsideObject+0
; isClick start address is: 4 (R1)
UXTB	R1, R0
;TJ_GUI14e_v_1_1_driver.c,2148 :: 		if (actObj.Flags & VTFT_INT_REPAINT_ON_UP)
LDRB	R0, [SP, #14]
AND	R0, R0, #2
SXTH	R0, R0
CMP	R0, #0
IT	EQ
BEQ	L_TJ_GUI14e_v_1_1_driver_Process_TP_Up351
;TJ_GUI14e_v_1_1_driver.c,2149 :: 		DrawScreen(CurrentScreen);
MOVW	R0, #lo_addr(_CurrentScreen+0)
MOVT	R0, #hi_addr(_CurrentScreen+0)
LDR	R0, [R0, #0]
STRB	R1, [SP, #4]
BL	_DrawScreen+0
LDRB	R1, [SP, #4]
L_TJ_GUI14e_v_1_1_driver_Process_TP_Up351:
;TJ_GUI14e_v_1_1_driver.c,2151 :: 		OnEvent(&actObj, VTFT_EVT_UP);
ADD	R0, SP, #8
STRB	R1, [SP, #4]
MOVS	R1, #0
BL	TJ_GUI14e_v_1_1_driver_OnEvent+0
LDRB	R1, [SP, #4]
;TJ_GUI14e_v_1_1_driver.c,2152 :: 		if (isClick)
CMP	R1, #0
IT	EQ
BEQ	L_TJ_GUI14e_v_1_1_driver_Process_TP_Up352
; isClick end address is: 4 (R1)
;TJ_GUI14e_v_1_1_driver.c,2153 :: 		OnEvent(&actObj, VTFT_EVT_CLICK);
ADD	R0, SP, #8
MOVS	R1, #2
BL	TJ_GUI14e_v_1_1_driver_OnEvent+0
L_TJ_GUI14e_v_1_1_driver_Process_TP_Up352:
;TJ_GUI14e_v_1_1_driver.c,2154 :: 		}
L_end_Process_TP_Up:
LDR	LR, [SP, #0]
ADD	SP, SP, #20
BX	LR
; end of TJ_GUI14e_v_1_1_driver_Process_TP_Up
TJ_GUI14e_v_1_1_driver_Process_TP_Down:
;TJ_GUI14e_v_1_1_driver.c,2156 :: 		static void Process_TP_Down() {
SUB	SP, SP, #4
STR	LR, [SP, #0]
;TJ_GUI14e_v_1_1_driver.c,2158 :: 		if (TouchS.Tag) {        // objects must not have zero for tag value
MOVW	R0, #lo_addr(_TouchS+1)
MOVT	R0, #hi_addr(_TouchS+1)
LDRB	R0, [R0, #0]
CMP	R0, #0
IT	EQ
BEQ	L_TJ_GUI14e_v_1_1_driver_Process_TP_Down353
;TJ_GUI14e_v_1_1_driver.c,2159 :: 		if (TouchS.Tag != 255) // can not search objects by default tag value
MOVW	R0, #lo_addr(_TouchS+1)
MOVT	R0, #hi_addr(_TouchS+1)
LDRB	R0, [R0, #0]
CMP	R0, #255
IT	EQ
BEQ	L_TJ_GUI14e_v_1_1_driver_Process_TP_Down354
;TJ_GUI14e_v_1_1_driver.c,2160 :: 		GetActiveObjectByTag(TouchS.Tag, &TouchS.ActObjInfo);
MOVW	R0, #lo_addr(_TouchS+1)
MOVT	R0, #hi_addr(_TouchS+1)
LDRB	R0, [R0, #0]
MOVW	R1, #lo_addr(_TouchS+8)
MOVT	R1, #hi_addr(_TouchS+8)
BL	_GetActiveObjectByTag+0
L_TJ_GUI14e_v_1_1_driver_Process_TP_Down354:
;TJ_GUI14e_v_1_1_driver.c,2161 :: 		if (!TouchS.ActObjInfo.Obj) // object not found by tag, search by coordinates
MOVW	R0, #lo_addr(_TouchS+8)
MOVT	R0, #hi_addr(_TouchS+8)
LDR	R0, [R0, #0]
CMP	R0, #0
IT	NE
BNE	L_TJ_GUI14e_v_1_1_driver_Process_TP_Down355
;TJ_GUI14e_v_1_1_driver.c,2162 :: 		GetActiveObjectByXY(TouchS.X, TouchS.Y, &TouchS.ActObjInfo);
MOVW	R0, #lo_addr(_TouchS+4)
MOVT	R0, #hi_addr(_TouchS+4)
LDRSH	R1, [R0, #0]
MOVW	R0, #lo_addr(_TouchS+2)
MOVT	R0, #hi_addr(_TouchS+2)
LDRSH	R0, [R0, #0]
MOVW	R2, #lo_addr(_TouchS+8)
MOVT	R2, #hi_addr(_TouchS+8)
BL	_GetActiveObjectByXY+0
L_TJ_GUI14e_v_1_1_driver_Process_TP_Down355:
;TJ_GUI14e_v_1_1_driver.c,2163 :: 		}
L_TJ_GUI14e_v_1_1_driver_Process_TP_Down353:
;TJ_GUI14e_v_1_1_driver.c,2166 :: 		if (CurrentScreen->Active)
MOVW	R0, #lo_addr(_CurrentScreen+0)
MOVT	R0, #hi_addr(_CurrentScreen+0)
LDR	R0, [R0, #0]
ADDS	R0, #92
LDRB	R0, [R0, #0]
CMP	R0, #0
IT	EQ
BEQ	L_TJ_GUI14e_v_1_1_driver_Process_TP_Down356
;TJ_GUI14e_v_1_1_driver.c,2167 :: 		if ((CurrentScreen->SniffObjectEvents) || (!TouchS.ActObjInfo.Obj))
MOVW	R0, #lo_addr(_CurrentScreen+0)
MOVT	R0, #hi_addr(_CurrentScreen+0)
LDR	R0, [R0, #0]
ADDS	R0, #100
LDRB	R0, [R0, #0]
CMP	R0, #0
IT	NE
BNE	L_TJ_GUI14e_v_1_1_driver_Process_TP_Down456
MOVW	R0, #lo_addr(_TouchS+8)
MOVT	R0, #hi_addr(_TouchS+8)
LDR	R0, [R0, #0]
CMP	R0, #0
IT	EQ
BEQ	L_TJ_GUI14e_v_1_1_driver_Process_TP_Down455
IT	AL
BAL	L_TJ_GUI14e_v_1_1_driver_Process_TP_Down359
L_TJ_GUI14e_v_1_1_driver_Process_TP_Down456:
L_TJ_GUI14e_v_1_1_driver_Process_TP_Down455:
;TJ_GUI14e_v_1_1_driver.c,2168 :: 		ProcessEvent(CurrentScreen->OnDown);
MOVW	R0, #lo_addr(_CurrentScreen+0)
MOVT	R0, #hi_addr(_CurrentScreen+0)
LDR	R0, [R0, #0]
ADDS	R0, #108
LDR	R0, [R0, #0]
BL	TJ_GUI14e_v_1_1_driver_ProcessEvent+0
L_TJ_GUI14e_v_1_1_driver_Process_TP_Down359:
L_TJ_GUI14e_v_1_1_driver_Process_TP_Down356:
;TJ_GUI14e_v_1_1_driver.c,2171 :: 		if (!TouchS.ActObjInfo.Obj)
MOVW	R0, #lo_addr(_TouchS+8)
MOVT	R0, #hi_addr(_TouchS+8)
LDR	R0, [R0, #0]
CMP	R0, #0
IT	NE
BNE	L_TJ_GUI14e_v_1_1_driver_Process_TP_Down360
;TJ_GUI14e_v_1_1_driver.c,2172 :: 		return;
IT	AL
BAL	L_end_Process_TP_Down
L_TJ_GUI14e_v_1_1_driver_Process_TP_Down360:
;TJ_GUI14e_v_1_1_driver.c,2174 :: 		if (TouchS.ActObjInfo.Flags & VTFT_INT_REPAINT_ON_DOWN)
MOVW	R0, #lo_addr(_TouchS+14)
MOVT	R0, #hi_addr(_TouchS+14)
LDRB	R0, [R0, #0]
AND	R0, R0, #1
SXTH	R0, R0
CMP	R0, #0
IT	EQ
BEQ	L_TJ_GUI14e_v_1_1_driver_Process_TP_Down361
;TJ_GUI14e_v_1_1_driver.c,2175 :: 		DrawScreen(CurrentScreen);
MOVW	R0, #lo_addr(_CurrentScreen+0)
MOVT	R0, #hi_addr(_CurrentScreen+0)
LDR	R0, [R0, #0]
BL	_DrawScreen+0
L_TJ_GUI14e_v_1_1_driver_Process_TP_Down361:
;TJ_GUI14e_v_1_1_driver.c,2177 :: 		OnEvent(&TouchS.ActObjInfo, VTFT_EVT_DOWN);
MOVS	R1, #1
MOVW	R0, #lo_addr(_TouchS+8)
MOVT	R0, #hi_addr(_TouchS+8)
BL	TJ_GUI14e_v_1_1_driver_OnEvent+0
;TJ_GUI14e_v_1_1_driver.c,2178 :: 		}
L_end_Process_TP_Down:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of TJ_GUI14e_v_1_1_driver_Process_TP_Down
TJ_GUI14e_v_1_1_driver_Process_TP_TagChange:
;TJ_GUI14e_v_1_1_driver.c,2180 :: 		static void Process_TP_TagChange() {
SUB	SP, SP, #4
STR	LR, [SP, #0]
;TJ_GUI14e_v_1_1_driver.c,2182 :: 		if (CurrentScreen->Active)
MOVW	R0, #lo_addr(_CurrentScreen+0)
MOVT	R0, #hi_addr(_CurrentScreen+0)
LDR	R0, [R0, #0]
ADDS	R0, #92
LDRB	R0, [R0, #0]
CMP	R0, #0
IT	EQ
BEQ	L_TJ_GUI14e_v_1_1_driver_Process_TP_TagChange362
;TJ_GUI14e_v_1_1_driver.c,2183 :: 		ProcessEvent(CurrentScreen->OnTagChange);
MOVW	R0, #lo_addr(_CurrentScreen+0)
MOVT	R0, #hi_addr(_CurrentScreen+0)
LDR	R0, [R0, #0]
ADDS	R0, #112
LDR	R0, [R0, #0]
BL	TJ_GUI14e_v_1_1_driver_ProcessEvent+0
L_TJ_GUI14e_v_1_1_driver_Process_TP_TagChange362:
;TJ_GUI14e_v_1_1_driver.c,2184 :: 		}
L_end_Process_TP_TagChange:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of TJ_GUI14e_v_1_1_driver_Process_TP_TagChange
_ProcessVTFTStack:
;TJ_GUI14e_v_1_1_driver.c,2186 :: 		void ProcessVTFTStack() {
SUB	SP, SP, #12
STR	LR, [SP, #0]
;TJ_GUI14e_v_1_1_driver.c,2190 :: 		oldTag = TouchS.Tag;
MOVW	R0, #lo_addr(_TouchS+1)
MOVT	R0, #hi_addr(_TouchS+1)
LDRB	R0, [R0, #0]
STRB	R0, [SP, #5]
;TJ_GUI14e_v_1_1_driver.c,2192 :: 		if (FT812_Touch_GetTagXY(&X, &Y) == 1) {
ADD	R1, SP, #8
ADD	R0, SP, #6
BL	_FT812_Touch_GetTagXY+0
CMP	R0, #1
IT	NE
BNE	L_ProcessVTFTStack363
;TJ_GUI14e_v_1_1_driver.c,2193 :: 		FT812_Touch_GetTag(&Tag);
ADD	R0, SP, #4
BL	_FT812_Touch_GetTag+0
;TJ_GUI14e_v_1_1_driver.c,2195 :: 		TouchS.Tag = Tag;
LDRB	R1, [SP, #4]
MOVW	R0, #lo_addr(_TouchS+1)
MOVT	R0, #hi_addr(_TouchS+1)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2196 :: 		TouchS.X = X;
LDRH	R1, [SP, #6]
MOVW	R0, #lo_addr(_TouchS+2)
MOVT	R0, #hi_addr(_TouchS+2)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2197 :: 		TouchS.Y = Y;
LDRH	R1, [SP, #8]
MOVW	R0, #lo_addr(_TouchS+4)
MOVT	R0, #hi_addr(_TouchS+4)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2199 :: 		if (!TouchS.Pressed) {
MOVW	R0, #lo_addr(_TouchS+0)
MOVT	R0, #hi_addr(_TouchS+0)
LDRB	R0, [R0, #0]
CMP	R0, #0
IT	NE
BNE	L_ProcessVTFTStack364
;TJ_GUI14e_v_1_1_driver.c,2200 :: 		TouchS.Pressed = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_TouchS+0)
MOVT	R0, #hi_addr(_TouchS+0)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2201 :: 		Process_TP_Down();
BL	TJ_GUI14e_v_1_1_driver_Process_TP_Down+0
;TJ_GUI14e_v_1_1_driver.c,2202 :: 		}
L_ProcessVTFTStack364:
;TJ_GUI14e_v_1_1_driver.c,2204 :: 		Process_TP_Press();
BL	TJ_GUI14e_v_1_1_driver_Process_TP_Press+0
;TJ_GUI14e_v_1_1_driver.c,2205 :: 		}
IT	AL
BAL	L_ProcessVTFTStack365
L_ProcessVTFTStack363:
;TJ_GUI14e_v_1_1_driver.c,2206 :: 		else if (TouchS.Pressed) {
MOVW	R0, #lo_addr(_TouchS+0)
MOVT	R0, #hi_addr(_TouchS+0)
LDRB	R0, [R0, #0]
CMP	R0, #0
IT	EQ
BEQ	L_ProcessVTFTStack366
;TJ_GUI14e_v_1_1_driver.c,2207 :: 		Process_TP_Up();
BL	TJ_GUI14e_v_1_1_driver_Process_TP_Up+0
;TJ_GUI14e_v_1_1_driver.c,2209 :: 		TouchS.Tag = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_TouchS+1)
MOVT	R0, #hi_addr(_TouchS+1)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2210 :: 		TouchS.X   = X;
LDRH	R1, [SP, #6]
MOVW	R0, #lo_addr(_TouchS+2)
MOVT	R0, #hi_addr(_TouchS+2)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2211 :: 		TouchS.Y   = Y;
LDRH	R1, [SP, #8]
MOVW	R0, #lo_addr(_TouchS+4)
MOVT	R0, #hi_addr(_TouchS+4)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2213 :: 		TouchS.Pressed = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_TouchS+0)
MOVT	R0, #hi_addr(_TouchS+0)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2214 :: 		}
L_ProcessVTFTStack366:
L_ProcessVTFTStack365:
;TJ_GUI14e_v_1_1_driver.c,2216 :: 		if (oldTag != TouchS.Tag)
MOVW	R0, #lo_addr(_TouchS+1)
MOVT	R0, #hi_addr(_TouchS+1)
LDRB	R1, [R0, #0]
LDRB	R0, [SP, #5]
CMP	R0, R1
IT	EQ
BEQ	L_ProcessVTFTStack367
;TJ_GUI14e_v_1_1_driver.c,2217 :: 		Process_TP_TagChange();
BL	TJ_GUI14e_v_1_1_driver_Process_TP_TagChange+0
L_ProcessVTFTStack367:
;TJ_GUI14e_v_1_1_driver.c,2218 :: 		}
L_end_ProcessVTFTStack:
LDR	LR, [SP, #0]
ADD	SP, SP, #12
BX	LR
; end of _ProcessVTFTStack
TJ_GUI14e_v_1_1_driver_InitObjects:
;TJ_GUI14e_v_1_1_driver.c,2220 :: 		static void InitObjects() {
;TJ_GUI14e_v_1_1_driver.c,2222 :: 		AutomaticCtrlScr.Color              = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R0, #hi_addr(_AutomaticCtrlScr+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2223 :: 		AutomaticCtrlScr.Width              = 800;
MOVW	R1, #800
MOVW	R0, #lo_addr(_AutomaticCtrlScr+4)
MOVT	R0, #hi_addr(_AutomaticCtrlScr+4)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2224 :: 		AutomaticCtrlScr.Height             = 480;
MOVW	R1, #480
MOVW	R0, #lo_addr(_AutomaticCtrlScr+6)
MOVT	R0, #hi_addr(_AutomaticCtrlScr+6)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2225 :: 		AutomaticCtrlScr.ObjectsCount       = 76;
MOVS	R1, #76
MOVW	R0, #lo_addr(_AutomaticCtrlScr+8)
MOVT	R0, #hi_addr(_AutomaticCtrlScr+8)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2226 :: 		AutomaticCtrlScr.Buttons_RoundCount = 11;
MOVS	R1, #11
MOVW	R0, #lo_addr(_AutomaticCtrlScr+9)
MOVT	R0, #hi_addr(_AutomaticCtrlScr+9)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2227 :: 		AutomaticCtrlScr.Buttons_Round      = AutomaticCtrlScr_Buttons_Round;
MOVW	R1, #lo_addr(_AutomaticCtrlScr_Buttons_Round+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr_Buttons_Round+0)
MOVW	R0, #lo_addr(_AutomaticCtrlScr+12)
MOVT	R0, #hi_addr(_AutomaticCtrlScr+12)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2228 :: 		AutomaticCtrlScr.LabelsCount        = 34;
MOVS	R1, #34
MOVW	R0, #lo_addr(_AutomaticCtrlScr+16)
MOVT	R0, #hi_addr(_AutomaticCtrlScr+16)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2229 :: 		AutomaticCtrlScr.Labels             = AutomaticCtrlScr_Labels;
MOVW	R1, #lo_addr(_AutomaticCtrlScr_Labels+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr_Labels+0)
MOVW	R0, #lo_addr(_AutomaticCtrlScr+20)
MOVT	R0, #hi_addr(_AutomaticCtrlScr+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2230 :: 		AutomaticCtrlScr.ImagesCount        = 4;
MOVS	R1, #4
MOVW	R0, #lo_addr(_AutomaticCtrlScr+24)
MOVT	R0, #hi_addr(_AutomaticCtrlScr+24)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2231 :: 		AutomaticCtrlScr.Images             = AutomaticCtrlScr_Images;
MOVW	R1, #lo_addr(_AutomaticCtrlScr_Images+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr_Images+0)
MOVW	R0, #lo_addr(_AutomaticCtrlScr+28)
MOVT	R0, #hi_addr(_AutomaticCtrlScr+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2232 :: 		AutomaticCtrlScr.CirclesCount       = 10;
MOVS	R1, #10
MOVW	R0, #lo_addr(_AutomaticCtrlScr+32)
MOVT	R0, #hi_addr(_AutomaticCtrlScr+32)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2233 :: 		AutomaticCtrlScr.Circles            = AutomaticCtrlScr_Circles;
MOVW	R1, #lo_addr(_AutomaticCtrlScr_Circles+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr_Circles+0)
MOVW	R0, #lo_addr(_AutomaticCtrlScr+36)
MOVT	R0, #hi_addr(_AutomaticCtrlScr+36)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2234 :: 		AutomaticCtrlScr.CircleButtonsCount = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_AutomaticCtrlScr+40)
MOVT	R0, #hi_addr(_AutomaticCtrlScr+40)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2235 :: 		AutomaticCtrlScr.CircleButtons      = AutomaticCtrlScr_CircleButtons;
MOVW	R1, #lo_addr(_AutomaticCtrlScr_CircleButtons+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr_CircleButtons+0)
MOVW	R0, #lo_addr(_AutomaticCtrlScr+44)
MOVT	R0, #hi_addr(_AutomaticCtrlScr+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2236 :: 		AutomaticCtrlScr.LinesCount         = 6;
MOVS	R1, #6
MOVW	R0, #lo_addr(_AutomaticCtrlScr+48)
MOVT	R0, #hi_addr(_AutomaticCtrlScr+48)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2237 :: 		AutomaticCtrlScr.Lines              = AutomaticCtrlScr_Lines;
MOVW	R1, #lo_addr(_AutomaticCtrlScr_Lines+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr_Lines+0)
MOVW	R0, #lo_addr(_AutomaticCtrlScr+52)
MOVT	R0, #hi_addr(_AutomaticCtrlScr+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2238 :: 		AutomaticCtrlScr.ProgressBarsCount  = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_AutomaticCtrlScr+56)
MOVT	R0, #hi_addr(_AutomaticCtrlScr+56)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2239 :: 		AutomaticCtrlScr.ProgressBars       = AutomaticCtrlScr_ProgressBars;
MOVW	R1, #lo_addr(_AutomaticCtrlScr_ProgressBars+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr_ProgressBars+0)
MOVW	R0, #lo_addr(_AutomaticCtrlScr+60)
MOVT	R0, #hi_addr(_AutomaticCtrlScr+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2240 :: 		AutomaticCtrlScr.EveGaugesCount     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_AutomaticCtrlScr+64)
MOVT	R0, #hi_addr(_AutomaticCtrlScr+64)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2241 :: 		AutomaticCtrlScr.EveGauges          = AutomaticCtrlScr_EveGauges;
MOVW	R1, #lo_addr(_AutomaticCtrlScr_EveGauges+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr_EveGauges+0)
MOVW	R0, #lo_addr(_AutomaticCtrlScr+68)
MOVT	R0, #hi_addr(_AutomaticCtrlScr+68)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2242 :: 		AutomaticCtrlScr.EveSpinnersCount   = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_AutomaticCtrlScr+72)
MOVT	R0, #hi_addr(_AutomaticCtrlScr+72)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2243 :: 		AutomaticCtrlScr.EveSpinners        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_AutomaticCtrlScr+76)
MOVT	R0, #hi_addr(_AutomaticCtrlScr+76)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2244 :: 		AutomaticCtrlScr.EveButtonsCount    = 5;
MOVS	R1, #5
MOVW	R0, #lo_addr(_AutomaticCtrlScr+80)
MOVT	R0, #hi_addr(_AutomaticCtrlScr+80)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2245 :: 		AutomaticCtrlScr.EveButtons         = AutomaticCtrlScr_EveButtons;
MOVW	R1, #lo_addr(_AutomaticCtrlScr_EveButtons+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr_EveButtons+0)
MOVW	R0, #lo_addr(_AutomaticCtrlScr+84)
MOVT	R0, #hi_addr(_AutomaticCtrlScr+84)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2246 :: 		AutomaticCtrlScr.DynResStart        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_AutomaticCtrlScr+88)
MOVT	R0, #hi_addr(_AutomaticCtrlScr+88)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2247 :: 		AutomaticCtrlScr.Active             = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_AutomaticCtrlScr+92)
MOVT	R0, #hi_addr(_AutomaticCtrlScr+92)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2248 :: 		AutomaticCtrlScr.EveAnimation       = &ScreensEveAnimationTable[0];
MOVW	R1, #lo_addr(_ScreensEveAnimationTable+0)
MOVT	R1, #hi_addr(_ScreensEveAnimationTable+0)
MOVW	R0, #lo_addr(_AutomaticCtrlScr+96)
MOVT	R0, #hi_addr(_AutomaticCtrlScr+96)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2249 :: 		AutomaticCtrlScr.SniffObjectEvents  = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_AutomaticCtrlScr+100)
MOVT	R0, #hi_addr(_AutomaticCtrlScr+100)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2250 :: 		AutomaticCtrlScr.OnUp               = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_AutomaticCtrlScr+104)
MOVT	R0, #hi_addr(_AutomaticCtrlScr+104)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2251 :: 		AutomaticCtrlScr.OnDown             = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_AutomaticCtrlScr+108)
MOVT	R0, #hi_addr(_AutomaticCtrlScr+108)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2252 :: 		AutomaticCtrlScr.OnTagChange        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_AutomaticCtrlScr+112)
MOVT	R0, #hi_addr(_AutomaticCtrlScr+112)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2253 :: 		AutomaticCtrlScr.OnPress            = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_AutomaticCtrlScr+116)
MOVT	R0, #hi_addr(_AutomaticCtrlScr+116)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2256 :: 		ManualCtrlScr.Color              = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_ManualCtrlScr+0)
MOVT	R0, #hi_addr(_ManualCtrlScr+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2257 :: 		ManualCtrlScr.Width              = 800;
MOVW	R1, #800
MOVW	R0, #lo_addr(_ManualCtrlScr+4)
MOVT	R0, #hi_addr(_ManualCtrlScr+4)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2258 :: 		ManualCtrlScr.Height             = 480;
MOVW	R1, #480
MOVW	R0, #lo_addr(_ManualCtrlScr+6)
MOVT	R0, #hi_addr(_ManualCtrlScr+6)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2259 :: 		ManualCtrlScr.ObjectsCount       = 62;
MOVS	R1, #62
MOVW	R0, #lo_addr(_ManualCtrlScr+8)
MOVT	R0, #hi_addr(_ManualCtrlScr+8)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2260 :: 		ManualCtrlScr.Buttons_RoundCount = 8;
MOVS	R1, #8
MOVW	R0, #lo_addr(_ManualCtrlScr+9)
MOVT	R0, #hi_addr(_ManualCtrlScr+9)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2261 :: 		ManualCtrlScr.Buttons_Round      = ManualCtrlScr_Buttons_Round;
MOVW	R1, #lo_addr(_ManualCtrlScr_Buttons_Round+0)
MOVT	R1, #hi_addr(_ManualCtrlScr_Buttons_Round+0)
MOVW	R0, #lo_addr(_ManualCtrlScr+12)
MOVT	R0, #hi_addr(_ManualCtrlScr+12)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2262 :: 		ManualCtrlScr.LabelsCount        = 27;
MOVS	R1, #27
MOVW	R0, #lo_addr(_ManualCtrlScr+16)
MOVT	R0, #hi_addr(_ManualCtrlScr+16)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2263 :: 		ManualCtrlScr.Labels             = ManualCtrlScr_Labels;
MOVW	R1, #lo_addr(_ManualCtrlScr_Labels+0)
MOVT	R1, #hi_addr(_ManualCtrlScr_Labels+0)
MOVW	R0, #lo_addr(_ManualCtrlScr+20)
MOVT	R0, #hi_addr(_ManualCtrlScr+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2264 :: 		ManualCtrlScr.ImagesCount        = 4;
MOVS	R1, #4
MOVW	R0, #lo_addr(_ManualCtrlScr+24)
MOVT	R0, #hi_addr(_ManualCtrlScr+24)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2265 :: 		ManualCtrlScr.Images             = ManualCtrlScr_Images;
MOVW	R1, #lo_addr(_ManualCtrlScr_Images+0)
MOVT	R1, #hi_addr(_ManualCtrlScr_Images+0)
MOVW	R0, #lo_addr(_ManualCtrlScr+28)
MOVT	R0, #hi_addr(_ManualCtrlScr+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2266 :: 		ManualCtrlScr.CirclesCount       = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_ManualCtrlScr+32)
MOVT	R0, #hi_addr(_ManualCtrlScr+32)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2267 :: 		ManualCtrlScr.Circles            = ManualCtrlScr_Circles;
MOVW	R1, #lo_addr(_ManualCtrlScr_Circles+0)
MOVT	R1, #hi_addr(_ManualCtrlScr_Circles+0)
MOVW	R0, #lo_addr(_ManualCtrlScr+36)
MOVT	R0, #hi_addr(_ManualCtrlScr+36)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2268 :: 		ManualCtrlScr.CircleButtonsCount = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_ManualCtrlScr+40)
MOVT	R0, #hi_addr(_ManualCtrlScr+40)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2269 :: 		ManualCtrlScr.CircleButtons      = ManualCtrlScr_CircleButtons;
MOVW	R1, #lo_addr(_ManualCtrlScr_CircleButtons+0)
MOVT	R1, #hi_addr(_ManualCtrlScr_CircleButtons+0)
MOVW	R0, #lo_addr(_ManualCtrlScr+44)
MOVT	R0, #hi_addr(_ManualCtrlScr+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2270 :: 		ManualCtrlScr.LinesCount         = 8;
MOVS	R1, #8
MOVW	R0, #lo_addr(_ManualCtrlScr+48)
MOVT	R0, #hi_addr(_ManualCtrlScr+48)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2271 :: 		ManualCtrlScr.Lines              = ManualCtrlScr_Lines;
MOVW	R1, #lo_addr(_ManualCtrlScr_Lines+0)
MOVT	R1, #hi_addr(_ManualCtrlScr_Lines+0)
MOVW	R0, #lo_addr(_ManualCtrlScr+52)
MOVT	R0, #hi_addr(_ManualCtrlScr+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2272 :: 		ManualCtrlScr.ProgressBarsCount  = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_ManualCtrlScr+56)
MOVT	R0, #hi_addr(_ManualCtrlScr+56)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2273 :: 		ManualCtrlScr.ProgressBars       = ManualCtrlScr_ProgressBars;
MOVW	R1, #lo_addr(_ManualCtrlScr_ProgressBars+0)
MOVT	R1, #hi_addr(_ManualCtrlScr_ProgressBars+0)
MOVW	R0, #lo_addr(_ManualCtrlScr+60)
MOVT	R0, #hi_addr(_ManualCtrlScr+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2274 :: 		ManualCtrlScr.EveGaugesCount     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ManualCtrlScr+64)
MOVT	R0, #hi_addr(_ManualCtrlScr+64)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2275 :: 		ManualCtrlScr.EveGauges          = ManualCtrlScr_EveGauges;
MOVW	R1, #lo_addr(_ManualCtrlScr_EveGauges+0)
MOVT	R1, #hi_addr(_ManualCtrlScr_EveGauges+0)
MOVW	R0, #lo_addr(_ManualCtrlScr+68)
MOVT	R0, #hi_addr(_ManualCtrlScr+68)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2276 :: 		ManualCtrlScr.EveSpinnersCount   = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ManualCtrlScr+72)
MOVT	R0, #hi_addr(_ManualCtrlScr+72)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2277 :: 		ManualCtrlScr.EveSpinners        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ManualCtrlScr+76)
MOVT	R0, #hi_addr(_ManualCtrlScr+76)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2278 :: 		ManualCtrlScr.EveButtonsCount    = 6;
MOVS	R1, #6
MOVW	R0, #lo_addr(_ManualCtrlScr+80)
MOVT	R0, #hi_addr(_ManualCtrlScr+80)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2279 :: 		ManualCtrlScr.EveButtons         = ManualCtrlScr_EveButtons;
MOVW	R1, #lo_addr(_ManualCtrlScr_EveButtons+0)
MOVT	R1, #hi_addr(_ManualCtrlScr_EveButtons+0)
MOVW	R0, #lo_addr(_ManualCtrlScr+84)
MOVT	R0, #hi_addr(_ManualCtrlScr+84)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2280 :: 		ManualCtrlScr.DynResStart        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ManualCtrlScr+88)
MOVT	R0, #hi_addr(_ManualCtrlScr+88)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2281 :: 		ManualCtrlScr.Active             = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ManualCtrlScr+92)
MOVT	R0, #hi_addr(_ManualCtrlScr+92)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2282 :: 		ManualCtrlScr.EveAnimation       = &ScreensEveAnimationTable[1];
MOVW	R1, #lo_addr(_ScreensEveAnimationTable+4)
MOVT	R1, #hi_addr(_ScreensEveAnimationTable+4)
MOVW	R0, #lo_addr(_ManualCtrlScr+96)
MOVT	R0, #hi_addr(_ManualCtrlScr+96)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2283 :: 		ManualCtrlScr.SniffObjectEvents  = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ManualCtrlScr+100)
MOVT	R0, #hi_addr(_ManualCtrlScr+100)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2284 :: 		ManualCtrlScr.OnUp               = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ManualCtrlScr+104)
MOVT	R0, #hi_addr(_ManualCtrlScr+104)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2285 :: 		ManualCtrlScr.OnDown             = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ManualCtrlScr+108)
MOVT	R0, #hi_addr(_ManualCtrlScr+108)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2286 :: 		ManualCtrlScr.OnTagChange        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ManualCtrlScr+112)
MOVT	R0, #hi_addr(_ManualCtrlScr+112)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2287 :: 		ManualCtrlScr.OnPress            = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ManualCtrlScr+116)
MOVT	R0, #hi_addr(_ManualCtrlScr+116)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2290 :: 		HomeScr.Color              = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_HomeScr+0)
MOVT	R0, #hi_addr(_HomeScr+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2291 :: 		HomeScr.Width              = 800;
MOVW	R1, #800
MOVW	R0, #lo_addr(_HomeScr+4)
MOVT	R0, #hi_addr(_HomeScr+4)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2292 :: 		HomeScr.Height             = 480;
MOVW	R1, #480
MOVW	R0, #lo_addr(_HomeScr+6)
MOVT	R0, #hi_addr(_HomeScr+6)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2293 :: 		HomeScr.ObjectsCount       = 19;
MOVS	R1, #19
MOVW	R0, #lo_addr(_HomeScr+8)
MOVT	R0, #hi_addr(_HomeScr+8)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2294 :: 		HomeScr.Buttons_RoundCount = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeScr+9)
MOVT	R0, #hi_addr(_HomeScr+9)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2295 :: 		HomeScr.Buttons_Round      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeScr+12)
MOVT	R0, #hi_addr(_HomeScr+12)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2296 :: 		HomeScr.LabelsCount        = 10;
MOVS	R1, #10
MOVW	R0, #lo_addr(_HomeScr+16)
MOVT	R0, #hi_addr(_HomeScr+16)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2297 :: 		HomeScr.Labels             = HomeScr_Labels;
MOVW	R1, #lo_addr(_HomeScr_Labels+0)
MOVT	R1, #hi_addr(_HomeScr_Labels+0)
MOVW	R0, #lo_addr(_HomeScr+20)
MOVT	R0, #hi_addr(_HomeScr+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2298 :: 		HomeScr.ImagesCount        = 9;
MOVS	R1, #9
MOVW	R0, #lo_addr(_HomeScr+24)
MOVT	R0, #hi_addr(_HomeScr+24)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2299 :: 		HomeScr.Images             = HomeScr_Images;
MOVW	R1, #lo_addr(_HomeScr_Images+0)
MOVT	R1, #hi_addr(_HomeScr_Images+0)
MOVW	R0, #lo_addr(_HomeScr+28)
MOVT	R0, #hi_addr(_HomeScr+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2300 :: 		HomeScr.CirclesCount       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeScr+32)
MOVT	R0, #hi_addr(_HomeScr+32)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2301 :: 		HomeScr.Circles            = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeScr+36)
MOVT	R0, #hi_addr(_HomeScr+36)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2302 :: 		HomeScr.CircleButtonsCount = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeScr+40)
MOVT	R0, #hi_addr(_HomeScr+40)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2303 :: 		HomeScr.CircleButtons      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeScr+44)
MOVT	R0, #hi_addr(_HomeScr+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2304 :: 		HomeScr.LinesCount         = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeScr+48)
MOVT	R0, #hi_addr(_HomeScr+48)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2305 :: 		HomeScr.Lines              = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeScr+52)
MOVT	R0, #hi_addr(_HomeScr+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2306 :: 		HomeScr.ProgressBarsCount  = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeScr+56)
MOVT	R0, #hi_addr(_HomeScr+56)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2307 :: 		HomeScr.ProgressBars       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeScr+60)
MOVT	R0, #hi_addr(_HomeScr+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2308 :: 		HomeScr.EveGaugesCount     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeScr+64)
MOVT	R0, #hi_addr(_HomeScr+64)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2309 :: 		HomeScr.EveGauges          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeScr+68)
MOVT	R0, #hi_addr(_HomeScr+68)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2310 :: 		HomeScr.EveSpinnersCount   = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeScr+72)
MOVT	R0, #hi_addr(_HomeScr+72)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2311 :: 		HomeScr.EveSpinners        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeScr+76)
MOVT	R0, #hi_addr(_HomeScr+76)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2312 :: 		HomeScr.EveButtonsCount    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeScr+80)
MOVT	R0, #hi_addr(_HomeScr+80)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2313 :: 		HomeScr.EveButtons         = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeScr+84)
MOVT	R0, #hi_addr(_HomeScr+84)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2314 :: 		HomeScr.DynResStart        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeScr+88)
MOVT	R0, #hi_addr(_HomeScr+88)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2315 :: 		HomeScr.Active             = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_HomeScr+92)
MOVT	R0, #hi_addr(_HomeScr+92)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2316 :: 		HomeScr.EveAnimation       = &ScreensEveAnimationTable[2];
MOVW	R1, #lo_addr(_ScreensEveAnimationTable+8)
MOVT	R1, #hi_addr(_ScreensEveAnimationTable+8)
MOVW	R0, #lo_addr(_HomeScr+96)
MOVT	R0, #hi_addr(_HomeScr+96)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2317 :: 		HomeScr.SniffObjectEvents  = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeScr+100)
MOVT	R0, #hi_addr(_HomeScr+100)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2318 :: 		HomeScr.OnUp               = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeScr+104)
MOVT	R0, #hi_addr(_HomeScr+104)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2319 :: 		HomeScr.OnDown             = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeScr+108)
MOVT	R0, #hi_addr(_HomeScr+108)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2320 :: 		HomeScr.OnTagChange        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeScr+112)
MOVT	R0, #hi_addr(_HomeScr+112)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2321 :: 		HomeScr.OnPress            = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeScr+116)
MOVT	R0, #hi_addr(_HomeScr+116)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2324 :: 		Intro.Color              = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_Intro+0)
MOVT	R0, #hi_addr(_Intro+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2325 :: 		Intro.Width              = 800;
MOVW	R1, #800
MOVW	R0, #lo_addr(_Intro+4)
MOVT	R0, #hi_addr(_Intro+4)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2326 :: 		Intro.Height             = 480;
MOVW	R1, #480
MOVW	R0, #lo_addr(_Intro+6)
MOVT	R0, #hi_addr(_Intro+6)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2327 :: 		Intro.ObjectsCount       = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_Intro+8)
MOVT	R0, #hi_addr(_Intro+8)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2328 :: 		Intro.Buttons_RoundCount = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Intro+9)
MOVT	R0, #hi_addr(_Intro+9)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2329 :: 		Intro.Buttons_Round      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Intro+12)
MOVT	R0, #hi_addr(_Intro+12)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2330 :: 		Intro.LabelsCount        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Intro+16)
MOVT	R0, #hi_addr(_Intro+16)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2331 :: 		Intro.Labels             = Intro_Labels;
MOVW	R1, #lo_addr(_Intro_Labels+0)
MOVT	R1, #hi_addr(_Intro_Labels+0)
MOVW	R0, #lo_addr(_Intro+20)
MOVT	R0, #hi_addr(_Intro+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2332 :: 		Intro.ImagesCount        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Intro+24)
MOVT	R0, #hi_addr(_Intro+24)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2333 :: 		Intro.Images             = Intro_Images;
MOVW	R1, #lo_addr(_Intro_Images+0)
MOVT	R1, #hi_addr(_Intro_Images+0)
MOVW	R0, #lo_addr(_Intro+28)
MOVT	R0, #hi_addr(_Intro+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2334 :: 		Intro.CirclesCount       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Intro+32)
MOVT	R0, #hi_addr(_Intro+32)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2335 :: 		Intro.Circles            = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Intro+36)
MOVT	R0, #hi_addr(_Intro+36)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2336 :: 		Intro.CircleButtonsCount = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Intro+40)
MOVT	R0, #hi_addr(_Intro+40)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2337 :: 		Intro.CircleButtons      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Intro+44)
MOVT	R0, #hi_addr(_Intro+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2338 :: 		Intro.LinesCount         = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Intro+48)
MOVT	R0, #hi_addr(_Intro+48)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2339 :: 		Intro.Lines              = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Intro+52)
MOVT	R0, #hi_addr(_Intro+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2340 :: 		Intro.ProgressBarsCount  = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Intro+56)
MOVT	R0, #hi_addr(_Intro+56)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2341 :: 		Intro.ProgressBars       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Intro+60)
MOVT	R0, #hi_addr(_Intro+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2342 :: 		Intro.EveGaugesCount     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Intro+64)
MOVT	R0, #hi_addr(_Intro+64)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2343 :: 		Intro.EveGauges          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Intro+68)
MOVT	R0, #hi_addr(_Intro+68)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2344 :: 		Intro.EveSpinnersCount   = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Intro+72)
MOVT	R0, #hi_addr(_Intro+72)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2345 :: 		Intro.EveSpinners        = Intro_EveSpinners;
MOVW	R1, #lo_addr(_Intro_EveSpinners+0)
MOVT	R1, #hi_addr(_Intro_EveSpinners+0)
MOVW	R0, #lo_addr(_Intro+76)
MOVT	R0, #hi_addr(_Intro+76)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2346 :: 		Intro.EveButtonsCount    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Intro+80)
MOVT	R0, #hi_addr(_Intro+80)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2347 :: 		Intro.EveButtons         = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Intro+84)
MOVT	R0, #hi_addr(_Intro+84)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2348 :: 		Intro.DynResStart        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Intro+88)
MOVT	R0, #hi_addr(_Intro+88)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2349 :: 		Intro.Active             = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Intro+92)
MOVT	R0, #hi_addr(_Intro+92)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2350 :: 		Intro.EveAnimation       = &ScreensEveAnimationTable[3];
MOVW	R1, #lo_addr(_ScreensEveAnimationTable+12)
MOVT	R1, #hi_addr(_ScreensEveAnimationTable+12)
MOVW	R0, #lo_addr(_Intro+96)
MOVT	R0, #hi_addr(_Intro+96)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2351 :: 		Intro.SniffObjectEvents  = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Intro+100)
MOVT	R0, #hi_addr(_Intro+100)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2352 :: 		Intro.OnUp               = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Intro+104)
MOVT	R0, #hi_addr(_Intro+104)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2353 :: 		Intro.OnDown             = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Intro+108)
MOVT	R0, #hi_addr(_Intro+108)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2354 :: 		Intro.OnTagChange        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Intro+112)
MOVT	R0, #hi_addr(_Intro+112)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2355 :: 		Intro.OnPress            = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Intro+116)
MOVT	R0, #hi_addr(_Intro+116)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2357 :: 		AutomaticCtrlSet.OwnerScreen   = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_AutomaticCtrlSet+0)
MOVT	R0, #hi_addr(_AutomaticCtrlSet+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2358 :: 		AutomaticCtrlSet.Order         = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_AutomaticCtrlSet+4)
MOVT	R0, #hi_addr(_AutomaticCtrlSet+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2359 :: 		AutomaticCtrlSet.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_AutomaticCtrlSet+5)
MOVT	R0, #hi_addr(_AutomaticCtrlSet+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2360 :: 		AutomaticCtrlSet.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_AutomaticCtrlSet+6)
MOVT	R0, #hi_addr(_AutomaticCtrlSet+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2361 :: 		AutomaticCtrlSet.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_AutomaticCtrlSet+7)
MOVT	R0, #hi_addr(_AutomaticCtrlSet+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2362 :: 		AutomaticCtrlSet.Left          = 101;
MOVS	R1, #101
SXTH	R1, R1
MOVW	R0, #lo_addr(_AutomaticCtrlSet+8)
MOVT	R0, #hi_addr(_AutomaticCtrlSet+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2363 :: 		AutomaticCtrlSet.Top           = 410;
MOVW	R1, #410
SXTH	R1, R1
MOVW	R0, #lo_addr(_AutomaticCtrlSet+10)
MOVT	R0, #hi_addr(_AutomaticCtrlSet+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2364 :: 		AutomaticCtrlSet.Width         = 50;
MOVS	R1, #50
SXTH	R1, R1
MOVW	R0, #lo_addr(_AutomaticCtrlSet+12)
MOVT	R0, #hi_addr(_AutomaticCtrlSet+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2365 :: 		AutomaticCtrlSet.Height        = 50;
MOVS	R1, #50
SXTH	R1, R1
MOVW	R0, #lo_addr(_AutomaticCtrlSet+14)
MOVT	R0, #hi_addr(_AutomaticCtrlSet+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2366 :: 		AutomaticCtrlSet.Picture_Name  = settings2sm_bmp;
MOVW	R1, #53630
MOVW	R0, #lo_addr(_AutomaticCtrlSet+16)
MOVT	R0, #hi_addr(_AutomaticCtrlSet+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2367 :: 		AutomaticCtrlSet.Picture_Type  = 7;
MOVS	R1, #7
MOVW	R0, #lo_addr(_AutomaticCtrlSet+20)
MOVT	R0, #hi_addr(_AutomaticCtrlSet+20)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2368 :: 		AutomaticCtrlSet.Picture_Ratio = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_AutomaticCtrlSet+21)
MOVT	R0, #hi_addr(_AutomaticCtrlSet+21)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2369 :: 		AutomaticCtrlSet.Blend_Color   = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_AutomaticCtrlSet+24)
MOVT	R0, #hi_addr(_AutomaticCtrlSet+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2370 :: 		AutomaticCtrlSet.Source        = -1L;
MOV	R1, #-1
MOVW	R0, #lo_addr(_AutomaticCtrlSet+28)
MOVT	R0, #hi_addr(_AutomaticCtrlSet+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2371 :: 		AutomaticCtrlSet.RotationAngle = 0;
MOVS	R1, #0
SXTH	R1, R1
MOVW	R0, #lo_addr(_AutomaticCtrlSet+32)
MOVT	R0, #hi_addr(_AutomaticCtrlSet+32)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2372 :: 		AutomaticCtrlSet.RotationCenterLeft = 126;
MOVS	R1, #126
SXTH	R1, R1
MOVW	R0, #lo_addr(_AutomaticCtrlSet+34)
MOVT	R0, #hi_addr(_AutomaticCtrlSet+34)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2373 :: 		AutomaticCtrlSet.RotationCenterTop = 435;
MOVW	R1, #435
SXTH	R1, R1
MOVW	R0, #lo_addr(_AutomaticCtrlSet+36)
MOVT	R0, #hi_addr(_AutomaticCtrlSet+36)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2374 :: 		AutomaticCtrlSet.ScaleX        = 1.0000;
VMOV.F32	S0, #1
MOVW	R0, #lo_addr(_AutomaticCtrlSet+40)
MOVT	R0, #hi_addr(_AutomaticCtrlSet+40)
VSTR	#1, S0, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2375 :: 		AutomaticCtrlSet.ScaleY        = 1.0000;
VMOV.F32	S0, #1
MOVW	R0, #lo_addr(_AutomaticCtrlSet+44)
MOVT	R0, #hi_addr(_AutomaticCtrlSet+44)
VSTR	#1, S0, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2376 :: 		AutomaticCtrlSet.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_AutomaticCtrlSet+48)
MOVT	R0, #hi_addr(_AutomaticCtrlSet+48)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2377 :: 		AutomaticCtrlSet.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_AutomaticCtrlSet+52)
MOVT	R0, #hi_addr(_AutomaticCtrlSet+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2378 :: 		AutomaticCtrlSet.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_AutomaticCtrlSet+56)
MOVT	R0, #hi_addr(_AutomaticCtrlSet+56)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2379 :: 		AutomaticCtrlSet.OnClick       = &AutomaticCtrlSet_OnClick;
MOVW	R1, #lo_addr(_AutomaticCtrlSet_OnClick+0)
MOVT	R1, #hi_addr(_AutomaticCtrlSet_OnClick+0)
MOVW	R0, #lo_addr(_AutomaticCtrlSet+60)
MOVT	R0, #hi_addr(_AutomaticCtrlSet+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2380 :: 		AutomaticCtrlSet.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_AutomaticCtrlSet+64)
MOVT	R0, #hi_addr(_AutomaticCtrlSet+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2382 :: 		AutomaticCtrlSet_OnClick.Action       = AutomaticCtrlSetOnClick;
MOVW	R1, #lo_addr(_AutomaticCtrlSetOnClick+0)
MOVT	R1, #hi_addr(_AutomaticCtrlSetOnClick+0)
MOVW	R0, #lo_addr(_AutomaticCtrlSet_OnClick+0)
MOVT	R0, #hi_addr(_AutomaticCtrlSet_OnClick+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2383 :: 		AutomaticCtrlSet_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
MOVS	R1, #0
MOVW	R0, #lo_addr(_AutomaticCtrlSet_OnClick+4)
MOVT	R0, #hi_addr(_AutomaticCtrlSet_OnClick+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2384 :: 		AutomaticCtrlSet_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
MOVS	R1, #65
MOVW	R0, #lo_addr(_AutomaticCtrlSet_OnClick+5)
MOVT	R0, #hi_addr(_AutomaticCtrlSet_OnClick+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2385 :: 		AutomaticCtrlSet_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
MOVS	R1, #81
MOVW	R0, #lo_addr(_AutomaticCtrlSet_OnClick+6)
MOVT	R0, #hi_addr(_AutomaticCtrlSet_OnClick+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2386 :: 		AutomaticCtrlSet_OnClick.Sound.Volume = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_AutomaticCtrlSet_OnClick+7)
MOVT	R0, #hi_addr(_AutomaticCtrlSet_OnClick+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2388 :: 		AutomaticCtrlBack.OwnerScreen   = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_AutomaticCtrlBack+0)
MOVT	R0, #hi_addr(_AutomaticCtrlBack+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2389 :: 		AutomaticCtrlBack.Order         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_AutomaticCtrlBack+4)
MOVT	R0, #hi_addr(_AutomaticCtrlBack+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2390 :: 		AutomaticCtrlBack.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_AutomaticCtrlBack+5)
MOVT	R0, #hi_addr(_AutomaticCtrlBack+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2391 :: 		AutomaticCtrlBack.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_AutomaticCtrlBack+6)
MOVT	R0, #hi_addr(_AutomaticCtrlBack+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2392 :: 		AutomaticCtrlBack.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_AutomaticCtrlBack+7)
MOVT	R0, #hi_addr(_AutomaticCtrlBack+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2393 :: 		AutomaticCtrlBack.Left          = 29;
MOVS	R1, #29
SXTH	R1, R1
MOVW	R0, #lo_addr(_AutomaticCtrlBack+8)
MOVT	R0, #hi_addr(_AutomaticCtrlBack+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2394 :: 		AutomaticCtrlBack.Top           = 410;
MOVW	R1, #410
SXTH	R1, R1
MOVW	R0, #lo_addr(_AutomaticCtrlBack+10)
MOVT	R0, #hi_addr(_AutomaticCtrlBack+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2395 :: 		AutomaticCtrlBack.Width         = 50;
MOVS	R1, #50
SXTH	R1, R1
MOVW	R0, #lo_addr(_AutomaticCtrlBack+12)
MOVT	R0, #hi_addr(_AutomaticCtrlBack+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2396 :: 		AutomaticCtrlBack.Height        = 50;
MOVS	R1, #50
SXTH	R1, R1
MOVW	R0, #lo_addr(_AutomaticCtrlBack+14)
MOVT	R0, #hi_addr(_AutomaticCtrlBack+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2397 :: 		AutomaticCtrlBack.Picture_Name  = back1sm_bmp;
MOVW	R1, #58636
MOVW	R0, #lo_addr(_AutomaticCtrlBack+16)
MOVT	R0, #hi_addr(_AutomaticCtrlBack+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2398 :: 		AutomaticCtrlBack.Picture_Type  = 7;
MOVS	R1, #7
MOVW	R0, #lo_addr(_AutomaticCtrlBack+20)
MOVT	R0, #hi_addr(_AutomaticCtrlBack+20)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2399 :: 		AutomaticCtrlBack.Picture_Ratio = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_AutomaticCtrlBack+21)
MOVT	R0, #hi_addr(_AutomaticCtrlBack+21)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2400 :: 		AutomaticCtrlBack.Blend_Color   = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_AutomaticCtrlBack+24)
MOVT	R0, #hi_addr(_AutomaticCtrlBack+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2401 :: 		AutomaticCtrlBack.Source        = -1L;
MOV	R1, #-1
MOVW	R0, #lo_addr(_AutomaticCtrlBack+28)
MOVT	R0, #hi_addr(_AutomaticCtrlBack+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2402 :: 		AutomaticCtrlBack.RotationAngle = 0;
MOVS	R1, #0
SXTH	R1, R1
MOVW	R0, #lo_addr(_AutomaticCtrlBack+32)
MOVT	R0, #hi_addr(_AutomaticCtrlBack+32)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2403 :: 		AutomaticCtrlBack.RotationCenterLeft = 54;
MOVS	R1, #54
SXTH	R1, R1
MOVW	R0, #lo_addr(_AutomaticCtrlBack+34)
MOVT	R0, #hi_addr(_AutomaticCtrlBack+34)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2404 :: 		AutomaticCtrlBack.RotationCenterTop = 435;
MOVW	R1, #435
SXTH	R1, R1
MOVW	R0, #lo_addr(_AutomaticCtrlBack+36)
MOVT	R0, #hi_addr(_AutomaticCtrlBack+36)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2405 :: 		AutomaticCtrlBack.ScaleX        = 1.0000;
VMOV.F32	S0, #1
MOVW	R0, #lo_addr(_AutomaticCtrlBack+40)
MOVT	R0, #hi_addr(_AutomaticCtrlBack+40)
VSTR	#1, S0, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2406 :: 		AutomaticCtrlBack.ScaleY        = 1.0000;
VMOV.F32	S0, #1
MOVW	R0, #lo_addr(_AutomaticCtrlBack+44)
MOVT	R0, #hi_addr(_AutomaticCtrlBack+44)
VSTR	#1, S0, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2407 :: 		AutomaticCtrlBack.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_AutomaticCtrlBack+48)
MOVT	R0, #hi_addr(_AutomaticCtrlBack+48)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2408 :: 		AutomaticCtrlBack.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_AutomaticCtrlBack+52)
MOVT	R0, #hi_addr(_AutomaticCtrlBack+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2409 :: 		AutomaticCtrlBack.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_AutomaticCtrlBack+56)
MOVT	R0, #hi_addr(_AutomaticCtrlBack+56)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2410 :: 		AutomaticCtrlBack.OnClick       = &AutomaticCtrlBack_OnClick;
MOVW	R1, #lo_addr(_AutomaticCtrlBack_OnClick+0)
MOVT	R1, #hi_addr(_AutomaticCtrlBack_OnClick+0)
MOVW	R0, #lo_addr(_AutomaticCtrlBack+60)
MOVT	R0, #hi_addr(_AutomaticCtrlBack+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2411 :: 		AutomaticCtrlBack.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_AutomaticCtrlBack+64)
MOVT	R0, #hi_addr(_AutomaticCtrlBack+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2413 :: 		AutomaticCtrlBack_OnClick.Action       = AutomaticCtrlBackOnClick;
MOVW	R1, #lo_addr(_AutomaticCtrlBackOnClick+0)
MOVT	R1, #hi_addr(_AutomaticCtrlBackOnClick+0)
MOVW	R0, #lo_addr(_AutomaticCtrlBack_OnClick+0)
MOVT	R0, #hi_addr(_AutomaticCtrlBack_OnClick+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2414 :: 		AutomaticCtrlBack_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
MOVS	R1, #0
MOVW	R0, #lo_addr(_AutomaticCtrlBack_OnClick+4)
MOVT	R0, #hi_addr(_AutomaticCtrlBack_OnClick+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2415 :: 		AutomaticCtrlBack_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
MOVS	R1, #65
MOVW	R0, #lo_addr(_AutomaticCtrlBack_OnClick+5)
MOVT	R0, #hi_addr(_AutomaticCtrlBack_OnClick+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2416 :: 		AutomaticCtrlBack_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
MOVS	R1, #81
MOVW	R0, #lo_addr(_AutomaticCtrlBack_OnClick+6)
MOVT	R0, #hi_addr(_AutomaticCtrlBack_OnClick+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2417 :: 		AutomaticCtrlBack_OnClick.Sound.Volume = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_AutomaticCtrlBack_OnClick+7)
MOVT	R0, #hi_addr(_AutomaticCtrlBack_OnClick+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2419 :: 		Image3.OwnerScreen   = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_Image3+0)
MOVT	R0, #hi_addr(_Image3+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2420 :: 		Image3.Order         = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_Image3+4)
MOVT	R0, #hi_addr(_Image3+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2421 :: 		Image3.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Image3+5)
MOVT	R0, #hi_addr(_Image3+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2422 :: 		Image3.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Image3+6)
MOVT	R0, #hi_addr(_Image3+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2423 :: 		Image3.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Image3+7)
MOVT	R0, #hi_addr(_Image3+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2424 :: 		Image3.Left          = 736;
MOVW	R1, #736
SXTH	R1, R1
MOVW	R0, #lo_addr(_Image3+8)
MOVT	R0, #hi_addr(_Image3+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2425 :: 		Image3.Top           = 23;
MOVS	R1, #23
SXTH	R1, R1
MOVW	R0, #lo_addr(_Image3+10)
MOVT	R0, #hi_addr(_Image3+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2426 :: 		Image3.Width         = 36;
MOVS	R1, #36
SXTH	R1, R1
MOVW	R0, #lo_addr(_Image3+12)
MOVT	R0, #hi_addr(_Image3+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2427 :: 		Image3.Height        = 36;
MOVS	R1, #36
SXTH	R1, R1
MOVW	R0, #lo_addr(_Image3+14)
MOVT	R0, #hi_addr(_Image3+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2428 :: 		Image3.Picture_Name  = fuel_dispensersm_bmp;
MOVW	R1, #63642
MOVW	R0, #lo_addr(_Image3+16)
MOVT	R0, #hi_addr(_Image3+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2429 :: 		Image3.Picture_Type  = 7;
MOVS	R1, #7
MOVW	R0, #lo_addr(_Image3+20)
MOVT	R0, #hi_addr(_Image3+20)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2430 :: 		Image3.Picture_Ratio = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Image3+21)
MOVT	R0, #hi_addr(_Image3+21)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2431 :: 		Image3.Blend_Color   = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_Image3+24)
MOVT	R0, #hi_addr(_Image3+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2432 :: 		Image3.Source        = -1L;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Image3+28)
MOVT	R0, #hi_addr(_Image3+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2433 :: 		Image3.RotationAngle = 0;
MOVS	R1, #0
SXTH	R1, R1
MOVW	R0, #lo_addr(_Image3+32)
MOVT	R0, #hi_addr(_Image3+32)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2434 :: 		Image3.RotationCenterLeft = 753;
MOVW	R1, #753
SXTH	R1, R1
MOVW	R0, #lo_addr(_Image3+34)
MOVT	R0, #hi_addr(_Image3+34)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2435 :: 		Image3.RotationCenterTop = 41;
MOVS	R1, #41
SXTH	R1, R1
MOVW	R0, #lo_addr(_Image3+36)
MOVT	R0, #hi_addr(_Image3+36)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2436 :: 		Image3.ScaleX        = 1.0000;
VMOV.F32	S0, #1
MOVW	R0, #lo_addr(_Image3+40)
MOVT	R0, #hi_addr(_Image3+40)
VSTR	#1, S0, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2437 :: 		Image3.ScaleY        = 1.0000;
VMOV.F32	S0, #1
MOVW	R0, #lo_addr(_Image3+44)
MOVT	R0, #hi_addr(_Image3+44)
VSTR	#1, S0, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2438 :: 		Image3.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Image3+48)
MOVT	R0, #hi_addr(_Image3+48)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2439 :: 		Image3.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Image3+52)
MOVT	R0, #hi_addr(_Image3+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2440 :: 		Image3.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Image3+56)
MOVT	R0, #hi_addr(_Image3+56)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2441 :: 		Image3.OnClick       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Image3+60)
MOVT	R0, #hi_addr(_Image3+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2442 :: 		Image3.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Image3+64)
MOVT	R0, #hi_addr(_Image3+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2444 :: 		Image4.OwnerScreen   = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_Image4+0)
MOVT	R0, #hi_addr(_Image4+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2445 :: 		Image4.Order         = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_Image4+4)
MOVT	R0, #hi_addr(_Image4+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2446 :: 		Image4.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Image4+5)
MOVT	R0, #hi_addr(_Image4+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2447 :: 		Image4.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Image4+6)
MOVT	R0, #hi_addr(_Image4+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2448 :: 		Image4.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Image4+7)
MOVT	R0, #hi_addr(_Image4+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2449 :: 		Image4.Left          = 732;
MOVW	R1, #732
SXTH	R1, R1
MOVW	R0, #lo_addr(_Image4+8)
MOVT	R0, #hi_addr(_Image4+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2450 :: 		Image4.Top           = 66;
MOVS	R1, #66
SXTH	R1, R1
MOVW	R0, #lo_addr(_Image4+10)
MOVT	R0, #hi_addr(_Image4+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2451 :: 		Image4.Width         = 50;
MOVS	R1, #50
SXTH	R1, R1
MOVW	R0, #lo_addr(_Image4+12)
MOVT	R0, #hi_addr(_Image4+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2452 :: 		Image4.Height        = 50;
MOVS	R1, #50
SXTH	R1, R1
MOVW	R0, #lo_addr(_Image4+14)
MOVT	R0, #hi_addr(_Image4+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2453 :: 		Image4.Picture_Name  = CarOilsm_bmp;
MOVW	R1, #704
MOVT	R1, #1
MOVW	R0, #lo_addr(_Image4+16)
MOVT	R0, #hi_addr(_Image4+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2454 :: 		Image4.Picture_Type  = 7;
MOVS	R1, #7
MOVW	R0, #lo_addr(_Image4+20)
MOVT	R0, #hi_addr(_Image4+20)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2455 :: 		Image4.Picture_Ratio = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Image4+21)
MOVT	R0, #hi_addr(_Image4+21)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2456 :: 		Image4.Blend_Color   = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_Image4+24)
MOVT	R0, #hi_addr(_Image4+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2457 :: 		Image4.Source        = -1L;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Image4+28)
MOVT	R0, #hi_addr(_Image4+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2458 :: 		Image4.RotationAngle = 0;
MOVS	R1, #0
SXTH	R1, R1
MOVW	R0, #lo_addr(_Image4+32)
MOVT	R0, #hi_addr(_Image4+32)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2459 :: 		Image4.RotationCenterLeft = 756;
MOVW	R1, #756
SXTH	R1, R1
MOVW	R0, #lo_addr(_Image4+34)
MOVT	R0, #hi_addr(_Image4+34)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2460 :: 		Image4.RotationCenterTop = 90;
MOVS	R1, #90
SXTH	R1, R1
MOVW	R0, #lo_addr(_Image4+36)
MOVT	R0, #hi_addr(_Image4+36)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2461 :: 		Image4.ScaleX        = 1.0000;
VMOV.F32	S0, #1
MOVW	R0, #lo_addr(_Image4+40)
MOVT	R0, #hi_addr(_Image4+40)
VSTR	#1, S0, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2462 :: 		Image4.ScaleY        = 1.0000;
VMOV.F32	S0, #1
MOVW	R0, #lo_addr(_Image4+44)
MOVT	R0, #hi_addr(_Image4+44)
VSTR	#1, S0, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2463 :: 		Image4.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Image4+48)
MOVT	R0, #hi_addr(_Image4+48)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2464 :: 		Image4.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Image4+52)
MOVT	R0, #hi_addr(_Image4+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2465 :: 		Image4.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Image4+56)
MOVT	R0, #hi_addr(_Image4+56)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2466 :: 		Image4.OnClick       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Image4+60)
MOVT	R0, #hi_addr(_Image4+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2467 :: 		Image4.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Image4+64)
MOVT	R0, #hi_addr(_Image4+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2469 :: 		FuelPrgAut.OwnerScreen      = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_FuelPrgAut+0)
MOVT	R0, #hi_addr(_FuelPrgAut+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2470 :: 		FuelPrgAut.Order            = 4;
MOVS	R1, #4
MOVW	R0, #lo_addr(_FuelPrgAut+4)
MOVT	R0, #hi_addr(_FuelPrgAut+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2471 :: 		FuelPrgAut.Visible          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_FuelPrgAut+5)
MOVT	R0, #hi_addr(_FuelPrgAut+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2472 :: 		FuelPrgAut.Opacity          = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_FuelPrgAut+6)
MOVT	R0, #hi_addr(_FuelPrgAut+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2473 :: 		FuelPrgAut.Tag              = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_FuelPrgAut+7)
MOVT	R0, #hi_addr(_FuelPrgAut+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2474 :: 		FuelPrgAut.Left             = 570;
MOVW	R1, #570
SXTH	R1, R1
MOVW	R0, #lo_addr(_FuelPrgAut+8)
MOVT	R0, #hi_addr(_FuelPrgAut+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2475 :: 		FuelPrgAut.Top              = 25;
MOVS	R1, #25
SXTH	R1, R1
MOVW	R0, #lo_addr(_FuelPrgAut+10)
MOVT	R0, #hi_addr(_FuelPrgAut+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2476 :: 		FuelPrgAut.Width            = 150;
MOVS	R1, #150
SXTH	R1, R1
MOVW	R0, #lo_addr(_FuelPrgAut+12)
MOVT	R0, #hi_addr(_FuelPrgAut+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2477 :: 		FuelPrgAut.Height           = 30;
MOVS	R1, #30
SXTH	R1, R1
MOVW	R0, #lo_addr(_FuelPrgAut+14)
MOVT	R0, #hi_addr(_FuelPrgAut+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2478 :: 		FuelPrgAut.Pen_Width        = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_FuelPrgAut+16)
MOVT	R0, #hi_addr(_FuelPrgAut+16)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2479 :: 		FuelPrgAut.Pen_Color        = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FuelPrgAut+20)
MOVT	R0, #hi_addr(_FuelPrgAut+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2480 :: 		FuelPrgAut.Background_Color = 0xC0C0C0;
MOVW	R1, #49344
MOVT	R1, #192
MOVW	R0, #lo_addr(_FuelPrgAut+24)
MOVT	R0, #hi_addr(_FuelPrgAut+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2481 :: 		FuelPrgAut.Color            = 0x80FF;
MOVW	R1, #33023
MOVW	R0, #lo_addr(_FuelPrgAut+28)
MOVT	R0, #hi_addr(_FuelPrgAut+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2482 :: 		FuelPrgAut.Caption          = FuelPrgAut_Caption;
MOVW	R1, #lo_addr(_FuelPrgAut_Caption+0)
MOVT	R1, #hi_addr(_FuelPrgAut_Caption+0)
MOVW	R0, #lo_addr(_FuelPrgAut+32)
MOVT	R0, #hi_addr(_FuelPrgAut+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2483 :: 		FuelPrgAut.FontName         = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_FuelPrgAut+36)
MOVT	R0, #hi_addr(_FuelPrgAut+36)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2484 :: 		FuelPrgAut.Font_Color       = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FuelPrgAut+40)
MOVT	R0, #hi_addr(_FuelPrgAut+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2485 :: 		FuelPrgAut.FontHandle       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_FuelPrgAut+44)
MOVT	R0, #hi_addr(_FuelPrgAut+44)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2486 :: 		FuelPrgAut.Source           = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_FuelPrgAut+48)
MOVT	R0, #hi_addr(_FuelPrgAut+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2487 :: 		FuelPrgAut.Corner_Radius    = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_FuelPrgAut+52)
MOVT	R0, #hi_addr(_FuelPrgAut+52)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2488 :: 		FuelPrgAut.Min              = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FuelPrgAut+54)
MOVT	R0, #hi_addr(_FuelPrgAut+54)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2489 :: 		FuelPrgAut.Max              = 100;
MOVS	R1, #100
MOVW	R0, #lo_addr(_FuelPrgAut+56)
MOVT	R0, #hi_addr(_FuelPrgAut+56)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2490 :: 		FuelPrgAut.Position         = 50;
MOVS	R1, #50
MOVW	R0, #lo_addr(_FuelPrgAut+58)
MOVT	R0, #hi_addr(_FuelPrgAut+58)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2491 :: 		FuelPrgAut.Show_Position    = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_FuelPrgAut+60)
MOVT	R0, #hi_addr(_FuelPrgAut+60)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2492 :: 		FuelPrgAut.Show_Percentage  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_FuelPrgAut+61)
MOVT	R0, #hi_addr(_FuelPrgAut+61)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2493 :: 		FuelPrgAut.Smooth           = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_FuelPrgAut+62)
MOVT	R0, #hi_addr(_FuelPrgAut+62)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2495 :: 		OilPrgAut.OwnerScreen      = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_OilPrgAut+0)
MOVT	R0, #hi_addr(_OilPrgAut+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2496 :: 		OilPrgAut.Order            = 5;
MOVS	R1, #5
MOVW	R0, #lo_addr(_OilPrgAut+4)
MOVT	R0, #hi_addr(_OilPrgAut+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2497 :: 		OilPrgAut.Visible          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_OilPrgAut+5)
MOVT	R0, #hi_addr(_OilPrgAut+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2498 :: 		OilPrgAut.Opacity          = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_OilPrgAut+6)
MOVT	R0, #hi_addr(_OilPrgAut+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2499 :: 		OilPrgAut.Tag              = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_OilPrgAut+7)
MOVT	R0, #hi_addr(_OilPrgAut+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2500 :: 		OilPrgAut.Left             = 570;
MOVW	R1, #570
SXTH	R1, R1
MOVW	R0, #lo_addr(_OilPrgAut+8)
MOVT	R0, #hi_addr(_OilPrgAut+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2501 :: 		OilPrgAut.Top              = 75;
MOVS	R1, #75
SXTH	R1, R1
MOVW	R0, #lo_addr(_OilPrgAut+10)
MOVT	R0, #hi_addr(_OilPrgAut+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2502 :: 		OilPrgAut.Width            = 150;
MOVS	R1, #150
SXTH	R1, R1
MOVW	R0, #lo_addr(_OilPrgAut+12)
MOVT	R0, #hi_addr(_OilPrgAut+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2503 :: 		OilPrgAut.Height           = 30;
MOVS	R1, #30
SXTH	R1, R1
MOVW	R0, #lo_addr(_OilPrgAut+14)
MOVT	R0, #hi_addr(_OilPrgAut+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2504 :: 		OilPrgAut.Pen_Width        = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_OilPrgAut+16)
MOVT	R0, #hi_addr(_OilPrgAut+16)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2505 :: 		OilPrgAut.Pen_Color        = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_OilPrgAut+20)
MOVT	R0, #hi_addr(_OilPrgAut+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2506 :: 		OilPrgAut.Background_Color = 0xC0C0C0;
MOVW	R1, #49344
MOVT	R1, #192
MOVW	R0, #lo_addr(_OilPrgAut+24)
MOVT	R0, #hi_addr(_OilPrgAut+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2507 :: 		OilPrgAut.Color            = 0x80FF;
MOVW	R1, #33023
MOVW	R0, #lo_addr(_OilPrgAut+28)
MOVT	R0, #hi_addr(_OilPrgAut+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2508 :: 		OilPrgAut.Caption          = OilPrgAut_Caption;
MOVW	R1, #lo_addr(_OilPrgAut_Caption+0)
MOVT	R1, #hi_addr(_OilPrgAut_Caption+0)
MOVW	R0, #lo_addr(_OilPrgAut+32)
MOVT	R0, #hi_addr(_OilPrgAut+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2509 :: 		OilPrgAut.FontName         = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_OilPrgAut+36)
MOVT	R0, #hi_addr(_OilPrgAut+36)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2510 :: 		OilPrgAut.Font_Color       = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_OilPrgAut+40)
MOVT	R0, #hi_addr(_OilPrgAut+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2511 :: 		OilPrgAut.FontHandle       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_OilPrgAut+44)
MOVT	R0, #hi_addr(_OilPrgAut+44)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2512 :: 		OilPrgAut.Source           = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_OilPrgAut+48)
MOVT	R0, #hi_addr(_OilPrgAut+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2513 :: 		OilPrgAut.Corner_Radius    = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_OilPrgAut+52)
MOVT	R0, #hi_addr(_OilPrgAut+52)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2514 :: 		OilPrgAut.Min              = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_OilPrgAut+54)
MOVT	R0, #hi_addr(_OilPrgAut+54)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2515 :: 		OilPrgAut.Max              = 100;
MOVS	R1, #100
MOVW	R0, #lo_addr(_OilPrgAut+56)
MOVT	R0, #hi_addr(_OilPrgAut+56)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2516 :: 		OilPrgAut.Position         = 50;
MOVS	R1, #50
MOVW	R0, #lo_addr(_OilPrgAut+58)
MOVT	R0, #hi_addr(_OilPrgAut+58)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2517 :: 		OilPrgAut.Show_Position    = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_OilPrgAut+60)
MOVT	R0, #hi_addr(_OilPrgAut+60)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2518 :: 		OilPrgAut.Show_Percentage  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_OilPrgAut+61)
MOVT	R0, #hi_addr(_OilPrgAut+61)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2519 :: 		OilPrgAut.Smooth           = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_OilPrgAut+62)
MOVT	R0, #hi_addr(_OilPrgAut+62)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2521 :: 		StrStrButtAut.OwnerScreen   = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_StrStrButtAut+0)
MOVT	R0, #hi_addr(_StrStrButtAut+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2522 :: 		StrStrButtAut.Order         = 6;
MOVS	R1, #6
MOVW	R0, #lo_addr(_StrStrButtAut+4)
MOVT	R0, #hi_addr(_StrStrButtAut+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2523 :: 		StrStrButtAut.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_StrStrButtAut+5)
MOVT	R0, #hi_addr(_StrStrButtAut+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2524 :: 		StrStrButtAut.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_StrStrButtAut+6)
MOVT	R0, #hi_addr(_StrStrButtAut+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2525 :: 		StrStrButtAut.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_StrStrButtAut+7)
MOVT	R0, #hi_addr(_StrStrButtAut+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2526 :: 		StrStrButtAut.Left          = 170;
MOVS	R1, #170
SXTH	R1, R1
MOVW	R0, #lo_addr(_StrStrButtAut+8)
MOVT	R0, #hi_addr(_StrStrButtAut+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2527 :: 		StrStrButtAut.Top           = 410;
MOVW	R1, #410
SXTH	R1, R1
MOVW	R0, #lo_addr(_StrStrButtAut+10)
MOVT	R0, #hi_addr(_StrStrButtAut+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2528 :: 		StrStrButtAut.Width         = 115;
MOVS	R1, #115
SXTH	R1, R1
MOVW	R0, #lo_addr(_StrStrButtAut+12)
MOVT	R0, #hi_addr(_StrStrButtAut+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2529 :: 		StrStrButtAut.Height        = 42;
MOVS	R1, #42
SXTH	R1, R1
MOVW	R0, #lo_addr(_StrStrButtAut+14)
MOVT	R0, #hi_addr(_StrStrButtAut+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2530 :: 		StrStrButtAut.Color         = 0x278D1;
MOVW	R1, #30929
MOVT	R1, #2
MOVW	R0, #lo_addr(_StrStrButtAut+16)
MOVT	R0, #hi_addr(_StrStrButtAut+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2531 :: 		StrStrButtAut.Press_Color   = 0x7AC6FE;
MOVW	R1, #50942
MOVT	R1, #122
MOVW	R0, #lo_addr(_StrStrButtAut+20)
MOVT	R0, #hi_addr(_StrStrButtAut+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2532 :: 		StrStrButtAut.ColorTo       = 0x7AC6FE;
MOVW	R1, #50942
MOVT	R1, #122
MOVW	R0, #lo_addr(_StrStrButtAut+24)
MOVT	R0, #hi_addr(_StrStrButtAut+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2533 :: 		StrStrButtAut.Press_ColorTo = 0x278D1;
MOVW	R1, #30929
MOVT	R1, #2
MOVW	R0, #lo_addr(_StrStrButtAut+28)
MOVT	R0, #hi_addr(_StrStrButtAut+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2534 :: 		StrStrButtAut.Caption       = StrStrButtAut_Caption;
MOVW	R1, #lo_addr(_StrStrButtAut_Caption+0)
MOVT	R1, #hi_addr(_StrStrButtAut_Caption+0)
MOVW	R0, #lo_addr(_StrStrButtAut+32)
MOVT	R0, #hi_addr(_StrStrButtAut+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2535 :: 		StrStrButtAut.FontName      = Tahoma_19x23_Bold;
MOVW	R1, #17125
MOVW	R0, #lo_addr(_StrStrButtAut+36)
MOVT	R0, #hi_addr(_StrStrButtAut+36)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2536 :: 		StrStrButtAut.Font_Color    = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_StrStrButtAut+40)
MOVT	R0, #hi_addr(_StrStrButtAut+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2537 :: 		StrStrButtAut.FontHandle    = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_StrStrButtAut+44)
MOVT	R0, #hi_addr(_StrStrButtAut+44)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2538 :: 		StrStrButtAut.Source        = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_StrStrButtAut+48)
MOVT	R0, #hi_addr(_StrStrButtAut+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2539 :: 		StrStrButtAut.Flat          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_StrStrButtAut+52)
MOVT	R0, #hi_addr(_StrStrButtAut+52)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2540 :: 		StrStrButtAut.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_StrStrButtAut+53)
MOVT	R0, #hi_addr(_StrStrButtAut+53)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2541 :: 		StrStrButtAut.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_StrStrButtAut+56)
MOVT	R0, #hi_addr(_StrStrButtAut+56)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2542 :: 		StrStrButtAut.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_StrStrButtAut+60)
MOVT	R0, #hi_addr(_StrStrButtAut+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2543 :: 		StrStrButtAut.OnClick       = &StrStrButtAut_OnClick;
MOVW	R1, #lo_addr(_StrStrButtAut_OnClick+0)
MOVT	R1, #hi_addr(_StrStrButtAut_OnClick+0)
MOVW	R0, #lo_addr(_StrStrButtAut+64)
MOVT	R0, #hi_addr(_StrStrButtAut+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2544 :: 		StrStrButtAut.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_StrStrButtAut+68)
MOVT	R0, #hi_addr(_StrStrButtAut+68)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2546 :: 		StrStrButtAut_OnClick.Action       = StrStrButtAutOnClick;
MOVW	R1, #lo_addr(_StrStrButtAutOnClick+0)
MOVT	R1, #hi_addr(_StrStrButtAutOnClick+0)
MOVW	R0, #lo_addr(_StrStrButtAut_OnClick+0)
MOVT	R0, #hi_addr(_StrStrButtAut_OnClick+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2547 :: 		StrStrButtAut_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
MOVS	R1, #0
MOVW	R0, #lo_addr(_StrStrButtAut_OnClick+4)
MOVT	R0, #hi_addr(_StrStrButtAut_OnClick+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2548 :: 		StrStrButtAut_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
MOVS	R1, #65
MOVW	R0, #lo_addr(_StrStrButtAut_OnClick+5)
MOVT	R0, #hi_addr(_StrStrButtAut_OnClick+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2549 :: 		StrStrButtAut_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
MOVS	R1, #81
MOVW	R0, #lo_addr(_StrStrButtAut_OnClick+6)
MOVT	R0, #hi_addr(_StrStrButtAut_OnClick+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2550 :: 		StrStrButtAut_OnClick.Sound.Volume = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_StrStrButtAut_OnClick+7)
MOVT	R0, #hi_addr(_StrStrButtAut_OnClick+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2552 :: 		StrPumButtAut.OwnerScreen   = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_StrPumButtAut+0)
MOVT	R0, #hi_addr(_StrPumButtAut+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2553 :: 		StrPumButtAut.Order         = 7;
MOVS	R1, #7
MOVW	R0, #lo_addr(_StrPumButtAut+4)
MOVT	R0, #hi_addr(_StrPumButtAut+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2554 :: 		StrPumButtAut.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_StrPumButtAut+5)
MOVT	R0, #hi_addr(_StrPumButtAut+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2555 :: 		StrPumButtAut.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_StrPumButtAut+6)
MOVT	R0, #hi_addr(_StrPumButtAut+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2556 :: 		StrPumButtAut.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_StrPumButtAut+7)
MOVT	R0, #hi_addr(_StrPumButtAut+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2557 :: 		StrPumButtAut.Left          = 290;
MOVW	R1, #290
SXTH	R1, R1
MOVW	R0, #lo_addr(_StrPumButtAut+8)
MOVT	R0, #hi_addr(_StrPumButtAut+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2558 :: 		StrPumButtAut.Top           = 410;
MOVW	R1, #410
SXTH	R1, R1
MOVW	R0, #lo_addr(_StrPumButtAut+10)
MOVT	R0, #hi_addr(_StrPumButtAut+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2559 :: 		StrPumButtAut.Width         = 115;
MOVS	R1, #115
SXTH	R1, R1
MOVW	R0, #lo_addr(_StrPumButtAut+12)
MOVT	R0, #hi_addr(_StrPumButtAut+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2560 :: 		StrPumButtAut.Height        = 42;
MOVS	R1, #42
SXTH	R1, R1
MOVW	R0, #lo_addr(_StrPumButtAut+14)
MOVT	R0, #hi_addr(_StrPumButtAut+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2561 :: 		StrPumButtAut.Color         = 0x278D1;
MOVW	R1, #30929
MOVT	R1, #2
MOVW	R0, #lo_addr(_StrPumButtAut+16)
MOVT	R0, #hi_addr(_StrPumButtAut+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2562 :: 		StrPumButtAut.Press_Color   = 0x7AC6FE;
MOVW	R1, #50942
MOVT	R1, #122
MOVW	R0, #lo_addr(_StrPumButtAut+20)
MOVT	R0, #hi_addr(_StrPumButtAut+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2563 :: 		StrPumButtAut.ColorTo       = 0x7AC6FE;
MOVW	R1, #50942
MOVT	R1, #122
MOVW	R0, #lo_addr(_StrPumButtAut+24)
MOVT	R0, #hi_addr(_StrPumButtAut+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2564 :: 		StrPumButtAut.Press_ColorTo = 0x278D1;
MOVW	R1, #30929
MOVT	R1, #2
MOVW	R0, #lo_addr(_StrPumButtAut+28)
MOVT	R0, #hi_addr(_StrPumButtAut+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2565 :: 		StrPumButtAut.Caption       = StrPumButtAut_Caption;
MOVW	R1, #lo_addr(_StrPumButtAut_Caption+0)
MOVT	R1, #hi_addr(_StrPumButtAut_Caption+0)
MOVW	R0, #lo_addr(_StrPumButtAut+32)
MOVT	R0, #hi_addr(_StrPumButtAut+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2566 :: 		StrPumButtAut.FontName      = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_StrPumButtAut+36)
MOVT	R0, #hi_addr(_StrPumButtAut+36)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2567 :: 		StrPumButtAut.Font_Color    = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_StrPumButtAut+40)
MOVT	R0, #hi_addr(_StrPumButtAut+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2568 :: 		StrPumButtAut.FontHandle    = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_StrPumButtAut+44)
MOVT	R0, #hi_addr(_StrPumButtAut+44)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2569 :: 		StrPumButtAut.Source        = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_StrPumButtAut+48)
MOVT	R0, #hi_addr(_StrPumButtAut+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2570 :: 		StrPumButtAut.Flat          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_StrPumButtAut+52)
MOVT	R0, #hi_addr(_StrPumButtAut+52)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2571 :: 		StrPumButtAut.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_StrPumButtAut+53)
MOVT	R0, #hi_addr(_StrPumButtAut+53)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2572 :: 		StrPumButtAut.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_StrPumButtAut+56)
MOVT	R0, #hi_addr(_StrPumButtAut+56)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2573 :: 		StrPumButtAut.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_StrPumButtAut+60)
MOVT	R0, #hi_addr(_StrPumButtAut+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2574 :: 		StrPumButtAut.OnClick       = &StrPumButtAut_OnClick;
MOVW	R1, #lo_addr(_StrPumButtAut_OnClick+0)
MOVT	R1, #hi_addr(_StrPumButtAut_OnClick+0)
MOVW	R0, #lo_addr(_StrPumButtAut+64)
MOVT	R0, #hi_addr(_StrPumButtAut+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2575 :: 		StrPumButtAut.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_StrPumButtAut+68)
MOVT	R0, #hi_addr(_StrPumButtAut+68)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2577 :: 		StrPumButtAut_OnClick.Action       = StrPumButtAutOnClick;
MOVW	R1, #lo_addr(_StrPumButtAutOnClick+0)
MOVT	R1, #hi_addr(_StrPumButtAutOnClick+0)
MOVW	R0, #lo_addr(_StrPumButtAut_OnClick+0)
MOVT	R0, #hi_addr(_StrPumButtAut_OnClick+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2578 :: 		StrPumButtAut_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
MOVS	R1, #0
MOVW	R0, #lo_addr(_StrPumButtAut_OnClick+4)
MOVT	R0, #hi_addr(_StrPumButtAut_OnClick+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2579 :: 		StrPumButtAut_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
MOVS	R1, #65
MOVW	R0, #lo_addr(_StrPumButtAut_OnClick+5)
MOVT	R0, #hi_addr(_StrPumButtAut_OnClick+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2580 :: 		StrPumButtAut_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
MOVS	R1, #81
MOVW	R0, #lo_addr(_StrPumButtAut_OnClick+6)
MOVT	R0, #hi_addr(_StrPumButtAut_OnClick+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2581 :: 		StrPumButtAut_OnClick.Sound.Volume = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_StrPumButtAut_OnClick+7)
MOVT	R0, #hi_addr(_StrPumButtAut_OnClick+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2583 :: 		StrEngButtAut.OwnerScreen   = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_StrEngButtAut+0)
MOVT	R0, #hi_addr(_StrEngButtAut+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2584 :: 		StrEngButtAut.Order         = 8;
MOVS	R1, #8
MOVW	R0, #lo_addr(_StrEngButtAut+4)
MOVT	R0, #hi_addr(_StrEngButtAut+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2585 :: 		StrEngButtAut.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_StrEngButtAut+5)
MOVT	R0, #hi_addr(_StrEngButtAut+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2586 :: 		StrEngButtAut.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_StrEngButtAut+6)
MOVT	R0, #hi_addr(_StrEngButtAut+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2587 :: 		StrEngButtAut.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_StrEngButtAut+7)
MOVT	R0, #hi_addr(_StrEngButtAut+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2588 :: 		StrEngButtAut.Left          = 410;
MOVW	R1, #410
SXTH	R1, R1
MOVW	R0, #lo_addr(_StrEngButtAut+8)
MOVT	R0, #hi_addr(_StrEngButtAut+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2589 :: 		StrEngButtAut.Top           = 410;
MOVW	R1, #410
SXTH	R1, R1
MOVW	R0, #lo_addr(_StrEngButtAut+10)
MOVT	R0, #hi_addr(_StrEngButtAut+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2590 :: 		StrEngButtAut.Width         = 135;
MOVS	R1, #135
SXTH	R1, R1
MOVW	R0, #lo_addr(_StrEngButtAut+12)
MOVT	R0, #hi_addr(_StrEngButtAut+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2591 :: 		StrEngButtAut.Height        = 43;
MOVS	R1, #43
SXTH	R1, R1
MOVW	R0, #lo_addr(_StrEngButtAut+14)
MOVT	R0, #hi_addr(_StrEngButtAut+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2592 :: 		StrEngButtAut.Color         = 0x278D1;
MOVW	R1, #30929
MOVT	R1, #2
MOVW	R0, #lo_addr(_StrEngButtAut+16)
MOVT	R0, #hi_addr(_StrEngButtAut+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2593 :: 		StrEngButtAut.Press_Color   = 0x7AC6FE;
MOVW	R1, #50942
MOVT	R1, #122
MOVW	R0, #lo_addr(_StrEngButtAut+20)
MOVT	R0, #hi_addr(_StrEngButtAut+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2594 :: 		StrEngButtAut.ColorTo       = 0x7AC6FE;
MOVW	R1, #50942
MOVT	R1, #122
MOVW	R0, #lo_addr(_StrEngButtAut+24)
MOVT	R0, #hi_addr(_StrEngButtAut+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2595 :: 		StrEngButtAut.Press_ColorTo = 0x278D1;
MOVW	R1, #30929
MOVT	R1, #2
MOVW	R0, #lo_addr(_StrEngButtAut+28)
MOVT	R0, #hi_addr(_StrEngButtAut+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2596 :: 		StrEngButtAut.Caption       = StrEngButtAut_Caption;
MOVW	R1, #lo_addr(_StrEngButtAut_Caption+0)
MOVT	R1, #hi_addr(_StrEngButtAut_Caption+0)
MOVW	R0, #lo_addr(_StrEngButtAut+32)
MOVT	R0, #hi_addr(_StrEngButtAut+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2597 :: 		StrEngButtAut.FontName      = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_StrEngButtAut+36)
MOVT	R0, #hi_addr(_StrEngButtAut+36)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2598 :: 		StrEngButtAut.Font_Color    = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_StrEngButtAut+40)
MOVT	R0, #hi_addr(_StrEngButtAut+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2599 :: 		StrEngButtAut.FontHandle    = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_StrEngButtAut+44)
MOVT	R0, #hi_addr(_StrEngButtAut+44)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2600 :: 		StrEngButtAut.Source        = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_StrEngButtAut+48)
MOVT	R0, #hi_addr(_StrEngButtAut+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2601 :: 		StrEngButtAut.Flat          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_StrEngButtAut+52)
MOVT	R0, #hi_addr(_StrEngButtAut+52)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2602 :: 		StrEngButtAut.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_StrEngButtAut+53)
MOVT	R0, #hi_addr(_StrEngButtAut+53)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2603 :: 		StrEngButtAut.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_StrEngButtAut+56)
MOVT	R0, #hi_addr(_StrEngButtAut+56)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2604 :: 		StrEngButtAut.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_StrEngButtAut+60)
MOVT	R0, #hi_addr(_StrEngButtAut+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2605 :: 		StrEngButtAut.OnClick       = &StrEngButtAut_OnClick;
MOVW	R1, #lo_addr(_StrEngButtAut_OnClick+0)
MOVT	R1, #hi_addr(_StrEngButtAut_OnClick+0)
MOVW	R0, #lo_addr(_StrEngButtAut+64)
MOVT	R0, #hi_addr(_StrEngButtAut+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2606 :: 		StrEngButtAut.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_StrEngButtAut+68)
MOVT	R0, #hi_addr(_StrEngButtAut+68)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2608 :: 		StrEngButtAut_OnClick.Action       = StrEngButtAutOnClick;
MOVW	R1, #lo_addr(_StrEngButtAutOnClick+0)
MOVT	R1, #hi_addr(_StrEngButtAutOnClick+0)
MOVW	R0, #lo_addr(_StrEngButtAut_OnClick+0)
MOVT	R0, #hi_addr(_StrEngButtAut_OnClick+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2609 :: 		StrEngButtAut_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
MOVS	R1, #0
MOVW	R0, #lo_addr(_StrEngButtAut_OnClick+4)
MOVT	R0, #hi_addr(_StrEngButtAut_OnClick+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2610 :: 		StrEngButtAut_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
MOVS	R1, #65
MOVW	R0, #lo_addr(_StrEngButtAut_OnClick+5)
MOVT	R0, #hi_addr(_StrEngButtAut_OnClick+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2611 :: 		StrEngButtAut_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
MOVS	R1, #81
MOVW	R0, #lo_addr(_StrEngButtAut_OnClick+6)
MOVT	R0, #hi_addr(_StrEngButtAut_OnClick+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2612 :: 		StrEngButtAut_OnClick.Sound.Volume = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_StrEngButtAut_OnClick+7)
MOVT	R0, #hi_addr(_StrEngButtAut_OnClick+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2614 :: 		FinButtAut.OwnerScreen   = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_FinButtAut+0)
MOVT	R0, #hi_addr(_FinButtAut+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2615 :: 		FinButtAut.Order         = 9;
MOVS	R1, #9
MOVW	R0, #lo_addr(_FinButtAut+4)
MOVT	R0, #hi_addr(_FinButtAut+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2616 :: 		FinButtAut.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_FinButtAut+5)
MOVT	R0, #hi_addr(_FinButtAut+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2617 :: 		FinButtAut.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_FinButtAut+6)
MOVT	R0, #hi_addr(_FinButtAut+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2618 :: 		FinButtAut.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_FinButtAut+7)
MOVT	R0, #hi_addr(_FinButtAut+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2619 :: 		FinButtAut.Left          = 550;
MOVW	R1, #550
SXTH	R1, R1
MOVW	R0, #lo_addr(_FinButtAut+8)
MOVT	R0, #hi_addr(_FinButtAut+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2620 :: 		FinButtAut.Top           = 410;
MOVW	R1, #410
SXTH	R1, R1
MOVW	R0, #lo_addr(_FinButtAut+10)
MOVT	R0, #hi_addr(_FinButtAut+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2621 :: 		FinButtAut.Width         = 115;
MOVS	R1, #115
SXTH	R1, R1
MOVW	R0, #lo_addr(_FinButtAut+12)
MOVT	R0, #hi_addr(_FinButtAut+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2622 :: 		FinButtAut.Height        = 43;
MOVS	R1, #43
SXTH	R1, R1
MOVW	R0, #lo_addr(_FinButtAut+14)
MOVT	R0, #hi_addr(_FinButtAut+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2623 :: 		FinButtAut.Color         = 0x278D1;
MOVW	R1, #30929
MOVT	R1, #2
MOVW	R0, #lo_addr(_FinButtAut+16)
MOVT	R0, #hi_addr(_FinButtAut+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2624 :: 		FinButtAut.Press_Color   = 0x7AC6FE;
MOVW	R1, #50942
MOVT	R1, #122
MOVW	R0, #lo_addr(_FinButtAut+20)
MOVT	R0, #hi_addr(_FinButtAut+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2625 :: 		FinButtAut.ColorTo       = 0x7AC6FE;
MOVW	R1, #50942
MOVT	R1, #122
MOVW	R0, #lo_addr(_FinButtAut+24)
MOVT	R0, #hi_addr(_FinButtAut+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2626 :: 		FinButtAut.Press_ColorTo = 0x278D1;
MOVW	R1, #30929
MOVT	R1, #2
MOVW	R0, #lo_addr(_FinButtAut+28)
MOVT	R0, #hi_addr(_FinButtAut+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2627 :: 		FinButtAut.Caption       = FinButtAut_Caption;
MOVW	R1, #lo_addr(_FinButtAut_Caption+0)
MOVT	R1, #hi_addr(_FinButtAut_Caption+0)
MOVW	R0, #lo_addr(_FinButtAut+32)
MOVT	R0, #hi_addr(_FinButtAut+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2628 :: 		FinButtAut.FontName      = Tahoma_19x23_Bold;
MOVW	R1, #17125
MOVW	R0, #lo_addr(_FinButtAut+36)
MOVT	R0, #hi_addr(_FinButtAut+36)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2629 :: 		FinButtAut.Font_Color    = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_FinButtAut+40)
MOVT	R0, #hi_addr(_FinButtAut+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2630 :: 		FinButtAut.FontHandle    = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_FinButtAut+44)
MOVT	R0, #hi_addr(_FinButtAut+44)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2631 :: 		FinButtAut.Source        = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_FinButtAut+48)
MOVT	R0, #hi_addr(_FinButtAut+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2632 :: 		FinButtAut.Flat          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FinButtAut+52)
MOVT	R0, #hi_addr(_FinButtAut+52)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2633 :: 		FinButtAut.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_FinButtAut+53)
MOVT	R0, #hi_addr(_FinButtAut+53)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2634 :: 		FinButtAut.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FinButtAut+56)
MOVT	R0, #hi_addr(_FinButtAut+56)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2635 :: 		FinButtAut.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FinButtAut+60)
MOVT	R0, #hi_addr(_FinButtAut+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2636 :: 		FinButtAut.OnClick       = &FinButtAut_OnClick;
MOVW	R1, #lo_addr(_FinButtAut_OnClick+0)
MOVT	R1, #hi_addr(_FinButtAut_OnClick+0)
MOVW	R0, #lo_addr(_FinButtAut+64)
MOVT	R0, #hi_addr(_FinButtAut+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2637 :: 		FinButtAut.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FinButtAut+68)
MOVT	R0, #hi_addr(_FinButtAut+68)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2639 :: 		FinButtAut_OnClick.Action       = FinButtAutOnClick;
MOVW	R1, #lo_addr(_FinButtAutOnClick+0)
MOVT	R1, #hi_addr(_FinButtAutOnClick+0)
MOVW	R0, #lo_addr(_FinButtAut_OnClick+0)
MOVT	R0, #hi_addr(_FinButtAut_OnClick+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2640 :: 		FinButtAut_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FinButtAut_OnClick+4)
MOVT	R0, #hi_addr(_FinButtAut_OnClick+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2641 :: 		FinButtAut_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
MOVS	R1, #65
MOVW	R0, #lo_addr(_FinButtAut_OnClick+5)
MOVT	R0, #hi_addr(_FinButtAut_OnClick+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2642 :: 		FinButtAut_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
MOVS	R1, #81
MOVW	R0, #lo_addr(_FinButtAut_OnClick+6)
MOVT	R0, #hi_addr(_FinButtAut_OnClick+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2643 :: 		FinButtAut_OnClick.Sound.Volume = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_FinButtAut_OnClick+7)
MOVT	R0, #hi_addr(_FinButtAut_OnClick+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2645 :: 		StpEngButtAut.OwnerScreen   = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_StpEngButtAut+0)
MOVT	R0, #hi_addr(_StpEngButtAut+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2646 :: 		StpEngButtAut.Order         = 10;
MOVS	R1, #10
MOVW	R0, #lo_addr(_StpEngButtAut+4)
MOVT	R0, #hi_addr(_StpEngButtAut+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2647 :: 		StpEngButtAut.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_StpEngButtAut+5)
MOVT	R0, #hi_addr(_StpEngButtAut+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2648 :: 		StpEngButtAut.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_StpEngButtAut+6)
MOVT	R0, #hi_addr(_StpEngButtAut+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2649 :: 		StpEngButtAut.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_StpEngButtAut+7)
MOVT	R0, #hi_addr(_StpEngButtAut+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2650 :: 		StpEngButtAut.Left          = 670;
MOVW	R1, #670
SXTH	R1, R1
MOVW	R0, #lo_addr(_StpEngButtAut+8)
MOVT	R0, #hi_addr(_StpEngButtAut+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2651 :: 		StpEngButtAut.Top           = 410;
MOVW	R1, #410
SXTH	R1, R1
MOVW	R0, #lo_addr(_StpEngButtAut+10)
MOVT	R0, #hi_addr(_StpEngButtAut+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2652 :: 		StpEngButtAut.Width         = 125;
MOVS	R1, #125
SXTH	R1, R1
MOVW	R0, #lo_addr(_StpEngButtAut+12)
MOVT	R0, #hi_addr(_StpEngButtAut+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2653 :: 		StpEngButtAut.Height        = 42;
MOVS	R1, #42
SXTH	R1, R1
MOVW	R0, #lo_addr(_StpEngButtAut+14)
MOVT	R0, #hi_addr(_StpEngButtAut+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2654 :: 		StpEngButtAut.Color         = 0x278D1;
MOVW	R1, #30929
MOVT	R1, #2
MOVW	R0, #lo_addr(_StpEngButtAut+16)
MOVT	R0, #hi_addr(_StpEngButtAut+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2655 :: 		StpEngButtAut.Press_Color   = 0x7AC6FE;
MOVW	R1, #50942
MOVT	R1, #122
MOVW	R0, #lo_addr(_StpEngButtAut+20)
MOVT	R0, #hi_addr(_StpEngButtAut+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2656 :: 		StpEngButtAut.ColorTo       = 0x7AC6FE;
MOVW	R1, #50942
MOVT	R1, #122
MOVW	R0, #lo_addr(_StpEngButtAut+24)
MOVT	R0, #hi_addr(_StpEngButtAut+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2657 :: 		StpEngButtAut.Press_ColorTo = 0x278D1;
MOVW	R1, #30929
MOVT	R1, #2
MOVW	R0, #lo_addr(_StpEngButtAut+28)
MOVT	R0, #hi_addr(_StpEngButtAut+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2658 :: 		StpEngButtAut.Caption       = StpEngButtAut_Caption;
MOVW	R1, #lo_addr(_StpEngButtAut_Caption+0)
MOVT	R1, #hi_addr(_StpEngButtAut_Caption+0)
MOVW	R0, #lo_addr(_StpEngButtAut+32)
MOVT	R0, #hi_addr(_StpEngButtAut+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2659 :: 		StpEngButtAut.FontName      = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_StpEngButtAut+36)
MOVT	R0, #hi_addr(_StpEngButtAut+36)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2660 :: 		StpEngButtAut.Font_Color    = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_StpEngButtAut+40)
MOVT	R0, #hi_addr(_StpEngButtAut+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2661 :: 		StpEngButtAut.FontHandle    = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_StpEngButtAut+44)
MOVT	R0, #hi_addr(_StpEngButtAut+44)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2662 :: 		StpEngButtAut.Source        = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_StpEngButtAut+48)
MOVT	R0, #hi_addr(_StpEngButtAut+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2663 :: 		StpEngButtAut.Flat          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_StpEngButtAut+52)
MOVT	R0, #hi_addr(_StpEngButtAut+52)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2664 :: 		StpEngButtAut.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_StpEngButtAut+53)
MOVT	R0, #hi_addr(_StpEngButtAut+53)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2665 :: 		StpEngButtAut.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_StpEngButtAut+56)
MOVT	R0, #hi_addr(_StpEngButtAut+56)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2666 :: 		StpEngButtAut.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_StpEngButtAut+60)
MOVT	R0, #hi_addr(_StpEngButtAut+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2667 :: 		StpEngButtAut.OnClick       = &StpEngButtAut_OnClick;
MOVW	R1, #lo_addr(_StpEngButtAut_OnClick+0)
MOVT	R1, #hi_addr(_StpEngButtAut_OnClick+0)
MOVW	R0, #lo_addr(_StpEngButtAut+64)
MOVT	R0, #hi_addr(_StpEngButtAut+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2668 :: 		StpEngButtAut.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_StpEngButtAut+68)
MOVT	R0, #hi_addr(_StpEngButtAut+68)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2670 :: 		StpEngButtAut_OnClick.Action       = StpEngButtAutOnClick;
MOVW	R1, #lo_addr(_StpEngButtAutOnClick+0)
MOVT	R1, #hi_addr(_StpEngButtAutOnClick+0)
MOVW	R0, #lo_addr(_StpEngButtAut_OnClick+0)
MOVT	R0, #hi_addr(_StpEngButtAut_OnClick+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2671 :: 		StpEngButtAut_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
MOVS	R1, #0
MOVW	R0, #lo_addr(_StpEngButtAut_OnClick+4)
MOVT	R0, #hi_addr(_StpEngButtAut_OnClick+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2672 :: 		StpEngButtAut_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
MOVS	R1, #65
MOVW	R0, #lo_addr(_StpEngButtAut_OnClick+5)
MOVT	R0, #hi_addr(_StpEngButtAut_OnClick+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2673 :: 		StpEngButtAut_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
MOVS	R1, #81
MOVW	R0, #lo_addr(_StpEngButtAut_OnClick+6)
MOVT	R0, #hi_addr(_StpEngButtAut_OnClick+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2674 :: 		StpEngButtAut_OnClick.Sound.Volume = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_StpEngButtAut_OnClick+7)
MOVT	R0, #hi_addr(_StpEngButtAut_OnClick+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2676 :: 		RpmGagAut.OwnerScreen   = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_RpmGagAut+0)
MOVT	R0, #hi_addr(_RpmGagAut+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2677 :: 		RpmGagAut.Order         = 11;
MOVS	R1, #11
MOVW	R0, #lo_addr(_RpmGagAut+4)
MOVT	R0, #hi_addr(_RpmGagAut+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2678 :: 		RpmGagAut.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_RpmGagAut+5)
MOVT	R0, #hi_addr(_RpmGagAut+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2679 :: 		RpmGagAut.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_RpmGagAut+6)
MOVT	R0, #hi_addr(_RpmGagAut+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2680 :: 		RpmGagAut.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_RpmGagAut+7)
MOVT	R0, #hi_addr(_RpmGagAut+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2681 :: 		RpmGagAut.Left          = 300;
MOVW	R1, #300
SXTH	R1, R1
MOVW	R0, #lo_addr(_RpmGagAut+8)
MOVT	R0, #hi_addr(_RpmGagAut+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2682 :: 		RpmGagAut.Top           = 20;
MOVS	R1, #20
SXTH	R1, R1
MOVW	R0, #lo_addr(_RpmGagAut+10)
MOVT	R0, #hi_addr(_RpmGagAut+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2683 :: 		RpmGagAut.Radius        = 100;
MOVS	R1, #100
SXTH	R1, R1
MOVW	R0, #lo_addr(_RpmGagAut+12)
MOVT	R0, #hi_addr(_RpmGagAut+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2684 :: 		RpmGagAut.Pen_Width     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_RpmGagAut+14)
MOVT	R0, #hi_addr(_RpmGagAut+14)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2685 :: 		RpmGagAut.Pen_Color     = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_RpmGagAut+16)
MOVT	R0, #hi_addr(_RpmGagAut+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2686 :: 		RpmGagAut.Color         = 0xC0C0C0;
MOVW	R1, #49344
MOVT	R1, #192
MOVW	R0, #lo_addr(_RpmGagAut+20)
MOVT	R0, #hi_addr(_RpmGagAut+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2687 :: 		RpmGagAut.Press_Color   = 0x7AC6FE;
MOVW	R1, #50942
MOVT	R1, #122
MOVW	R0, #lo_addr(_RpmGagAut+24)
MOVT	R0, #hi_addr(_RpmGagAut+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2688 :: 		RpmGagAut.Major         = 7;
MOVS	R1, #7
MOVW	R0, #lo_addr(_RpmGagAut+28)
MOVT	R0, #hi_addr(_RpmGagAut+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2689 :: 		RpmGagAut.Minor         = 10;
MOVS	R1, #10
MOVW	R0, #lo_addr(_RpmGagAut+29)
MOVT	R0, #hi_addr(_RpmGagAut+29)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2690 :: 		RpmGagAut.Value         = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_RpmGagAut+30)
MOVT	R0, #hi_addr(_RpmGagAut+30)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2691 :: 		RpmGagAut.Range         = 70;
MOVS	R1, #70
MOVW	R0, #lo_addr(_RpmGagAut+32)
MOVT	R0, #hi_addr(_RpmGagAut+32)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2692 :: 		RpmGagAut.Flat          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_RpmGagAut+34)
MOVT	R0, #hi_addr(_RpmGagAut+34)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2693 :: 		RpmGagAut.NoBackground  = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_RpmGagAut+35)
MOVT	R0, #hi_addr(_RpmGagAut+35)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2694 :: 		RpmGagAut.NoPointer     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_RpmGagAut+36)
MOVT	R0, #hi_addr(_RpmGagAut+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2695 :: 		RpmGagAut.TicksVisible  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_RpmGagAut+37)
MOVT	R0, #hi_addr(_RpmGagAut+37)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2696 :: 		RpmGagAut.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_RpmGagAut+38)
MOVT	R0, #hi_addr(_RpmGagAut+38)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2697 :: 		RpmGagAut.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_RpmGagAut+40)
MOVT	R0, #hi_addr(_RpmGagAut+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2698 :: 		RpmGagAut.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_RpmGagAut+44)
MOVT	R0, #hi_addr(_RpmGagAut+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2699 :: 		RpmGagAut.OnClick       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_RpmGagAut+48)
MOVT	R0, #hi_addr(_RpmGagAut+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2700 :: 		RpmGagAut.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_RpmGagAut+52)
MOVT	R0, #hi_addr(_RpmGagAut+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2702 :: 		ExTempNumAut.OwnerScreen   = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_ExTempNumAut+0)
MOVT	R0, #hi_addr(_ExTempNumAut+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2703 :: 		ExTempNumAut.Order         = 12;
MOVS	R1, #12
MOVW	R0, #lo_addr(_ExTempNumAut+4)
MOVT	R0, #hi_addr(_ExTempNumAut+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2704 :: 		ExTempNumAut.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ExTempNumAut+5)
MOVT	R0, #hi_addr(_ExTempNumAut+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2705 :: 		ExTempNumAut.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_ExTempNumAut+6)
MOVT	R0, #hi_addr(_ExTempNumAut+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2706 :: 		ExTempNumAut.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_ExTempNumAut+7)
MOVT	R0, #hi_addr(_ExTempNumAut+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2707 :: 		ExTempNumAut.Left          = 155;
MOVS	R1, #155
SXTH	R1, R1
MOVW	R0, #lo_addr(_ExTempNumAut+8)
MOVT	R0, #hi_addr(_ExTempNumAut+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2708 :: 		ExTempNumAut.Top           = 50;
MOVS	R1, #50
SXTH	R1, R1
MOVW	R0, #lo_addr(_ExTempNumAut+10)
MOVT	R0, #hi_addr(_ExTempNumAut+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2709 :: 		ExTempNumAut.Width         = 80;
MOVS	R1, #80
SXTH	R1, R1
MOVW	R0, #lo_addr(_ExTempNumAut+12)
MOVT	R0, #hi_addr(_ExTempNumAut+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2710 :: 		ExTempNumAut.Height        = 30;
MOVS	R1, #30
SXTH	R1, R1
MOVW	R0, #lo_addr(_ExTempNumAut+14)
MOVT	R0, #hi_addr(_ExTempNumAut+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2711 :: 		ExTempNumAut.Pen_Width     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ExTempNumAut+16)
MOVT	R0, #hi_addr(_ExTempNumAut+16)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2712 :: 		ExTempNumAut.Pen_Color     = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ExTempNumAut+20)
MOVT	R0, #hi_addr(_ExTempNumAut+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2713 :: 		ExTempNumAut.Color         = 0xFF00;
MOVW	R1, #65280
MOVW	R0, #lo_addr(_ExTempNumAut+24)
MOVT	R0, #hi_addr(_ExTempNumAut+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2714 :: 		ExTempNumAut.Press_Color   = 0xE2E2E2;
MOVW	R1, #58082
MOVT	R1, #226
MOVW	R0, #lo_addr(_ExTempNumAut+28)
MOVT	R0, #hi_addr(_ExTempNumAut+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2715 :: 		ExTempNumAut.Caption       = ExTempNumAut_Caption;
MOVW	R1, #lo_addr(_ExTempNumAut_Caption+0)
MOVT	R1, #hi_addr(_ExTempNumAut_Caption+0)
MOVW	R0, #lo_addr(_ExTempNumAut+32)
MOVT	R0, #hi_addr(_ExTempNumAut+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2716 :: 		ExTempNumAut.TextAlign     = taCenter;
MOVS	R1, #2
MOVW	R0, #lo_addr(_ExTempNumAut+36)
MOVT	R0, #hi_addr(_ExTempNumAut+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2717 :: 		ExTempNumAut.FontName      = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_ExTempNumAut+40)
MOVT	R0, #hi_addr(_ExTempNumAut+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2718 :: 		ExTempNumAut.Font_Color    = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ExTempNumAut+44)
MOVT	R0, #hi_addr(_ExTempNumAut+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2719 :: 		ExTempNumAut.FontHandle    = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ExTempNumAut+48)
MOVT	R0, #hi_addr(_ExTempNumAut+48)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2720 :: 		ExTempNumAut.Source        = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_ExTempNumAut+52)
MOVT	R0, #hi_addr(_ExTempNumAut+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2721 :: 		ExTempNumAut.Corner_Radius = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_ExTempNumAut+56)
MOVT	R0, #hi_addr(_ExTempNumAut+56)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2722 :: 		ExTempNumAut.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ExTempNumAut+57)
MOVT	R0, #hi_addr(_ExTempNumAut+57)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2723 :: 		ExTempNumAut.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ExTempNumAut+60)
MOVT	R0, #hi_addr(_ExTempNumAut+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2724 :: 		ExTempNumAut.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ExTempNumAut+64)
MOVT	R0, #hi_addr(_ExTempNumAut+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2725 :: 		ExTempNumAut.OnClick       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ExTempNumAut+68)
MOVT	R0, #hi_addr(_ExTempNumAut+68)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2726 :: 		ExTempNumAut.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ExTempNumAut+72)
MOVT	R0, #hi_addr(_ExTempNumAut+72)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2728 :: 		FirBearTempNumAut.OwnerScreen   = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_FirBearTempNumAut+0)
MOVT	R0, #hi_addr(_FirBearTempNumAut+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2729 :: 		FirBearTempNumAut.Order         = 13;
MOVS	R1, #13
MOVW	R0, #lo_addr(_FirBearTempNumAut+4)
MOVT	R0, #hi_addr(_FirBearTempNumAut+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2730 :: 		FirBearTempNumAut.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_FirBearTempNumAut+5)
MOVT	R0, #hi_addr(_FirBearTempNumAut+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2731 :: 		FirBearTempNumAut.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_FirBearTempNumAut+6)
MOVT	R0, #hi_addr(_FirBearTempNumAut+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2732 :: 		FirBearTempNumAut.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_FirBearTempNumAut+7)
MOVT	R0, #hi_addr(_FirBearTempNumAut+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2733 :: 		FirBearTempNumAut.Left          = 155;
MOVS	R1, #155
SXTH	R1, R1
MOVW	R0, #lo_addr(_FirBearTempNumAut+8)
MOVT	R0, #hi_addr(_FirBearTempNumAut+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2734 :: 		FirBearTempNumAut.Top           = 85;
MOVS	R1, #85
SXTH	R1, R1
MOVW	R0, #lo_addr(_FirBearTempNumAut+10)
MOVT	R0, #hi_addr(_FirBearTempNumAut+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2735 :: 		FirBearTempNumAut.Width         = 80;
MOVS	R1, #80
SXTH	R1, R1
MOVW	R0, #lo_addr(_FirBearTempNumAut+12)
MOVT	R0, #hi_addr(_FirBearTempNumAut+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2736 :: 		FirBearTempNumAut.Height        = 30;
MOVS	R1, #30
SXTH	R1, R1
MOVW	R0, #lo_addr(_FirBearTempNumAut+14)
MOVT	R0, #hi_addr(_FirBearTempNumAut+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2737 :: 		FirBearTempNumAut.Pen_Width     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_FirBearTempNumAut+16)
MOVT	R0, #hi_addr(_FirBearTempNumAut+16)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2738 :: 		FirBearTempNumAut.Pen_Color     = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FirBearTempNumAut+20)
MOVT	R0, #hi_addr(_FirBearTempNumAut+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2739 :: 		FirBearTempNumAut.Color         = 0xFF00;
MOVW	R1, #65280
MOVW	R0, #lo_addr(_FirBearTempNumAut+24)
MOVT	R0, #hi_addr(_FirBearTempNumAut+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2740 :: 		FirBearTempNumAut.Press_Color   = 0xE2E2E2;
MOVW	R1, #58082
MOVT	R1, #226
MOVW	R0, #lo_addr(_FirBearTempNumAut+28)
MOVT	R0, #hi_addr(_FirBearTempNumAut+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2741 :: 		FirBearTempNumAut.Caption       = FirBearTempNumAut_Caption;
MOVW	R1, #lo_addr(_FirBearTempNumAut_Caption+0)
MOVT	R1, #hi_addr(_FirBearTempNumAut_Caption+0)
MOVW	R0, #lo_addr(_FirBearTempNumAut+32)
MOVT	R0, #hi_addr(_FirBearTempNumAut+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2742 :: 		FirBearTempNumAut.TextAlign     = taCenter;
MOVS	R1, #2
MOVW	R0, #lo_addr(_FirBearTempNumAut+36)
MOVT	R0, #hi_addr(_FirBearTempNumAut+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2743 :: 		FirBearTempNumAut.FontName      = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_FirBearTempNumAut+40)
MOVT	R0, #hi_addr(_FirBearTempNumAut+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2744 :: 		FirBearTempNumAut.Font_Color    = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FirBearTempNumAut+44)
MOVT	R0, #hi_addr(_FirBearTempNumAut+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2745 :: 		FirBearTempNumAut.FontHandle    = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_FirBearTempNumAut+48)
MOVT	R0, #hi_addr(_FirBearTempNumAut+48)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2746 :: 		FirBearTempNumAut.Source        = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_FirBearTempNumAut+52)
MOVT	R0, #hi_addr(_FirBearTempNumAut+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2747 :: 		FirBearTempNumAut.Corner_Radius = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_FirBearTempNumAut+56)
MOVT	R0, #hi_addr(_FirBearTempNumAut+56)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2748 :: 		FirBearTempNumAut.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_FirBearTempNumAut+57)
MOVT	R0, #hi_addr(_FirBearTempNumAut+57)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2749 :: 		FirBearTempNumAut.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FirBearTempNumAut+60)
MOVT	R0, #hi_addr(_FirBearTempNumAut+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2750 :: 		FirBearTempNumAut.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FirBearTempNumAut+64)
MOVT	R0, #hi_addr(_FirBearTempNumAut+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2751 :: 		FirBearTempNumAut.OnClick       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FirBearTempNumAut+68)
MOVT	R0, #hi_addr(_FirBearTempNumAut+68)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2752 :: 		FirBearTempNumAut.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FirBearTempNumAut+72)
MOVT	R0, #hi_addr(_FirBearTempNumAut+72)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2754 :: 		SecBearTempNumAut.OwnerScreen   = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_SecBearTempNumAut+0)
MOVT	R0, #hi_addr(_SecBearTempNumAut+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2755 :: 		SecBearTempNumAut.Order         = 14;
MOVS	R1, #14
MOVW	R0, #lo_addr(_SecBearTempNumAut+4)
MOVT	R0, #hi_addr(_SecBearTempNumAut+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2756 :: 		SecBearTempNumAut.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_SecBearTempNumAut+5)
MOVT	R0, #hi_addr(_SecBearTempNumAut+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2757 :: 		SecBearTempNumAut.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_SecBearTempNumAut+6)
MOVT	R0, #hi_addr(_SecBearTempNumAut+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2758 :: 		SecBearTempNumAut.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_SecBearTempNumAut+7)
MOVT	R0, #hi_addr(_SecBearTempNumAut+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2759 :: 		SecBearTempNumAut.Left          = 155;
MOVS	R1, #155
SXTH	R1, R1
MOVW	R0, #lo_addr(_SecBearTempNumAut+8)
MOVT	R0, #hi_addr(_SecBearTempNumAut+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2760 :: 		SecBearTempNumAut.Top           = 120;
MOVS	R1, #120
SXTH	R1, R1
MOVW	R0, #lo_addr(_SecBearTempNumAut+10)
MOVT	R0, #hi_addr(_SecBearTempNumAut+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2761 :: 		SecBearTempNumAut.Width         = 80;
MOVS	R1, #80
SXTH	R1, R1
MOVW	R0, #lo_addr(_SecBearTempNumAut+12)
MOVT	R0, #hi_addr(_SecBearTempNumAut+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2762 :: 		SecBearTempNumAut.Height        = 30;
MOVS	R1, #30
SXTH	R1, R1
MOVW	R0, #lo_addr(_SecBearTempNumAut+14)
MOVT	R0, #hi_addr(_SecBearTempNumAut+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2763 :: 		SecBearTempNumAut.Pen_Width     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_SecBearTempNumAut+16)
MOVT	R0, #hi_addr(_SecBearTempNumAut+16)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2764 :: 		SecBearTempNumAut.Pen_Color     = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_SecBearTempNumAut+20)
MOVT	R0, #hi_addr(_SecBearTempNumAut+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2765 :: 		SecBearTempNumAut.Color         = 0xFF00;
MOVW	R1, #65280
MOVW	R0, #lo_addr(_SecBearTempNumAut+24)
MOVT	R0, #hi_addr(_SecBearTempNumAut+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2766 :: 		SecBearTempNumAut.Press_Color   = 0xE2E2E2;
MOVW	R1, #58082
MOVT	R1, #226
MOVW	R0, #lo_addr(_SecBearTempNumAut+28)
MOVT	R0, #hi_addr(_SecBearTempNumAut+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2767 :: 		SecBearTempNumAut.Caption       = SecBearTempNumAut_Caption;
MOVW	R1, #lo_addr(_SecBearTempNumAut_Caption+0)
MOVT	R1, #hi_addr(_SecBearTempNumAut_Caption+0)
MOVW	R0, #lo_addr(_SecBearTempNumAut+32)
MOVT	R0, #hi_addr(_SecBearTempNumAut+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2768 :: 		SecBearTempNumAut.TextAlign     = taCenter;
MOVS	R1, #2
MOVW	R0, #lo_addr(_SecBearTempNumAut+36)
MOVT	R0, #hi_addr(_SecBearTempNumAut+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2769 :: 		SecBearTempNumAut.FontName      = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_SecBearTempNumAut+40)
MOVT	R0, #hi_addr(_SecBearTempNumAut+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2770 :: 		SecBearTempNumAut.Font_Color    = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_SecBearTempNumAut+44)
MOVT	R0, #hi_addr(_SecBearTempNumAut+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2771 :: 		SecBearTempNumAut.FontHandle    = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_SecBearTempNumAut+48)
MOVT	R0, #hi_addr(_SecBearTempNumAut+48)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2772 :: 		SecBearTempNumAut.Source        = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_SecBearTempNumAut+52)
MOVT	R0, #hi_addr(_SecBearTempNumAut+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2773 :: 		SecBearTempNumAut.Corner_Radius = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_SecBearTempNumAut+56)
MOVT	R0, #hi_addr(_SecBearTempNumAut+56)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2774 :: 		SecBearTempNumAut.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_SecBearTempNumAut+57)
MOVT	R0, #hi_addr(_SecBearTempNumAut+57)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2775 :: 		SecBearTempNumAut.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_SecBearTempNumAut+60)
MOVT	R0, #hi_addr(_SecBearTempNumAut+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2776 :: 		SecBearTempNumAut.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_SecBearTempNumAut+64)
MOVT	R0, #hi_addr(_SecBearTempNumAut+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2777 :: 		SecBearTempNumAut.OnClick       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_SecBearTempNumAut+68)
MOVT	R0, #hi_addr(_SecBearTempNumAut+68)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2778 :: 		SecBearTempNumAut.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_SecBearTempNumAut+72)
MOVT	R0, #hi_addr(_SecBearTempNumAut+72)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2780 :: 		SourTempNumAut.OwnerScreen   = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_SourTempNumAut+0)
MOVT	R0, #hi_addr(_SourTempNumAut+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2781 :: 		SourTempNumAut.Order         = 15;
MOVS	R1, #15
MOVW	R0, #lo_addr(_SourTempNumAut+4)
MOVT	R0, #hi_addr(_SourTempNumAut+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2782 :: 		SourTempNumAut.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_SourTempNumAut+5)
MOVT	R0, #hi_addr(_SourTempNumAut+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2783 :: 		SourTempNumAut.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_SourTempNumAut+6)
MOVT	R0, #hi_addr(_SourTempNumAut+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2784 :: 		SourTempNumAut.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_SourTempNumAut+7)
MOVT	R0, #hi_addr(_SourTempNumAut+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2785 :: 		SourTempNumAut.Left          = 155;
MOVS	R1, #155
SXTH	R1, R1
MOVW	R0, #lo_addr(_SourTempNumAut+8)
MOVT	R0, #hi_addr(_SourTempNumAut+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2786 :: 		SourTempNumAut.Top           = 155;
MOVS	R1, #155
SXTH	R1, R1
MOVW	R0, #lo_addr(_SourTempNumAut+10)
MOVT	R0, #hi_addr(_SourTempNumAut+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2787 :: 		SourTempNumAut.Width         = 80;
MOVS	R1, #80
SXTH	R1, R1
MOVW	R0, #lo_addr(_SourTempNumAut+12)
MOVT	R0, #hi_addr(_SourTempNumAut+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2788 :: 		SourTempNumAut.Height        = 30;
MOVS	R1, #30
SXTH	R1, R1
MOVW	R0, #lo_addr(_SourTempNumAut+14)
MOVT	R0, #hi_addr(_SourTempNumAut+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2789 :: 		SourTempNumAut.Pen_Width     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_SourTempNumAut+16)
MOVT	R0, #hi_addr(_SourTempNumAut+16)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2790 :: 		SourTempNumAut.Pen_Color     = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_SourTempNumAut+20)
MOVT	R0, #hi_addr(_SourTempNumAut+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2791 :: 		SourTempNumAut.Color         = 0xFF00;
MOVW	R1, #65280
MOVW	R0, #lo_addr(_SourTempNumAut+24)
MOVT	R0, #hi_addr(_SourTempNumAut+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2792 :: 		SourTempNumAut.Press_Color   = 0xE2E2E2;
MOVW	R1, #58082
MOVT	R1, #226
MOVW	R0, #lo_addr(_SourTempNumAut+28)
MOVT	R0, #hi_addr(_SourTempNumAut+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2793 :: 		SourTempNumAut.Caption       = SourTempNumAut_Caption;
MOVW	R1, #lo_addr(_SourTempNumAut_Caption+0)
MOVT	R1, #hi_addr(_SourTempNumAut_Caption+0)
MOVW	R0, #lo_addr(_SourTempNumAut+32)
MOVT	R0, #hi_addr(_SourTempNumAut+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2794 :: 		SourTempNumAut.TextAlign     = taCenter;
MOVS	R1, #2
MOVW	R0, #lo_addr(_SourTempNumAut+36)
MOVT	R0, #hi_addr(_SourTempNumAut+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2795 :: 		SourTempNumAut.FontName      = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_SourTempNumAut+40)
MOVT	R0, #hi_addr(_SourTempNumAut+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2796 :: 		SourTempNumAut.Font_Color    = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_SourTempNumAut+44)
MOVT	R0, #hi_addr(_SourTempNumAut+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2797 :: 		SourTempNumAut.FontHandle    = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_SourTempNumAut+48)
MOVT	R0, #hi_addr(_SourTempNumAut+48)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2798 :: 		SourTempNumAut.Source        = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_SourTempNumAut+52)
MOVT	R0, #hi_addr(_SourTempNumAut+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2799 :: 		SourTempNumAut.Corner_Radius = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_SourTempNumAut+56)
MOVT	R0, #hi_addr(_SourTempNumAut+56)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2800 :: 		SourTempNumAut.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_SourTempNumAut+57)
MOVT	R0, #hi_addr(_SourTempNumAut+57)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2801 :: 		SourTempNumAut.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_SourTempNumAut+60)
MOVT	R0, #hi_addr(_SourTempNumAut+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2802 :: 		SourTempNumAut.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_SourTempNumAut+64)
MOVT	R0, #hi_addr(_SourTempNumAut+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2803 :: 		SourTempNumAut.OnClick       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_SourTempNumAut+68)
MOVT	R0, #hi_addr(_SourTempNumAut+68)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2804 :: 		SourTempNumAut.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_SourTempNumAut+72)
MOVT	R0, #hi_addr(_SourTempNumAut+72)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2806 :: 		Label1.OwnerScreen = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_Label1+0)
MOVT	R0, #hi_addr(_Label1+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2807 :: 		Label1.Order       = 16;
MOVS	R1, #16
MOVW	R0, #lo_addr(_Label1+4)
MOVT	R0, #hi_addr(_Label1+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2808 :: 		Label1.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label1+5)
MOVT	R0, #hi_addr(_Label1+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2809 :: 		Label1.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label1+6)
MOVT	R0, #hi_addr(_Label1+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2810 :: 		Label1.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label1+7)
MOVT	R0, #hi_addr(_Label1+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2811 :: 		Label1.Left        = 45;
MOVS	R1, #45
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label1+8)
MOVT	R0, #hi_addr(_Label1+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2812 :: 		Label1.Top         = 20;
MOVS	R1, #20
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label1+10)
MOVT	R0, #hi_addr(_Label1+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2813 :: 		Label1.Width       = 153;
MOVS	R1, #153
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label1+12)
MOVT	R0, #hi_addr(_Label1+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2814 :: 		Label1.Height      = 25;
MOVS	R1, #25
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label1+14)
MOVT	R0, #hi_addr(_Label1+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2815 :: 		Label1.Caption     = Label1_Caption;
MOVW	R1, #lo_addr(_Label1_Caption+0)
MOVT	R1, #hi_addr(_Label1_Caption+0)
MOVW	R0, #lo_addr(_Label1+16)
MOVT	R0, #hi_addr(_Label1+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2816 :: 		Label1.FontName    = Tahoma_19x23_Regular;
MOVW	R1, #10036
MOVW	R0, #lo_addr(_Label1+20)
MOVT	R0, #hi_addr(_Label1+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2817 :: 		Label1.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label1+24)
MOVT	R0, #hi_addr(_Label1+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2818 :: 		Label1.FontHandle  = 4;
MOVS	R1, #4
MOVW	R0, #lo_addr(_Label1+28)
MOVT	R0, #hi_addr(_Label1+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2819 :: 		Label1.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label1+32)
MOVT	R0, #hi_addr(_Label1+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2820 :: 		Label1.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label1+36)
MOVT	R0, #hi_addr(_Label1+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2821 :: 		Label1.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label1+40)
MOVT	R0, #hi_addr(_Label1+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2822 :: 		Label1.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label1+44)
MOVT	R0, #hi_addr(_Label1+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2823 :: 		Label1.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label1+48)
MOVT	R0, #hi_addr(_Label1+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2824 :: 		Label1.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label1+52)
MOVT	R0, #hi_addr(_Label1+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2826 :: 		Label2.OwnerScreen = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_Label2+0)
MOVT	R0, #hi_addr(_Label2+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2827 :: 		Label2.Order       = 17;
MOVS	R1, #17
MOVW	R0, #lo_addr(_Label2+4)
MOVT	R0, #hi_addr(_Label2+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2828 :: 		Label2.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label2+5)
MOVT	R0, #hi_addr(_Label2+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2829 :: 		Label2.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label2+6)
MOVT	R0, #hi_addr(_Label2+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2830 :: 		Label2.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label2+7)
MOVT	R0, #hi_addr(_Label2+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2831 :: 		Label2.Left        = 20;
MOVS	R1, #20
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label2+8)
MOVT	R0, #hi_addr(_Label2+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2832 :: 		Label2.Top         = 55;
MOVS	R1, #55
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label2+10)
MOVT	R0, #hi_addr(_Label2+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2833 :: 		Label2.Width       = 56;
MOVS	R1, #56
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label2+12)
MOVT	R0, #hi_addr(_Label2+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2834 :: 		Label2.Height      = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label2+14)
MOVT	R0, #hi_addr(_Label2+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2835 :: 		Label2.Caption     = Label2_Caption;
MOVW	R1, #lo_addr(_Label2_Caption+0)
MOVT	R1, #hi_addr(_Label2_Caption+0)
MOVW	R0, #lo_addr(_Label2+16)
MOVT	R0, #hi_addr(_Label2+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2836 :: 		Label2.FontName    = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_Label2+20)
MOVT	R0, #hi_addr(_Label2+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2837 :: 		Label2.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label2+24)
MOVT	R0, #hi_addr(_Label2+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2838 :: 		Label2.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label2+28)
MOVT	R0, #hi_addr(_Label2+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2839 :: 		Label2.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label2+32)
MOVT	R0, #hi_addr(_Label2+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2840 :: 		Label2.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label2+36)
MOVT	R0, #hi_addr(_Label2+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2841 :: 		Label2.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label2+40)
MOVT	R0, #hi_addr(_Label2+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2842 :: 		Label2.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label2+44)
MOVT	R0, #hi_addr(_Label2+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2843 :: 		Label2.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label2+48)
MOVT	R0, #hi_addr(_Label2+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2844 :: 		Label2.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label2+52)
MOVT	R0, #hi_addr(_Label2+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2846 :: 		Label3.OwnerScreen = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_Label3+0)
MOVT	R0, #hi_addr(_Label3+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2847 :: 		Label3.Order       = 18;
MOVS	R1, #18
MOVW	R0, #lo_addr(_Label3+4)
MOVT	R0, #hi_addr(_Label3+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2848 :: 		Label3.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label3+5)
MOVT	R0, #hi_addr(_Label3+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2849 :: 		Label3.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label3+6)
MOVT	R0, #hi_addr(_Label3+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2850 :: 		Label3.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label3+7)
MOVT	R0, #hi_addr(_Label3+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2851 :: 		Label3.Left        = 20;
MOVS	R1, #20
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label3+8)
MOVT	R0, #hi_addr(_Label3+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2852 :: 		Label3.Top         = 90;
MOVS	R1, #90
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label3+10)
MOVT	R0, #hi_addr(_Label3+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2853 :: 		Label3.Width       = 106;
MOVS	R1, #106
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label3+12)
MOVT	R0, #hi_addr(_Label3+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2854 :: 		Label3.Height      = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label3+14)
MOVT	R0, #hi_addr(_Label3+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2855 :: 		Label3.Caption     = Label3_Caption;
MOVW	R1, #lo_addr(_Label3_Caption+0)
MOVT	R1, #hi_addr(_Label3_Caption+0)
MOVW	R0, #lo_addr(_Label3+16)
MOVT	R0, #hi_addr(_Label3+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2856 :: 		Label3.FontName    = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_Label3+20)
MOVT	R0, #hi_addr(_Label3+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2857 :: 		Label3.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label3+24)
MOVT	R0, #hi_addr(_Label3+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2858 :: 		Label3.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label3+28)
MOVT	R0, #hi_addr(_Label3+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2859 :: 		Label3.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label3+32)
MOVT	R0, #hi_addr(_Label3+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2860 :: 		Label3.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label3+36)
MOVT	R0, #hi_addr(_Label3+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2861 :: 		Label3.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label3+40)
MOVT	R0, #hi_addr(_Label3+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2862 :: 		Label3.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label3+44)
MOVT	R0, #hi_addr(_Label3+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2863 :: 		Label3.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label3+48)
MOVT	R0, #hi_addr(_Label3+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2864 :: 		Label3.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label3+52)
MOVT	R0, #hi_addr(_Label3+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2866 :: 		Label4.OwnerScreen = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_Label4+0)
MOVT	R0, #hi_addr(_Label4+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2867 :: 		Label4.Order       = 19;
MOVS	R1, #19
MOVW	R0, #lo_addr(_Label4+4)
MOVT	R0, #hi_addr(_Label4+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2868 :: 		Label4.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label4+5)
MOVT	R0, #hi_addr(_Label4+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2869 :: 		Label4.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label4+6)
MOVT	R0, #hi_addr(_Label4+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2870 :: 		Label4.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label4+7)
MOVT	R0, #hi_addr(_Label4+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2871 :: 		Label4.Left        = 20;
MOVS	R1, #20
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label4+8)
MOVT	R0, #hi_addr(_Label4+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2872 :: 		Label4.Top         = 125;
MOVS	R1, #125
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label4+10)
MOVT	R0, #hi_addr(_Label4+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2873 :: 		Label4.Width       = 129;
MOVS	R1, #129
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label4+12)
MOVT	R0, #hi_addr(_Label4+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2874 :: 		Label4.Height      = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label4+14)
MOVT	R0, #hi_addr(_Label4+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2875 :: 		Label4.Caption     = Label4_Caption;
MOVW	R1, #lo_addr(_Label4_Caption+0)
MOVT	R1, #hi_addr(_Label4_Caption+0)
MOVW	R0, #lo_addr(_Label4+16)
MOVT	R0, #hi_addr(_Label4+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2876 :: 		Label4.FontName    = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_Label4+20)
MOVT	R0, #hi_addr(_Label4+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2877 :: 		Label4.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label4+24)
MOVT	R0, #hi_addr(_Label4+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2878 :: 		Label4.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label4+28)
MOVT	R0, #hi_addr(_Label4+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2879 :: 		Label4.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label4+32)
MOVT	R0, #hi_addr(_Label4+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2880 :: 		Label4.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label4+36)
MOVT	R0, #hi_addr(_Label4+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2881 :: 		Label4.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label4+40)
MOVT	R0, #hi_addr(_Label4+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2882 :: 		Label4.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label4+44)
MOVT	R0, #hi_addr(_Label4+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2883 :: 		Label4.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label4+48)
MOVT	R0, #hi_addr(_Label4+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2884 :: 		Label4.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label4+52)
MOVT	R0, #hi_addr(_Label4+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2886 :: 		Label5.OwnerScreen = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_Label5+0)
MOVT	R0, #hi_addr(_Label5+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2887 :: 		Label5.Order       = 20;
MOVS	R1, #20
MOVW	R0, #lo_addr(_Label5+4)
MOVT	R0, #hi_addr(_Label5+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2888 :: 		Label5.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label5+5)
MOVT	R0, #hi_addr(_Label5+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2889 :: 		Label5.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label5+6)
MOVT	R0, #hi_addr(_Label5+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2890 :: 		Label5.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label5+7)
MOVT	R0, #hi_addr(_Label5+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2891 :: 		Label5.Left        = 20;
MOVS	R1, #20
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label5+8)
MOVT	R0, #hi_addr(_Label5+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2892 :: 		Label5.Top         = 160;
MOVS	R1, #160
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label5+10)
MOVT	R0, #hi_addr(_Label5+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2893 :: 		Label5.Width       = 111;
MOVS	R1, #111
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label5+12)
MOVT	R0, #hi_addr(_Label5+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2894 :: 		Label5.Height      = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label5+14)
MOVT	R0, #hi_addr(_Label5+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2895 :: 		Label5.Caption     = Label5_Caption;
MOVW	R1, #lo_addr(_Label5_Caption+0)
MOVT	R1, #hi_addr(_Label5_Caption+0)
MOVW	R0, #lo_addr(_Label5+16)
MOVT	R0, #hi_addr(_Label5+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2896 :: 		Label5.FontName    = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_Label5+20)
MOVT	R0, #hi_addr(_Label5+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2897 :: 		Label5.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label5+24)
MOVT	R0, #hi_addr(_Label5+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2898 :: 		Label5.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label5+28)
MOVT	R0, #hi_addr(_Label5+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2899 :: 		Label5.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label5+32)
MOVT	R0, #hi_addr(_Label5+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2900 :: 		Label5.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label5+36)
MOVT	R0, #hi_addr(_Label5+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2901 :: 		Label5.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label5+40)
MOVT	R0, #hi_addr(_Label5+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2902 :: 		Label5.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label5+44)
MOVT	R0, #hi_addr(_Label5+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2903 :: 		Label5.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label5+48)
MOVT	R0, #hi_addr(_Label5+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2904 :: 		Label5.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label5+52)
MOVT	R0, #hi_addr(_Label5+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2906 :: 		Line1.OwnerScreen    = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_Line1+0)
MOVT	R0, #hi_addr(_Line1+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2907 :: 		Line1.Order          = 21;
MOVS	R1, #21
MOVW	R0, #lo_addr(_Line1+4)
MOVT	R0, #hi_addr(_Line1+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2908 :: 		Line1.Visible        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Line1+5)
MOVT	R0, #hi_addr(_Line1+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2909 :: 		Line1.Opacity        = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Line1+6)
MOVT	R0, #hi_addr(_Line1+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2910 :: 		Line1.Tag            = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Line1+7)
MOVT	R0, #hi_addr(_Line1+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2911 :: 		Line1.First_Point_X  = 20;
MOVS	R1, #20
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line1+8)
MOVT	R0, #hi_addr(_Line1+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2912 :: 		Line1.First_Point_Y  = 195;
MOVS	R1, #195
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line1+10)
MOVT	R0, #hi_addr(_Line1+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2913 :: 		Line1.Second_Point_X = 240;
MOVS	R1, #240
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line1+12)
MOVT	R0, #hi_addr(_Line1+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2914 :: 		Line1.Second_Point_Y = 195;
MOVS	R1, #195
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line1+14)
MOVT	R0, #hi_addr(_Line1+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2915 :: 		Line1.Pen_Width      = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_Line1+16)
MOVT	R0, #hi_addr(_Line1+16)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2916 :: 		Line1.Pen_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Line1+20)
MOVT	R0, #hi_addr(_Line1+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2918 :: 		Line2.OwnerScreen    = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_Line2+0)
MOVT	R0, #hi_addr(_Line2+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2919 :: 		Line2.Order          = 22;
MOVS	R1, #22
MOVW	R0, #lo_addr(_Line2+4)
MOVT	R0, #hi_addr(_Line2+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2920 :: 		Line2.Visible        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Line2+5)
MOVT	R0, #hi_addr(_Line2+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2921 :: 		Line2.Opacity        = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Line2+6)
MOVT	R0, #hi_addr(_Line2+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2922 :: 		Line2.Tag            = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Line2+7)
MOVT	R0, #hi_addr(_Line2+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2923 :: 		Line2.First_Point_X  = 550;
MOVW	R1, #550
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line2+8)
MOVT	R0, #hi_addr(_Line2+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2924 :: 		Line2.First_Point_Y  = 128;
MOVS	R1, #128
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line2+10)
MOVT	R0, #hi_addr(_Line2+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2925 :: 		Line2.Second_Point_X = 780;
MOVW	R1, #780
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line2+12)
MOVT	R0, #hi_addr(_Line2+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2926 :: 		Line2.Second_Point_Y = 128;
MOVS	R1, #128
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line2+14)
MOVT	R0, #hi_addr(_Line2+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2927 :: 		Line2.Pen_Width      = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_Line2+16)
MOVT	R0, #hi_addr(_Line2+16)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2928 :: 		Line2.Pen_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Line2+20)
MOVT	R0, #hi_addr(_Line2+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2930 :: 		Line3.OwnerScreen    = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_Line3+0)
MOVT	R0, #hi_addr(_Line3+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2931 :: 		Line3.Order          = 23;
MOVS	R1, #23
MOVW	R0, #lo_addr(_Line3+4)
MOVT	R0, #hi_addr(_Line3+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2932 :: 		Line3.Visible        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Line3+5)
MOVT	R0, #hi_addr(_Line3+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2933 :: 		Line3.Opacity        = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Line3+6)
MOVT	R0, #hi_addr(_Line3+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2934 :: 		Line3.Tag            = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Line3+7)
MOVT	R0, #hi_addr(_Line3+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2935 :: 		Line3.First_Point_X  = 20;
MOVS	R1, #20
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line3+8)
MOVT	R0, #hi_addr(_Line3+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2936 :: 		Line3.First_Point_Y  = 397;
MOVW	R1, #397
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line3+10)
MOVT	R0, #hi_addr(_Line3+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2937 :: 		Line3.Second_Point_X = 240;
MOVS	R1, #240
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line3+12)
MOVT	R0, #hi_addr(_Line3+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2938 :: 		Line3.Second_Point_Y = 397;
MOVW	R1, #397
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line3+14)
MOVT	R0, #hi_addr(_Line3+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2939 :: 		Line3.Pen_Width      = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_Line3+16)
MOVT	R0, #hi_addr(_Line3+16)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2940 :: 		Line3.Pen_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Line3+20)
MOVT	R0, #hi_addr(_Line3+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2942 :: 		P0NumAut.OwnerScreen   = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_P0NumAut+0)
MOVT	R0, #hi_addr(_P0NumAut+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2943 :: 		P0NumAut.Order         = 24;
MOVS	R1, #24
MOVW	R0, #lo_addr(_P0NumAut+4)
MOVT	R0, #hi_addr(_P0NumAut+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2944 :: 		P0NumAut.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_P0NumAut+5)
MOVT	R0, #hi_addr(_P0NumAut+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2945 :: 		P0NumAut.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_P0NumAut+6)
MOVT	R0, #hi_addr(_P0NumAut+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2946 :: 		P0NumAut.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_P0NumAut+7)
MOVT	R0, #hi_addr(_P0NumAut+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2947 :: 		P0NumAut.Left          = 155;
MOVS	R1, #155
SXTH	R1, R1
MOVW	R0, #lo_addr(_P0NumAut+8)
MOVT	R0, #hi_addr(_P0NumAut+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2948 :: 		P0NumAut.Top           = 360;
MOVW	R1, #360
SXTH	R1, R1
MOVW	R0, #lo_addr(_P0NumAut+10)
MOVT	R0, #hi_addr(_P0NumAut+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2949 :: 		P0NumAut.Width         = 80;
MOVS	R1, #80
SXTH	R1, R1
MOVW	R0, #lo_addr(_P0NumAut+12)
MOVT	R0, #hi_addr(_P0NumAut+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2950 :: 		P0NumAut.Height        = 30;
MOVS	R1, #30
SXTH	R1, R1
MOVW	R0, #lo_addr(_P0NumAut+14)
MOVT	R0, #hi_addr(_P0NumAut+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2951 :: 		P0NumAut.Pen_Width     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_P0NumAut+16)
MOVT	R0, #hi_addr(_P0NumAut+16)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2952 :: 		P0NumAut.Pen_Color     = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_P0NumAut+20)
MOVT	R0, #hi_addr(_P0NumAut+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2953 :: 		P0NumAut.Color         = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_P0NumAut+24)
MOVT	R0, #hi_addr(_P0NumAut+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2954 :: 		P0NumAut.Press_Color   = 0xE2E2E2;
MOVW	R1, #58082
MOVT	R1, #226
MOVW	R0, #lo_addr(_P0NumAut+28)
MOVT	R0, #hi_addr(_P0NumAut+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2955 :: 		P0NumAut.Caption       = P0NumAut_Caption;
MOVW	R1, #lo_addr(_P0NumAut_Caption+0)
MOVT	R1, #hi_addr(_P0NumAut_Caption+0)
MOVW	R0, #lo_addr(_P0NumAut+32)
MOVT	R0, #hi_addr(_P0NumAut+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2956 :: 		P0NumAut.TextAlign     = taCenter;
MOVS	R1, #2
MOVW	R0, #lo_addr(_P0NumAut+36)
MOVT	R0, #hi_addr(_P0NumAut+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2957 :: 		P0NumAut.FontName      = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_P0NumAut+40)
MOVT	R0, #hi_addr(_P0NumAut+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2958 :: 		P0NumAut.Font_Color    = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_P0NumAut+44)
MOVT	R0, #hi_addr(_P0NumAut+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2959 :: 		P0NumAut.FontHandle    = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_P0NumAut+48)
MOVT	R0, #hi_addr(_P0NumAut+48)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2960 :: 		P0NumAut.Source        = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_P0NumAut+52)
MOVT	R0, #hi_addr(_P0NumAut+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2961 :: 		P0NumAut.Corner_Radius = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_P0NumAut+56)
MOVT	R0, #hi_addr(_P0NumAut+56)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2962 :: 		P0NumAut.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_P0NumAut+57)
MOVT	R0, #hi_addr(_P0NumAut+57)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2963 :: 		P0NumAut.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_P0NumAut+60)
MOVT	R0, #hi_addr(_P0NumAut+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2964 :: 		P0NumAut.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_P0NumAut+64)
MOVT	R0, #hi_addr(_P0NumAut+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2965 :: 		P0NumAut.OnClick       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_P0NumAut+68)
MOVT	R0, #hi_addr(_P0NumAut+68)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2966 :: 		P0NumAut.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_P0NumAut+72)
MOVT	R0, #hi_addr(_P0NumAut+72)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2968 :: 		HNumAut.OwnerScreen   = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_HNumAut+0)
MOVT	R0, #hi_addr(_HNumAut+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2969 :: 		HNumAut.Order         = 25;
MOVS	R1, #25
MOVW	R0, #lo_addr(_HNumAut+4)
MOVT	R0, #hi_addr(_HNumAut+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2970 :: 		HNumAut.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_HNumAut+5)
MOVT	R0, #hi_addr(_HNumAut+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2971 :: 		HNumAut.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_HNumAut+6)
MOVT	R0, #hi_addr(_HNumAut+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2972 :: 		HNumAut.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_HNumAut+7)
MOVT	R0, #hi_addr(_HNumAut+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2973 :: 		HNumAut.Left          = 155;
MOVS	R1, #155
SXTH	R1, R1
MOVW	R0, #lo_addr(_HNumAut+8)
MOVT	R0, #hi_addr(_HNumAut+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2974 :: 		HNumAut.Top           = 325;
MOVW	R1, #325
SXTH	R1, R1
MOVW	R0, #lo_addr(_HNumAut+10)
MOVT	R0, #hi_addr(_HNumAut+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2975 :: 		HNumAut.Width         = 80;
MOVS	R1, #80
SXTH	R1, R1
MOVW	R0, #lo_addr(_HNumAut+12)
MOVT	R0, #hi_addr(_HNumAut+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2976 :: 		HNumAut.Height        = 30;
MOVS	R1, #30
SXTH	R1, R1
MOVW	R0, #lo_addr(_HNumAut+14)
MOVT	R0, #hi_addr(_HNumAut+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2977 :: 		HNumAut.Pen_Width     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_HNumAut+16)
MOVT	R0, #hi_addr(_HNumAut+16)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2978 :: 		HNumAut.Pen_Color     = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HNumAut+20)
MOVT	R0, #hi_addr(_HNumAut+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2979 :: 		HNumAut.Color         = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_HNumAut+24)
MOVT	R0, #hi_addr(_HNumAut+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2980 :: 		HNumAut.Press_Color   = 0xE2E2E2;
MOVW	R1, #58082
MOVT	R1, #226
MOVW	R0, #lo_addr(_HNumAut+28)
MOVT	R0, #hi_addr(_HNumAut+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2981 :: 		HNumAut.Caption       = HNumAut_Caption;
MOVW	R1, #lo_addr(_HNumAut_Caption+0)
MOVT	R1, #hi_addr(_HNumAut_Caption+0)
MOVW	R0, #lo_addr(_HNumAut+32)
MOVT	R0, #hi_addr(_HNumAut+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2982 :: 		HNumAut.TextAlign     = taCenter;
MOVS	R1, #2
MOVW	R0, #lo_addr(_HNumAut+36)
MOVT	R0, #hi_addr(_HNumAut+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2983 :: 		HNumAut.FontName      = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_HNumAut+40)
MOVT	R0, #hi_addr(_HNumAut+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2984 :: 		HNumAut.Font_Color    = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HNumAut+44)
MOVT	R0, #hi_addr(_HNumAut+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2985 :: 		HNumAut.FontHandle    = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_HNumAut+48)
MOVT	R0, #hi_addr(_HNumAut+48)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2986 :: 		HNumAut.Source        = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_HNumAut+52)
MOVT	R0, #hi_addr(_HNumAut+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2987 :: 		HNumAut.Corner_Radius = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_HNumAut+56)
MOVT	R0, #hi_addr(_HNumAut+56)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2988 :: 		HNumAut.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_HNumAut+57)
MOVT	R0, #hi_addr(_HNumAut+57)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2989 :: 		HNumAut.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HNumAut+60)
MOVT	R0, #hi_addr(_HNumAut+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2990 :: 		HNumAut.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HNumAut+64)
MOVT	R0, #hi_addr(_HNumAut+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2991 :: 		HNumAut.OnClick       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HNumAut+68)
MOVT	R0, #hi_addr(_HNumAut+68)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2992 :: 		HNumAut.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HNumAut+72)
MOVT	R0, #hi_addr(_HNumAut+72)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2994 :: 		TimeNumAut.OwnerScreen   = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_TimeNumAut+0)
MOVT	R0, #hi_addr(_TimeNumAut+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2995 :: 		TimeNumAut.Order         = 26;
MOVS	R1, #26
MOVW	R0, #lo_addr(_TimeNumAut+4)
MOVT	R0, #hi_addr(_TimeNumAut+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2996 :: 		TimeNumAut.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_TimeNumAut+5)
MOVT	R0, #hi_addr(_TimeNumAut+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2997 :: 		TimeNumAut.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_TimeNumAut+6)
MOVT	R0, #hi_addr(_TimeNumAut+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2998 :: 		TimeNumAut.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_TimeNumAut+7)
MOVT	R0, #hi_addr(_TimeNumAut+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,2999 :: 		TimeNumAut.Left          = 155;
MOVS	R1, #155
SXTH	R1, R1
MOVW	R0, #lo_addr(_TimeNumAut+8)
MOVT	R0, #hi_addr(_TimeNumAut+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3000 :: 		TimeNumAut.Top           = 205;
MOVS	R1, #205
SXTH	R1, R1
MOVW	R0, #lo_addr(_TimeNumAut+10)
MOVT	R0, #hi_addr(_TimeNumAut+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3001 :: 		TimeNumAut.Width         = 80;
MOVS	R1, #80
SXTH	R1, R1
MOVW	R0, #lo_addr(_TimeNumAut+12)
MOVT	R0, #hi_addr(_TimeNumAut+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3002 :: 		TimeNumAut.Height        = 30;
MOVS	R1, #30
SXTH	R1, R1
MOVW	R0, #lo_addr(_TimeNumAut+14)
MOVT	R0, #hi_addr(_TimeNumAut+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3003 :: 		TimeNumAut.Pen_Width     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_TimeNumAut+16)
MOVT	R0, #hi_addr(_TimeNumAut+16)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3004 :: 		TimeNumAut.Pen_Color     = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_TimeNumAut+20)
MOVT	R0, #hi_addr(_TimeNumAut+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3005 :: 		TimeNumAut.Color         = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_TimeNumAut+24)
MOVT	R0, #hi_addr(_TimeNumAut+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3006 :: 		TimeNumAut.Press_Color   = 0xE2E2E2;
MOVW	R1, #58082
MOVT	R1, #226
MOVW	R0, #lo_addr(_TimeNumAut+28)
MOVT	R0, #hi_addr(_TimeNumAut+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3007 :: 		TimeNumAut.Caption       = TimeNumAut_Caption;
MOVW	R1, #lo_addr(_TimeNumAut_Caption+0)
MOVT	R1, #hi_addr(_TimeNumAut_Caption+0)
MOVW	R0, #lo_addr(_TimeNumAut+32)
MOVT	R0, #hi_addr(_TimeNumAut+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3008 :: 		TimeNumAut.TextAlign     = taCenter;
MOVS	R1, #2
MOVW	R0, #lo_addr(_TimeNumAut+36)
MOVT	R0, #hi_addr(_TimeNumAut+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3009 :: 		TimeNumAut.FontName      = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_TimeNumAut+40)
MOVT	R0, #hi_addr(_TimeNumAut+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3010 :: 		TimeNumAut.Font_Color    = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_TimeNumAut+44)
MOVT	R0, #hi_addr(_TimeNumAut+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3011 :: 		TimeNumAut.FontHandle    = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_TimeNumAut+48)
MOVT	R0, #hi_addr(_TimeNumAut+48)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3012 :: 		TimeNumAut.Source        = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_TimeNumAut+52)
MOVT	R0, #hi_addr(_TimeNumAut+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3013 :: 		TimeNumAut.Corner_Radius = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_TimeNumAut+56)
MOVT	R0, #hi_addr(_TimeNumAut+56)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3014 :: 		TimeNumAut.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_TimeNumAut+57)
MOVT	R0, #hi_addr(_TimeNumAut+57)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3015 :: 		TimeNumAut.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_TimeNumAut+60)
MOVT	R0, #hi_addr(_TimeNumAut+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3016 :: 		TimeNumAut.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_TimeNumAut+64)
MOVT	R0, #hi_addr(_TimeNumAut+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3017 :: 		TimeNumAut.OnClick       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_TimeNumAut+68)
MOVT	R0, #hi_addr(_TimeNumAut+68)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3018 :: 		TimeNumAut.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_TimeNumAut+72)
MOVT	R0, #hi_addr(_TimeNumAut+72)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3020 :: 		FuelFlNumAut.OwnerScreen   = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_FuelFlNumAut+0)
MOVT	R0, #hi_addr(_FuelFlNumAut+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3021 :: 		FuelFlNumAut.Order         = 27;
MOVS	R1, #27
MOVW	R0, #lo_addr(_FuelFlNumAut+4)
MOVT	R0, #hi_addr(_FuelFlNumAut+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3022 :: 		FuelFlNumAut.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_FuelFlNumAut+5)
MOVT	R0, #hi_addr(_FuelFlNumAut+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3023 :: 		FuelFlNumAut.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_FuelFlNumAut+6)
MOVT	R0, #hi_addr(_FuelFlNumAut+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3024 :: 		FuelFlNumAut.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_FuelFlNumAut+7)
MOVT	R0, #hi_addr(_FuelFlNumAut+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3025 :: 		FuelFlNumAut.Left          = 155;
MOVS	R1, #155
SXTH	R1, R1
MOVW	R0, #lo_addr(_FuelFlNumAut+8)
MOVT	R0, #hi_addr(_FuelFlNumAut+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3026 :: 		FuelFlNumAut.Top           = 240;
MOVS	R1, #240
SXTH	R1, R1
MOVW	R0, #lo_addr(_FuelFlNumAut+10)
MOVT	R0, #hi_addr(_FuelFlNumAut+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3027 :: 		FuelFlNumAut.Width         = 80;
MOVS	R1, #80
SXTH	R1, R1
MOVW	R0, #lo_addr(_FuelFlNumAut+12)
MOVT	R0, #hi_addr(_FuelFlNumAut+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3028 :: 		FuelFlNumAut.Height        = 30;
MOVS	R1, #30
SXTH	R1, R1
MOVW	R0, #lo_addr(_FuelFlNumAut+14)
MOVT	R0, #hi_addr(_FuelFlNumAut+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3029 :: 		FuelFlNumAut.Pen_Width     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_FuelFlNumAut+16)
MOVT	R0, #hi_addr(_FuelFlNumAut+16)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3030 :: 		FuelFlNumAut.Pen_Color     = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FuelFlNumAut+20)
MOVT	R0, #hi_addr(_FuelFlNumAut+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3031 :: 		FuelFlNumAut.Color         = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_FuelFlNumAut+24)
MOVT	R0, #hi_addr(_FuelFlNumAut+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3032 :: 		FuelFlNumAut.Press_Color   = 0xE2E2E2;
MOVW	R1, #58082
MOVT	R1, #226
MOVW	R0, #lo_addr(_FuelFlNumAut+28)
MOVT	R0, #hi_addr(_FuelFlNumAut+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3033 :: 		FuelFlNumAut.Caption       = FuelFlNumAut_Caption;
MOVW	R1, #lo_addr(_FuelFlNumAut_Caption+0)
MOVT	R1, #hi_addr(_FuelFlNumAut_Caption+0)
MOVW	R0, #lo_addr(_FuelFlNumAut+32)
MOVT	R0, #hi_addr(_FuelFlNumAut+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3034 :: 		FuelFlNumAut.TextAlign     = taCenter;
MOVS	R1, #2
MOVW	R0, #lo_addr(_FuelFlNumAut+36)
MOVT	R0, #hi_addr(_FuelFlNumAut+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3035 :: 		FuelFlNumAut.FontName      = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_FuelFlNumAut+40)
MOVT	R0, #hi_addr(_FuelFlNumAut+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3036 :: 		FuelFlNumAut.Font_Color    = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FuelFlNumAut+44)
MOVT	R0, #hi_addr(_FuelFlNumAut+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3037 :: 		FuelFlNumAut.FontHandle    = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_FuelFlNumAut+48)
MOVT	R0, #hi_addr(_FuelFlNumAut+48)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3038 :: 		FuelFlNumAut.Source        = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_FuelFlNumAut+52)
MOVT	R0, #hi_addr(_FuelFlNumAut+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3039 :: 		FuelFlNumAut.Corner_Radius = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_FuelFlNumAut+56)
MOVT	R0, #hi_addr(_FuelFlNumAut+56)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3040 :: 		FuelFlNumAut.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_FuelFlNumAut+57)
MOVT	R0, #hi_addr(_FuelFlNumAut+57)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3041 :: 		FuelFlNumAut.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FuelFlNumAut+60)
MOVT	R0, #hi_addr(_FuelFlNumAut+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3042 :: 		FuelFlNumAut.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FuelFlNumAut+64)
MOVT	R0, #hi_addr(_FuelFlNumAut+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3043 :: 		FuelFlNumAut.OnClick       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FuelFlNumAut+68)
MOVT	R0, #hi_addr(_FuelFlNumAut+68)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3044 :: 		FuelFlNumAut.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FuelFlNumAut+72)
MOVT	R0, #hi_addr(_FuelFlNumAut+72)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3046 :: 		BattVNumAut.OwnerScreen   = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_BattVNumAut+0)
MOVT	R0, #hi_addr(_BattVNumAut+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3047 :: 		BattVNumAut.Order         = 28;
MOVS	R1, #28
MOVW	R0, #lo_addr(_BattVNumAut+4)
MOVT	R0, #hi_addr(_BattVNumAut+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3048 :: 		BattVNumAut.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_BattVNumAut+5)
MOVT	R0, #hi_addr(_BattVNumAut+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3049 :: 		BattVNumAut.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_BattVNumAut+6)
MOVT	R0, #hi_addr(_BattVNumAut+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3050 :: 		BattVNumAut.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_BattVNumAut+7)
MOVT	R0, #hi_addr(_BattVNumAut+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3051 :: 		BattVNumAut.Left          = 155;
MOVS	R1, #155
SXTH	R1, R1
MOVW	R0, #lo_addr(_BattVNumAut+8)
MOVT	R0, #hi_addr(_BattVNumAut+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3052 :: 		BattVNumAut.Top           = 275;
MOVW	R1, #275
SXTH	R1, R1
MOVW	R0, #lo_addr(_BattVNumAut+10)
MOVT	R0, #hi_addr(_BattVNumAut+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3053 :: 		BattVNumAut.Width         = 80;
MOVS	R1, #80
SXTH	R1, R1
MOVW	R0, #lo_addr(_BattVNumAut+12)
MOVT	R0, #hi_addr(_BattVNumAut+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3054 :: 		BattVNumAut.Height        = 30;
MOVS	R1, #30
SXTH	R1, R1
MOVW	R0, #lo_addr(_BattVNumAut+14)
MOVT	R0, #hi_addr(_BattVNumAut+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3055 :: 		BattVNumAut.Pen_Width     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_BattVNumAut+16)
MOVT	R0, #hi_addr(_BattVNumAut+16)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3056 :: 		BattVNumAut.Pen_Color     = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_BattVNumAut+20)
MOVT	R0, #hi_addr(_BattVNumAut+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3057 :: 		BattVNumAut.Color         = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_BattVNumAut+24)
MOVT	R0, #hi_addr(_BattVNumAut+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3058 :: 		BattVNumAut.Press_Color   = 0xE2E2E2;
MOVW	R1, #58082
MOVT	R1, #226
MOVW	R0, #lo_addr(_BattVNumAut+28)
MOVT	R0, #hi_addr(_BattVNumAut+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3059 :: 		BattVNumAut.Caption       = BattVNumAut_Caption;
MOVW	R1, #lo_addr(_BattVNumAut_Caption+0)
MOVT	R1, #hi_addr(_BattVNumAut_Caption+0)
MOVW	R0, #lo_addr(_BattVNumAut+32)
MOVT	R0, #hi_addr(_BattVNumAut+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3060 :: 		BattVNumAut.TextAlign     = taCenter;
MOVS	R1, #2
MOVW	R0, #lo_addr(_BattVNumAut+36)
MOVT	R0, #hi_addr(_BattVNumAut+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3061 :: 		BattVNumAut.FontName      = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_BattVNumAut+40)
MOVT	R0, #hi_addr(_BattVNumAut+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3062 :: 		BattVNumAut.Font_Color    = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_BattVNumAut+44)
MOVT	R0, #hi_addr(_BattVNumAut+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3063 :: 		BattVNumAut.FontHandle    = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_BattVNumAut+48)
MOVT	R0, #hi_addr(_BattVNumAut+48)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3064 :: 		BattVNumAut.Source        = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_BattVNumAut+52)
MOVT	R0, #hi_addr(_BattVNumAut+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3065 :: 		BattVNumAut.Corner_Radius = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_BattVNumAut+56)
MOVT	R0, #hi_addr(_BattVNumAut+56)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3066 :: 		BattVNumAut.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_BattVNumAut+57)
MOVT	R0, #hi_addr(_BattVNumAut+57)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3067 :: 		BattVNumAut.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_BattVNumAut+60)
MOVT	R0, #hi_addr(_BattVNumAut+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3068 :: 		BattVNumAut.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_BattVNumAut+64)
MOVT	R0, #hi_addr(_BattVNumAut+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3069 :: 		BattVNumAut.OnClick       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_BattVNumAut+68)
MOVT	R0, #hi_addr(_BattVNumAut+68)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3070 :: 		BattVNumAut.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_BattVNumAut+72)
MOVT	R0, #hi_addr(_BattVNumAut+72)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3072 :: 		Line4.OwnerScreen    = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_Line4+0)
MOVT	R0, #hi_addr(_Line4+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3073 :: 		Line4.Order          = 29;
MOVS	R1, #29
MOVW	R0, #lo_addr(_Line4+4)
MOVT	R0, #hi_addr(_Line4+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3074 :: 		Line4.Visible        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Line4+5)
MOVT	R0, #hi_addr(_Line4+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3075 :: 		Line4.Opacity        = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Line4+6)
MOVT	R0, #hi_addr(_Line4+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3076 :: 		Line4.Tag            = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Line4+7)
MOVT	R0, #hi_addr(_Line4+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3077 :: 		Line4.First_Point_X  = 20;
MOVS	R1, #20
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line4+8)
MOVT	R0, #hi_addr(_Line4+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3078 :: 		Line4.First_Point_Y  = 315;
MOVW	R1, #315
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line4+10)
MOVT	R0, #hi_addr(_Line4+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3079 :: 		Line4.Second_Point_X = 240;
MOVS	R1, #240
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line4+12)
MOVT	R0, #hi_addr(_Line4+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3080 :: 		Line4.Second_Point_Y = 315;
MOVW	R1, #315
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line4+14)
MOVT	R0, #hi_addr(_Line4+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3081 :: 		Line4.Pen_Width      = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_Line4+16)
MOVT	R0, #hi_addr(_Line4+16)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3082 :: 		Line4.Pen_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Line4+20)
MOVT	R0, #hi_addr(_Line4+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3084 :: 		Label6.OwnerScreen = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_Label6+0)
MOVT	R0, #hi_addr(_Label6+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3085 :: 		Label6.Order       = 30;
MOVS	R1, #30
MOVW	R0, #lo_addr(_Label6+4)
MOVT	R0, #hi_addr(_Label6+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3086 :: 		Label6.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label6+5)
MOVT	R0, #hi_addr(_Label6+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3087 :: 		Label6.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label6+6)
MOVT	R0, #hi_addr(_Label6+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3088 :: 		Label6.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label6+7)
MOVT	R0, #hi_addr(_Label6+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3089 :: 		Label6.Left        = 20;
MOVS	R1, #20
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label6+8)
MOVT	R0, #hi_addr(_Label6+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3090 :: 		Label6.Top         = 210;
MOVS	R1, #210
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label6+10)
MOVT	R0, #hi_addr(_Label6+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3091 :: 		Label6.Width       = 69;
MOVS	R1, #69
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label6+12)
MOVT	R0, #hi_addr(_Label6+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3092 :: 		Label6.Height      = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label6+14)
MOVT	R0, #hi_addr(_Label6+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3093 :: 		Label6.Caption     = Label6_Caption;
MOVW	R1, #lo_addr(_Label6_Caption+0)
MOVT	R1, #hi_addr(_Label6_Caption+0)
MOVW	R0, #lo_addr(_Label6+16)
MOVT	R0, #hi_addr(_Label6+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3094 :: 		Label6.FontName    = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_Label6+20)
MOVT	R0, #hi_addr(_Label6+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3095 :: 		Label6.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label6+24)
MOVT	R0, #hi_addr(_Label6+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3096 :: 		Label6.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label6+28)
MOVT	R0, #hi_addr(_Label6+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3097 :: 		Label6.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label6+32)
MOVT	R0, #hi_addr(_Label6+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3098 :: 		Label6.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label6+36)
MOVT	R0, #hi_addr(_Label6+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3099 :: 		Label6.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label6+40)
MOVT	R0, #hi_addr(_Label6+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3100 :: 		Label6.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label6+44)
MOVT	R0, #hi_addr(_Label6+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3101 :: 		Label6.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label6+48)
MOVT	R0, #hi_addr(_Label6+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3102 :: 		Label6.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label6+52)
MOVT	R0, #hi_addr(_Label6+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3104 :: 		Label7.OwnerScreen = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_Label7+0)
MOVT	R0, #hi_addr(_Label7+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3105 :: 		Label7.Order       = 31;
MOVS	R1, #31
MOVW	R0, #lo_addr(_Label7+4)
MOVT	R0, #hi_addr(_Label7+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3106 :: 		Label7.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label7+5)
MOVT	R0, #hi_addr(_Label7+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3107 :: 		Label7.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label7+6)
MOVT	R0, #hi_addr(_Label7+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3108 :: 		Label7.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label7+7)
MOVT	R0, #hi_addr(_Label7+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3109 :: 		Label7.Left        = 20;
MOVS	R1, #20
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label7+8)
MOVT	R0, #hi_addr(_Label7+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3110 :: 		Label7.Top         = 245;
MOVS	R1, #245
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label7+10)
MOVT	R0, #hi_addr(_Label7+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3111 :: 		Label7.Width       = 127;
MOVS	R1, #127
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label7+12)
MOVT	R0, #hi_addr(_Label7+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3112 :: 		Label7.Height      = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label7+14)
MOVT	R0, #hi_addr(_Label7+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3113 :: 		Label7.Caption     = Label7_Caption;
MOVW	R1, #lo_addr(_Label7_Caption+0)
MOVT	R1, #hi_addr(_Label7_Caption+0)
MOVW	R0, #lo_addr(_Label7+16)
MOVT	R0, #hi_addr(_Label7+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3114 :: 		Label7.FontName    = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_Label7+20)
MOVT	R0, #hi_addr(_Label7+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3115 :: 		Label7.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label7+24)
MOVT	R0, #hi_addr(_Label7+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3116 :: 		Label7.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label7+28)
MOVT	R0, #hi_addr(_Label7+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3117 :: 		Label7.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label7+32)
MOVT	R0, #hi_addr(_Label7+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3118 :: 		Label7.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label7+36)
MOVT	R0, #hi_addr(_Label7+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3119 :: 		Label7.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label7+40)
MOVT	R0, #hi_addr(_Label7+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3120 :: 		Label7.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label7+44)
MOVT	R0, #hi_addr(_Label7+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3121 :: 		Label7.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label7+48)
MOVT	R0, #hi_addr(_Label7+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3122 :: 		Label7.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label7+52)
MOVT	R0, #hi_addr(_Label7+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3124 :: 		Label8.OwnerScreen = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_Label8+0)
MOVT	R0, #hi_addr(_Label8+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3125 :: 		Label8.Order       = 32;
MOVS	R1, #32
MOVW	R0, #lo_addr(_Label8+4)
MOVT	R0, #hi_addr(_Label8+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3126 :: 		Label8.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label8+5)
MOVT	R0, #hi_addr(_Label8+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3127 :: 		Label8.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label8+6)
MOVT	R0, #hi_addr(_Label8+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3128 :: 		Label8.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label8+7)
MOVT	R0, #hi_addr(_Label8+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3129 :: 		Label8.Left        = 20;
MOVS	R1, #20
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label8+8)
MOVT	R0, #hi_addr(_Label8+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3130 :: 		Label8.Top         = 280;
MOVW	R1, #280
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label8+10)
MOVT	R0, #hi_addr(_Label8+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3131 :: 		Label8.Width       = 130;
MOVS	R1, #130
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label8+12)
MOVT	R0, #hi_addr(_Label8+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3132 :: 		Label8.Height      = 17;
MOVS	R1, #17
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label8+14)
MOVT	R0, #hi_addr(_Label8+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3133 :: 		Label8.Caption     = Label8_Caption;
MOVW	R1, #lo_addr(_Label8_Caption+0)
MOVT	R1, #hi_addr(_Label8_Caption+0)
MOVW	R0, #lo_addr(_Label8+16)
MOVT	R0, #hi_addr(_Label8+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3134 :: 		Label8.FontName    = Tahoma_14x16_Bold;
MOVW	R1, #611
MOVW	R0, #lo_addr(_Label8+20)
MOVT	R0, #hi_addr(_Label8+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3135 :: 		Label8.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label8+24)
MOVT	R0, #hi_addr(_Label8+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3136 :: 		Label8.FontHandle  = 5;
MOVS	R1, #5
MOVW	R0, #lo_addr(_Label8+28)
MOVT	R0, #hi_addr(_Label8+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3137 :: 		Label8.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label8+32)
MOVT	R0, #hi_addr(_Label8+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3138 :: 		Label8.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label8+36)
MOVT	R0, #hi_addr(_Label8+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3139 :: 		Label8.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label8+40)
MOVT	R0, #hi_addr(_Label8+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3140 :: 		Label8.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label8+44)
MOVT	R0, #hi_addr(_Label8+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3141 :: 		Label8.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label8+48)
MOVT	R0, #hi_addr(_Label8+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3142 :: 		Label8.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label8+52)
MOVT	R0, #hi_addr(_Label8+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3144 :: 		Label9.OwnerScreen = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_Label9+0)
MOVT	R0, #hi_addr(_Label9+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3145 :: 		Label9.Order       = 33;
MOVS	R1, #33
MOVW	R0, #lo_addr(_Label9+4)
MOVT	R0, #hi_addr(_Label9+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3146 :: 		Label9.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label9+5)
MOVT	R0, #hi_addr(_Label9+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3147 :: 		Label9.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label9+6)
MOVT	R0, #hi_addr(_Label9+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3148 :: 		Label9.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label9+7)
MOVT	R0, #hi_addr(_Label9+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3149 :: 		Label9.Left        = 20;
MOVS	R1, #20
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label9+8)
MOVT	R0, #hi_addr(_Label9+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3150 :: 		Label9.Top         = 328;
MOVW	R1, #328
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label9+10)
MOVT	R0, #hi_addr(_Label9+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3151 :: 		Label9.Width       = 15;
MOVS	R1, #15
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label9+12)
MOVT	R0, #hi_addr(_Label9+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3152 :: 		Label9.Height      = 25;
MOVS	R1, #25
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label9+14)
MOVT	R0, #hi_addr(_Label9+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3153 :: 		Label9.Caption     = Label9_Caption;
MOVW	R1, #lo_addr(_Label9_Caption+0)
MOVT	R1, #hi_addr(_Label9_Caption+0)
MOVW	R0, #lo_addr(_Label9+16)
MOVT	R0, #hi_addr(_Label9+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3154 :: 		Label9.FontName    = Tahoma_19x23_Bold;
MOVW	R1, #17125
MOVW	R0, #lo_addr(_Label9+20)
MOVT	R0, #hi_addr(_Label9+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3155 :: 		Label9.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label9+24)
MOVT	R0, #hi_addr(_Label9+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3156 :: 		Label9.FontHandle  = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_Label9+28)
MOVT	R0, #hi_addr(_Label9+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3157 :: 		Label9.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label9+32)
MOVT	R0, #hi_addr(_Label9+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3158 :: 		Label9.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label9+36)
MOVT	R0, #hi_addr(_Label9+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3159 :: 		Label9.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label9+40)
MOVT	R0, #hi_addr(_Label9+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3160 :: 		Label9.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label9+44)
MOVT	R0, #hi_addr(_Label9+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3161 :: 		Label9.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label9+48)
MOVT	R0, #hi_addr(_Label9+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3162 :: 		Label9.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label9+52)
MOVT	R0, #hi_addr(_Label9+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3164 :: 		Label10.OwnerScreen = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_Label10+0)
MOVT	R0, #hi_addr(_Label10+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3165 :: 		Label10.Order       = 34;
MOVS	R1, #34
MOVW	R0, #lo_addr(_Label10+4)
MOVT	R0, #hi_addr(_Label10+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3166 :: 		Label10.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label10+5)
MOVT	R0, #hi_addr(_Label10+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3167 :: 		Label10.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label10+6)
MOVT	R0, #hi_addr(_Label10+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3168 :: 		Label10.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label10+7)
MOVT	R0, #hi_addr(_Label10+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3169 :: 		Label10.Left        = 20;
MOVS	R1, #20
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label10+8)
MOVT	R0, #hi_addr(_Label10+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3170 :: 		Label10.Top         = 363;
MOVW	R1, #363
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label10+10)
MOVT	R0, #hi_addr(_Label10+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3171 :: 		Label10.Width       = 31;
MOVS	R1, #31
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label10+12)
MOVT	R0, #hi_addr(_Label10+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3172 :: 		Label10.Height      = 25;
MOVS	R1, #25
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label10+14)
MOVT	R0, #hi_addr(_Label10+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3173 :: 		Label10.Caption     = Label10_Caption;
MOVW	R1, #lo_addr(_Label10_Caption+0)
MOVT	R1, #hi_addr(_Label10_Caption+0)
MOVW	R0, #lo_addr(_Label10+16)
MOVT	R0, #hi_addr(_Label10+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3174 :: 		Label10.FontName    = Tahoma_19x23_Bold;
MOVW	R1, #17125
MOVW	R0, #lo_addr(_Label10+20)
MOVT	R0, #hi_addr(_Label10+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3175 :: 		Label10.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label10+24)
MOVT	R0, #hi_addr(_Label10+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3176 :: 		Label10.FontHandle  = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_Label10+28)
MOVT	R0, #hi_addr(_Label10+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3177 :: 		Label10.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label10+32)
MOVT	R0, #hi_addr(_Label10+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3178 :: 		Label10.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label10+36)
MOVT	R0, #hi_addr(_Label10+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3179 :: 		Label10.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label10+40)
MOVT	R0, #hi_addr(_Label10+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3180 :: 		Label10.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label10+44)
MOVT	R0, #hi_addr(_Label10+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3181 :: 		Label10.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label10+48)
MOVT	R0, #hi_addr(_Label10+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3182 :: 		Label10.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label10+52)
MOVT	R0, #hi_addr(_Label10+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3184 :: 		LighOKAut.OwnerScreen   = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_LighOKAut+0)
MOVT	R0, #hi_addr(_LighOKAut+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3185 :: 		LighOKAut.Order         = 35;
MOVS	R1, #35
MOVW	R0, #lo_addr(_LighOKAut+4)
MOVT	R0, #hi_addr(_LighOKAut+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3186 :: 		LighOKAut.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_LighOKAut+5)
MOVT	R0, #hi_addr(_LighOKAut+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3187 :: 		LighOKAut.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_LighOKAut+6)
MOVT	R0, #hi_addr(_LighOKAut+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3188 :: 		LighOKAut.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_LighOKAut+7)
MOVT	R0, #hi_addr(_LighOKAut+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3189 :: 		LighOKAut.Left          = 265;
MOVW	R1, #265
SXTH	R1, R1
MOVW	R0, #lo_addr(_LighOKAut+8)
MOVT	R0, #hi_addr(_LighOKAut+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3190 :: 		LighOKAut.Top           = 10;
MOVS	R1, #10
SXTH	R1, R1
MOVW	R0, #lo_addr(_LighOKAut+10)
MOVT	R0, #hi_addr(_LighOKAut+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3191 :: 		LighOKAut.Radius        = 29;
MOVS	R1, #29
SXTH	R1, R1
MOVW	R0, #lo_addr(_LighOKAut+12)
MOVT	R0, #hi_addr(_LighOKAut+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3192 :: 		LighOKAut.Pen_Width     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_LighOKAut+14)
MOVT	R0, #hi_addr(_LighOKAut+14)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3193 :: 		LighOKAut.Pen_Color     = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_LighOKAut+16)
MOVT	R0, #hi_addr(_LighOKAut+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3194 :: 		LighOKAut.Color         = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_LighOKAut+20)
MOVT	R0, #hi_addr(_LighOKAut+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3195 :: 		LighOKAut.Press_Color   = 0xE2E2E2;
MOVW	R1, #58082
MOVT	R1, #226
MOVW	R0, #lo_addr(_LighOKAut+24)
MOVT	R0, #hi_addr(_LighOKAut+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3196 :: 		LighOKAut.Caption       = LighOKAut_Caption;
MOVW	R1, #lo_addr(_LighOKAut_Caption+0)
MOVT	R1, #hi_addr(_LighOKAut_Caption+0)
MOVW	R0, #lo_addr(_LighOKAut+28)
MOVT	R0, #hi_addr(_LighOKAut+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3197 :: 		LighOKAut.TextAlign     = taCenter;
MOVS	R1, #2
MOVW	R0, #lo_addr(_LighOKAut+32)
MOVT	R0, #hi_addr(_LighOKAut+32)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3198 :: 		LighOKAut.FontName      = Tahoma_29x29_Bold;
MOVW	R1, #41981
MOVW	R0, #lo_addr(_LighOKAut+36)
MOVT	R0, #hi_addr(_LighOKAut+36)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3199 :: 		LighOKAut.Font_Color    = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_LighOKAut+40)
MOVT	R0, #hi_addr(_LighOKAut+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3200 :: 		LighOKAut.FontHandle    = 6;
MOVS	R1, #6
MOVW	R0, #lo_addr(_LighOKAut+44)
MOVT	R0, #hi_addr(_LighOKAut+44)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3201 :: 		LighOKAut.Source        = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_LighOKAut+48)
MOVT	R0, #hi_addr(_LighOKAut+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3202 :: 		LighOKAut.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_LighOKAut+52)
MOVT	R0, #hi_addr(_LighOKAut+52)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3203 :: 		LighOKAut.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_LighOKAut+56)
MOVT	R0, #hi_addr(_LighOKAut+56)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3204 :: 		LighOKAut.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_LighOKAut+60)
MOVT	R0, #hi_addr(_LighOKAut+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3205 :: 		LighOKAut.OnClick       = &LighOKAut_OnClick;
MOVW	R1, #lo_addr(_LighOKAut_OnClick+0)
MOVT	R1, #hi_addr(_LighOKAut_OnClick+0)
MOVW	R0, #lo_addr(_LighOKAut+64)
MOVT	R0, #hi_addr(_LighOKAut+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3206 :: 		LighOKAut.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_LighOKAut+68)
MOVT	R0, #hi_addr(_LighOKAut+68)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3208 :: 		LighOKAut_OnClick.Action       = LighOKAutOnClick;
MOVW	R1, #lo_addr(_LighOKAutOnClick+0)
MOVT	R1, #hi_addr(_LighOKAutOnClick+0)
MOVW	R0, #lo_addr(_LighOKAut_OnClick+0)
MOVT	R0, #hi_addr(_LighOKAut_OnClick+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3209 :: 		LighOKAut_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
MOVS	R1, #0
MOVW	R0, #lo_addr(_LighOKAut_OnClick+4)
MOVT	R0, #hi_addr(_LighOKAut_OnClick+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3210 :: 		LighOKAut_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
MOVS	R1, #65
MOVW	R0, #lo_addr(_LighOKAut_OnClick+5)
MOVT	R0, #hi_addr(_LighOKAut_OnClick+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3211 :: 		LighOKAut_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
MOVS	R1, #81
MOVW	R0, #lo_addr(_LighOKAut_OnClick+6)
MOVT	R0, #hi_addr(_LighOKAut_OnClick+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3212 :: 		LighOKAut_OnClick.Sound.Volume = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_LighOKAut_OnClick+7)
MOVT	R0, #hi_addr(_LighOKAut_OnClick+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3214 :: 		LighErrAut.OwnerScreen   = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_LighErrAut+0)
MOVT	R0, #hi_addr(_LighErrAut+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3215 :: 		LighErrAut.Order         = 36;
MOVS	R1, #36
MOVW	R0, #lo_addr(_LighErrAut+4)
MOVT	R0, #hi_addr(_LighErrAut+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3216 :: 		LighErrAut.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_LighErrAut+5)
MOVT	R0, #hi_addr(_LighErrAut+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3217 :: 		LighErrAut.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_LighErrAut+6)
MOVT	R0, #hi_addr(_LighErrAut+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3218 :: 		LighErrAut.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_LighErrAut+7)
MOVT	R0, #hi_addr(_LighErrAut+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3219 :: 		LighErrAut.Left          = 480;
MOVW	R1, #480
SXTH	R1, R1
MOVW	R0, #lo_addr(_LighErrAut+8)
MOVT	R0, #hi_addr(_LighErrAut+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3220 :: 		LighErrAut.Top           = 10;
MOVS	R1, #10
SXTH	R1, R1
MOVW	R0, #lo_addr(_LighErrAut+10)
MOVT	R0, #hi_addr(_LighErrAut+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3221 :: 		LighErrAut.Radius        = 29;
MOVS	R1, #29
SXTH	R1, R1
MOVW	R0, #lo_addr(_LighErrAut+12)
MOVT	R0, #hi_addr(_LighErrAut+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3222 :: 		LighErrAut.Pen_Width     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_LighErrAut+14)
MOVT	R0, #hi_addr(_LighErrAut+14)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3223 :: 		LighErrAut.Pen_Color     = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_LighErrAut+16)
MOVT	R0, #hi_addr(_LighErrAut+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3224 :: 		LighErrAut.Color         = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_LighErrAut+20)
MOVT	R0, #hi_addr(_LighErrAut+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3225 :: 		LighErrAut.Press_Color   = 0xE2E2E2;
MOVW	R1, #58082
MOVT	R1, #226
MOVW	R0, #lo_addr(_LighErrAut+24)
MOVT	R0, #hi_addr(_LighErrAut+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3226 :: 		LighErrAut.Caption       = LighErrAut_Caption;
MOVW	R1, #lo_addr(_LighErrAut_Caption+0)
MOVT	R1, #hi_addr(_LighErrAut_Caption+0)
MOVW	R0, #lo_addr(_LighErrAut+28)
MOVT	R0, #hi_addr(_LighErrAut+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3227 :: 		LighErrAut.TextAlign     = taCenter;
MOVS	R1, #2
MOVW	R0, #lo_addr(_LighErrAut+32)
MOVT	R0, #hi_addr(_LighErrAut+32)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3228 :: 		LighErrAut.FontName      = Tahoma_25x25_Bold;
MOVW	R1, #31885
MOVW	R0, #lo_addr(_LighErrAut+36)
MOVT	R0, #hi_addr(_LighErrAut+36)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3229 :: 		LighErrAut.Font_Color    = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_LighErrAut+40)
MOVT	R0, #hi_addr(_LighErrAut+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3230 :: 		LighErrAut.FontHandle    = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_LighErrAut+44)
MOVT	R0, #hi_addr(_LighErrAut+44)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3231 :: 		LighErrAut.Source        = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_LighErrAut+48)
MOVT	R0, #hi_addr(_LighErrAut+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3232 :: 		LighErrAut.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_LighErrAut+52)
MOVT	R0, #hi_addr(_LighErrAut+52)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3233 :: 		LighErrAut.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_LighErrAut+56)
MOVT	R0, #hi_addr(_LighErrAut+56)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3234 :: 		LighErrAut.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_LighErrAut+60)
MOVT	R0, #hi_addr(_LighErrAut+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3235 :: 		LighErrAut.OnClick       = &LighErrAut_OnClick;
MOVW	R1, #lo_addr(_LighErrAut_OnClick+0)
MOVT	R1, #hi_addr(_LighErrAut_OnClick+0)
MOVW	R0, #lo_addr(_LighErrAut+64)
MOVT	R0, #hi_addr(_LighErrAut+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3236 :: 		LighErrAut.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_LighErrAut+68)
MOVT	R0, #hi_addr(_LighErrAut+68)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3238 :: 		LighErrAut_OnClick.Action       = LighErrAutOnClick;
MOVW	R1, #lo_addr(_LighErrAutOnClick+0)
MOVT	R1, #hi_addr(_LighErrAutOnClick+0)
MOVW	R0, #lo_addr(_LighErrAut_OnClick+0)
MOVT	R0, #hi_addr(_LighErrAut_OnClick+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3239 :: 		LighErrAut_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
MOVS	R1, #0
MOVW	R0, #lo_addr(_LighErrAut_OnClick+4)
MOVT	R0, #hi_addr(_LighErrAut_OnClick+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3240 :: 		LighErrAut_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
MOVS	R1, #65
MOVW	R0, #lo_addr(_LighErrAut_OnClick+5)
MOVT	R0, #hi_addr(_LighErrAut_OnClick+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3241 :: 		LighErrAut_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
MOVS	R1, #81
MOVW	R0, #lo_addr(_LighErrAut_OnClick+6)
MOVT	R0, #hi_addr(_LighErrAut_OnClick+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3242 :: 		LighErrAut_OnClick.Sound.Volume = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_LighErrAut_OnClick+7)
MOVT	R0, #hi_addr(_LighErrAut_OnClick+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3244 :: 		RpmNumAut.OwnerScreen   = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_RpmNumAut+0)
MOVT	R0, #hi_addr(_RpmNumAut+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3245 :: 		RpmNumAut.Order         = 37;
MOVS	R1, #37
MOVW	R0, #lo_addr(_RpmNumAut+4)
MOVT	R0, #hi_addr(_RpmNumAut+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3246 :: 		RpmNumAut.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_RpmNumAut+5)
MOVT	R0, #hi_addr(_RpmNumAut+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3247 :: 		RpmNumAut.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_RpmNumAut+6)
MOVT	R0, #hi_addr(_RpmNumAut+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3248 :: 		RpmNumAut.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_RpmNumAut+7)
MOVT	R0, #hi_addr(_RpmNumAut+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3249 :: 		RpmNumAut.Left          = 312;
MOVW	R1, #312
SXTH	R1, R1
MOVW	R0, #lo_addr(_RpmNumAut+8)
MOVT	R0, #hi_addr(_RpmNumAut+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3250 :: 		RpmNumAut.Top           = 188;
MOVS	R1, #188
SXTH	R1, R1
MOVW	R0, #lo_addr(_RpmNumAut+10)
MOVT	R0, #hi_addr(_RpmNumAut+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3251 :: 		RpmNumAut.Width         = 177;
MOVS	R1, #177
SXTH	R1, R1
MOVW	R0, #lo_addr(_RpmNumAut+12)
MOVT	R0, #hi_addr(_RpmNumAut+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3252 :: 		RpmNumAut.Height        = 45;
MOVS	R1, #45
SXTH	R1, R1
MOVW	R0, #lo_addr(_RpmNumAut+14)
MOVT	R0, #hi_addr(_RpmNumAut+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3253 :: 		RpmNumAut.Pen_Width     = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_RpmNumAut+16)
MOVT	R0, #hi_addr(_RpmNumAut+16)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3254 :: 		RpmNumAut.Pen_Color     = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_RpmNumAut+20)
MOVT	R0, #hi_addr(_RpmNumAut+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3255 :: 		RpmNumAut.Color         = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_RpmNumAut+24)
MOVT	R0, #hi_addr(_RpmNumAut+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3256 :: 		RpmNumAut.Press_Color   = 0xE2E2E2;
MOVW	R1, #58082
MOVT	R1, #226
MOVW	R0, #lo_addr(_RpmNumAut+28)
MOVT	R0, #hi_addr(_RpmNumAut+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3257 :: 		RpmNumAut.Caption       = RpmNumAut_Caption;
MOVW	R1, #lo_addr(_RpmNumAut_Caption+0)
MOVT	R1, #hi_addr(_RpmNumAut_Caption+0)
MOVW	R0, #lo_addr(_RpmNumAut+32)
MOVT	R0, #hi_addr(_RpmNumAut+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3258 :: 		RpmNumAut.TextAlign     = taCenter;
MOVS	R1, #2
MOVW	R0, #lo_addr(_RpmNumAut+36)
MOVT	R0, #hi_addr(_RpmNumAut+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3259 :: 		RpmNumAut.FontName      = Tahoma_25x25_Bold;
MOVW	R1, #31885
MOVW	R0, #lo_addr(_RpmNumAut+40)
MOVT	R0, #hi_addr(_RpmNumAut+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3260 :: 		RpmNumAut.Font_Color    = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_RpmNumAut+44)
MOVT	R0, #hi_addr(_RpmNumAut+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3261 :: 		RpmNumAut.FontHandle    = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_RpmNumAut+48)
MOVT	R0, #hi_addr(_RpmNumAut+48)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3262 :: 		RpmNumAut.Source        = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_RpmNumAut+52)
MOVT	R0, #hi_addr(_RpmNumAut+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3263 :: 		RpmNumAut.Corner_Radius = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_RpmNumAut+56)
MOVT	R0, #hi_addr(_RpmNumAut+56)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3264 :: 		RpmNumAut.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_RpmNumAut+57)
MOVT	R0, #hi_addr(_RpmNumAut+57)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3265 :: 		RpmNumAut.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_RpmNumAut+60)
MOVT	R0, #hi_addr(_RpmNumAut+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3266 :: 		RpmNumAut.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_RpmNumAut+64)
MOVT	R0, #hi_addr(_RpmNumAut+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3267 :: 		RpmNumAut.OnClick       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_RpmNumAut+68)
MOVT	R0, #hi_addr(_RpmNumAut+68)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3268 :: 		RpmNumAut.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_RpmNumAut+72)
MOVT	R0, #hi_addr(_RpmNumAut+72)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3270 :: 		ThrPrgAut.OwnerScreen      = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_ThrPrgAut+0)
MOVT	R0, #hi_addr(_ThrPrgAut+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3271 :: 		ThrPrgAut.Order            = 38;
MOVS	R1, #38
MOVW	R0, #lo_addr(_ThrPrgAut+4)
MOVT	R0, #hi_addr(_ThrPrgAut+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3272 :: 		ThrPrgAut.Visible          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ThrPrgAut+5)
MOVT	R0, #hi_addr(_ThrPrgAut+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3273 :: 		ThrPrgAut.Opacity          = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_ThrPrgAut+6)
MOVT	R0, #hi_addr(_ThrPrgAut+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3274 :: 		ThrPrgAut.Tag              = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_ThrPrgAut+7)
MOVT	R0, #hi_addr(_ThrPrgAut+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3275 :: 		ThrPrgAut.Left             = 269;
MOVW	R1, #269
SXTH	R1, R1
MOVW	R0, #lo_addr(_ThrPrgAut+8)
MOVT	R0, #hi_addr(_ThrPrgAut+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3276 :: 		ThrPrgAut.Top              = 355;
MOVW	R1, #355
SXTH	R1, R1
MOVW	R0, #lo_addr(_ThrPrgAut+10)
MOVT	R0, #hi_addr(_ThrPrgAut+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3277 :: 		ThrPrgAut.Width            = 265;
MOVW	R1, #265
SXTH	R1, R1
MOVW	R0, #lo_addr(_ThrPrgAut+12)
MOVT	R0, #hi_addr(_ThrPrgAut+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3278 :: 		ThrPrgAut.Height           = 40;
MOVS	R1, #40
SXTH	R1, R1
MOVW	R0, #lo_addr(_ThrPrgAut+14)
MOVT	R0, #hi_addr(_ThrPrgAut+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3279 :: 		ThrPrgAut.Pen_Width        = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_ThrPrgAut+16)
MOVT	R0, #hi_addr(_ThrPrgAut+16)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3280 :: 		ThrPrgAut.Pen_Color        = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ThrPrgAut+20)
MOVT	R0, #hi_addr(_ThrPrgAut+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3281 :: 		ThrPrgAut.Background_Color = 0xC0C0C0;
MOVW	R1, #49344
MOVT	R1, #192
MOVW	R0, #lo_addr(_ThrPrgAut+24)
MOVT	R0, #hi_addr(_ThrPrgAut+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3282 :: 		ThrPrgAut.Color            = 0x80FF;
MOVW	R1, #33023
MOVW	R0, #lo_addr(_ThrPrgAut+28)
MOVT	R0, #hi_addr(_ThrPrgAut+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3283 :: 		ThrPrgAut.Caption          = ThrPrgAut_Caption;
MOVW	R1, #lo_addr(_ThrPrgAut_Caption+0)
MOVT	R1, #hi_addr(_ThrPrgAut_Caption+0)
MOVW	R0, #lo_addr(_ThrPrgAut+32)
MOVT	R0, #hi_addr(_ThrPrgAut+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3284 :: 		ThrPrgAut.FontName         = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_ThrPrgAut+36)
MOVT	R0, #hi_addr(_ThrPrgAut+36)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3285 :: 		ThrPrgAut.Font_Color       = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ThrPrgAut+40)
MOVT	R0, #hi_addr(_ThrPrgAut+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3286 :: 		ThrPrgAut.FontHandle       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ThrPrgAut+44)
MOVT	R0, #hi_addr(_ThrPrgAut+44)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3287 :: 		ThrPrgAut.Source           = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_ThrPrgAut+48)
MOVT	R0, #hi_addr(_ThrPrgAut+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3288 :: 		ThrPrgAut.Corner_Radius    = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ThrPrgAut+52)
MOVT	R0, #hi_addr(_ThrPrgAut+52)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3289 :: 		ThrPrgAut.Min              = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ThrPrgAut+54)
MOVT	R0, #hi_addr(_ThrPrgAut+54)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3290 :: 		ThrPrgAut.Max              = 100;
MOVS	R1, #100
MOVW	R0, #lo_addr(_ThrPrgAut+56)
MOVT	R0, #hi_addr(_ThrPrgAut+56)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3291 :: 		ThrPrgAut.Position         = 50;
MOVS	R1, #50
MOVW	R0, #lo_addr(_ThrPrgAut+58)
MOVT	R0, #hi_addr(_ThrPrgAut+58)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3292 :: 		ThrPrgAut.Show_Position    = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ThrPrgAut+60)
MOVT	R0, #hi_addr(_ThrPrgAut+60)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3293 :: 		ThrPrgAut.Show_Percentage  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ThrPrgAut+61)
MOVT	R0, #hi_addr(_ThrPrgAut+61)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3294 :: 		ThrPrgAut.Smooth           = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ThrPrgAut+62)
MOVT	R0, #hi_addr(_ThrPrgAut+62)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3296 :: 		RpmInpAut.OwnerScreen   = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_RpmInpAut+0)
MOVT	R0, #hi_addr(_RpmInpAut+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3297 :: 		RpmInpAut.Order         = 39;
MOVS	R1, #39
MOVW	R0, #lo_addr(_RpmInpAut+4)
MOVT	R0, #hi_addr(_RpmInpAut+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3298 :: 		RpmInpAut.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_RpmInpAut+5)
MOVT	R0, #hi_addr(_RpmInpAut+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3299 :: 		RpmInpAut.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_RpmInpAut+6)
MOVT	R0, #hi_addr(_RpmInpAut+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3300 :: 		RpmInpAut.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_RpmInpAut+7)
MOVT	R0, #hi_addr(_RpmInpAut+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3301 :: 		RpmInpAut.Left          = 313;
MOVW	R1, #313
SXTH	R1, R1
MOVW	R0, #lo_addr(_RpmInpAut+8)
MOVT	R0, #hi_addr(_RpmInpAut+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3302 :: 		RpmInpAut.Top           = 290;
MOVW	R1, #290
SXTH	R1, R1
MOVW	R0, #lo_addr(_RpmInpAut+10)
MOVT	R0, #hi_addr(_RpmInpAut+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3303 :: 		RpmInpAut.Width         = 175;
MOVS	R1, #175
SXTH	R1, R1
MOVW	R0, #lo_addr(_RpmInpAut+12)
MOVT	R0, #hi_addr(_RpmInpAut+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3304 :: 		RpmInpAut.Height        = 37;
MOVS	R1, #37
SXTH	R1, R1
MOVW	R0, #lo_addr(_RpmInpAut+14)
MOVT	R0, #hi_addr(_RpmInpAut+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3305 :: 		RpmInpAut.Pen_Width     = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_RpmInpAut+16)
MOVT	R0, #hi_addr(_RpmInpAut+16)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3306 :: 		RpmInpAut.Pen_Color     = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_RpmInpAut+20)
MOVT	R0, #hi_addr(_RpmInpAut+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3307 :: 		RpmInpAut.Color         = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_RpmInpAut+24)
MOVT	R0, #hi_addr(_RpmInpAut+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3308 :: 		RpmInpAut.Press_Color   = 0xE2E2E2;
MOVW	R1, #58082
MOVT	R1, #226
MOVW	R0, #lo_addr(_RpmInpAut+28)
MOVT	R0, #hi_addr(_RpmInpAut+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3309 :: 		RpmInpAut.Caption       = RpmInpAut_Caption;
MOVW	R1, #lo_addr(_RpmInpAut_Caption+0)
MOVT	R1, #hi_addr(_RpmInpAut_Caption+0)
MOVW	R0, #lo_addr(_RpmInpAut+32)
MOVT	R0, #hi_addr(_RpmInpAut+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3310 :: 		RpmInpAut.TextAlign     = taCenter;
MOVS	R1, #2
MOVW	R0, #lo_addr(_RpmInpAut+36)
MOVT	R0, #hi_addr(_RpmInpAut+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3311 :: 		RpmInpAut.FontName      = Tahoma_19x23_Bold;
MOVW	R1, #17125
MOVW	R0, #lo_addr(_RpmInpAut+40)
MOVT	R0, #hi_addr(_RpmInpAut+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3312 :: 		RpmInpAut.Font_Color    = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_RpmInpAut+44)
MOVT	R0, #hi_addr(_RpmInpAut+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3313 :: 		RpmInpAut.FontHandle    = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_RpmInpAut+48)
MOVT	R0, #hi_addr(_RpmInpAut+48)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3314 :: 		RpmInpAut.Source        = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_RpmInpAut+52)
MOVT	R0, #hi_addr(_RpmInpAut+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3315 :: 		RpmInpAut.Corner_Radius = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_RpmInpAut+56)
MOVT	R0, #hi_addr(_RpmInpAut+56)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3316 :: 		RpmInpAut.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_RpmInpAut+57)
MOVT	R0, #hi_addr(_RpmInpAut+57)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3317 :: 		RpmInpAut.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_RpmInpAut+60)
MOVT	R0, #hi_addr(_RpmInpAut+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3318 :: 		RpmInpAut.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_RpmInpAut+64)
MOVT	R0, #hi_addr(_RpmInpAut+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3319 :: 		RpmInpAut.OnClick       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_RpmInpAut+68)
MOVT	R0, #hi_addr(_RpmInpAut+68)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3320 :: 		RpmInpAut.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_RpmInpAut+72)
MOVT	R0, #hi_addr(_RpmInpAut+72)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3322 :: 		Label11.OwnerScreen = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_Label11+0)
MOVT	R0, #hi_addr(_Label11+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3323 :: 		Label11.Order       = 40;
MOVS	R1, #40
MOVW	R0, #lo_addr(_Label11+4)
MOVT	R0, #hi_addr(_Label11+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3324 :: 		Label11.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label11+5)
MOVT	R0, #hi_addr(_Label11+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3325 :: 		Label11.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label11+6)
MOVT	R0, #hi_addr(_Label11+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3326 :: 		Label11.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label11+7)
MOVT	R0, #hi_addr(_Label11+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3327 :: 		Label11.Left        = 363;
MOVW	R1, #363
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label11+8)
MOVT	R0, #hi_addr(_Label11+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3328 :: 		Label11.Top         = 330;
MOVW	R1, #330
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label11+10)
MOVT	R0, #hi_addr(_Label11+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3329 :: 		Label11.Width       = 79;
MOVS	R1, #79
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label11+12)
MOVT	R0, #hi_addr(_Label11+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3330 :: 		Label11.Height      = 25;
MOVS	R1, #25
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label11+14)
MOVT	R0, #hi_addr(_Label11+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3331 :: 		Label11.Caption     = Label11_Caption;
MOVW	R1, #lo_addr(_Label11_Caption+0)
MOVT	R1, #hi_addr(_Label11_Caption+0)
MOVW	R0, #lo_addr(_Label11+16)
MOVT	R0, #hi_addr(_Label11+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3332 :: 		Label11.FontName    = Tahoma_19x23_Bold;
MOVW	R1, #17125
MOVW	R0, #lo_addr(_Label11+20)
MOVT	R0, #hi_addr(_Label11+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3333 :: 		Label11.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label11+24)
MOVT	R0, #hi_addr(_Label11+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3334 :: 		Label11.FontHandle  = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_Label11+28)
MOVT	R0, #hi_addr(_Label11+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3335 :: 		Label11.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label11+32)
MOVT	R0, #hi_addr(_Label11+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3336 :: 		Label11.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label11+36)
MOVT	R0, #hi_addr(_Label11+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3337 :: 		Label11.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label11+40)
MOVT	R0, #hi_addr(_Label11+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3338 :: 		Label11.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label11+44)
MOVT	R0, #hi_addr(_Label11+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3339 :: 		Label11.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label11+48)
MOVT	R0, #hi_addr(_Label11+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3340 :: 		Label11.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label11+52)
MOVT	R0, #hi_addr(_Label11+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3342 :: 		Label12.OwnerScreen = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_Label12+0)
MOVT	R0, #hi_addr(_Label12+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3343 :: 		Label12.Order       = 41;
MOVS	R1, #41
MOVW	R0, #lo_addr(_Label12+4)
MOVT	R0, #hi_addr(_Label12+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3344 :: 		Label12.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label12+5)
MOVT	R0, #hi_addr(_Label12+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3345 :: 		Label12.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label12+6)
MOVT	R0, #hi_addr(_Label12+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3346 :: 		Label12.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label12+7)
MOVT	R0, #hi_addr(_Label12+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3347 :: 		Label12.Left        = 263;
MOVW	R1, #263
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label12+8)
MOVT	R0, #hi_addr(_Label12+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3348 :: 		Label12.Top         = 265;
MOVW	R1, #265
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label12+10)
MOVT	R0, #hi_addr(_Label12+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3349 :: 		Label12.Width       = 263;
MOVW	R1, #263
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label12+12)
MOVT	R0, #hi_addr(_Label12+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3350 :: 		Label12.Height      = 25;
MOVS	R1, #25
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label12+14)
MOVT	R0, #hi_addr(_Label12+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3351 :: 		Label12.Caption     = Label12_Caption;
MOVW	R1, #lo_addr(_Label12_Caption+0)
MOVT	R1, #hi_addr(_Label12_Caption+0)
MOVW	R0, #lo_addr(_Label12+16)
MOVT	R0, #hi_addr(_Label12+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3352 :: 		Label12.FontName    = Tahoma_19x23_Bold;
MOVW	R1, #17125
MOVW	R0, #lo_addr(_Label12+20)
MOVT	R0, #hi_addr(_Label12+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3353 :: 		Label12.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label12+24)
MOVT	R0, #hi_addr(_Label12+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3354 :: 		Label12.FontHandle  = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_Label12+28)
MOVT	R0, #hi_addr(_Label12+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3355 :: 		Label12.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label12+32)
MOVT	R0, #hi_addr(_Label12+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3356 :: 		Label12.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label12+36)
MOVT	R0, #hi_addr(_Label12+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3357 :: 		Label12.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label12+40)
MOVT	R0, #hi_addr(_Label12+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3358 :: 		Label12.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label12+44)
MOVT	R0, #hi_addr(_Label12+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3359 :: 		Label12.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label12+48)
MOVT	R0, #hi_addr(_Label12+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3360 :: 		Label12.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label12+52)
MOVT	R0, #hi_addr(_Label12+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3362 :: 		Label13.OwnerScreen = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_Label13+0)
MOVT	R0, #hi_addr(_Label13+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3363 :: 		Label13.Order       = 42;
MOVS	R1, #42
MOVW	R0, #lo_addr(_Label13+4)
MOVT	R0, #hi_addr(_Label13+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3364 :: 		Label13.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label13+5)
MOVT	R0, #hi_addr(_Label13+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3365 :: 		Label13.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label13+6)
MOVT	R0, #hi_addr(_Label13+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3366 :: 		Label13.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label13+7)
MOVT	R0, #hi_addr(_Label13+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3367 :: 		Label13.Left        = 260;
MOVW	R1, #260
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label13+8)
MOVT	R0, #hi_addr(_Label13+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3368 :: 		Label13.Top         = 235;
MOVS	R1, #235
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label13+10)
MOVT	R0, #hi_addr(_Label13+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3369 :: 		Label13.Width       = 98;
MOVS	R1, #98
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label13+12)
MOVT	R0, #hi_addr(_Label13+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3370 :: 		Label13.Height      = 25;
MOVS	R1, #25
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label13+14)
MOVT	R0, #hi_addr(_Label13+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3371 :: 		Label13.Caption     = Label13_Caption;
MOVW	R1, #lo_addr(_Label13_Caption+0)
MOVT	R1, #hi_addr(_Label13_Caption+0)
MOVW	R0, #lo_addr(_Label13+16)
MOVT	R0, #hi_addr(_Label13+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3372 :: 		Label13.FontName    = Tahoma_19x23_Bold;
MOVW	R1, #17125
MOVW	R0, #lo_addr(_Label13+20)
MOVT	R0, #hi_addr(_Label13+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3373 :: 		Label13.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label13+24)
MOVT	R0, #hi_addr(_Label13+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3374 :: 		Label13.FontHandle  = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_Label13+28)
MOVT	R0, #hi_addr(_Label13+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3375 :: 		Label13.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label13+32)
MOVT	R0, #hi_addr(_Label13+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3376 :: 		Label13.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label13+36)
MOVT	R0, #hi_addr(_Label13+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3377 :: 		Label13.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label13+40)
MOVT	R0, #hi_addr(_Label13+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3378 :: 		Label13.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label13+44)
MOVT	R0, #hi_addr(_Label13+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3379 :: 		Label13.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label13+48)
MOVT	R0, #hi_addr(_Label13+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3380 :: 		Label13.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label13+52)
MOVT	R0, #hi_addr(_Label13+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3382 :: 		Label14.OwnerScreen = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_Label14+0)
MOVT	R0, #hi_addr(_Label14+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3383 :: 		Label14.Order       = 43;
MOVS	R1, #43
MOVW	R0, #lo_addr(_Label14+4)
MOVT	R0, #hi_addr(_Label14+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3384 :: 		Label14.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label14+5)
MOVT	R0, #hi_addr(_Label14+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3385 :: 		Label14.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label14+6)
MOVT	R0, #hi_addr(_Label14+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3386 :: 		Label14.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label14+7)
MOVT	R0, #hi_addr(_Label14+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3387 :: 		Label14.Left        = 460;
MOVW	R1, #460
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label14+8)
MOVT	R0, #hi_addr(_Label14+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3388 :: 		Label14.Top         = 235;
MOVS	R1, #235
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label14+10)
MOVT	R0, #hi_addr(_Label14+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3389 :: 		Label14.Width       = 79;
MOVS	R1, #79
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label14+12)
MOVT	R0, #hi_addr(_Label14+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3390 :: 		Label14.Height      = 25;
MOVS	R1, #25
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label14+14)
MOVT	R0, #hi_addr(_Label14+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3391 :: 		Label14.Caption     = Label14_Caption;
MOVW	R1, #lo_addr(_Label14_Caption+0)
MOVT	R1, #hi_addr(_Label14_Caption+0)
MOVW	R0, #lo_addr(_Label14+16)
MOVT	R0, #hi_addr(_Label14+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3392 :: 		Label14.FontName    = Tahoma_19x23_Bold;
MOVW	R1, #17125
MOVW	R0, #lo_addr(_Label14+20)
MOVT	R0, #hi_addr(_Label14+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3393 :: 		Label14.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label14+24)
MOVT	R0, #hi_addr(_Label14+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3394 :: 		Label14.FontHandle  = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_Label14+28)
MOVT	R0, #hi_addr(_Label14+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3395 :: 		Label14.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label14+32)
MOVT	R0, #hi_addr(_Label14+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3396 :: 		Label14.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label14+36)
MOVT	R0, #hi_addr(_Label14+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3397 :: 		Label14.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label14+40)
MOVT	R0, #hi_addr(_Label14+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3398 :: 		Label14.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label14+44)
MOVT	R0, #hi_addr(_Label14+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3399 :: 		Label14.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label14+48)
MOVT	R0, #hi_addr(_Label14+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3400 :: 		Label14.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label14+52)
MOVT	R0, #hi_addr(_Label14+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3402 :: 		CtrlOnAut.OwnerScreen   = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_CtrlOnAut+0)
MOVT	R0, #hi_addr(_CtrlOnAut+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3403 :: 		CtrlOnAut.Order         = 44;
MOVS	R1, #44
MOVW	R0, #lo_addr(_CtrlOnAut+4)
MOVT	R0, #hi_addr(_CtrlOnAut+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3404 :: 		CtrlOnAut.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_CtrlOnAut+5)
MOVT	R0, #hi_addr(_CtrlOnAut+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3405 :: 		CtrlOnAut.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_CtrlOnAut+6)
MOVT	R0, #hi_addr(_CtrlOnAut+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3406 :: 		CtrlOnAut.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_CtrlOnAut+7)
MOVT	R0, #hi_addr(_CtrlOnAut+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3407 :: 		CtrlOnAut.Left          = 260;
MOVW	R1, #260
SXTH	R1, R1
MOVW	R0, #lo_addr(_CtrlOnAut+8)
MOVT	R0, #hi_addr(_CtrlOnAut+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3408 :: 		CtrlOnAut.Top           = 192;
MOVS	R1, #192
SXTH	R1, R1
MOVW	R0, #lo_addr(_CtrlOnAut+10)
MOVT	R0, #hi_addr(_CtrlOnAut+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3409 :: 		CtrlOnAut.Radius        = 18;
MOVS	R1, #18
SXTH	R1, R1
MOVW	R0, #lo_addr(_CtrlOnAut+12)
MOVT	R0, #hi_addr(_CtrlOnAut+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3410 :: 		CtrlOnAut.Pen_Width     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_CtrlOnAut+14)
MOVT	R0, #hi_addr(_CtrlOnAut+14)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3411 :: 		CtrlOnAut.Pen_Color     = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_CtrlOnAut+16)
MOVT	R0, #hi_addr(_CtrlOnAut+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3412 :: 		CtrlOnAut.Color         = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_CtrlOnAut+20)
MOVT	R0, #hi_addr(_CtrlOnAut+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3413 :: 		CtrlOnAut.Press_Color   = 0xE2E2E2;
MOVW	R1, #58082
MOVT	R1, #226
MOVW	R0, #lo_addr(_CtrlOnAut+24)
MOVT	R0, #hi_addr(_CtrlOnAut+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3414 :: 		CtrlOnAut.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_CtrlOnAut+28)
MOVT	R0, #hi_addr(_CtrlOnAut+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3415 :: 		CtrlOnAut.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_CtrlOnAut+32)
MOVT	R0, #hi_addr(_CtrlOnAut+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3416 :: 		CtrlOnAut.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_CtrlOnAut+36)
MOVT	R0, #hi_addr(_CtrlOnAut+36)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3417 :: 		CtrlOnAut.OnClick       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_CtrlOnAut+40)
MOVT	R0, #hi_addr(_CtrlOnAut+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3418 :: 		CtrlOnAut.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_CtrlOnAut+44)
MOVT	R0, #hi_addr(_CtrlOnAut+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3420 :: 		JoyOnAut.OwnerScreen   = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_JoyOnAut+0)
MOVT	R0, #hi_addr(_JoyOnAut+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3421 :: 		JoyOnAut.Order         = 45;
MOVS	R1, #45
MOVW	R0, #lo_addr(_JoyOnAut+4)
MOVT	R0, #hi_addr(_JoyOnAut+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3422 :: 		JoyOnAut.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_JoyOnAut+5)
MOVT	R0, #hi_addr(_JoyOnAut+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3423 :: 		JoyOnAut.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_JoyOnAut+6)
MOVT	R0, #hi_addr(_JoyOnAut+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3424 :: 		JoyOnAut.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_JoyOnAut+7)
MOVT	R0, #hi_addr(_JoyOnAut+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3425 :: 		JoyOnAut.Left          = 501;
MOVW	R1, #501
SXTH	R1, R1
MOVW	R0, #lo_addr(_JoyOnAut+8)
MOVT	R0, #hi_addr(_JoyOnAut+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3426 :: 		JoyOnAut.Top           = 192;
MOVS	R1, #192
SXTH	R1, R1
MOVW	R0, #lo_addr(_JoyOnAut+10)
MOVT	R0, #hi_addr(_JoyOnAut+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3427 :: 		JoyOnAut.Radius        = 18;
MOVS	R1, #18
SXTH	R1, R1
MOVW	R0, #lo_addr(_JoyOnAut+12)
MOVT	R0, #hi_addr(_JoyOnAut+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3428 :: 		JoyOnAut.Pen_Width     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_JoyOnAut+14)
MOVT	R0, #hi_addr(_JoyOnAut+14)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3429 :: 		JoyOnAut.Pen_Color     = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_JoyOnAut+16)
MOVT	R0, #hi_addr(_JoyOnAut+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3430 :: 		JoyOnAut.Color         = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_JoyOnAut+20)
MOVT	R0, #hi_addr(_JoyOnAut+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3431 :: 		JoyOnAut.Press_Color   = 0xE2E2E2;
MOVW	R1, #58082
MOVT	R1, #226
MOVW	R0, #lo_addr(_JoyOnAut+24)
MOVT	R0, #hi_addr(_JoyOnAut+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3432 :: 		JoyOnAut.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_JoyOnAut+28)
MOVT	R0, #hi_addr(_JoyOnAut+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3433 :: 		JoyOnAut.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_JoyOnAut+32)
MOVT	R0, #hi_addr(_JoyOnAut+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3434 :: 		JoyOnAut.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_JoyOnAut+36)
MOVT	R0, #hi_addr(_JoyOnAut+36)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3435 :: 		JoyOnAut.OnClick       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_JoyOnAut+40)
MOVT	R0, #hi_addr(_JoyOnAut+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3436 :: 		JoyOnAut.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_JoyOnAut+44)
MOVT	R0, #hi_addr(_JoyOnAut+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3438 :: 		Line5.OwnerScreen    = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_Line5+0)
MOVT	R0, #hi_addr(_Line5+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3439 :: 		Line5.Order          = 46;
MOVS	R1, #46
MOVW	R0, #lo_addr(_Line5+4)
MOVT	R0, #hi_addr(_Line5+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3440 :: 		Line5.Visible        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Line5+5)
MOVT	R0, #hi_addr(_Line5+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3441 :: 		Line5.Opacity        = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Line5+6)
MOVT	R0, #hi_addr(_Line5+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3442 :: 		Line5.Tag            = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Line5+7)
MOVT	R0, #hi_addr(_Line5+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3443 :: 		Line5.First_Point_X  = 550;
MOVW	R1, #550
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line5+8)
MOVT	R0, #hi_addr(_Line5+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3444 :: 		Line5.First_Point_Y  = 395;
MOVW	R1, #395
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line5+10)
MOVT	R0, #hi_addr(_Line5+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3445 :: 		Line5.Second_Point_X = 780;
MOVW	R1, #780
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line5+12)
MOVT	R0, #hi_addr(_Line5+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3446 :: 		Line5.Second_Point_Y = 394;
MOVW	R1, #394
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line5+14)
MOVT	R0, #hi_addr(_Line5+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3447 :: 		Line5.Pen_Width      = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_Line5+16)
MOVT	R0, #hi_addr(_Line5+16)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3448 :: 		Line5.Pen_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Line5+20)
MOVT	R0, #hi_addr(_Line5+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3450 :: 		PFiLightAut.OwnerScreen   = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_PFiLightAut+0)
MOVT	R0, #hi_addr(_PFiLightAut+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3451 :: 		PFiLightAut.Order         = 47;
MOVS	R1, #47
MOVW	R0, #lo_addr(_PFiLightAut+4)
MOVT	R0, #hi_addr(_PFiLightAut+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3452 :: 		PFiLightAut.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_PFiLightAut+5)
MOVT	R0, #hi_addr(_PFiLightAut+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3453 :: 		PFiLightAut.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_PFiLightAut+6)
MOVT	R0, #hi_addr(_PFiLightAut+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3454 :: 		PFiLightAut.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_PFiLightAut+7)
MOVT	R0, #hi_addr(_PFiLightAut+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3455 :: 		PFiLightAut.Left          = 550;
MOVW	R1, #550
SXTH	R1, R1
MOVW	R0, #lo_addr(_PFiLightAut+8)
MOVT	R0, #hi_addr(_PFiLightAut+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3456 :: 		PFiLightAut.Top           = 132;
MOVS	R1, #132
SXTH	R1, R1
MOVW	R0, #lo_addr(_PFiLightAut+10)
MOVT	R0, #hi_addr(_PFiLightAut+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3457 :: 		PFiLightAut.Radius        = 15;
MOVS	R1, #15
SXTH	R1, R1
MOVW	R0, #lo_addr(_PFiLightAut+12)
MOVT	R0, #hi_addr(_PFiLightAut+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3458 :: 		PFiLightAut.Pen_Width     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_PFiLightAut+14)
MOVT	R0, #hi_addr(_PFiLightAut+14)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3459 :: 		PFiLightAut.Pen_Color     = 0xFF0000;
MOV	R1, #16711680
MOVW	R0, #lo_addr(_PFiLightAut+16)
MOVT	R0, #hi_addr(_PFiLightAut+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3460 :: 		PFiLightAut.Color         = 0xFF0000;
MOV	R1, #16711680
MOVW	R0, #lo_addr(_PFiLightAut+20)
MOVT	R0, #hi_addr(_PFiLightAut+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3461 :: 		PFiLightAut.Press_Color   = 0xE2E2E2;
MOVW	R1, #58082
MOVT	R1, #226
MOVW	R0, #lo_addr(_PFiLightAut+24)
MOVT	R0, #hi_addr(_PFiLightAut+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3462 :: 		PFiLightAut.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_PFiLightAut+28)
MOVT	R0, #hi_addr(_PFiLightAut+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3463 :: 		PFiLightAut.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_PFiLightAut+32)
MOVT	R0, #hi_addr(_PFiLightAut+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3464 :: 		PFiLightAut.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_PFiLightAut+36)
MOVT	R0, #hi_addr(_PFiLightAut+36)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3465 :: 		PFiLightAut.OnClick       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_PFiLightAut+40)
MOVT	R0, #hi_addr(_PFiLightAut+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3466 :: 		PFiLightAut.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_PFiLightAut+44)
MOVT	R0, #hi_addr(_PFiLightAut+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3468 :: 		POILightAut.OwnerScreen   = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_POILightAut+0)
MOVT	R0, #hi_addr(_POILightAut+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3469 :: 		POILightAut.Order         = 48;
MOVS	R1, #48
MOVW	R0, #lo_addr(_POILightAut+4)
MOVT	R0, #hi_addr(_POILightAut+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3470 :: 		POILightAut.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_POILightAut+5)
MOVT	R0, #hi_addr(_POILightAut+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3471 :: 		POILightAut.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_POILightAut+6)
MOVT	R0, #hi_addr(_POILightAut+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3472 :: 		POILightAut.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_POILightAut+7)
MOVT	R0, #hi_addr(_POILightAut+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3473 :: 		POILightAut.Left          = 550;
MOVW	R1, #550
SXTH	R1, R1
MOVW	R0, #lo_addr(_POILightAut+8)
MOVT	R0, #hi_addr(_POILightAut+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3474 :: 		POILightAut.Top           = 164;
MOVS	R1, #164
SXTH	R1, R1
MOVW	R0, #lo_addr(_POILightAut+10)
MOVT	R0, #hi_addr(_POILightAut+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3475 :: 		POILightAut.Radius        = 15;
MOVS	R1, #15
SXTH	R1, R1
MOVW	R0, #lo_addr(_POILightAut+12)
MOVT	R0, #hi_addr(_POILightAut+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3476 :: 		POILightAut.Pen_Width     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_POILightAut+14)
MOVT	R0, #hi_addr(_POILightAut+14)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3477 :: 		POILightAut.Pen_Color     = 0xFF0000;
MOV	R1, #16711680
MOVW	R0, #lo_addr(_POILightAut+16)
MOVT	R0, #hi_addr(_POILightAut+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3478 :: 		POILightAut.Color         = 0xFF0000;
MOV	R1, #16711680
MOVW	R0, #lo_addr(_POILightAut+20)
MOVT	R0, #hi_addr(_POILightAut+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3479 :: 		POILightAut.Press_Color   = 0xE2E2E2;
MOVW	R1, #58082
MOVT	R1, #226
MOVW	R0, #lo_addr(_POILightAut+24)
MOVT	R0, #hi_addr(_POILightAut+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3480 :: 		POILightAut.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_POILightAut+28)
MOVT	R0, #hi_addr(_POILightAut+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3481 :: 		POILightAut.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_POILightAut+32)
MOVT	R0, #hi_addr(_POILightAut+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3482 :: 		POILightAut.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_POILightAut+36)
MOVT	R0, #hi_addr(_POILightAut+36)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3483 :: 		POILightAut.OnClick       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_POILightAut+40)
MOVT	R0, #hi_addr(_POILightAut+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3484 :: 		POILightAut.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_POILightAut+44)
MOVT	R0, #hi_addr(_POILightAut+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3486 :: 		IWLightAut.OwnerScreen   = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_IWLightAut+0)
MOVT	R0, #hi_addr(_IWLightAut+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3487 :: 		IWLightAut.Order         = 49;
MOVS	R1, #49
MOVW	R0, #lo_addr(_IWLightAut+4)
MOVT	R0, #hi_addr(_IWLightAut+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3488 :: 		IWLightAut.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_IWLightAut+5)
MOVT	R0, #hi_addr(_IWLightAut+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3489 :: 		IWLightAut.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_IWLightAut+6)
MOVT	R0, #hi_addr(_IWLightAut+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3490 :: 		IWLightAut.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_IWLightAut+7)
MOVT	R0, #hi_addr(_IWLightAut+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3491 :: 		IWLightAut.Left          = 550;
MOVW	R1, #550
SXTH	R1, R1
MOVW	R0, #lo_addr(_IWLightAut+8)
MOVT	R0, #hi_addr(_IWLightAut+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3492 :: 		IWLightAut.Top           = 198;
MOVS	R1, #198
SXTH	R1, R1
MOVW	R0, #lo_addr(_IWLightAut+10)
MOVT	R0, #hi_addr(_IWLightAut+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3493 :: 		IWLightAut.Radius        = 15;
MOVS	R1, #15
SXTH	R1, R1
MOVW	R0, #lo_addr(_IWLightAut+12)
MOVT	R0, #hi_addr(_IWLightAut+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3494 :: 		IWLightAut.Pen_Width     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_IWLightAut+14)
MOVT	R0, #hi_addr(_IWLightAut+14)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3495 :: 		IWLightAut.Pen_Color     = 0xFF0000;
MOV	R1, #16711680
MOVW	R0, #lo_addr(_IWLightAut+16)
MOVT	R0, #hi_addr(_IWLightAut+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3496 :: 		IWLightAut.Color         = 0xFF0000;
MOV	R1, #16711680
MOVW	R0, #lo_addr(_IWLightAut+20)
MOVT	R0, #hi_addr(_IWLightAut+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3497 :: 		IWLightAut.Press_Color   = 0xE2E2E2;
MOVW	R1, #58082
MOVT	R1, #226
MOVW	R0, #lo_addr(_IWLightAut+24)
MOVT	R0, #hi_addr(_IWLightAut+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3498 :: 		IWLightAut.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_IWLightAut+28)
MOVT	R0, #hi_addr(_IWLightAut+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3499 :: 		IWLightAut.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_IWLightAut+32)
MOVT	R0, #hi_addr(_IWLightAut+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3500 :: 		IWLightAut.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_IWLightAut+36)
MOVT	R0, #hi_addr(_IWLightAut+36)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3501 :: 		IWLightAut.OnClick       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_IWLightAut+40)
MOVT	R0, #hi_addr(_IWLightAut+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3502 :: 		IWLightAut.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_IWLightAut+44)
MOVT	R0, #hi_addr(_IWLightAut+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3504 :: 		OilCtrlLigAut.OwnerScreen   = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_OilCtrlLigAut+0)
MOVT	R0, #hi_addr(_OilCtrlLigAut+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3505 :: 		OilCtrlLigAut.Order         = 50;
MOVS	R1, #50
MOVW	R0, #lo_addr(_OilCtrlLigAut+4)
MOVT	R0, #hi_addr(_OilCtrlLigAut+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3506 :: 		OilCtrlLigAut.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_OilCtrlLigAut+5)
MOVT	R0, #hi_addr(_OilCtrlLigAut+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3507 :: 		OilCtrlLigAut.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_OilCtrlLigAut+6)
MOVT	R0, #hi_addr(_OilCtrlLigAut+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3508 :: 		OilCtrlLigAut.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_OilCtrlLigAut+7)
MOVT	R0, #hi_addr(_OilCtrlLigAut+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3509 :: 		OilCtrlLigAut.Left          = 550;
MOVW	R1, #550
SXTH	R1, R1
MOVW	R0, #lo_addr(_OilCtrlLigAut+8)
MOVT	R0, #hi_addr(_OilCtrlLigAut+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3510 :: 		OilCtrlLigAut.Top           = 362;
MOVW	R1, #362
SXTH	R1, R1
MOVW	R0, #lo_addr(_OilCtrlLigAut+10)
MOVT	R0, #hi_addr(_OilCtrlLigAut+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3511 :: 		OilCtrlLigAut.Radius        = 15;
MOVS	R1, #15
SXTH	R1, R1
MOVW	R0, #lo_addr(_OilCtrlLigAut+12)
MOVT	R0, #hi_addr(_OilCtrlLigAut+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3512 :: 		OilCtrlLigAut.Pen_Width     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_OilCtrlLigAut+14)
MOVT	R0, #hi_addr(_OilCtrlLigAut+14)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3513 :: 		OilCtrlLigAut.Pen_Color     = 0xFF0000;
MOV	R1, #16711680
MOVW	R0, #lo_addr(_OilCtrlLigAut+16)
MOVT	R0, #hi_addr(_OilCtrlLigAut+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3514 :: 		OilCtrlLigAut.Color         = 0xFF0000;
MOV	R1, #16711680
MOVW	R0, #lo_addr(_OilCtrlLigAut+20)
MOVT	R0, #hi_addr(_OilCtrlLigAut+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3515 :: 		OilCtrlLigAut.Press_Color   = 0xE2E2E2;
MOVW	R1, #58082
MOVT	R1, #226
MOVW	R0, #lo_addr(_OilCtrlLigAut+24)
MOVT	R0, #hi_addr(_OilCtrlLigAut+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3516 :: 		OilCtrlLigAut.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_OilCtrlLigAut+28)
MOVT	R0, #hi_addr(_OilCtrlLigAut+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3517 :: 		OilCtrlLigAut.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_OilCtrlLigAut+32)
MOVT	R0, #hi_addr(_OilCtrlLigAut+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3518 :: 		OilCtrlLigAut.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_OilCtrlLigAut+36)
MOVT	R0, #hi_addr(_OilCtrlLigAut+36)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3519 :: 		OilCtrlLigAut.OnClick       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_OilCtrlLigAut+40)
MOVT	R0, #hi_addr(_OilCtrlLigAut+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3520 :: 		OilCtrlLigAut.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_OilCtrlLigAut+44)
MOVT	R0, #hi_addr(_OilCtrlLigAut+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3522 :: 		IgValLigAut.OwnerScreen   = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_IgValLigAut+0)
MOVT	R0, #hi_addr(_IgValLigAut+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3523 :: 		IgValLigAut.Order         = 51;
MOVS	R1, #51
MOVW	R0, #lo_addr(_IgValLigAut+4)
MOVT	R0, #hi_addr(_IgValLigAut+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3524 :: 		IgValLigAut.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_IgValLigAut+5)
MOVT	R0, #hi_addr(_IgValLigAut+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3525 :: 		IgValLigAut.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_IgValLigAut+6)
MOVT	R0, #hi_addr(_IgValLigAut+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3526 :: 		IgValLigAut.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_IgValLigAut+7)
MOVT	R0, #hi_addr(_IgValLigAut+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3527 :: 		IgValLigAut.Left          = 550;
MOVW	R1, #550
SXTH	R1, R1
MOVW	R0, #lo_addr(_IgValLigAut+8)
MOVT	R0, #hi_addr(_IgValLigAut+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3528 :: 		IgValLigAut.Top           = 330;
MOVW	R1, #330
SXTH	R1, R1
MOVW	R0, #lo_addr(_IgValLigAut+10)
MOVT	R0, #hi_addr(_IgValLigAut+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3529 :: 		IgValLigAut.Radius        = 15;
MOVS	R1, #15
SXTH	R1, R1
MOVW	R0, #lo_addr(_IgValLigAut+12)
MOVT	R0, #hi_addr(_IgValLigAut+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3530 :: 		IgValLigAut.Pen_Width     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_IgValLigAut+14)
MOVT	R0, #hi_addr(_IgValLigAut+14)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3531 :: 		IgValLigAut.Pen_Color     = 0xFF0000;
MOV	R1, #16711680
MOVW	R0, #lo_addr(_IgValLigAut+16)
MOVT	R0, #hi_addr(_IgValLigAut+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3532 :: 		IgValLigAut.Color         = 0xFF0000;
MOV	R1, #16711680
MOVW	R0, #lo_addr(_IgValLigAut+20)
MOVT	R0, #hi_addr(_IgValLigAut+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3533 :: 		IgValLigAut.Press_Color   = 0xE2E2E2;
MOVW	R1, #58082
MOVT	R1, #226
MOVW	R0, #lo_addr(_IgValLigAut+24)
MOVT	R0, #hi_addr(_IgValLigAut+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3534 :: 		IgValLigAut.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_IgValLigAut+28)
MOVT	R0, #hi_addr(_IgValLigAut+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3535 :: 		IgValLigAut.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_IgValLigAut+32)
MOVT	R0, #hi_addr(_IgValLigAut+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3536 :: 		IgValLigAut.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_IgValLigAut+36)
MOVT	R0, #hi_addr(_IgValLigAut+36)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3537 :: 		IgValLigAut.OnClick       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_IgValLigAut+40)
MOVT	R0, #hi_addr(_IgValLigAut+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3538 :: 		IgValLigAut.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_IgValLigAut+44)
MOVT	R0, #hi_addr(_IgValLigAut+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3540 :: 		IgLigAut.OwnerScreen   = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_IgLigAut+0)
MOVT	R0, #hi_addr(_IgLigAut+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3541 :: 		IgLigAut.Order         = 52;
MOVS	R1, #52
MOVW	R0, #lo_addr(_IgLigAut+4)
MOVT	R0, #hi_addr(_IgLigAut+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3542 :: 		IgLigAut.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_IgLigAut+5)
MOVT	R0, #hi_addr(_IgLigAut+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3543 :: 		IgLigAut.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_IgLigAut+6)
MOVT	R0, #hi_addr(_IgLigAut+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3544 :: 		IgLigAut.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_IgLigAut+7)
MOVT	R0, #hi_addr(_IgLigAut+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3545 :: 		IgLigAut.Left          = 550;
MOVW	R1, #550
SXTH	R1, R1
MOVW	R0, #lo_addr(_IgLigAut+8)
MOVT	R0, #hi_addr(_IgLigAut+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3546 :: 		IgLigAut.Top           = 298;
MOVW	R1, #298
SXTH	R1, R1
MOVW	R0, #lo_addr(_IgLigAut+10)
MOVT	R0, #hi_addr(_IgLigAut+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3547 :: 		IgLigAut.Radius        = 15;
MOVS	R1, #15
SXTH	R1, R1
MOVW	R0, #lo_addr(_IgLigAut+12)
MOVT	R0, #hi_addr(_IgLigAut+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3548 :: 		IgLigAut.Pen_Width     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_IgLigAut+14)
MOVT	R0, #hi_addr(_IgLigAut+14)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3549 :: 		IgLigAut.Pen_Color     = 0xFF0000;
MOV	R1, #16711680
MOVW	R0, #lo_addr(_IgLigAut+16)
MOVT	R0, #hi_addr(_IgLigAut+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3550 :: 		IgLigAut.Color         = 0xFF0000;
MOV	R1, #16711680
MOVW	R0, #lo_addr(_IgLigAut+20)
MOVT	R0, #hi_addr(_IgLigAut+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3551 :: 		IgLigAut.Press_Color   = 0xE2E2E2;
MOVW	R1, #58082
MOVT	R1, #226
MOVW	R0, #lo_addr(_IgLigAut+24)
MOVT	R0, #hi_addr(_IgLigAut+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3552 :: 		IgLigAut.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_IgLigAut+28)
MOVT	R0, #hi_addr(_IgLigAut+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3553 :: 		IgLigAut.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_IgLigAut+32)
MOVT	R0, #hi_addr(_IgLigAut+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3554 :: 		IgLigAut.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_IgLigAut+36)
MOVT	R0, #hi_addr(_IgLigAut+36)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3555 :: 		IgLigAut.OnClick       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_IgLigAut+40)
MOVT	R0, #hi_addr(_IgLigAut+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3556 :: 		IgLigAut.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_IgLigAut+44)
MOVT	R0, #hi_addr(_IgLigAut+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3558 :: 		FlValLigAut.OwnerScreen   = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_FlValLigAut+0)
MOVT	R0, #hi_addr(_FlValLigAut+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3559 :: 		FlValLigAut.Order         = 53;
MOVS	R1, #53
MOVW	R0, #lo_addr(_FlValLigAut+4)
MOVT	R0, #hi_addr(_FlValLigAut+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3560 :: 		FlValLigAut.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_FlValLigAut+5)
MOVT	R0, #hi_addr(_FlValLigAut+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3561 :: 		FlValLigAut.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_FlValLigAut+6)
MOVT	R0, #hi_addr(_FlValLigAut+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3562 :: 		FlValLigAut.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_FlValLigAut+7)
MOVT	R0, #hi_addr(_FlValLigAut+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3563 :: 		FlValLigAut.Left          = 550;
MOVW	R1, #550
SXTH	R1, R1
MOVW	R0, #lo_addr(_FlValLigAut+8)
MOVT	R0, #hi_addr(_FlValLigAut+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3564 :: 		FlValLigAut.Top           = 266;
MOVW	R1, #266
SXTH	R1, R1
MOVW	R0, #lo_addr(_FlValLigAut+10)
MOVT	R0, #hi_addr(_FlValLigAut+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3565 :: 		FlValLigAut.Radius        = 15;
MOVS	R1, #15
SXTH	R1, R1
MOVW	R0, #lo_addr(_FlValLigAut+12)
MOVT	R0, #hi_addr(_FlValLigAut+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3566 :: 		FlValLigAut.Pen_Width     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_FlValLigAut+14)
MOVT	R0, #hi_addr(_FlValLigAut+14)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3567 :: 		FlValLigAut.Pen_Color     = 0xFF0000;
MOV	R1, #16711680
MOVW	R0, #lo_addr(_FlValLigAut+16)
MOVT	R0, #hi_addr(_FlValLigAut+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3568 :: 		FlValLigAut.Color         = 0xFF0000;
MOV	R1, #16711680
MOVW	R0, #lo_addr(_FlValLigAut+20)
MOVT	R0, #hi_addr(_FlValLigAut+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3569 :: 		FlValLigAut.Press_Color   = 0xE2E2E2;
MOVW	R1, #58082
MOVT	R1, #226
MOVW	R0, #lo_addr(_FlValLigAut+24)
MOVT	R0, #hi_addr(_FlValLigAut+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3570 :: 		FlValLigAut.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_FlValLigAut+28)
MOVT	R0, #hi_addr(_FlValLigAut+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3571 :: 		FlValLigAut.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FlValLigAut+32)
MOVT	R0, #hi_addr(_FlValLigAut+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3572 :: 		FlValLigAut.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FlValLigAut+36)
MOVT	R0, #hi_addr(_FlValLigAut+36)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3573 :: 		FlValLigAut.OnClick       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FlValLigAut+40)
MOVT	R0, #hi_addr(_FlValLigAut+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3574 :: 		FlValLigAut.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FlValLigAut+44)
MOVT	R0, #hi_addr(_FlValLigAut+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3576 :: 		FlPumLigAut.OwnerScreen   = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_FlPumLigAut+0)
MOVT	R0, #hi_addr(_FlPumLigAut+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3577 :: 		FlPumLigAut.Order         = 54;
MOVS	R1, #54
MOVW	R0, #lo_addr(_FlPumLigAut+4)
MOVT	R0, #hi_addr(_FlPumLigAut+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3578 :: 		FlPumLigAut.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_FlPumLigAut+5)
MOVT	R0, #hi_addr(_FlPumLigAut+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3579 :: 		FlPumLigAut.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_FlPumLigAut+6)
MOVT	R0, #hi_addr(_FlPumLigAut+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3580 :: 		FlPumLigAut.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_FlPumLigAut+7)
MOVT	R0, #hi_addr(_FlPumLigAut+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3581 :: 		FlPumLigAut.Left          = 550;
MOVW	R1, #550
SXTH	R1, R1
MOVW	R0, #lo_addr(_FlPumLigAut+8)
MOVT	R0, #hi_addr(_FlPumLigAut+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3582 :: 		FlPumLigAut.Top           = 234;
MOVS	R1, #234
SXTH	R1, R1
MOVW	R0, #lo_addr(_FlPumLigAut+10)
MOVT	R0, #hi_addr(_FlPumLigAut+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3583 :: 		FlPumLigAut.Radius        = 15;
MOVS	R1, #15
SXTH	R1, R1
MOVW	R0, #lo_addr(_FlPumLigAut+12)
MOVT	R0, #hi_addr(_FlPumLigAut+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3584 :: 		FlPumLigAut.Pen_Width     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_FlPumLigAut+14)
MOVT	R0, #hi_addr(_FlPumLigAut+14)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3585 :: 		FlPumLigAut.Pen_Color     = 0xFF0000;
MOV	R1, #16711680
MOVW	R0, #lo_addr(_FlPumLigAut+16)
MOVT	R0, #hi_addr(_FlPumLigAut+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3586 :: 		FlPumLigAut.Color         = 0xFF0000;
MOV	R1, #16711680
MOVW	R0, #lo_addr(_FlPumLigAut+20)
MOVT	R0, #hi_addr(_FlPumLigAut+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3587 :: 		FlPumLigAut.Press_Color   = 0xE2E2E2;
MOVW	R1, #58082
MOVT	R1, #226
MOVW	R0, #lo_addr(_FlPumLigAut+24)
MOVT	R0, #hi_addr(_FlPumLigAut+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3588 :: 		FlPumLigAut.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_FlPumLigAut+28)
MOVT	R0, #hi_addr(_FlPumLigAut+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3589 :: 		FlPumLigAut.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FlPumLigAut+32)
MOVT	R0, #hi_addr(_FlPumLigAut+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3590 :: 		FlPumLigAut.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FlPumLigAut+36)
MOVT	R0, #hi_addr(_FlPumLigAut+36)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3591 :: 		FlPumLigAut.OnClick       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FlPumLigAut+40)
MOVT	R0, #hi_addr(_FlPumLigAut+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3592 :: 		FlPumLigAut.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FlPumLigAut+44)
MOVT	R0, #hi_addr(_FlPumLigAut+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3594 :: 		Line6.OwnerScreen    = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_Line6+0)
MOVT	R0, #hi_addr(_Line6+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3595 :: 		Line6.Order          = 55;
MOVS	R1, #55
MOVW	R0, #lo_addr(_Line6+4)
MOVT	R0, #hi_addr(_Line6+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3596 :: 		Line6.Visible        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Line6+5)
MOVT	R0, #hi_addr(_Line6+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3597 :: 		Line6.Opacity        = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Line6+6)
MOVT	R0, #hi_addr(_Line6+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3598 :: 		Line6.Tag            = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Line6+7)
MOVT	R0, #hi_addr(_Line6+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3599 :: 		Line6.First_Point_X  = 550;
MOVW	R1, #550
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line6+8)
MOVT	R0, #hi_addr(_Line6+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3600 :: 		Line6.First_Point_Y  = 231;
MOVS	R1, #231
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line6+10)
MOVT	R0, #hi_addr(_Line6+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3601 :: 		Line6.Second_Point_X = 780;
MOVW	R1, #780
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line6+12)
MOVT	R0, #hi_addr(_Line6+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3602 :: 		Line6.Second_Point_Y = 230;
MOVS	R1, #230
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line6+14)
MOVT	R0, #hi_addr(_Line6+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3603 :: 		Line6.Pen_Width      = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_Line6+16)
MOVT	R0, #hi_addr(_Line6+16)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3604 :: 		Line6.Pen_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Line6+20)
MOVT	R0, #hi_addr(_Line6+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3606 :: 		Label15.OwnerScreen = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_Label15+0)
MOVT	R0, #hi_addr(_Label15+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3607 :: 		Label15.Order       = 56;
MOVS	R1, #56
MOVW	R0, #lo_addr(_Label15+4)
MOVT	R0, #hi_addr(_Label15+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3608 :: 		Label15.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label15+5)
MOVT	R0, #hi_addr(_Label15+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3609 :: 		Label15.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label15+6)
MOVT	R0, #hi_addr(_Label15+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3610 :: 		Label15.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label15+7)
MOVT	R0, #hi_addr(_Label15+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3611 :: 		Label15.Left        = 600;
MOVW	R1, #600
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label15+8)
MOVT	R0, #hi_addr(_Label15+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3612 :: 		Label15.Top         = 130;
MOVS	R1, #130
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label15+10)
MOVT	R0, #hi_addr(_Label15+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3613 :: 		Label15.Width       = 132;
MOVS	R1, #132
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label15+12)
MOVT	R0, #hi_addr(_Label15+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3614 :: 		Label15.Height      = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label15+14)
MOVT	R0, #hi_addr(_Label15+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3615 :: 		Label15.Caption     = Label15_Caption;
MOVW	R1, #lo_addr(_Label15_Caption+0)
MOVT	R1, #hi_addr(_Label15_Caption+0)
MOVW	R0, #lo_addr(_Label15+16)
MOVT	R0, #hi_addr(_Label15+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3616 :: 		Label15.FontName    = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_Label15+20)
MOVT	R0, #hi_addr(_Label15+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3617 :: 		Label15.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label15+24)
MOVT	R0, #hi_addr(_Label15+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3618 :: 		Label15.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label15+28)
MOVT	R0, #hi_addr(_Label15+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3619 :: 		Label15.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label15+32)
MOVT	R0, #hi_addr(_Label15+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3620 :: 		Label15.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label15+36)
MOVT	R0, #hi_addr(_Label15+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3621 :: 		Label15.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label15+40)
MOVT	R0, #hi_addr(_Label15+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3622 :: 		Label15.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label15+44)
MOVT	R0, #hi_addr(_Label15+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3623 :: 		Label15.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label15+48)
MOVT	R0, #hi_addr(_Label15+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3624 :: 		Label15.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label15+52)
MOVT	R0, #hi_addr(_Label15+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3626 :: 		Label16.OwnerScreen = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_Label16+0)
MOVT	R0, #hi_addr(_Label16+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3627 :: 		Label16.Order       = 57;
MOVS	R1, #57
MOVW	R0, #lo_addr(_Label16+4)
MOVT	R0, #hi_addr(_Label16+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3628 :: 		Label16.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label16+5)
MOVT	R0, #hi_addr(_Label16+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3629 :: 		Label16.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label16+6)
MOVT	R0, #hi_addr(_Label16+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3630 :: 		Label16.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label16+7)
MOVT	R0, #hi_addr(_Label16+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3631 :: 		Label16.Left        = 606;
MOVW	R1, #606
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label16+8)
MOVT	R0, #hi_addr(_Label16+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3632 :: 		Label16.Top         = 164;
MOVS	R1, #164
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label16+10)
MOVT	R0, #hi_addr(_Label16+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3633 :: 		Label16.Width       = 120;
MOVS	R1, #120
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label16+12)
MOVT	R0, #hi_addr(_Label16+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3634 :: 		Label16.Height      = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label16+14)
MOVT	R0, #hi_addr(_Label16+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3635 :: 		Label16.Caption     = Label16_Caption;
MOVW	R1, #lo_addr(_Label16_Caption+0)
MOVT	R1, #hi_addr(_Label16_Caption+0)
MOVW	R0, #lo_addr(_Label16+16)
MOVT	R0, #hi_addr(_Label16+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3636 :: 		Label16.FontName    = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_Label16+20)
MOVT	R0, #hi_addr(_Label16+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3637 :: 		Label16.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label16+24)
MOVT	R0, #hi_addr(_Label16+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3638 :: 		Label16.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label16+28)
MOVT	R0, #hi_addr(_Label16+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3639 :: 		Label16.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label16+32)
MOVT	R0, #hi_addr(_Label16+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3640 :: 		Label16.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label16+36)
MOVT	R0, #hi_addr(_Label16+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3641 :: 		Label16.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label16+40)
MOVT	R0, #hi_addr(_Label16+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3642 :: 		Label16.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label16+44)
MOVT	R0, #hi_addr(_Label16+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3643 :: 		Label16.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label16+48)
MOVT	R0, #hi_addr(_Label16+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3644 :: 		Label16.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label16+52)
MOVT	R0, #hi_addr(_Label16+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3646 :: 		Label17.OwnerScreen = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_Label17+0)
MOVT	R0, #hi_addr(_Label17+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3647 :: 		Label17.Order       = 58;
MOVS	R1, #58
MOVW	R0, #lo_addr(_Label17+4)
MOVT	R0, #hi_addr(_Label17+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3648 :: 		Label17.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label17+5)
MOVT	R0, #hi_addr(_Label17+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3649 :: 		Label17.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label17+6)
MOVT	R0, #hi_addr(_Label17+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3650 :: 		Label17.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label17+7)
MOVT	R0, #hi_addr(_Label17+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3651 :: 		Label17.Left        = 600;
MOVW	R1, #600
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label17+8)
MOVT	R0, #hi_addr(_Label17+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3652 :: 		Label17.Top         = 203;
MOVS	R1, #203
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label17+10)
MOVT	R0, #hi_addr(_Label17+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3653 :: 		Label17.Width       = 132;
MOVS	R1, #132
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label17+12)
MOVT	R0, #hi_addr(_Label17+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3654 :: 		Label17.Height      = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label17+14)
MOVT	R0, #hi_addr(_Label17+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3655 :: 		Label17.Caption     = Label17_Caption;
MOVW	R1, #lo_addr(_Label17_Caption+0)
MOVT	R1, #hi_addr(_Label17_Caption+0)
MOVW	R0, #lo_addr(_Label17+16)
MOVT	R0, #hi_addr(_Label17+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3656 :: 		Label17.FontName    = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_Label17+20)
MOVT	R0, #hi_addr(_Label17+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3657 :: 		Label17.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label17+24)
MOVT	R0, #hi_addr(_Label17+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3658 :: 		Label17.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label17+28)
MOVT	R0, #hi_addr(_Label17+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3659 :: 		Label17.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label17+32)
MOVT	R0, #hi_addr(_Label17+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3660 :: 		Label17.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label17+36)
MOVT	R0, #hi_addr(_Label17+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3661 :: 		Label17.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label17+40)
MOVT	R0, #hi_addr(_Label17+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3662 :: 		Label17.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label17+44)
MOVT	R0, #hi_addr(_Label17+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3663 :: 		Label17.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label17+48)
MOVT	R0, #hi_addr(_Label17+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3664 :: 		Label17.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label17+52)
MOVT	R0, #hi_addr(_Label17+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3666 :: 		Label18.OwnerScreen = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_Label18+0)
MOVT	R0, #hi_addr(_Label18+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3667 :: 		Label18.Order       = 59;
MOVS	R1, #59
MOVW	R0, #lo_addr(_Label18+4)
MOVT	R0, #hi_addr(_Label18+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3668 :: 		Label18.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label18+5)
MOVT	R0, #hi_addr(_Label18+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3669 :: 		Label18.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label18+6)
MOVT	R0, #hi_addr(_Label18+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3670 :: 		Label18.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label18+7)
MOVT	R0, #hi_addr(_Label18+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3671 :: 		Label18.Left        = 622;
MOVW	R1, #622
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label18+8)
MOVT	R0, #hi_addr(_Label18+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3672 :: 		Label18.Top         = 239;
MOVS	R1, #239
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label18+10)
MOVT	R0, #hi_addr(_Label18+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3673 :: 		Label18.Width       = 87;
MOVS	R1, #87
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label18+12)
MOVT	R0, #hi_addr(_Label18+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3674 :: 		Label18.Height      = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label18+14)
MOVT	R0, #hi_addr(_Label18+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3675 :: 		Label18.Caption     = Label18_Caption;
MOVW	R1, #lo_addr(_Label18_Caption+0)
MOVT	R1, #hi_addr(_Label18_Caption+0)
MOVW	R0, #lo_addr(_Label18+16)
MOVT	R0, #hi_addr(_Label18+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3676 :: 		Label18.FontName    = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_Label18+20)
MOVT	R0, #hi_addr(_Label18+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3677 :: 		Label18.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label18+24)
MOVT	R0, #hi_addr(_Label18+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3678 :: 		Label18.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label18+28)
MOVT	R0, #hi_addr(_Label18+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3679 :: 		Label18.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label18+32)
MOVT	R0, #hi_addr(_Label18+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3680 :: 		Label18.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label18+36)
MOVT	R0, #hi_addr(_Label18+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3681 :: 		Label18.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label18+40)
MOVT	R0, #hi_addr(_Label18+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3682 :: 		Label18.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label18+44)
MOVT	R0, #hi_addr(_Label18+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3683 :: 		Label18.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label18+48)
MOVT	R0, #hi_addr(_Label18+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3684 :: 		Label18.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label18+52)
MOVT	R0, #hi_addr(_Label18+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3686 :: 		Label19.OwnerScreen = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_Label19+0)
MOVT	R0, #hi_addr(_Label19+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3687 :: 		Label19.Order       = 60;
MOVS	R1, #60
MOVW	R0, #lo_addr(_Label19+4)
MOVT	R0, #hi_addr(_Label19+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3688 :: 		Label19.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label19+5)
MOVT	R0, #hi_addr(_Label19+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3689 :: 		Label19.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label19+6)
MOVT	R0, #hi_addr(_Label19+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3690 :: 		Label19.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label19+7)
MOVT	R0, #hi_addr(_Label19+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3691 :: 		Label19.Left        = 623;
MOVW	R1, #623
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label19+8)
MOVT	R0, #hi_addr(_Label19+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3692 :: 		Label19.Top         = 271;
MOVW	R1, #271
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label19+10)
MOVT	R0, #hi_addr(_Label19+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3693 :: 		Label19.Width       = 85;
MOVS	R1, #85
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label19+12)
MOVT	R0, #hi_addr(_Label19+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3694 :: 		Label19.Height      = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label19+14)
MOVT	R0, #hi_addr(_Label19+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3695 :: 		Label19.Caption     = Label19_Caption;
MOVW	R1, #lo_addr(_Label19_Caption+0)
MOVT	R1, #hi_addr(_Label19_Caption+0)
MOVW	R0, #lo_addr(_Label19+16)
MOVT	R0, #hi_addr(_Label19+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3696 :: 		Label19.FontName    = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_Label19+20)
MOVT	R0, #hi_addr(_Label19+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3697 :: 		Label19.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label19+24)
MOVT	R0, #hi_addr(_Label19+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3698 :: 		Label19.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label19+28)
MOVT	R0, #hi_addr(_Label19+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3699 :: 		Label19.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label19+32)
MOVT	R0, #hi_addr(_Label19+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3700 :: 		Label19.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label19+36)
MOVT	R0, #hi_addr(_Label19+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3701 :: 		Label19.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label19+40)
MOVT	R0, #hi_addr(_Label19+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3702 :: 		Label19.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label19+44)
MOVT	R0, #hi_addr(_Label19+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3703 :: 		Label19.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label19+48)
MOVT	R0, #hi_addr(_Label19+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3704 :: 		Label19.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label19+52)
MOVT	R0, #hi_addr(_Label19+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3706 :: 		Label20.OwnerScreen = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_Label20+0)
MOVT	R0, #hi_addr(_Label20+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3707 :: 		Label20.Order       = 61;
MOVS	R1, #61
MOVW	R0, #lo_addr(_Label20+4)
MOVT	R0, #hi_addr(_Label20+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3708 :: 		Label20.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label20+5)
MOVT	R0, #hi_addr(_Label20+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3709 :: 		Label20.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label20+6)
MOVT	R0, #hi_addr(_Label20+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3710 :: 		Label20.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label20+7)
MOVT	R0, #hi_addr(_Label20+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3711 :: 		Label20.Left        = 637;
MOVW	R1, #637
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label20+8)
MOVT	R0, #hi_addr(_Label20+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3712 :: 		Label20.Top         = 303;
MOVW	R1, #303
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label20+10)
MOVT	R0, #hi_addr(_Label20+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3713 :: 		Label20.Width       = 58;
MOVS	R1, #58
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label20+12)
MOVT	R0, #hi_addr(_Label20+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3714 :: 		Label20.Height      = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label20+14)
MOVT	R0, #hi_addr(_Label20+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3715 :: 		Label20.Caption     = Label20_Caption;
MOVW	R1, #lo_addr(_Label20_Caption+0)
MOVT	R1, #hi_addr(_Label20_Caption+0)
MOVW	R0, #lo_addr(_Label20+16)
MOVT	R0, #hi_addr(_Label20+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3716 :: 		Label20.FontName    = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_Label20+20)
MOVT	R0, #hi_addr(_Label20+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3717 :: 		Label20.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label20+24)
MOVT	R0, #hi_addr(_Label20+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3718 :: 		Label20.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label20+28)
MOVT	R0, #hi_addr(_Label20+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3719 :: 		Label20.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label20+32)
MOVT	R0, #hi_addr(_Label20+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3720 :: 		Label20.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label20+36)
MOVT	R0, #hi_addr(_Label20+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3721 :: 		Label20.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label20+40)
MOVT	R0, #hi_addr(_Label20+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3722 :: 		Label20.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label20+44)
MOVT	R0, #hi_addr(_Label20+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3723 :: 		Label20.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label20+48)
MOVT	R0, #hi_addr(_Label20+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3724 :: 		Label20.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label20+52)
MOVT	R0, #hi_addr(_Label20+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3726 :: 		Label21.OwnerScreen = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_Label21+0)
MOVT	R0, #hi_addr(_Label21+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3727 :: 		Label21.Order       = 62;
MOVS	R1, #62
MOVW	R0, #lo_addr(_Label21+4)
MOVT	R0, #hi_addr(_Label21+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3728 :: 		Label21.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label21+5)
MOVT	R0, #hi_addr(_Label21+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3729 :: 		Label21.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label21+6)
MOVT	R0, #hi_addr(_Label21+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3730 :: 		Label21.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label21+7)
MOVT	R0, #hi_addr(_Label21+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3731 :: 		Label21.Left        = 612;
MOVW	R1, #612
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label21+8)
MOVT	R0, #hi_addr(_Label21+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3732 :: 		Label21.Top         = 335;
MOVW	R1, #335
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label21+10)
MOVT	R0, #hi_addr(_Label21+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3733 :: 		Label21.Width       = 108;
MOVS	R1, #108
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label21+12)
MOVT	R0, #hi_addr(_Label21+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3734 :: 		Label21.Height      = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label21+14)
MOVT	R0, #hi_addr(_Label21+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3735 :: 		Label21.Caption     = Label21_Caption;
MOVW	R1, #lo_addr(_Label21_Caption+0)
MOVT	R1, #hi_addr(_Label21_Caption+0)
MOVW	R0, #lo_addr(_Label21+16)
MOVT	R0, #hi_addr(_Label21+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3736 :: 		Label21.FontName    = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_Label21+20)
MOVT	R0, #hi_addr(_Label21+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3737 :: 		Label21.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label21+24)
MOVT	R0, #hi_addr(_Label21+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3738 :: 		Label21.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label21+28)
MOVT	R0, #hi_addr(_Label21+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3739 :: 		Label21.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label21+32)
MOVT	R0, #hi_addr(_Label21+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3740 :: 		Label21.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label21+36)
MOVT	R0, #hi_addr(_Label21+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3741 :: 		Label21.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label21+40)
MOVT	R0, #hi_addr(_Label21+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3742 :: 		Label21.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label21+44)
MOVT	R0, #hi_addr(_Label21+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3743 :: 		Label21.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label21+48)
MOVT	R0, #hi_addr(_Label21+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3744 :: 		Label21.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label21+52)
MOVT	R0, #hi_addr(_Label21+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3746 :: 		Label22.OwnerScreen = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_Label22+0)
MOVT	R0, #hi_addr(_Label22+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3747 :: 		Label22.Order       = 63;
MOVS	R1, #63
MOVW	R0, #lo_addr(_Label22+4)
MOVT	R0, #hi_addr(_Label22+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3748 :: 		Label22.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label22+5)
MOVT	R0, #hi_addr(_Label22+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3749 :: 		Label22.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label22+6)
MOVT	R0, #hi_addr(_Label22+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3750 :: 		Label22.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label22+7)
MOVT	R0, #hi_addr(_Label22+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3751 :: 		Label22.Left        = 621;
MOVW	R1, #621
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label22+8)
MOVT	R0, #hi_addr(_Label22+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3752 :: 		Label22.Top         = 367;
MOVW	R1, #367
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label22+10)
MOVT	R0, #hi_addr(_Label22+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3753 :: 		Label22.Width       = 88;
MOVS	R1, #88
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label22+12)
MOVT	R0, #hi_addr(_Label22+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3754 :: 		Label22.Height      = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label22+14)
MOVT	R0, #hi_addr(_Label22+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3755 :: 		Label22.Caption     = Label22_Caption;
MOVW	R1, #lo_addr(_Label22_Caption+0)
MOVT	R1, #hi_addr(_Label22_Caption+0)
MOVW	R0, #lo_addr(_Label22+16)
MOVT	R0, #hi_addr(_Label22+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3756 :: 		Label22.FontName    = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_Label22+20)
MOVT	R0, #hi_addr(_Label22+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3757 :: 		Label22.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label22+24)
MOVT	R0, #hi_addr(_Label22+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3758 :: 		Label22.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label22+28)
MOVT	R0, #hi_addr(_Label22+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3759 :: 		Label22.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label22+32)
MOVT	R0, #hi_addr(_Label22+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3760 :: 		Label22.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label22+36)
MOVT	R0, #hi_addr(_Label22+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3761 :: 		Label22.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label22+40)
MOVT	R0, #hi_addr(_Label22+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3762 :: 		Label22.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label22+44)
MOVT	R0, #hi_addr(_Label22+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3763 :: 		Label22.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label22+48)
MOVT	R0, #hi_addr(_Label22+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3764 :: 		Label22.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label22+52)
MOVT	R0, #hi_addr(_Label22+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3766 :: 		Label23.OwnerScreen = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_Label23+0)
MOVT	R0, #hi_addr(_Label23+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3767 :: 		Label23.Order       = 64;
MOVS	R1, #64
MOVW	R0, #lo_addr(_Label23+4)
MOVT	R0, #hi_addr(_Label23+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3768 :: 		Label23.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label23+5)
MOVT	R0, #hi_addr(_Label23+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3769 :: 		Label23.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label23+6)
MOVT	R0, #hi_addr(_Label23+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3770 :: 		Label23.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label23+7)
MOVT	R0, #hi_addr(_Label23+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3771 :: 		Label23.Left        = 328;
MOVW	R1, #328
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label23+8)
MOVT	R0, #hi_addr(_Label23+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3772 :: 		Label23.Top         = 169;
MOVS	R1, #169
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label23+10)
MOVT	R0, #hi_addr(_Label23+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3773 :: 		Label23.Width       = 10;
MOVS	R1, #10
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label23+12)
MOVT	R0, #hi_addr(_Label23+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3774 :: 		Label23.Height      = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label23+14)
MOVT	R0, #hi_addr(_Label23+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3775 :: 		Label23.Caption     = Label23_Caption;
MOVW	R1, #lo_addr(_Label23_Caption+0)
MOVT	R1, #hi_addr(_Label23_Caption+0)
MOVW	R0, #lo_addr(_Label23+16)
MOVT	R0, #hi_addr(_Label23+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3776 :: 		Label23.FontName    = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_Label23+20)
MOVT	R0, #hi_addr(_Label23+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3777 :: 		Label23.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label23+24)
MOVT	R0, #hi_addr(_Label23+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3778 :: 		Label23.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label23+28)
MOVT	R0, #hi_addr(_Label23+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3779 :: 		Label23.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label23+32)
MOVT	R0, #hi_addr(_Label23+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3780 :: 		Label23.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label23+36)
MOVT	R0, #hi_addr(_Label23+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3781 :: 		Label23.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label23+40)
MOVT	R0, #hi_addr(_Label23+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3782 :: 		Label23.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label23+44)
MOVT	R0, #hi_addr(_Label23+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3783 :: 		Label23.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label23+48)
MOVT	R0, #hi_addr(_Label23+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3784 :: 		Label23.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label23+52)
MOVT	R0, #hi_addr(_Label23+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3786 :: 		Label24.OwnerScreen = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_Label24+0)
MOVT	R0, #hi_addr(_Label24+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3787 :: 		Label24.Order       = 65;
MOVS	R1, #65
MOVW	R0, #lo_addr(_Label24+4)
MOVT	R0, #hi_addr(_Label24+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3788 :: 		Label24.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label24+5)
MOVT	R0, #hi_addr(_Label24+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3789 :: 		Label24.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label24+6)
MOVT	R0, #hi_addr(_Label24+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3790 :: 		Label24.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label24+7)
MOVT	R0, #hi_addr(_Label24+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3791 :: 		Label24.Left        = 301;
MOVW	R1, #301
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label24+8)
MOVT	R0, #hi_addr(_Label24+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3792 :: 		Label24.Top         = 120;
MOVS	R1, #120
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label24+10)
MOVT	R0, #hi_addr(_Label24+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3793 :: 		Label24.Width       = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label24+12)
MOVT	R0, #hi_addr(_Label24+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3794 :: 		Label24.Height      = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label24+14)
MOVT	R0, #hi_addr(_Label24+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3795 :: 		Label24.Caption     = Label24_Caption;
MOVW	R1, #lo_addr(_Label24_Caption+0)
MOVT	R1, #hi_addr(_Label24_Caption+0)
MOVW	R0, #lo_addr(_Label24+16)
MOVT	R0, #hi_addr(_Label24+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3796 :: 		Label24.FontName    = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_Label24+20)
MOVT	R0, #hi_addr(_Label24+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3797 :: 		Label24.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label24+24)
MOVT	R0, #hi_addr(_Label24+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3798 :: 		Label24.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label24+28)
MOVT	R0, #hi_addr(_Label24+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3799 :: 		Label24.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label24+32)
MOVT	R0, #hi_addr(_Label24+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3800 :: 		Label24.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label24+36)
MOVT	R0, #hi_addr(_Label24+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3801 :: 		Label24.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label24+40)
MOVT	R0, #hi_addr(_Label24+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3802 :: 		Label24.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label24+44)
MOVT	R0, #hi_addr(_Label24+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3803 :: 		Label24.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label24+48)
MOVT	R0, #hi_addr(_Label24+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3804 :: 		Label24.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label24+52)
MOVT	R0, #hi_addr(_Label24+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3806 :: 		Label25.OwnerScreen = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_Label25+0)
MOVT	R0, #hi_addr(_Label25+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3807 :: 		Label25.Order       = 66;
MOVS	R1, #66
MOVW	R0, #lo_addr(_Label25+4)
MOVT	R0, #hi_addr(_Label25+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3808 :: 		Label25.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label25+5)
MOVT	R0, #hi_addr(_Label25+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3809 :: 		Label25.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label25+6)
MOVT	R0, #hi_addr(_Label25+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3810 :: 		Label25.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label25+7)
MOVT	R0, #hi_addr(_Label25+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3811 :: 		Label25.Left        = 313;
MOVW	R1, #313
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label25+8)
MOVT	R0, #hi_addr(_Label25+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3812 :: 		Label25.Top         = 66;
MOVS	R1, #66
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label25+10)
MOVT	R0, #hi_addr(_Label25+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3813 :: 		Label25.Width       = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label25+12)
MOVT	R0, #hi_addr(_Label25+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3814 :: 		Label25.Height      = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label25+14)
MOVT	R0, #hi_addr(_Label25+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3815 :: 		Label25.Caption     = Label25_Caption;
MOVW	R1, #lo_addr(_Label25_Caption+0)
MOVT	R1, #hi_addr(_Label25_Caption+0)
MOVW	R0, #lo_addr(_Label25+16)
MOVT	R0, #hi_addr(_Label25+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3816 :: 		Label25.FontName    = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_Label25+20)
MOVT	R0, #hi_addr(_Label25+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3817 :: 		Label25.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label25+24)
MOVT	R0, #hi_addr(_Label25+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3818 :: 		Label25.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label25+28)
MOVT	R0, #hi_addr(_Label25+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3819 :: 		Label25.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label25+32)
MOVT	R0, #hi_addr(_Label25+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3820 :: 		Label25.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label25+36)
MOVT	R0, #hi_addr(_Label25+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3821 :: 		Label25.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label25+40)
MOVT	R0, #hi_addr(_Label25+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3822 :: 		Label25.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label25+44)
MOVT	R0, #hi_addr(_Label25+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3823 :: 		Label25.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label25+48)
MOVT	R0, #hi_addr(_Label25+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3824 :: 		Label25.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label25+52)
MOVT	R0, #hi_addr(_Label25+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3826 :: 		Label26.OwnerScreen = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_Label26+0)
MOVT	R0, #hi_addr(_Label26+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3827 :: 		Label26.Order       = 67;
MOVS	R1, #67
MOVW	R0, #lo_addr(_Label26+4)
MOVT	R0, #hi_addr(_Label26+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3828 :: 		Label26.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label26+5)
MOVT	R0, #hi_addr(_Label26+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3829 :: 		Label26.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label26+6)
MOVT	R0, #hi_addr(_Label26+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3830 :: 		Label26.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label26+7)
MOVT	R0, #hi_addr(_Label26+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3831 :: 		Label26.Left        = 357;
MOVW	R1, #357
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label26+8)
MOVT	R0, #hi_addr(_Label26+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3832 :: 		Label26.Top         = 28;
MOVS	R1, #28
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label26+10)
MOVT	R0, #hi_addr(_Label26+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3833 :: 		Label26.Width       = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label26+12)
MOVT	R0, #hi_addr(_Label26+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3834 :: 		Label26.Height      = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label26+14)
MOVT	R0, #hi_addr(_Label26+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3835 :: 		Label26.Caption     = Label26_Caption;
MOVW	R1, #lo_addr(_Label26_Caption+0)
MOVT	R1, #hi_addr(_Label26_Caption+0)
MOVW	R0, #lo_addr(_Label26+16)
MOVT	R0, #hi_addr(_Label26+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3836 :: 		Label26.FontName    = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_Label26+20)
MOVT	R0, #hi_addr(_Label26+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3837 :: 		Label26.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label26+24)
MOVT	R0, #hi_addr(_Label26+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3838 :: 		Label26.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label26+28)
MOVT	R0, #hi_addr(_Label26+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3839 :: 		Label26.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label26+32)
MOVT	R0, #hi_addr(_Label26+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3840 :: 		Label26.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label26+36)
MOVT	R0, #hi_addr(_Label26+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3841 :: 		Label26.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label26+40)
MOVT	R0, #hi_addr(_Label26+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3842 :: 		Label26.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label26+44)
MOVT	R0, #hi_addr(_Label26+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3843 :: 		Label26.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label26+48)
MOVT	R0, #hi_addr(_Label26+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3844 :: 		Label26.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label26+52)
MOVT	R0, #hi_addr(_Label26+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3846 :: 		Label27.OwnerScreen = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_Label27+0)
MOVT	R0, #hi_addr(_Label27+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3847 :: 		Label27.Order       = 68;
MOVS	R1, #68
MOVW	R0, #lo_addr(_Label27+4)
MOVT	R0, #hi_addr(_Label27+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3848 :: 		Label27.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label27+5)
MOVT	R0, #hi_addr(_Label27+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3849 :: 		Label27.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label27+6)
MOVT	R0, #hi_addr(_Label27+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3850 :: 		Label27.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label27+7)
MOVT	R0, #hi_addr(_Label27+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3851 :: 		Label27.Left        = 426;
MOVW	R1, #426
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label27+8)
MOVT	R0, #hi_addr(_Label27+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3852 :: 		Label27.Top         = 28;
MOVS	R1, #28
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label27+10)
MOVT	R0, #hi_addr(_Label27+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3853 :: 		Label27.Width       = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label27+12)
MOVT	R0, #hi_addr(_Label27+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3854 :: 		Label27.Height      = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label27+14)
MOVT	R0, #hi_addr(_Label27+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3855 :: 		Label27.Caption     = Label27_Caption;
MOVW	R1, #lo_addr(_Label27_Caption+0)
MOVT	R1, #hi_addr(_Label27_Caption+0)
MOVW	R0, #lo_addr(_Label27+16)
MOVT	R0, #hi_addr(_Label27+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3856 :: 		Label27.FontName    = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_Label27+20)
MOVT	R0, #hi_addr(_Label27+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3857 :: 		Label27.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label27+24)
MOVT	R0, #hi_addr(_Label27+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3858 :: 		Label27.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label27+28)
MOVT	R0, #hi_addr(_Label27+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3859 :: 		Label27.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label27+32)
MOVT	R0, #hi_addr(_Label27+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3860 :: 		Label27.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label27+36)
MOVT	R0, #hi_addr(_Label27+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3861 :: 		Label27.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label27+40)
MOVT	R0, #hi_addr(_Label27+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3862 :: 		Label27.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label27+44)
MOVT	R0, #hi_addr(_Label27+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3863 :: 		Label27.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label27+48)
MOVT	R0, #hi_addr(_Label27+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3864 :: 		Label27.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label27+52)
MOVT	R0, #hi_addr(_Label27+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3866 :: 		Label28.OwnerScreen = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_Label28+0)
MOVT	R0, #hi_addr(_Label28+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3867 :: 		Label28.Order       = 69;
MOVS	R1, #69
MOVW	R0, #lo_addr(_Label28+4)
MOVT	R0, #hi_addr(_Label28+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3868 :: 		Label28.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label28+5)
MOVT	R0, #hi_addr(_Label28+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3869 :: 		Label28.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label28+6)
MOVT	R0, #hi_addr(_Label28+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3870 :: 		Label28.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label28+7)
MOVT	R0, #hi_addr(_Label28+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3871 :: 		Label28.Left        = 468;
MOVW	R1, #468
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label28+8)
MOVT	R0, #hi_addr(_Label28+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3872 :: 		Label28.Top         = 66;
MOVS	R1, #66
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label28+10)
MOVT	R0, #hi_addr(_Label28+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3873 :: 		Label28.Width       = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label28+12)
MOVT	R0, #hi_addr(_Label28+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3874 :: 		Label28.Height      = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label28+14)
MOVT	R0, #hi_addr(_Label28+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3875 :: 		Label28.Caption     = Label28_Caption;
MOVW	R1, #lo_addr(_Label28_Caption+0)
MOVT	R1, #hi_addr(_Label28_Caption+0)
MOVW	R0, #lo_addr(_Label28+16)
MOVT	R0, #hi_addr(_Label28+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3876 :: 		Label28.FontName    = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_Label28+20)
MOVT	R0, #hi_addr(_Label28+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3877 :: 		Label28.Font_Color  = 0xFF8000;
MOVW	R1, #32768
MOVT	R1, #255
MOVW	R0, #lo_addr(_Label28+24)
MOVT	R0, #hi_addr(_Label28+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3878 :: 		Label28.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label28+28)
MOVT	R0, #hi_addr(_Label28+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3879 :: 		Label28.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label28+32)
MOVT	R0, #hi_addr(_Label28+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3880 :: 		Label28.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label28+36)
MOVT	R0, #hi_addr(_Label28+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3881 :: 		Label28.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label28+40)
MOVT	R0, #hi_addr(_Label28+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3882 :: 		Label28.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label28+44)
MOVT	R0, #hi_addr(_Label28+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3883 :: 		Label28.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label28+48)
MOVT	R0, #hi_addr(_Label28+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3884 :: 		Label28.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label28+52)
MOVT	R0, #hi_addr(_Label28+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3886 :: 		Label29.OwnerScreen = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_Label29+0)
MOVT	R0, #hi_addr(_Label29+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3887 :: 		Label29.Order       = 70;
MOVS	R1, #70
MOVW	R0, #lo_addr(_Label29+4)
MOVT	R0, #hi_addr(_Label29+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3888 :: 		Label29.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label29+5)
MOVT	R0, #hi_addr(_Label29+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3889 :: 		Label29.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label29+6)
MOVT	R0, #hi_addr(_Label29+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3890 :: 		Label29.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label29+7)
MOVT	R0, #hi_addr(_Label29+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3891 :: 		Label29.Left        = 479;
MOVW	R1, #479
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label29+8)
MOVT	R0, #hi_addr(_Label29+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3892 :: 		Label29.Top         = 120;
MOVS	R1, #120
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label29+10)
MOVT	R0, #hi_addr(_Label29+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3893 :: 		Label29.Width       = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label29+12)
MOVT	R0, #hi_addr(_Label29+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3894 :: 		Label29.Height      = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label29+14)
MOVT	R0, #hi_addr(_Label29+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3895 :: 		Label29.Caption     = Label29_Caption;
MOVW	R1, #lo_addr(_Label29_Caption+0)
MOVT	R1, #hi_addr(_Label29_Caption+0)
MOVW	R0, #lo_addr(_Label29+16)
MOVT	R0, #hi_addr(_Label29+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3896 :: 		Label29.FontName    = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_Label29+20)
MOVT	R0, #hi_addr(_Label29+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3897 :: 		Label29.Font_Color  = 0xFF8000;
MOVW	R1, #32768
MOVT	R1, #255
MOVW	R0, #lo_addr(_Label29+24)
MOVT	R0, #hi_addr(_Label29+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3898 :: 		Label29.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label29+28)
MOVT	R0, #hi_addr(_Label29+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3899 :: 		Label29.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label29+32)
MOVT	R0, #hi_addr(_Label29+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3900 :: 		Label29.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label29+36)
MOVT	R0, #hi_addr(_Label29+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3901 :: 		Label29.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label29+40)
MOVT	R0, #hi_addr(_Label29+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3902 :: 		Label29.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label29+44)
MOVT	R0, #hi_addr(_Label29+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3903 :: 		Label29.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label29+48)
MOVT	R0, #hi_addr(_Label29+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3904 :: 		Label29.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label29+52)
MOVT	R0, #hi_addr(_Label29+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3906 :: 		Label30.OwnerScreen = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_Label30+0)
MOVT	R0, #hi_addr(_Label30+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3907 :: 		Label30.Order       = 71;
MOVS	R1, #71
MOVW	R0, #lo_addr(_Label30+4)
MOVT	R0, #hi_addr(_Label30+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3908 :: 		Label30.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label30+5)
MOVT	R0, #hi_addr(_Label30+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3909 :: 		Label30.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label30+6)
MOVT	R0, #hi_addr(_Label30+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3910 :: 		Label30.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label30+7)
MOVT	R0, #hi_addr(_Label30+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3911 :: 		Label30.Left        = 459;
MOVW	R1, #459
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label30+8)
MOVT	R0, #hi_addr(_Label30+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3912 :: 		Label30.Top         = 169;
MOVS	R1, #169
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label30+10)
MOVT	R0, #hi_addr(_Label30+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3913 :: 		Label30.Width       = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label30+12)
MOVT	R0, #hi_addr(_Label30+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3914 :: 		Label30.Height      = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label30+14)
MOVT	R0, #hi_addr(_Label30+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3915 :: 		Label30.Caption     = Label30_Caption;
MOVW	R1, #lo_addr(_Label30_Caption+0)
MOVT	R1, #hi_addr(_Label30_Caption+0)
MOVW	R0, #lo_addr(_Label30+16)
MOVT	R0, #hi_addr(_Label30+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3916 :: 		Label30.FontName    = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_Label30+20)
MOVT	R0, #hi_addr(_Label30+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3917 :: 		Label30.Font_Color  = 0xFF0000;
MOV	R1, #16711680
MOVW	R0, #lo_addr(_Label30+24)
MOVT	R0, #hi_addr(_Label30+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3918 :: 		Label30.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label30+28)
MOVT	R0, #hi_addr(_Label30+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3919 :: 		Label30.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label30+32)
MOVT	R0, #hi_addr(_Label30+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3920 :: 		Label30.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label30+36)
MOVT	R0, #hi_addr(_Label30+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3921 :: 		Label30.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label30+40)
MOVT	R0, #hi_addr(_Label30+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3922 :: 		Label30.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label30+44)
MOVT	R0, #hi_addr(_Label30+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3923 :: 		Label30.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label30+48)
MOVT	R0, #hi_addr(_Label30+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3924 :: 		Label30.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label30+52)
MOVT	R0, #hi_addr(_Label30+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3926 :: 		Label31.OwnerScreen = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_Label31+0)
MOVT	R0, #hi_addr(_Label31+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3927 :: 		Label31.Order       = 72;
MOVS	R1, #72
MOVW	R0, #lo_addr(_Label31+4)
MOVT	R0, #hi_addr(_Label31+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3928 :: 		Label31.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label31+5)
MOVT	R0, #hi_addr(_Label31+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3929 :: 		Label31.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label31+6)
MOVT	R0, #hi_addr(_Label31+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3930 :: 		Label31.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label31+7)
MOVT	R0, #hi_addr(_Label31+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3931 :: 		Label31.Left        = 383;
MOVW	R1, #383
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label31+8)
MOVT	R0, #hi_addr(_Label31+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3932 :: 		Label31.Top         = 140;
MOVS	R1, #140
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label31+10)
MOVT	R0, #hi_addr(_Label31+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3933 :: 		Label31.Width       = 38;
MOVS	R1, #38
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label31+12)
MOVT	R0, #hi_addr(_Label31+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3934 :: 		Label31.Height      = 25;
MOVS	R1, #25
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label31+14)
MOVT	R0, #hi_addr(_Label31+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3935 :: 		Label31.Caption     = Label31_Caption;
MOVW	R1, #lo_addr(_Label31_Caption+0)
MOVT	R1, #hi_addr(_Label31_Caption+0)
MOVW	R0, #lo_addr(_Label31+16)
MOVT	R0, #hi_addr(_Label31+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3936 :: 		Label31.FontName    = Tahoma_19x23_Regular;
MOVW	R1, #10036
MOVW	R0, #lo_addr(_Label31+20)
MOVT	R0, #hi_addr(_Label31+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3937 :: 		Label31.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label31+24)
MOVT	R0, #hi_addr(_Label31+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3938 :: 		Label31.FontHandle  = 4;
MOVS	R1, #4
MOVW	R0, #lo_addr(_Label31+28)
MOVT	R0, #hi_addr(_Label31+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3939 :: 		Label31.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label31+32)
MOVT	R0, #hi_addr(_Label31+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3940 :: 		Label31.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label31+36)
MOVT	R0, #hi_addr(_Label31+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3941 :: 		Label31.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label31+40)
MOVT	R0, #hi_addr(_Label31+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3942 :: 		Label31.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label31+44)
MOVT	R0, #hi_addr(_Label31+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3943 :: 		Label31.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label31+48)
MOVT	R0, #hi_addr(_Label31+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3944 :: 		Label31.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label31+52)
MOVT	R0, #hi_addr(_Label31+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3946 :: 		Label32.OwnerScreen = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_Label32+0)
MOVT	R0, #hi_addr(_Label32+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3947 :: 		Label32.Order       = 73;
MOVS	R1, #73
MOVW	R0, #lo_addr(_Label32+4)
MOVT	R0, #hi_addr(_Label32+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3948 :: 		Label32.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label32+5)
MOVT	R0, #hi_addr(_Label32+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3949 :: 		Label32.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label32+6)
MOVT	R0, #hi_addr(_Label32+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3950 :: 		Label32.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label32+7)
MOVT	R0, #hi_addr(_Label32+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3951 :: 		Label32.Left        = 372;
MOVW	R1, #372
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label32+8)
MOVT	R0, #hi_addr(_Label32+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3952 :: 		Label32.Top         = 162;
MOVS	R1, #162
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label32+10)
MOVT	R0, #hi_addr(_Label32+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3953 :: 		Label32.Width       = 60;
MOVS	R1, #60
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label32+12)
MOVT	R0, #hi_addr(_Label32+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3954 :: 		Label32.Height      = 25;
MOVS	R1, #25
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label32+14)
MOVT	R0, #hi_addr(_Label32+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3955 :: 		Label32.Caption     = Label32_Caption;
MOVW	R1, #lo_addr(_Label32_Caption+0)
MOVT	R1, #hi_addr(_Label32_Caption+0)
MOVW	R0, #lo_addr(_Label32+16)
MOVT	R0, #hi_addr(_Label32+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3956 :: 		Label32.FontName    = Tahoma_19x23_Regular;
MOVW	R1, #10036
MOVW	R0, #lo_addr(_Label32+20)
MOVT	R0, #hi_addr(_Label32+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3957 :: 		Label32.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label32+24)
MOVT	R0, #hi_addr(_Label32+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3958 :: 		Label32.FontHandle  = 4;
MOVS	R1, #4
MOVW	R0, #lo_addr(_Label32+28)
MOVT	R0, #hi_addr(_Label32+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3959 :: 		Label32.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label32+32)
MOVT	R0, #hi_addr(_Label32+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3960 :: 		Label32.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label32+36)
MOVT	R0, #hi_addr(_Label32+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3961 :: 		Label32.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label32+40)
MOVT	R0, #hi_addr(_Label32+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3962 :: 		Label32.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label32+44)
MOVT	R0, #hi_addr(_Label32+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3963 :: 		Label32.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label32+48)
MOVT	R0, #hi_addr(_Label32+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3964 :: 		Label32.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label32+52)
MOVT	R0, #hi_addr(_Label32+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3966 :: 		Label33.OwnerScreen = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_Label33+0)
MOVT	R0, #hi_addr(_Label33+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3967 :: 		Label33.Order       = 74;
MOVS	R1, #74
MOVW	R0, #lo_addr(_Label33+4)
MOVT	R0, #hi_addr(_Label33+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3968 :: 		Label33.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label33+5)
MOVT	R0, #hi_addr(_Label33+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3969 :: 		Label33.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label33+6)
MOVT	R0, #hi_addr(_Label33+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3970 :: 		Label33.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label33+7)
MOVT	R0, #hi_addr(_Label33+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3971 :: 		Label33.Left        = 618;
MOVW	R1, #618
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label33+8)
MOVT	R0, #hi_addr(_Label33+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3972 :: 		Label33.Top         = 144;
MOVS	R1, #144
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label33+10)
MOVT	R0, #hi_addr(_Label33+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3973 :: 		Label33.Width       = 96;
MOVS	R1, #96
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label33+12)
MOVT	R0, #hi_addr(_Label33+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3974 :: 		Label33.Height      = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label33+14)
MOVT	R0, #hi_addr(_Label33+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3975 :: 		Label33.Caption     = Label33_Caption;
MOVW	R1, #lo_addr(_Label33_Caption+0)
MOVT	R1, #hi_addr(_Label33_Caption+0)
MOVW	R0, #lo_addr(_Label33+16)
MOVT	R0, #hi_addr(_Label33+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3976 :: 		Label33.FontName    = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_Label33+20)
MOVT	R0, #hi_addr(_Label33+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3977 :: 		Label33.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label33+24)
MOVT	R0, #hi_addr(_Label33+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3978 :: 		Label33.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label33+28)
MOVT	R0, #hi_addr(_Label33+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3979 :: 		Label33.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label33+32)
MOVT	R0, #hi_addr(_Label33+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3980 :: 		Label33.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label33+36)
MOVT	R0, #hi_addr(_Label33+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3981 :: 		Label33.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label33+40)
MOVT	R0, #hi_addr(_Label33+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3982 :: 		Label33.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label33+44)
MOVT	R0, #hi_addr(_Label33+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3983 :: 		Label33.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label33+48)
MOVT	R0, #hi_addr(_Label33+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3984 :: 		Label33.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label33+52)
MOVT	R0, #hi_addr(_Label33+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3986 :: 		Label34.OwnerScreen = &AutomaticCtrlScr;
MOVW	R1, #lo_addr(_AutomaticCtrlScr+0)
MOVT	R1, #hi_addr(_AutomaticCtrlScr+0)
MOVW	R0, #lo_addr(_Label34+0)
MOVT	R0, #hi_addr(_Label34+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3987 :: 		Label34.Order       = 75;
MOVS	R1, #75
MOVW	R0, #lo_addr(_Label34+4)
MOVT	R0, #hi_addr(_Label34+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3988 :: 		Label34.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label34+5)
MOVT	R0, #hi_addr(_Label34+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3989 :: 		Label34.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label34+6)
MOVT	R0, #hi_addr(_Label34+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3990 :: 		Label34.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label34+7)
MOVT	R0, #hi_addr(_Label34+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3991 :: 		Label34.Left        = 618;
MOVW	R1, #618
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label34+8)
MOVT	R0, #hi_addr(_Label34+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3992 :: 		Label34.Top         = 178;
MOVS	R1, #178
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label34+10)
MOVT	R0, #hi_addr(_Label34+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3993 :: 		Label34.Width       = 96;
MOVS	R1, #96
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label34+12)
MOVT	R0, #hi_addr(_Label34+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3994 :: 		Label34.Height      = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label34+14)
MOVT	R0, #hi_addr(_Label34+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3995 :: 		Label34.Caption     = Label34_Caption;
MOVW	R1, #lo_addr(_Label34_Caption+0)
MOVT	R1, #hi_addr(_Label34_Caption+0)
MOVW	R0, #lo_addr(_Label34+16)
MOVT	R0, #hi_addr(_Label34+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3996 :: 		Label34.FontName    = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_Label34+20)
MOVT	R0, #hi_addr(_Label34+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3997 :: 		Label34.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label34+24)
MOVT	R0, #hi_addr(_Label34+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3998 :: 		Label34.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label34+28)
MOVT	R0, #hi_addr(_Label34+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,3999 :: 		Label34.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label34+32)
MOVT	R0, #hi_addr(_Label34+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4000 :: 		Label34.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label34+36)
MOVT	R0, #hi_addr(_Label34+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4001 :: 		Label34.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label34+40)
MOVT	R0, #hi_addr(_Label34+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4002 :: 		Label34.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label34+44)
MOVT	R0, #hi_addr(_Label34+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4003 :: 		Label34.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label34+48)
MOVT	R0, #hi_addr(_Label34+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4004 :: 		Label34.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label34+52)
MOVT	R0, #hi_addr(_Label34+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4006 :: 		ManualCtrlBack.OwnerScreen   = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_ManualCtrlBack+0)
MOVT	R0, #hi_addr(_ManualCtrlBack+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4007 :: 		ManualCtrlBack.Order         = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ManualCtrlBack+4)
MOVT	R0, #hi_addr(_ManualCtrlBack+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4008 :: 		ManualCtrlBack.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ManualCtrlBack+5)
MOVT	R0, #hi_addr(_ManualCtrlBack+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4009 :: 		ManualCtrlBack.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_ManualCtrlBack+6)
MOVT	R0, #hi_addr(_ManualCtrlBack+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4010 :: 		ManualCtrlBack.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_ManualCtrlBack+7)
MOVT	R0, #hi_addr(_ManualCtrlBack+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4011 :: 		ManualCtrlBack.Left          = 20;
MOVS	R1, #20
SXTH	R1, R1
MOVW	R0, #lo_addr(_ManualCtrlBack+8)
MOVT	R0, #hi_addr(_ManualCtrlBack+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4012 :: 		ManualCtrlBack.Top           = 410;
MOVW	R1, #410
SXTH	R1, R1
MOVW	R0, #lo_addr(_ManualCtrlBack+10)
MOVT	R0, #hi_addr(_ManualCtrlBack+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4013 :: 		ManualCtrlBack.Width         = 50;
MOVS	R1, #50
SXTH	R1, R1
MOVW	R0, #lo_addr(_ManualCtrlBack+12)
MOVT	R0, #hi_addr(_ManualCtrlBack+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4014 :: 		ManualCtrlBack.Height        = 50;
MOVS	R1, #50
SXTH	R1, R1
MOVW	R0, #lo_addr(_ManualCtrlBack+14)
MOVT	R0, #hi_addr(_ManualCtrlBack+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4015 :: 		ManualCtrlBack.Picture_Name  = back1sm_bmp;
MOVW	R1, #58636
MOVW	R0, #lo_addr(_ManualCtrlBack+16)
MOVT	R0, #hi_addr(_ManualCtrlBack+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4016 :: 		ManualCtrlBack.Picture_Type  = 7;
MOVS	R1, #7
MOVW	R0, #lo_addr(_ManualCtrlBack+20)
MOVT	R0, #hi_addr(_ManualCtrlBack+20)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4017 :: 		ManualCtrlBack.Picture_Ratio = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ManualCtrlBack+21)
MOVT	R0, #hi_addr(_ManualCtrlBack+21)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4018 :: 		ManualCtrlBack.Blend_Color   = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_ManualCtrlBack+24)
MOVT	R0, #hi_addr(_ManualCtrlBack+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4019 :: 		ManualCtrlBack.Source        = -1L;
MOV	R1, #-1
MOVW	R0, #lo_addr(_ManualCtrlBack+28)
MOVT	R0, #hi_addr(_ManualCtrlBack+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4020 :: 		ManualCtrlBack.RotationAngle = 0;
MOVS	R1, #0
SXTH	R1, R1
MOVW	R0, #lo_addr(_ManualCtrlBack+32)
MOVT	R0, #hi_addr(_ManualCtrlBack+32)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4021 :: 		ManualCtrlBack.RotationCenterLeft = 51;
MOVS	R1, #51
SXTH	R1, R1
MOVW	R0, #lo_addr(_ManualCtrlBack+34)
MOVT	R0, #hi_addr(_ManualCtrlBack+34)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4022 :: 		ManualCtrlBack.RotationCenterTop = 435;
MOVW	R1, #435
SXTH	R1, R1
MOVW	R0, #lo_addr(_ManualCtrlBack+36)
MOVT	R0, #hi_addr(_ManualCtrlBack+36)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4023 :: 		ManualCtrlBack.ScaleX        = 1.0000;
VMOV.F32	S0, #1
MOVW	R0, #lo_addr(_ManualCtrlBack+40)
MOVT	R0, #hi_addr(_ManualCtrlBack+40)
VSTR	#1, S0, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4024 :: 		ManualCtrlBack.ScaleY        = 1.0000;
VMOV.F32	S0, #1
MOVW	R0, #lo_addr(_ManualCtrlBack+44)
MOVT	R0, #hi_addr(_ManualCtrlBack+44)
VSTR	#1, S0, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4025 :: 		ManualCtrlBack.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ManualCtrlBack+48)
MOVT	R0, #hi_addr(_ManualCtrlBack+48)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4026 :: 		ManualCtrlBack.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ManualCtrlBack+52)
MOVT	R0, #hi_addr(_ManualCtrlBack+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4027 :: 		ManualCtrlBack.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ManualCtrlBack+56)
MOVT	R0, #hi_addr(_ManualCtrlBack+56)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4028 :: 		ManualCtrlBack.OnClick       = &ManualCtrlBack_OnClick;
MOVW	R1, #lo_addr(_ManualCtrlBack_OnClick+0)
MOVT	R1, #hi_addr(_ManualCtrlBack_OnClick+0)
MOVW	R0, #lo_addr(_ManualCtrlBack+60)
MOVT	R0, #hi_addr(_ManualCtrlBack+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4029 :: 		ManualCtrlBack.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ManualCtrlBack+64)
MOVT	R0, #hi_addr(_ManualCtrlBack+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4031 :: 		ManualCtrlBack_OnClick.Action       = ManualCtrlBackOnClick;
MOVW	R1, #lo_addr(_ManualCtrlBackOnClick+0)
MOVT	R1, #hi_addr(_ManualCtrlBackOnClick+0)
MOVW	R0, #lo_addr(_ManualCtrlBack_OnClick+0)
MOVT	R0, #hi_addr(_ManualCtrlBack_OnClick+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4032 :: 		ManualCtrlBack_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ManualCtrlBack_OnClick+4)
MOVT	R0, #hi_addr(_ManualCtrlBack_OnClick+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4033 :: 		ManualCtrlBack_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
MOVS	R1, #65
MOVW	R0, #lo_addr(_ManualCtrlBack_OnClick+5)
MOVT	R0, #hi_addr(_ManualCtrlBack_OnClick+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4034 :: 		ManualCtrlBack_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
MOVS	R1, #81
MOVW	R0, #lo_addr(_ManualCtrlBack_OnClick+6)
MOVT	R0, #hi_addr(_ManualCtrlBack_OnClick+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4035 :: 		ManualCtrlBack_OnClick.Sound.Volume = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_ManualCtrlBack_OnClick+7)
MOVT	R0, #hi_addr(_ManualCtrlBack_OnClick+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4037 :: 		ManualCtrlSet.OwnerScreen   = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_ManualCtrlSet+0)
MOVT	R0, #hi_addr(_ManualCtrlSet+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4038 :: 		ManualCtrlSet.Order         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ManualCtrlSet+4)
MOVT	R0, #hi_addr(_ManualCtrlSet+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4039 :: 		ManualCtrlSet.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ManualCtrlSet+5)
MOVT	R0, #hi_addr(_ManualCtrlSet+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4040 :: 		ManualCtrlSet.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_ManualCtrlSet+6)
MOVT	R0, #hi_addr(_ManualCtrlSet+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4041 :: 		ManualCtrlSet.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_ManualCtrlSet+7)
MOVT	R0, #hi_addr(_ManualCtrlSet+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4042 :: 		ManualCtrlSet.Left          = 20;
MOVS	R1, #20
SXTH	R1, R1
MOVW	R0, #lo_addr(_ManualCtrlSet+8)
MOVT	R0, #hi_addr(_ManualCtrlSet+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4043 :: 		ManualCtrlSet.Top           = 340;
MOVW	R1, #340
SXTH	R1, R1
MOVW	R0, #lo_addr(_ManualCtrlSet+10)
MOVT	R0, #hi_addr(_ManualCtrlSet+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4044 :: 		ManualCtrlSet.Width         = 50;
MOVS	R1, #50
SXTH	R1, R1
MOVW	R0, #lo_addr(_ManualCtrlSet+12)
MOVT	R0, #hi_addr(_ManualCtrlSet+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4045 :: 		ManualCtrlSet.Height        = 50;
MOVS	R1, #50
SXTH	R1, R1
MOVW	R0, #lo_addr(_ManualCtrlSet+14)
MOVT	R0, #hi_addr(_ManualCtrlSet+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4046 :: 		ManualCtrlSet.Picture_Name  = settings2sm_bmp;
MOVW	R1, #53630
MOVW	R0, #lo_addr(_ManualCtrlSet+16)
MOVT	R0, #hi_addr(_ManualCtrlSet+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4047 :: 		ManualCtrlSet.Picture_Type  = 7;
MOVS	R1, #7
MOVW	R0, #lo_addr(_ManualCtrlSet+20)
MOVT	R0, #hi_addr(_ManualCtrlSet+20)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4048 :: 		ManualCtrlSet.Picture_Ratio = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ManualCtrlSet+21)
MOVT	R0, #hi_addr(_ManualCtrlSet+21)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4049 :: 		ManualCtrlSet.Blend_Color   = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_ManualCtrlSet+24)
MOVT	R0, #hi_addr(_ManualCtrlSet+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4050 :: 		ManualCtrlSet.Source        = -1L;
MOV	R1, #-1
MOVW	R0, #lo_addr(_ManualCtrlSet+28)
MOVT	R0, #hi_addr(_ManualCtrlSet+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4051 :: 		ManualCtrlSet.RotationAngle = 0;
MOVS	R1, #0
SXTH	R1, R1
MOVW	R0, #lo_addr(_ManualCtrlSet+32)
MOVT	R0, #hi_addr(_ManualCtrlSet+32)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4052 :: 		ManualCtrlSet.RotationCenterLeft = 51;
MOVS	R1, #51
SXTH	R1, R1
MOVW	R0, #lo_addr(_ManualCtrlSet+34)
MOVT	R0, #hi_addr(_ManualCtrlSet+34)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4053 :: 		ManualCtrlSet.RotationCenterTop = 365;
MOVW	R1, #365
SXTH	R1, R1
MOVW	R0, #lo_addr(_ManualCtrlSet+36)
MOVT	R0, #hi_addr(_ManualCtrlSet+36)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4054 :: 		ManualCtrlSet.ScaleX        = 1.0000;
VMOV.F32	S0, #1
MOVW	R0, #lo_addr(_ManualCtrlSet+40)
MOVT	R0, #hi_addr(_ManualCtrlSet+40)
VSTR	#1, S0, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4055 :: 		ManualCtrlSet.ScaleY        = 1.0000;
VMOV.F32	S0, #1
MOVW	R0, #lo_addr(_ManualCtrlSet+44)
MOVT	R0, #hi_addr(_ManualCtrlSet+44)
VSTR	#1, S0, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4056 :: 		ManualCtrlSet.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ManualCtrlSet+48)
MOVT	R0, #hi_addr(_ManualCtrlSet+48)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4057 :: 		ManualCtrlSet.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ManualCtrlSet+52)
MOVT	R0, #hi_addr(_ManualCtrlSet+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4058 :: 		ManualCtrlSet.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ManualCtrlSet+56)
MOVT	R0, #hi_addr(_ManualCtrlSet+56)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4059 :: 		ManualCtrlSet.OnClick       = &ManualCtrlSet_OnClick;
MOVW	R1, #lo_addr(_ManualCtrlSet_OnClick+0)
MOVT	R1, #hi_addr(_ManualCtrlSet_OnClick+0)
MOVW	R0, #lo_addr(_ManualCtrlSet+60)
MOVT	R0, #hi_addr(_ManualCtrlSet+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4060 :: 		ManualCtrlSet.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ManualCtrlSet+64)
MOVT	R0, #hi_addr(_ManualCtrlSet+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4062 :: 		ManualCtrlSet_OnClick.Action       = ManualCtrlSetOnClick;
MOVW	R1, #lo_addr(_ManualCtrlSetOnClick+0)
MOVT	R1, #hi_addr(_ManualCtrlSetOnClick+0)
MOVW	R0, #lo_addr(_ManualCtrlSet_OnClick+0)
MOVT	R0, #hi_addr(_ManualCtrlSet_OnClick+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4063 :: 		ManualCtrlSet_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ManualCtrlSet_OnClick+4)
MOVT	R0, #hi_addr(_ManualCtrlSet_OnClick+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4064 :: 		ManualCtrlSet_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
MOVS	R1, #65
MOVW	R0, #lo_addr(_ManualCtrlSet_OnClick+5)
MOVT	R0, #hi_addr(_ManualCtrlSet_OnClick+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4065 :: 		ManualCtrlSet_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
MOVS	R1, #81
MOVW	R0, #lo_addr(_ManualCtrlSet_OnClick+6)
MOVT	R0, #hi_addr(_ManualCtrlSet_OnClick+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4066 :: 		ManualCtrlSet_OnClick.Sound.Volume = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_ManualCtrlSet_OnClick+7)
MOVT	R0, #hi_addr(_ManualCtrlSet_OnClick+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4068 :: 		ExTempNumMan.OwnerScreen   = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_ExTempNumMan+0)
MOVT	R0, #hi_addr(_ExTempNumMan+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4069 :: 		ExTempNumMan.Order         = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_ExTempNumMan+4)
MOVT	R0, #hi_addr(_ExTempNumMan+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4070 :: 		ExTempNumMan.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ExTempNumMan+5)
MOVT	R0, #hi_addr(_ExTempNumMan+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4071 :: 		ExTempNumMan.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_ExTempNumMan+6)
MOVT	R0, #hi_addr(_ExTempNumMan+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4072 :: 		ExTempNumMan.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_ExTempNumMan+7)
MOVT	R0, #hi_addr(_ExTempNumMan+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4073 :: 		ExTempNumMan.Left          = 155;
MOVS	R1, #155
SXTH	R1, R1
MOVW	R0, #lo_addr(_ExTempNumMan+8)
MOVT	R0, #hi_addr(_ExTempNumMan+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4074 :: 		ExTempNumMan.Top           = 40;
MOVS	R1, #40
SXTH	R1, R1
MOVW	R0, #lo_addr(_ExTempNumMan+10)
MOVT	R0, #hi_addr(_ExTempNumMan+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4075 :: 		ExTempNumMan.Width         = 80;
MOVS	R1, #80
SXTH	R1, R1
MOVW	R0, #lo_addr(_ExTempNumMan+12)
MOVT	R0, #hi_addr(_ExTempNumMan+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4076 :: 		ExTempNumMan.Height        = 30;
MOVS	R1, #30
SXTH	R1, R1
MOVW	R0, #lo_addr(_ExTempNumMan+14)
MOVT	R0, #hi_addr(_ExTempNumMan+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4077 :: 		ExTempNumMan.Pen_Width     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ExTempNumMan+16)
MOVT	R0, #hi_addr(_ExTempNumMan+16)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4078 :: 		ExTempNumMan.Pen_Color     = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ExTempNumMan+20)
MOVT	R0, #hi_addr(_ExTempNumMan+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4079 :: 		ExTempNumMan.Color         = 0xFF00;
MOVW	R1, #65280
MOVW	R0, #lo_addr(_ExTempNumMan+24)
MOVT	R0, #hi_addr(_ExTempNumMan+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4080 :: 		ExTempNumMan.Press_Color   = 0xE2E2E2;
MOVW	R1, #58082
MOVT	R1, #226
MOVW	R0, #lo_addr(_ExTempNumMan+28)
MOVT	R0, #hi_addr(_ExTempNumMan+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4081 :: 		ExTempNumMan.Caption       = ExTempNumMan_Caption;
MOVW	R1, #lo_addr(_ExTempNumMan_Caption+0)
MOVT	R1, #hi_addr(_ExTempNumMan_Caption+0)
MOVW	R0, #lo_addr(_ExTempNumMan+32)
MOVT	R0, #hi_addr(_ExTempNumMan+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4082 :: 		ExTempNumMan.TextAlign     = taCenter;
MOVS	R1, #2
MOVW	R0, #lo_addr(_ExTempNumMan+36)
MOVT	R0, #hi_addr(_ExTempNumMan+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4083 :: 		ExTempNumMan.FontName      = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_ExTempNumMan+40)
MOVT	R0, #hi_addr(_ExTempNumMan+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4084 :: 		ExTempNumMan.Font_Color    = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ExTempNumMan+44)
MOVT	R0, #hi_addr(_ExTempNumMan+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4085 :: 		ExTempNumMan.FontHandle    = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ExTempNumMan+48)
MOVT	R0, #hi_addr(_ExTempNumMan+48)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4086 :: 		ExTempNumMan.Source        = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_ExTempNumMan+52)
MOVT	R0, #hi_addr(_ExTempNumMan+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4087 :: 		ExTempNumMan.Corner_Radius = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_ExTempNumMan+56)
MOVT	R0, #hi_addr(_ExTempNumMan+56)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4088 :: 		ExTempNumMan.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ExTempNumMan+57)
MOVT	R0, #hi_addr(_ExTempNumMan+57)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4089 :: 		ExTempNumMan.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ExTempNumMan+60)
MOVT	R0, #hi_addr(_ExTempNumMan+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4090 :: 		ExTempNumMan.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ExTempNumMan+64)
MOVT	R0, #hi_addr(_ExTempNumMan+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4091 :: 		ExTempNumMan.OnClick       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ExTempNumMan+68)
MOVT	R0, #hi_addr(_ExTempNumMan+68)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4092 :: 		ExTempNumMan.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ExTempNumMan+72)
MOVT	R0, #hi_addr(_ExTempNumMan+72)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4094 :: 		FirBearTempNumMan.OwnerScreen   = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_FirBearTempNumMan+0)
MOVT	R0, #hi_addr(_FirBearTempNumMan+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4095 :: 		FirBearTempNumMan.Order         = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_FirBearTempNumMan+4)
MOVT	R0, #hi_addr(_FirBearTempNumMan+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4096 :: 		FirBearTempNumMan.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_FirBearTempNumMan+5)
MOVT	R0, #hi_addr(_FirBearTempNumMan+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4097 :: 		FirBearTempNumMan.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_FirBearTempNumMan+6)
MOVT	R0, #hi_addr(_FirBearTempNumMan+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4098 :: 		FirBearTempNumMan.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_FirBearTempNumMan+7)
MOVT	R0, #hi_addr(_FirBearTempNumMan+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4099 :: 		FirBearTempNumMan.Left          = 155;
MOVS	R1, #155
SXTH	R1, R1
MOVW	R0, #lo_addr(_FirBearTempNumMan+8)
MOVT	R0, #hi_addr(_FirBearTempNumMan+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4100 :: 		FirBearTempNumMan.Top           = 75;
MOVS	R1, #75
SXTH	R1, R1
MOVW	R0, #lo_addr(_FirBearTempNumMan+10)
MOVT	R0, #hi_addr(_FirBearTempNumMan+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4101 :: 		FirBearTempNumMan.Width         = 80;
MOVS	R1, #80
SXTH	R1, R1
MOVW	R0, #lo_addr(_FirBearTempNumMan+12)
MOVT	R0, #hi_addr(_FirBearTempNumMan+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4102 :: 		FirBearTempNumMan.Height        = 30;
MOVS	R1, #30
SXTH	R1, R1
MOVW	R0, #lo_addr(_FirBearTempNumMan+14)
MOVT	R0, #hi_addr(_FirBearTempNumMan+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4103 :: 		FirBearTempNumMan.Pen_Width     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_FirBearTempNumMan+16)
MOVT	R0, #hi_addr(_FirBearTempNumMan+16)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4104 :: 		FirBearTempNumMan.Pen_Color     = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FirBearTempNumMan+20)
MOVT	R0, #hi_addr(_FirBearTempNumMan+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4105 :: 		FirBearTempNumMan.Color         = 0xFF00;
MOVW	R1, #65280
MOVW	R0, #lo_addr(_FirBearTempNumMan+24)
MOVT	R0, #hi_addr(_FirBearTempNumMan+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4106 :: 		FirBearTempNumMan.Press_Color   = 0xE2E2E2;
MOVW	R1, #58082
MOVT	R1, #226
MOVW	R0, #lo_addr(_FirBearTempNumMan+28)
MOVT	R0, #hi_addr(_FirBearTempNumMan+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4107 :: 		FirBearTempNumMan.Caption       = FirBearTempNumMan_Caption;
MOVW	R1, #lo_addr(_FirBearTempNumMan_Caption+0)
MOVT	R1, #hi_addr(_FirBearTempNumMan_Caption+0)
MOVW	R0, #lo_addr(_FirBearTempNumMan+32)
MOVT	R0, #hi_addr(_FirBearTempNumMan+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4108 :: 		FirBearTempNumMan.TextAlign     = taCenter;
MOVS	R1, #2
MOVW	R0, #lo_addr(_FirBearTempNumMan+36)
MOVT	R0, #hi_addr(_FirBearTempNumMan+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4109 :: 		FirBearTempNumMan.FontName      = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_FirBearTempNumMan+40)
MOVT	R0, #hi_addr(_FirBearTempNumMan+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4110 :: 		FirBearTempNumMan.Font_Color    = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FirBearTempNumMan+44)
MOVT	R0, #hi_addr(_FirBearTempNumMan+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4111 :: 		FirBearTempNumMan.FontHandle    = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_FirBearTempNumMan+48)
MOVT	R0, #hi_addr(_FirBearTempNumMan+48)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4112 :: 		FirBearTempNumMan.Source        = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_FirBearTempNumMan+52)
MOVT	R0, #hi_addr(_FirBearTempNumMan+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4113 :: 		FirBearTempNumMan.Corner_Radius = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_FirBearTempNumMan+56)
MOVT	R0, #hi_addr(_FirBearTempNumMan+56)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4114 :: 		FirBearTempNumMan.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_FirBearTempNumMan+57)
MOVT	R0, #hi_addr(_FirBearTempNumMan+57)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4115 :: 		FirBearTempNumMan.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FirBearTempNumMan+60)
MOVT	R0, #hi_addr(_FirBearTempNumMan+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4116 :: 		FirBearTempNumMan.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FirBearTempNumMan+64)
MOVT	R0, #hi_addr(_FirBearTempNumMan+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4117 :: 		FirBearTempNumMan.OnClick       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FirBearTempNumMan+68)
MOVT	R0, #hi_addr(_FirBearTempNumMan+68)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4118 :: 		FirBearTempNumMan.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FirBearTempNumMan+72)
MOVT	R0, #hi_addr(_FirBearTempNumMan+72)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4120 :: 		SecBearTempNumMan.OwnerScreen   = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_SecBearTempNumMan+0)
MOVT	R0, #hi_addr(_SecBearTempNumMan+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4121 :: 		SecBearTempNumMan.Order         = 4;
MOVS	R1, #4
MOVW	R0, #lo_addr(_SecBearTempNumMan+4)
MOVT	R0, #hi_addr(_SecBearTempNumMan+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4122 :: 		SecBearTempNumMan.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_SecBearTempNumMan+5)
MOVT	R0, #hi_addr(_SecBearTempNumMan+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4123 :: 		SecBearTempNumMan.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_SecBearTempNumMan+6)
MOVT	R0, #hi_addr(_SecBearTempNumMan+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4124 :: 		SecBearTempNumMan.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_SecBearTempNumMan+7)
MOVT	R0, #hi_addr(_SecBearTempNumMan+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4125 :: 		SecBearTempNumMan.Left          = 155;
MOVS	R1, #155
SXTH	R1, R1
MOVW	R0, #lo_addr(_SecBearTempNumMan+8)
MOVT	R0, #hi_addr(_SecBearTempNumMan+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4126 :: 		SecBearTempNumMan.Top           = 110;
MOVS	R1, #110
SXTH	R1, R1
MOVW	R0, #lo_addr(_SecBearTempNumMan+10)
MOVT	R0, #hi_addr(_SecBearTempNumMan+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4127 :: 		SecBearTempNumMan.Width         = 80;
MOVS	R1, #80
SXTH	R1, R1
MOVW	R0, #lo_addr(_SecBearTempNumMan+12)
MOVT	R0, #hi_addr(_SecBearTempNumMan+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4128 :: 		SecBearTempNumMan.Height        = 30;
MOVS	R1, #30
SXTH	R1, R1
MOVW	R0, #lo_addr(_SecBearTempNumMan+14)
MOVT	R0, #hi_addr(_SecBearTempNumMan+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4129 :: 		SecBearTempNumMan.Pen_Width     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_SecBearTempNumMan+16)
MOVT	R0, #hi_addr(_SecBearTempNumMan+16)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4130 :: 		SecBearTempNumMan.Pen_Color     = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_SecBearTempNumMan+20)
MOVT	R0, #hi_addr(_SecBearTempNumMan+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4131 :: 		SecBearTempNumMan.Color         = 0xFF00;
MOVW	R1, #65280
MOVW	R0, #lo_addr(_SecBearTempNumMan+24)
MOVT	R0, #hi_addr(_SecBearTempNumMan+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4132 :: 		SecBearTempNumMan.Press_Color   = 0xE2E2E2;
MOVW	R1, #58082
MOVT	R1, #226
MOVW	R0, #lo_addr(_SecBearTempNumMan+28)
MOVT	R0, #hi_addr(_SecBearTempNumMan+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4133 :: 		SecBearTempNumMan.Caption       = SecBearTempNumMan_Caption;
MOVW	R1, #lo_addr(_SecBearTempNumMan_Caption+0)
MOVT	R1, #hi_addr(_SecBearTempNumMan_Caption+0)
MOVW	R0, #lo_addr(_SecBearTempNumMan+32)
MOVT	R0, #hi_addr(_SecBearTempNumMan+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4134 :: 		SecBearTempNumMan.TextAlign     = taCenter;
MOVS	R1, #2
MOVW	R0, #lo_addr(_SecBearTempNumMan+36)
MOVT	R0, #hi_addr(_SecBearTempNumMan+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4135 :: 		SecBearTempNumMan.FontName      = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_SecBearTempNumMan+40)
MOVT	R0, #hi_addr(_SecBearTempNumMan+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4136 :: 		SecBearTempNumMan.Font_Color    = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_SecBearTempNumMan+44)
MOVT	R0, #hi_addr(_SecBearTempNumMan+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4137 :: 		SecBearTempNumMan.FontHandle    = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_SecBearTempNumMan+48)
MOVT	R0, #hi_addr(_SecBearTempNumMan+48)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4138 :: 		SecBearTempNumMan.Source        = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_SecBearTempNumMan+52)
MOVT	R0, #hi_addr(_SecBearTempNumMan+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4139 :: 		SecBearTempNumMan.Corner_Radius = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_SecBearTempNumMan+56)
MOVT	R0, #hi_addr(_SecBearTempNumMan+56)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4140 :: 		SecBearTempNumMan.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_SecBearTempNumMan+57)
MOVT	R0, #hi_addr(_SecBearTempNumMan+57)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4141 :: 		SecBearTempNumMan.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_SecBearTempNumMan+60)
MOVT	R0, #hi_addr(_SecBearTempNumMan+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4142 :: 		SecBearTempNumMan.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_SecBearTempNumMan+64)
MOVT	R0, #hi_addr(_SecBearTempNumMan+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4143 :: 		SecBearTempNumMan.OnClick       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_SecBearTempNumMan+68)
MOVT	R0, #hi_addr(_SecBearTempNumMan+68)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4144 :: 		SecBearTempNumMan.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_SecBearTempNumMan+72)
MOVT	R0, #hi_addr(_SecBearTempNumMan+72)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4146 :: 		SourTempNumMan.OwnerScreen   = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_SourTempNumMan+0)
MOVT	R0, #hi_addr(_SourTempNumMan+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4147 :: 		SourTempNumMan.Order         = 5;
MOVS	R1, #5
MOVW	R0, #lo_addr(_SourTempNumMan+4)
MOVT	R0, #hi_addr(_SourTempNumMan+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4148 :: 		SourTempNumMan.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_SourTempNumMan+5)
MOVT	R0, #hi_addr(_SourTempNumMan+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4149 :: 		SourTempNumMan.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_SourTempNumMan+6)
MOVT	R0, #hi_addr(_SourTempNumMan+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4150 :: 		SourTempNumMan.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_SourTempNumMan+7)
MOVT	R0, #hi_addr(_SourTempNumMan+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4151 :: 		SourTempNumMan.Left          = 155;
MOVS	R1, #155
SXTH	R1, R1
MOVW	R0, #lo_addr(_SourTempNumMan+8)
MOVT	R0, #hi_addr(_SourTempNumMan+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4152 :: 		SourTempNumMan.Top           = 145;
MOVS	R1, #145
SXTH	R1, R1
MOVW	R0, #lo_addr(_SourTempNumMan+10)
MOVT	R0, #hi_addr(_SourTempNumMan+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4153 :: 		SourTempNumMan.Width         = 80;
MOVS	R1, #80
SXTH	R1, R1
MOVW	R0, #lo_addr(_SourTempNumMan+12)
MOVT	R0, #hi_addr(_SourTempNumMan+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4154 :: 		SourTempNumMan.Height        = 30;
MOVS	R1, #30
SXTH	R1, R1
MOVW	R0, #lo_addr(_SourTempNumMan+14)
MOVT	R0, #hi_addr(_SourTempNumMan+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4155 :: 		SourTempNumMan.Pen_Width     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_SourTempNumMan+16)
MOVT	R0, #hi_addr(_SourTempNumMan+16)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4156 :: 		SourTempNumMan.Pen_Color     = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_SourTempNumMan+20)
MOVT	R0, #hi_addr(_SourTempNumMan+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4157 :: 		SourTempNumMan.Color         = 0xFF00;
MOVW	R1, #65280
MOVW	R0, #lo_addr(_SourTempNumMan+24)
MOVT	R0, #hi_addr(_SourTempNumMan+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4158 :: 		SourTempNumMan.Press_Color   = 0xE2E2E2;
MOVW	R1, #58082
MOVT	R1, #226
MOVW	R0, #lo_addr(_SourTempNumMan+28)
MOVT	R0, #hi_addr(_SourTempNumMan+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4159 :: 		SourTempNumMan.Caption       = SourTempNumMan_Caption;
MOVW	R1, #lo_addr(_SourTempNumMan_Caption+0)
MOVT	R1, #hi_addr(_SourTempNumMan_Caption+0)
MOVW	R0, #lo_addr(_SourTempNumMan+32)
MOVT	R0, #hi_addr(_SourTempNumMan+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4160 :: 		SourTempNumMan.TextAlign     = taCenter;
MOVS	R1, #2
MOVW	R0, #lo_addr(_SourTempNumMan+36)
MOVT	R0, #hi_addr(_SourTempNumMan+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4161 :: 		SourTempNumMan.FontName      = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_SourTempNumMan+40)
MOVT	R0, #hi_addr(_SourTempNumMan+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4162 :: 		SourTempNumMan.Font_Color    = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_SourTempNumMan+44)
MOVT	R0, #hi_addr(_SourTempNumMan+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4163 :: 		SourTempNumMan.FontHandle    = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_SourTempNumMan+48)
MOVT	R0, #hi_addr(_SourTempNumMan+48)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4164 :: 		SourTempNumMan.Source        = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_SourTempNumMan+52)
MOVT	R0, #hi_addr(_SourTempNumMan+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4165 :: 		SourTempNumMan.Corner_Radius = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_SourTempNumMan+56)
MOVT	R0, #hi_addr(_SourTempNumMan+56)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4166 :: 		SourTempNumMan.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_SourTempNumMan+57)
MOVT	R0, #hi_addr(_SourTempNumMan+57)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4167 :: 		SourTempNumMan.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_SourTempNumMan+60)
MOVT	R0, #hi_addr(_SourTempNumMan+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4168 :: 		SourTempNumMan.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_SourTempNumMan+64)
MOVT	R0, #hi_addr(_SourTempNumMan+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4169 :: 		SourTempNumMan.OnClick       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_SourTempNumMan+68)
MOVT	R0, #hi_addr(_SourTempNumMan+68)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4170 :: 		SourTempNumMan.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_SourTempNumMan+72)
MOVT	R0, #hi_addr(_SourTempNumMan+72)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4172 :: 		TimeNumMan.OwnerScreen   = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_TimeNumMan+0)
MOVT	R0, #hi_addr(_TimeNumMan+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4173 :: 		TimeNumMan.Order         = 6;
MOVS	R1, #6
MOVW	R0, #lo_addr(_TimeNumMan+4)
MOVT	R0, #hi_addr(_TimeNumMan+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4174 :: 		TimeNumMan.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_TimeNumMan+5)
MOVT	R0, #hi_addr(_TimeNumMan+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4175 :: 		TimeNumMan.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_TimeNumMan+6)
MOVT	R0, #hi_addr(_TimeNumMan+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4176 :: 		TimeNumMan.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_TimeNumMan+7)
MOVT	R0, #hi_addr(_TimeNumMan+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4177 :: 		TimeNumMan.Left          = 155;
MOVS	R1, #155
SXTH	R1, R1
MOVW	R0, #lo_addr(_TimeNumMan+8)
MOVT	R0, #hi_addr(_TimeNumMan+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4178 :: 		TimeNumMan.Top           = 195;
MOVS	R1, #195
SXTH	R1, R1
MOVW	R0, #lo_addr(_TimeNumMan+10)
MOVT	R0, #hi_addr(_TimeNumMan+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4179 :: 		TimeNumMan.Width         = 80;
MOVS	R1, #80
SXTH	R1, R1
MOVW	R0, #lo_addr(_TimeNumMan+12)
MOVT	R0, #hi_addr(_TimeNumMan+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4180 :: 		TimeNumMan.Height        = 30;
MOVS	R1, #30
SXTH	R1, R1
MOVW	R0, #lo_addr(_TimeNumMan+14)
MOVT	R0, #hi_addr(_TimeNumMan+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4181 :: 		TimeNumMan.Pen_Width     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_TimeNumMan+16)
MOVT	R0, #hi_addr(_TimeNumMan+16)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4182 :: 		TimeNumMan.Pen_Color     = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_TimeNumMan+20)
MOVT	R0, #hi_addr(_TimeNumMan+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4183 :: 		TimeNumMan.Color         = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_TimeNumMan+24)
MOVT	R0, #hi_addr(_TimeNumMan+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4184 :: 		TimeNumMan.Press_Color   = 0xE2E2E2;
MOVW	R1, #58082
MOVT	R1, #226
MOVW	R0, #lo_addr(_TimeNumMan+28)
MOVT	R0, #hi_addr(_TimeNumMan+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4185 :: 		TimeNumMan.Caption       = TimeNumMan_Caption;
MOVW	R1, #lo_addr(_TimeNumMan_Caption+0)
MOVT	R1, #hi_addr(_TimeNumMan_Caption+0)
MOVW	R0, #lo_addr(_TimeNumMan+32)
MOVT	R0, #hi_addr(_TimeNumMan+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4186 :: 		TimeNumMan.TextAlign     = taCenter;
MOVS	R1, #2
MOVW	R0, #lo_addr(_TimeNumMan+36)
MOVT	R0, #hi_addr(_TimeNumMan+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4187 :: 		TimeNumMan.FontName      = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_TimeNumMan+40)
MOVT	R0, #hi_addr(_TimeNumMan+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4188 :: 		TimeNumMan.Font_Color    = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_TimeNumMan+44)
MOVT	R0, #hi_addr(_TimeNumMan+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4189 :: 		TimeNumMan.FontHandle    = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_TimeNumMan+48)
MOVT	R0, #hi_addr(_TimeNumMan+48)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4190 :: 		TimeNumMan.Source        = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_TimeNumMan+52)
MOVT	R0, #hi_addr(_TimeNumMan+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4191 :: 		TimeNumMan.Corner_Radius = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_TimeNumMan+56)
MOVT	R0, #hi_addr(_TimeNumMan+56)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4192 :: 		TimeNumMan.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_TimeNumMan+57)
MOVT	R0, #hi_addr(_TimeNumMan+57)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4193 :: 		TimeNumMan.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_TimeNumMan+60)
MOVT	R0, #hi_addr(_TimeNumMan+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4194 :: 		TimeNumMan.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_TimeNumMan+64)
MOVT	R0, #hi_addr(_TimeNumMan+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4195 :: 		TimeNumMan.OnClick       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_TimeNumMan+68)
MOVT	R0, #hi_addr(_TimeNumMan+68)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4196 :: 		TimeNumMan.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_TimeNumMan+72)
MOVT	R0, #hi_addr(_TimeNumMan+72)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4198 :: 		FuelFlNumMan.OwnerScreen   = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_FuelFlNumMan+0)
MOVT	R0, #hi_addr(_FuelFlNumMan+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4199 :: 		FuelFlNumMan.Order         = 7;
MOVS	R1, #7
MOVW	R0, #lo_addr(_FuelFlNumMan+4)
MOVT	R0, #hi_addr(_FuelFlNumMan+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4200 :: 		FuelFlNumMan.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_FuelFlNumMan+5)
MOVT	R0, #hi_addr(_FuelFlNumMan+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4201 :: 		FuelFlNumMan.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_FuelFlNumMan+6)
MOVT	R0, #hi_addr(_FuelFlNumMan+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4202 :: 		FuelFlNumMan.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_FuelFlNumMan+7)
MOVT	R0, #hi_addr(_FuelFlNumMan+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4203 :: 		FuelFlNumMan.Left          = 155;
MOVS	R1, #155
SXTH	R1, R1
MOVW	R0, #lo_addr(_FuelFlNumMan+8)
MOVT	R0, #hi_addr(_FuelFlNumMan+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4204 :: 		FuelFlNumMan.Top           = 230;
MOVS	R1, #230
SXTH	R1, R1
MOVW	R0, #lo_addr(_FuelFlNumMan+10)
MOVT	R0, #hi_addr(_FuelFlNumMan+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4205 :: 		FuelFlNumMan.Width         = 80;
MOVS	R1, #80
SXTH	R1, R1
MOVW	R0, #lo_addr(_FuelFlNumMan+12)
MOVT	R0, #hi_addr(_FuelFlNumMan+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4206 :: 		FuelFlNumMan.Height        = 30;
MOVS	R1, #30
SXTH	R1, R1
MOVW	R0, #lo_addr(_FuelFlNumMan+14)
MOVT	R0, #hi_addr(_FuelFlNumMan+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4207 :: 		FuelFlNumMan.Pen_Width     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_FuelFlNumMan+16)
MOVT	R0, #hi_addr(_FuelFlNumMan+16)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4208 :: 		FuelFlNumMan.Pen_Color     = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FuelFlNumMan+20)
MOVT	R0, #hi_addr(_FuelFlNumMan+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4209 :: 		FuelFlNumMan.Color         = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_FuelFlNumMan+24)
MOVT	R0, #hi_addr(_FuelFlNumMan+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4210 :: 		FuelFlNumMan.Press_Color   = 0xE2E2E2;
MOVW	R1, #58082
MOVT	R1, #226
MOVW	R0, #lo_addr(_FuelFlNumMan+28)
MOVT	R0, #hi_addr(_FuelFlNumMan+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4211 :: 		FuelFlNumMan.Caption       = FuelFlNumMan_Caption;
MOVW	R1, #lo_addr(_FuelFlNumMan_Caption+0)
MOVT	R1, #hi_addr(_FuelFlNumMan_Caption+0)
MOVW	R0, #lo_addr(_FuelFlNumMan+32)
MOVT	R0, #hi_addr(_FuelFlNumMan+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4212 :: 		FuelFlNumMan.TextAlign     = taCenter;
MOVS	R1, #2
MOVW	R0, #lo_addr(_FuelFlNumMan+36)
MOVT	R0, #hi_addr(_FuelFlNumMan+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4213 :: 		FuelFlNumMan.FontName      = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_FuelFlNumMan+40)
MOVT	R0, #hi_addr(_FuelFlNumMan+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4214 :: 		FuelFlNumMan.Font_Color    = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FuelFlNumMan+44)
MOVT	R0, #hi_addr(_FuelFlNumMan+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4215 :: 		FuelFlNumMan.FontHandle    = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_FuelFlNumMan+48)
MOVT	R0, #hi_addr(_FuelFlNumMan+48)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4216 :: 		FuelFlNumMan.Source        = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_FuelFlNumMan+52)
MOVT	R0, #hi_addr(_FuelFlNumMan+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4217 :: 		FuelFlNumMan.Corner_Radius = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_FuelFlNumMan+56)
MOVT	R0, #hi_addr(_FuelFlNumMan+56)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4218 :: 		FuelFlNumMan.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_FuelFlNumMan+57)
MOVT	R0, #hi_addr(_FuelFlNumMan+57)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4219 :: 		FuelFlNumMan.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FuelFlNumMan+60)
MOVT	R0, #hi_addr(_FuelFlNumMan+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4220 :: 		FuelFlNumMan.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FuelFlNumMan+64)
MOVT	R0, #hi_addr(_FuelFlNumMan+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4221 :: 		FuelFlNumMan.OnClick       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FuelFlNumMan+68)
MOVT	R0, #hi_addr(_FuelFlNumMan+68)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4222 :: 		FuelFlNumMan.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FuelFlNumMan+72)
MOVT	R0, #hi_addr(_FuelFlNumMan+72)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4224 :: 		BattVNumMan.OwnerScreen   = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_BattVNumMan+0)
MOVT	R0, #hi_addr(_BattVNumMan+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4225 :: 		BattVNumMan.Order         = 8;
MOVS	R1, #8
MOVW	R0, #lo_addr(_BattVNumMan+4)
MOVT	R0, #hi_addr(_BattVNumMan+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4226 :: 		BattVNumMan.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_BattVNumMan+5)
MOVT	R0, #hi_addr(_BattVNumMan+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4227 :: 		BattVNumMan.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_BattVNumMan+6)
MOVT	R0, #hi_addr(_BattVNumMan+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4228 :: 		BattVNumMan.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_BattVNumMan+7)
MOVT	R0, #hi_addr(_BattVNumMan+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4229 :: 		BattVNumMan.Left          = 155;
MOVS	R1, #155
SXTH	R1, R1
MOVW	R0, #lo_addr(_BattVNumMan+8)
MOVT	R0, #hi_addr(_BattVNumMan+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4230 :: 		BattVNumMan.Top           = 265;
MOVW	R1, #265
SXTH	R1, R1
MOVW	R0, #lo_addr(_BattVNumMan+10)
MOVT	R0, #hi_addr(_BattVNumMan+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4231 :: 		BattVNumMan.Width         = 80;
MOVS	R1, #80
SXTH	R1, R1
MOVW	R0, #lo_addr(_BattVNumMan+12)
MOVT	R0, #hi_addr(_BattVNumMan+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4232 :: 		BattVNumMan.Height        = 30;
MOVS	R1, #30
SXTH	R1, R1
MOVW	R0, #lo_addr(_BattVNumMan+14)
MOVT	R0, #hi_addr(_BattVNumMan+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4233 :: 		BattVNumMan.Pen_Width     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_BattVNumMan+16)
MOVT	R0, #hi_addr(_BattVNumMan+16)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4234 :: 		BattVNumMan.Pen_Color     = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_BattVNumMan+20)
MOVT	R0, #hi_addr(_BattVNumMan+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4235 :: 		BattVNumMan.Color         = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_BattVNumMan+24)
MOVT	R0, #hi_addr(_BattVNumMan+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4236 :: 		BattVNumMan.Press_Color   = 0xE2E2E2;
MOVW	R1, #58082
MOVT	R1, #226
MOVW	R0, #lo_addr(_BattVNumMan+28)
MOVT	R0, #hi_addr(_BattVNumMan+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4237 :: 		BattVNumMan.Caption       = BattVNumMan_Caption;
MOVW	R1, #lo_addr(_BattVNumMan_Caption+0)
MOVT	R1, #hi_addr(_BattVNumMan_Caption+0)
MOVW	R0, #lo_addr(_BattVNumMan+32)
MOVT	R0, #hi_addr(_BattVNumMan+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4238 :: 		BattVNumMan.TextAlign     = taCenter;
MOVS	R1, #2
MOVW	R0, #lo_addr(_BattVNumMan+36)
MOVT	R0, #hi_addr(_BattVNumMan+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4239 :: 		BattVNumMan.FontName      = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_BattVNumMan+40)
MOVT	R0, #hi_addr(_BattVNumMan+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4240 :: 		BattVNumMan.Font_Color    = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_BattVNumMan+44)
MOVT	R0, #hi_addr(_BattVNumMan+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4241 :: 		BattVNumMan.FontHandle    = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_BattVNumMan+48)
MOVT	R0, #hi_addr(_BattVNumMan+48)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4242 :: 		BattVNumMan.Source        = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_BattVNumMan+52)
MOVT	R0, #hi_addr(_BattVNumMan+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4243 :: 		BattVNumMan.Corner_Radius = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_BattVNumMan+56)
MOVT	R0, #hi_addr(_BattVNumMan+56)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4244 :: 		BattVNumMan.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_BattVNumMan+57)
MOVT	R0, #hi_addr(_BattVNumMan+57)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4245 :: 		BattVNumMan.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_BattVNumMan+60)
MOVT	R0, #hi_addr(_BattVNumMan+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4246 :: 		BattVNumMan.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_BattVNumMan+64)
MOVT	R0, #hi_addr(_BattVNumMan+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4247 :: 		BattVNumMan.OnClick       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_BattVNumMan+68)
MOVT	R0, #hi_addr(_BattVNumMan+68)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4248 :: 		BattVNumMan.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_BattVNumMan+72)
MOVT	R0, #hi_addr(_BattVNumMan+72)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4250 :: 		Line7.OwnerScreen    = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_Line7+0)
MOVT	R0, #hi_addr(_Line7+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4251 :: 		Line7.Order          = 9;
MOVS	R1, #9
MOVW	R0, #lo_addr(_Line7+4)
MOVT	R0, #hi_addr(_Line7+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4252 :: 		Line7.Visible        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Line7+5)
MOVT	R0, #hi_addr(_Line7+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4253 :: 		Line7.Opacity        = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Line7+6)
MOVT	R0, #hi_addr(_Line7+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4254 :: 		Line7.Tag            = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Line7+7)
MOVT	R0, #hi_addr(_Line7+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4255 :: 		Line7.First_Point_X  = 20;
MOVS	R1, #20
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line7+8)
MOVT	R0, #hi_addr(_Line7+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4256 :: 		Line7.First_Point_Y  = 315;
MOVW	R1, #315
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line7+10)
MOVT	R0, #hi_addr(_Line7+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4257 :: 		Line7.Second_Point_X = 240;
MOVS	R1, #240
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line7+12)
MOVT	R0, #hi_addr(_Line7+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4258 :: 		Line7.Second_Point_Y = 315;
MOVW	R1, #315
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line7+14)
MOVT	R0, #hi_addr(_Line7+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4259 :: 		Line7.Pen_Width      = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_Line7+16)
MOVT	R0, #hi_addr(_Line7+16)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4260 :: 		Line7.Pen_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Line7+20)
MOVT	R0, #hi_addr(_Line7+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4262 :: 		Line8.OwnerScreen    = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_Line8+0)
MOVT	R0, #hi_addr(_Line8+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4263 :: 		Line8.Order          = 10;
MOVS	R1, #10
MOVW	R0, #lo_addr(_Line8+4)
MOVT	R0, #hi_addr(_Line8+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4264 :: 		Line8.Visible        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Line8+5)
MOVT	R0, #hi_addr(_Line8+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4265 :: 		Line8.Opacity        = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Line8+6)
MOVT	R0, #hi_addr(_Line8+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4266 :: 		Line8.Tag            = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Line8+7)
MOVT	R0, #hi_addr(_Line8+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4267 :: 		Line8.First_Point_X  = 20;
MOVS	R1, #20
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line8+8)
MOVT	R0, #hi_addr(_Line8+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4268 :: 		Line8.First_Point_Y  = 184;
MOVS	R1, #184
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line8+10)
MOVT	R0, #hi_addr(_Line8+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4269 :: 		Line8.Second_Point_X = 240;
MOVS	R1, #240
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line8+12)
MOVT	R0, #hi_addr(_Line8+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4270 :: 		Line8.Second_Point_Y = 184;
MOVS	R1, #184
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line8+14)
MOVT	R0, #hi_addr(_Line8+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4271 :: 		Line8.Pen_Width      = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_Line8+16)
MOVT	R0, #hi_addr(_Line8+16)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4272 :: 		Line8.Pen_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Line8+20)
MOVT	R0, #hi_addr(_Line8+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4274 :: 		Line9.OwnerScreen    = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_Line9+0)
MOVT	R0, #hi_addr(_Line9+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4275 :: 		Line9.Order          = 11;
MOVS	R1, #11
MOVW	R0, #lo_addr(_Line9+4)
MOVT	R0, #hi_addr(_Line9+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4276 :: 		Line9.Visible        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Line9+5)
MOVT	R0, #hi_addr(_Line9+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4277 :: 		Line9.Opacity        = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Line9+6)
MOVT	R0, #hi_addr(_Line9+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4278 :: 		Line9.Tag            = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Line9+7)
MOVT	R0, #hi_addr(_Line9+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4279 :: 		Line9.First_Point_X  = 100;
MOVS	R1, #100
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line9+8)
MOVT	R0, #hi_addr(_Line9+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4280 :: 		Line9.First_Point_Y  = 325;
MOVW	R1, #325
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line9+10)
MOVT	R0, #hi_addr(_Line9+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4281 :: 		Line9.Second_Point_X = 100;
MOVS	R1, #100
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line9+12)
MOVT	R0, #hi_addr(_Line9+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4282 :: 		Line9.Second_Point_Y = 470;
MOVW	R1, #470
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line9+14)
MOVT	R0, #hi_addr(_Line9+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4283 :: 		Line9.Pen_Width      = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_Line9+16)
MOVT	R0, #hi_addr(_Line9+16)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4284 :: 		Line9.Pen_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Line9+20)
MOVT	R0, #hi_addr(_Line9+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4286 :: 		Label35.OwnerScreen = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_Label35+0)
MOVT	R0, #hi_addr(_Label35+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4287 :: 		Label35.Order       = 12;
MOVS	R1, #12
MOVW	R0, #lo_addr(_Label35+4)
MOVT	R0, #hi_addr(_Label35+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4288 :: 		Label35.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label35+5)
MOVT	R0, #hi_addr(_Label35+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4289 :: 		Label35.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label35+6)
MOVT	R0, #hi_addr(_Label35+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4290 :: 		Label35.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label35+7)
MOVT	R0, #hi_addr(_Label35+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4291 :: 		Label35.Left        = 45;
MOVS	R1, #45
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label35+8)
MOVT	R0, #hi_addr(_Label35+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4292 :: 		Label35.Top         = 10;
MOVS	R1, #10
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label35+10)
MOVT	R0, #hi_addr(_Label35+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4293 :: 		Label35.Width       = 153;
MOVS	R1, #153
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label35+12)
MOVT	R0, #hi_addr(_Label35+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4294 :: 		Label35.Height      = 25;
MOVS	R1, #25
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label35+14)
MOVT	R0, #hi_addr(_Label35+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4295 :: 		Label35.Caption     = Label35_Caption;
MOVW	R1, #lo_addr(_Label35_Caption+0)
MOVT	R1, #hi_addr(_Label35_Caption+0)
MOVW	R0, #lo_addr(_Label35+16)
MOVT	R0, #hi_addr(_Label35+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4296 :: 		Label35.FontName    = Tahoma_19x23_Regular;
MOVW	R1, #10036
MOVW	R0, #lo_addr(_Label35+20)
MOVT	R0, #hi_addr(_Label35+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4297 :: 		Label35.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label35+24)
MOVT	R0, #hi_addr(_Label35+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4298 :: 		Label35.FontHandle  = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_Label35+28)
MOVT	R0, #hi_addr(_Label35+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4299 :: 		Label35.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label35+32)
MOVT	R0, #hi_addr(_Label35+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4300 :: 		Label35.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label35+36)
MOVT	R0, #hi_addr(_Label35+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4301 :: 		Label35.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label35+40)
MOVT	R0, #hi_addr(_Label35+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4302 :: 		Label35.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label35+44)
MOVT	R0, #hi_addr(_Label35+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4303 :: 		Label35.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label35+48)
MOVT	R0, #hi_addr(_Label35+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4304 :: 		Label35.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label35+52)
MOVT	R0, #hi_addr(_Label35+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4306 :: 		Label36.OwnerScreen = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_Label36+0)
MOVT	R0, #hi_addr(_Label36+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4307 :: 		Label36.Order       = 13;
MOVS	R1, #13
MOVW	R0, #lo_addr(_Label36+4)
MOVT	R0, #hi_addr(_Label36+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4308 :: 		Label36.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label36+5)
MOVT	R0, #hi_addr(_Label36+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4309 :: 		Label36.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label36+6)
MOVT	R0, #hi_addr(_Label36+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4310 :: 		Label36.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label36+7)
MOVT	R0, #hi_addr(_Label36+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4311 :: 		Label36.Left        = 20;
MOVS	R1, #20
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label36+8)
MOVT	R0, #hi_addr(_Label36+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4312 :: 		Label36.Top         = 45;
MOVS	R1, #45
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label36+10)
MOVT	R0, #hi_addr(_Label36+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4313 :: 		Label36.Width       = 56;
MOVS	R1, #56
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label36+12)
MOVT	R0, #hi_addr(_Label36+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4314 :: 		Label36.Height      = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label36+14)
MOVT	R0, #hi_addr(_Label36+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4315 :: 		Label36.Caption     = Label36_Caption;
MOVW	R1, #lo_addr(_Label36_Caption+0)
MOVT	R1, #hi_addr(_Label36_Caption+0)
MOVW	R0, #lo_addr(_Label36+16)
MOVT	R0, #hi_addr(_Label36+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4316 :: 		Label36.FontName    = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_Label36+20)
MOVT	R0, #hi_addr(_Label36+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4317 :: 		Label36.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label36+24)
MOVT	R0, #hi_addr(_Label36+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4318 :: 		Label36.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label36+28)
MOVT	R0, #hi_addr(_Label36+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4319 :: 		Label36.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label36+32)
MOVT	R0, #hi_addr(_Label36+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4320 :: 		Label36.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label36+36)
MOVT	R0, #hi_addr(_Label36+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4321 :: 		Label36.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label36+40)
MOVT	R0, #hi_addr(_Label36+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4322 :: 		Label36.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label36+44)
MOVT	R0, #hi_addr(_Label36+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4323 :: 		Label36.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label36+48)
MOVT	R0, #hi_addr(_Label36+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4324 :: 		Label36.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label36+52)
MOVT	R0, #hi_addr(_Label36+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4326 :: 		Label37.OwnerScreen = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_Label37+0)
MOVT	R0, #hi_addr(_Label37+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4327 :: 		Label37.Order       = 14;
MOVS	R1, #14
MOVW	R0, #lo_addr(_Label37+4)
MOVT	R0, #hi_addr(_Label37+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4328 :: 		Label37.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label37+5)
MOVT	R0, #hi_addr(_Label37+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4329 :: 		Label37.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label37+6)
MOVT	R0, #hi_addr(_Label37+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4330 :: 		Label37.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label37+7)
MOVT	R0, #hi_addr(_Label37+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4331 :: 		Label37.Left        = 20;
MOVS	R1, #20
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label37+8)
MOVT	R0, #hi_addr(_Label37+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4332 :: 		Label37.Top         = 80;
MOVS	R1, #80
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label37+10)
MOVT	R0, #hi_addr(_Label37+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4333 :: 		Label37.Width       = 106;
MOVS	R1, #106
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label37+12)
MOVT	R0, #hi_addr(_Label37+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4334 :: 		Label37.Height      = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label37+14)
MOVT	R0, #hi_addr(_Label37+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4335 :: 		Label37.Caption     = Label37_Caption;
MOVW	R1, #lo_addr(_Label37_Caption+0)
MOVT	R1, #hi_addr(_Label37_Caption+0)
MOVW	R0, #lo_addr(_Label37+16)
MOVT	R0, #hi_addr(_Label37+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4336 :: 		Label37.FontName    = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_Label37+20)
MOVT	R0, #hi_addr(_Label37+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4337 :: 		Label37.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label37+24)
MOVT	R0, #hi_addr(_Label37+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4338 :: 		Label37.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label37+28)
MOVT	R0, #hi_addr(_Label37+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4339 :: 		Label37.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label37+32)
MOVT	R0, #hi_addr(_Label37+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4340 :: 		Label37.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label37+36)
MOVT	R0, #hi_addr(_Label37+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4341 :: 		Label37.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label37+40)
MOVT	R0, #hi_addr(_Label37+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4342 :: 		Label37.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label37+44)
MOVT	R0, #hi_addr(_Label37+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4343 :: 		Label37.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label37+48)
MOVT	R0, #hi_addr(_Label37+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4344 :: 		Label37.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label37+52)
MOVT	R0, #hi_addr(_Label37+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4346 :: 		Label38.OwnerScreen = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_Label38+0)
MOVT	R0, #hi_addr(_Label38+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4347 :: 		Label38.Order       = 15;
MOVS	R1, #15
MOVW	R0, #lo_addr(_Label38+4)
MOVT	R0, #hi_addr(_Label38+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4348 :: 		Label38.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label38+5)
MOVT	R0, #hi_addr(_Label38+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4349 :: 		Label38.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label38+6)
MOVT	R0, #hi_addr(_Label38+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4350 :: 		Label38.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label38+7)
MOVT	R0, #hi_addr(_Label38+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4351 :: 		Label38.Left        = 20;
MOVS	R1, #20
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label38+8)
MOVT	R0, #hi_addr(_Label38+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4352 :: 		Label38.Top         = 115;
MOVS	R1, #115
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label38+10)
MOVT	R0, #hi_addr(_Label38+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4353 :: 		Label38.Width       = 129;
MOVS	R1, #129
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label38+12)
MOVT	R0, #hi_addr(_Label38+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4354 :: 		Label38.Height      = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label38+14)
MOVT	R0, #hi_addr(_Label38+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4355 :: 		Label38.Caption     = Label38_Caption;
MOVW	R1, #lo_addr(_Label38_Caption+0)
MOVT	R1, #hi_addr(_Label38_Caption+0)
MOVW	R0, #lo_addr(_Label38+16)
MOVT	R0, #hi_addr(_Label38+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4356 :: 		Label38.FontName    = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_Label38+20)
MOVT	R0, #hi_addr(_Label38+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4357 :: 		Label38.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label38+24)
MOVT	R0, #hi_addr(_Label38+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4358 :: 		Label38.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label38+28)
MOVT	R0, #hi_addr(_Label38+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4359 :: 		Label38.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label38+32)
MOVT	R0, #hi_addr(_Label38+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4360 :: 		Label38.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label38+36)
MOVT	R0, #hi_addr(_Label38+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4361 :: 		Label38.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label38+40)
MOVT	R0, #hi_addr(_Label38+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4362 :: 		Label38.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label38+44)
MOVT	R0, #hi_addr(_Label38+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4363 :: 		Label38.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label38+48)
MOVT	R0, #hi_addr(_Label38+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4364 :: 		Label38.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label38+52)
MOVT	R0, #hi_addr(_Label38+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4366 :: 		Label39.OwnerScreen = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_Label39+0)
MOVT	R0, #hi_addr(_Label39+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4367 :: 		Label39.Order       = 16;
MOVS	R1, #16
MOVW	R0, #lo_addr(_Label39+4)
MOVT	R0, #hi_addr(_Label39+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4368 :: 		Label39.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label39+5)
MOVT	R0, #hi_addr(_Label39+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4369 :: 		Label39.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label39+6)
MOVT	R0, #hi_addr(_Label39+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4370 :: 		Label39.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label39+7)
MOVT	R0, #hi_addr(_Label39+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4371 :: 		Label39.Left        = 19;
MOVS	R1, #19
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label39+8)
MOVT	R0, #hi_addr(_Label39+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4372 :: 		Label39.Top         = 150;
MOVS	R1, #150
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label39+10)
MOVT	R0, #hi_addr(_Label39+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4373 :: 		Label39.Width       = 111;
MOVS	R1, #111
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label39+12)
MOVT	R0, #hi_addr(_Label39+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4374 :: 		Label39.Height      = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label39+14)
MOVT	R0, #hi_addr(_Label39+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4375 :: 		Label39.Caption     = Label39_Caption;
MOVW	R1, #lo_addr(_Label39_Caption+0)
MOVT	R1, #hi_addr(_Label39_Caption+0)
MOVW	R0, #lo_addr(_Label39+16)
MOVT	R0, #hi_addr(_Label39+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4376 :: 		Label39.FontName    = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_Label39+20)
MOVT	R0, #hi_addr(_Label39+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4377 :: 		Label39.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label39+24)
MOVT	R0, #hi_addr(_Label39+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4378 :: 		Label39.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label39+28)
MOVT	R0, #hi_addr(_Label39+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4379 :: 		Label39.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label39+32)
MOVT	R0, #hi_addr(_Label39+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4380 :: 		Label39.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label39+36)
MOVT	R0, #hi_addr(_Label39+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4381 :: 		Label39.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label39+40)
MOVT	R0, #hi_addr(_Label39+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4382 :: 		Label39.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label39+44)
MOVT	R0, #hi_addr(_Label39+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4383 :: 		Label39.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label39+48)
MOVT	R0, #hi_addr(_Label39+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4384 :: 		Label39.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label39+52)
MOVT	R0, #hi_addr(_Label39+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4386 :: 		Label40.OwnerScreen = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_Label40+0)
MOVT	R0, #hi_addr(_Label40+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4387 :: 		Label40.Order       = 17;
MOVS	R1, #17
MOVW	R0, #lo_addr(_Label40+4)
MOVT	R0, #hi_addr(_Label40+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4388 :: 		Label40.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label40+5)
MOVT	R0, #hi_addr(_Label40+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4389 :: 		Label40.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label40+6)
MOVT	R0, #hi_addr(_Label40+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4390 :: 		Label40.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label40+7)
MOVT	R0, #hi_addr(_Label40+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4391 :: 		Label40.Left        = 20;
MOVS	R1, #20
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label40+8)
MOVT	R0, #hi_addr(_Label40+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4392 :: 		Label40.Top         = 200;
MOVS	R1, #200
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label40+10)
MOVT	R0, #hi_addr(_Label40+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4393 :: 		Label40.Width       = 69;
MOVS	R1, #69
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label40+12)
MOVT	R0, #hi_addr(_Label40+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4394 :: 		Label40.Height      = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label40+14)
MOVT	R0, #hi_addr(_Label40+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4395 :: 		Label40.Caption     = Label40_Caption;
MOVW	R1, #lo_addr(_Label40_Caption+0)
MOVT	R1, #hi_addr(_Label40_Caption+0)
MOVW	R0, #lo_addr(_Label40+16)
MOVT	R0, #hi_addr(_Label40+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4396 :: 		Label40.FontName    = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_Label40+20)
MOVT	R0, #hi_addr(_Label40+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4397 :: 		Label40.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label40+24)
MOVT	R0, #hi_addr(_Label40+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4398 :: 		Label40.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label40+28)
MOVT	R0, #hi_addr(_Label40+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4399 :: 		Label40.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label40+32)
MOVT	R0, #hi_addr(_Label40+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4400 :: 		Label40.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label40+36)
MOVT	R0, #hi_addr(_Label40+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4401 :: 		Label40.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label40+40)
MOVT	R0, #hi_addr(_Label40+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4402 :: 		Label40.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label40+44)
MOVT	R0, #hi_addr(_Label40+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4403 :: 		Label40.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label40+48)
MOVT	R0, #hi_addr(_Label40+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4404 :: 		Label40.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label40+52)
MOVT	R0, #hi_addr(_Label40+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4406 :: 		Label41.OwnerScreen = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_Label41+0)
MOVT	R0, #hi_addr(_Label41+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4407 :: 		Label41.Order       = 18;
MOVS	R1, #18
MOVW	R0, #lo_addr(_Label41+4)
MOVT	R0, #hi_addr(_Label41+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4408 :: 		Label41.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label41+5)
MOVT	R0, #hi_addr(_Label41+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4409 :: 		Label41.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label41+6)
MOVT	R0, #hi_addr(_Label41+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4410 :: 		Label41.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label41+7)
MOVT	R0, #hi_addr(_Label41+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4411 :: 		Label41.Left        = 20;
MOVS	R1, #20
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label41+8)
MOVT	R0, #hi_addr(_Label41+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4412 :: 		Label41.Top         = 235;
MOVS	R1, #235
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label41+10)
MOVT	R0, #hi_addr(_Label41+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4413 :: 		Label41.Width       = 127;
MOVS	R1, #127
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label41+12)
MOVT	R0, #hi_addr(_Label41+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4414 :: 		Label41.Height      = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label41+14)
MOVT	R0, #hi_addr(_Label41+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4415 :: 		Label41.Caption     = Label41_Caption;
MOVW	R1, #lo_addr(_Label41_Caption+0)
MOVT	R1, #hi_addr(_Label41_Caption+0)
MOVW	R0, #lo_addr(_Label41+16)
MOVT	R0, #hi_addr(_Label41+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4416 :: 		Label41.FontName    = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_Label41+20)
MOVT	R0, #hi_addr(_Label41+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4417 :: 		Label41.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label41+24)
MOVT	R0, #hi_addr(_Label41+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4418 :: 		Label41.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label41+28)
MOVT	R0, #hi_addr(_Label41+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4419 :: 		Label41.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label41+32)
MOVT	R0, #hi_addr(_Label41+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4420 :: 		Label41.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label41+36)
MOVT	R0, #hi_addr(_Label41+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4421 :: 		Label41.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label41+40)
MOVT	R0, #hi_addr(_Label41+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4422 :: 		Label41.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label41+44)
MOVT	R0, #hi_addr(_Label41+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4423 :: 		Label41.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label41+48)
MOVT	R0, #hi_addr(_Label41+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4424 :: 		Label41.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label41+52)
MOVT	R0, #hi_addr(_Label41+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4426 :: 		Label42.OwnerScreen = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_Label42+0)
MOVT	R0, #hi_addr(_Label42+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4427 :: 		Label42.Order       = 19;
MOVS	R1, #19
MOVW	R0, #lo_addr(_Label42+4)
MOVT	R0, #hi_addr(_Label42+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4428 :: 		Label42.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label42+5)
MOVT	R0, #hi_addr(_Label42+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4429 :: 		Label42.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label42+6)
MOVT	R0, #hi_addr(_Label42+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4430 :: 		Label42.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label42+7)
MOVT	R0, #hi_addr(_Label42+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4431 :: 		Label42.Left        = 20;
MOVS	R1, #20
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label42+8)
MOVT	R0, #hi_addr(_Label42+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4432 :: 		Label42.Top         = 270;
MOVW	R1, #270
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label42+10)
MOVT	R0, #hi_addr(_Label42+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4433 :: 		Label42.Width       = 130;
MOVS	R1, #130
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label42+12)
MOVT	R0, #hi_addr(_Label42+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4434 :: 		Label42.Height      = 17;
MOVS	R1, #17
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label42+14)
MOVT	R0, #hi_addr(_Label42+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4435 :: 		Label42.Caption     = Label42_Caption;
MOVW	R1, #lo_addr(_Label42_Caption+0)
MOVT	R1, #hi_addr(_Label42_Caption+0)
MOVW	R0, #lo_addr(_Label42+16)
MOVT	R0, #hi_addr(_Label42+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4436 :: 		Label42.FontName    = Tahoma_14x16_Bold;
MOVW	R1, #611
MOVW	R0, #lo_addr(_Label42+20)
MOVT	R0, #hi_addr(_Label42+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4437 :: 		Label42.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label42+24)
MOVT	R0, #hi_addr(_Label42+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4438 :: 		Label42.FontHandle  = 4;
MOVS	R1, #4
MOVW	R0, #lo_addr(_Label42+28)
MOVT	R0, #hi_addr(_Label42+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4439 :: 		Label42.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label42+32)
MOVT	R0, #hi_addr(_Label42+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4440 :: 		Label42.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label42+36)
MOVT	R0, #hi_addr(_Label42+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4441 :: 		Label42.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label42+40)
MOVT	R0, #hi_addr(_Label42+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4442 :: 		Label42.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label42+44)
MOVT	R0, #hi_addr(_Label42+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4443 :: 		Label42.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label42+48)
MOVT	R0, #hi_addr(_Label42+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4444 :: 		Label42.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label42+52)
MOVT	R0, #hi_addr(_Label42+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4446 :: 		Image7.OwnerScreen   = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_Image7+0)
MOVT	R0, #hi_addr(_Image7+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4447 :: 		Image7.Order         = 20;
MOVS	R1, #20
MOVW	R0, #lo_addr(_Image7+4)
MOVT	R0, #hi_addr(_Image7+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4448 :: 		Image7.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Image7+5)
MOVT	R0, #hi_addr(_Image7+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4449 :: 		Image7.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Image7+6)
MOVT	R0, #hi_addr(_Image7+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4450 :: 		Image7.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Image7+7)
MOVT	R0, #hi_addr(_Image7+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4451 :: 		Image7.Left          = 735;
MOVW	R1, #735
SXTH	R1, R1
MOVW	R0, #lo_addr(_Image7+8)
MOVT	R0, #hi_addr(_Image7+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4452 :: 		Image7.Top           = 25;
MOVS	R1, #25
SXTH	R1, R1
MOVW	R0, #lo_addr(_Image7+10)
MOVT	R0, #hi_addr(_Image7+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4453 :: 		Image7.Width         = 36;
MOVS	R1, #36
SXTH	R1, R1
MOVW	R0, #lo_addr(_Image7+12)
MOVT	R0, #hi_addr(_Image7+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4454 :: 		Image7.Height        = 36;
MOVS	R1, #36
SXTH	R1, R1
MOVW	R0, #lo_addr(_Image7+14)
MOVT	R0, #hi_addr(_Image7+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4455 :: 		Image7.Picture_Name  = fuel_dispensersm_bmp;
MOVW	R1, #63642
MOVW	R0, #lo_addr(_Image7+16)
MOVT	R0, #hi_addr(_Image7+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4456 :: 		Image7.Picture_Type  = 7;
MOVS	R1, #7
MOVW	R0, #lo_addr(_Image7+20)
MOVT	R0, #hi_addr(_Image7+20)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4457 :: 		Image7.Picture_Ratio = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Image7+21)
MOVT	R0, #hi_addr(_Image7+21)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4458 :: 		Image7.Blend_Color   = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_Image7+24)
MOVT	R0, #hi_addr(_Image7+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4459 :: 		Image7.Source        = -1L;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Image7+28)
MOVT	R0, #hi_addr(_Image7+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4460 :: 		Image7.RotationAngle = 0;
MOVS	R1, #0
SXTH	R1, R1
MOVW	R0, #lo_addr(_Image7+32)
MOVT	R0, #hi_addr(_Image7+32)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4461 :: 		Image7.RotationCenterLeft = 753;
MOVW	R1, #753
SXTH	R1, R1
MOVW	R0, #lo_addr(_Image7+34)
MOVT	R0, #hi_addr(_Image7+34)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4462 :: 		Image7.RotationCenterTop = 43;
MOVS	R1, #43
SXTH	R1, R1
MOVW	R0, #lo_addr(_Image7+36)
MOVT	R0, #hi_addr(_Image7+36)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4463 :: 		Image7.ScaleX        = 1.0000;
VMOV.F32	S0, #1
MOVW	R0, #lo_addr(_Image7+40)
MOVT	R0, #hi_addr(_Image7+40)
VSTR	#1, S0, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4464 :: 		Image7.ScaleY        = 1.0000;
VMOV.F32	S0, #1
MOVW	R0, #lo_addr(_Image7+44)
MOVT	R0, #hi_addr(_Image7+44)
VSTR	#1, S0, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4465 :: 		Image7.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Image7+48)
MOVT	R0, #hi_addr(_Image7+48)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4466 :: 		Image7.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Image7+52)
MOVT	R0, #hi_addr(_Image7+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4467 :: 		Image7.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Image7+56)
MOVT	R0, #hi_addr(_Image7+56)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4468 :: 		Image7.OnClick       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Image7+60)
MOVT	R0, #hi_addr(_Image7+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4469 :: 		Image7.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Image7+64)
MOVT	R0, #hi_addr(_Image7+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4471 :: 		Image8.OwnerScreen   = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_Image8+0)
MOVT	R0, #hi_addr(_Image8+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4472 :: 		Image8.Order         = 21;
MOVS	R1, #21
MOVW	R0, #lo_addr(_Image8+4)
MOVT	R0, #hi_addr(_Image8+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4473 :: 		Image8.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Image8+5)
MOVT	R0, #hi_addr(_Image8+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4474 :: 		Image8.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Image8+6)
MOVT	R0, #hi_addr(_Image8+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4475 :: 		Image8.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Image8+7)
MOVT	R0, #hi_addr(_Image8+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4476 :: 		Image8.Left          = 729;
MOVW	R1, #729
SXTH	R1, R1
MOVW	R0, #lo_addr(_Image8+8)
MOVT	R0, #hi_addr(_Image8+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4477 :: 		Image8.Top           = 64;
MOVS	R1, #64
SXTH	R1, R1
MOVW	R0, #lo_addr(_Image8+10)
MOVT	R0, #hi_addr(_Image8+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4478 :: 		Image8.Width         = 50;
MOVS	R1, #50
SXTH	R1, R1
MOVW	R0, #lo_addr(_Image8+12)
MOVT	R0, #hi_addr(_Image8+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4479 :: 		Image8.Height        = 50;
MOVS	R1, #50
SXTH	R1, R1
MOVW	R0, #lo_addr(_Image8+14)
MOVT	R0, #hi_addr(_Image8+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4480 :: 		Image8.Picture_Name  = CarOilsm_bmp;
MOVW	R1, #704
MOVT	R1, #1
MOVW	R0, #lo_addr(_Image8+16)
MOVT	R0, #hi_addr(_Image8+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4481 :: 		Image8.Picture_Type  = 7;
MOVS	R1, #7
MOVW	R0, #lo_addr(_Image8+20)
MOVT	R0, #hi_addr(_Image8+20)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4482 :: 		Image8.Picture_Ratio = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Image8+21)
MOVT	R0, #hi_addr(_Image8+21)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4483 :: 		Image8.Blend_Color   = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_Image8+24)
MOVT	R0, #hi_addr(_Image8+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4484 :: 		Image8.Source        = -1L;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Image8+28)
MOVT	R0, #hi_addr(_Image8+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4485 :: 		Image8.RotationAngle = 0;
MOVS	R1, #0
SXTH	R1, R1
MOVW	R0, #lo_addr(_Image8+32)
MOVT	R0, #hi_addr(_Image8+32)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4486 :: 		Image8.RotationCenterLeft = 754;
MOVW	R1, #754
SXTH	R1, R1
MOVW	R0, #lo_addr(_Image8+34)
MOVT	R0, #hi_addr(_Image8+34)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4487 :: 		Image8.RotationCenterTop = 89;
MOVS	R1, #89
SXTH	R1, R1
MOVW	R0, #lo_addr(_Image8+36)
MOVT	R0, #hi_addr(_Image8+36)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4488 :: 		Image8.ScaleX        = 1.0000;
VMOV.F32	S0, #1
MOVW	R0, #lo_addr(_Image8+40)
MOVT	R0, #hi_addr(_Image8+40)
VSTR	#1, S0, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4489 :: 		Image8.ScaleY        = 1.0000;
VMOV.F32	S0, #1
MOVW	R0, #lo_addr(_Image8+44)
MOVT	R0, #hi_addr(_Image8+44)
VSTR	#1, S0, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4490 :: 		Image8.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Image8+48)
MOVT	R0, #hi_addr(_Image8+48)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4491 :: 		Image8.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Image8+52)
MOVT	R0, #hi_addr(_Image8+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4492 :: 		Image8.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Image8+56)
MOVT	R0, #hi_addr(_Image8+56)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4493 :: 		Image8.OnClick       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Image8+60)
MOVT	R0, #hi_addr(_Image8+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4494 :: 		Image8.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Image8+64)
MOVT	R0, #hi_addr(_Image8+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4496 :: 		FuelPrgMan.OwnerScreen      = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_FuelPrgMan+0)
MOVT	R0, #hi_addr(_FuelPrgMan+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4497 :: 		FuelPrgMan.Order            = 22;
MOVS	R1, #22
MOVW	R0, #lo_addr(_FuelPrgMan+4)
MOVT	R0, #hi_addr(_FuelPrgMan+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4498 :: 		FuelPrgMan.Visible          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_FuelPrgMan+5)
MOVT	R0, #hi_addr(_FuelPrgMan+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4499 :: 		FuelPrgMan.Opacity          = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_FuelPrgMan+6)
MOVT	R0, #hi_addr(_FuelPrgMan+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4500 :: 		FuelPrgMan.Tag              = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_FuelPrgMan+7)
MOVT	R0, #hi_addr(_FuelPrgMan+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4501 :: 		FuelPrgMan.Left             = 570;
MOVW	R1, #570
SXTH	R1, R1
MOVW	R0, #lo_addr(_FuelPrgMan+8)
MOVT	R0, #hi_addr(_FuelPrgMan+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4502 :: 		FuelPrgMan.Top              = 25;
MOVS	R1, #25
SXTH	R1, R1
MOVW	R0, #lo_addr(_FuelPrgMan+10)
MOVT	R0, #hi_addr(_FuelPrgMan+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4503 :: 		FuelPrgMan.Width            = 150;
MOVS	R1, #150
SXTH	R1, R1
MOVW	R0, #lo_addr(_FuelPrgMan+12)
MOVT	R0, #hi_addr(_FuelPrgMan+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4504 :: 		FuelPrgMan.Height           = 30;
MOVS	R1, #30
SXTH	R1, R1
MOVW	R0, #lo_addr(_FuelPrgMan+14)
MOVT	R0, #hi_addr(_FuelPrgMan+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4505 :: 		FuelPrgMan.Pen_Width        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_FuelPrgMan+16)
MOVT	R0, #hi_addr(_FuelPrgMan+16)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4506 :: 		FuelPrgMan.Pen_Color        = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FuelPrgMan+20)
MOVT	R0, #hi_addr(_FuelPrgMan+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4507 :: 		FuelPrgMan.Background_Color = 0xC0C0C0;
MOVW	R1, #49344
MOVT	R1, #192
MOVW	R0, #lo_addr(_FuelPrgMan+24)
MOVT	R0, #hi_addr(_FuelPrgMan+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4508 :: 		FuelPrgMan.Color            = 0x80FF;
MOVW	R1, #33023
MOVW	R0, #lo_addr(_FuelPrgMan+28)
MOVT	R0, #hi_addr(_FuelPrgMan+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4509 :: 		FuelPrgMan.Caption          = FuelPrgMan_Caption;
MOVW	R1, #lo_addr(_FuelPrgMan_Caption+0)
MOVT	R1, #hi_addr(_FuelPrgMan_Caption+0)
MOVW	R0, #lo_addr(_FuelPrgMan+32)
MOVT	R0, #hi_addr(_FuelPrgMan+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4510 :: 		FuelPrgMan.FontName         = Tahoma_25x25_Bold;
MOVW	R1, #31885
MOVW	R0, #lo_addr(_FuelPrgMan+36)
MOVT	R0, #hi_addr(_FuelPrgMan+36)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4511 :: 		FuelPrgMan.Font_Color       = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FuelPrgMan+40)
MOVT	R0, #hi_addr(_FuelPrgMan+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4512 :: 		FuelPrgMan.FontHandle       = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_FuelPrgMan+44)
MOVT	R0, #hi_addr(_FuelPrgMan+44)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4513 :: 		FuelPrgMan.Source           = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_FuelPrgMan+48)
MOVT	R0, #hi_addr(_FuelPrgMan+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4514 :: 		FuelPrgMan.Corner_Radius    = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_FuelPrgMan+52)
MOVT	R0, #hi_addr(_FuelPrgMan+52)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4515 :: 		FuelPrgMan.Min              = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FuelPrgMan+54)
MOVT	R0, #hi_addr(_FuelPrgMan+54)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4516 :: 		FuelPrgMan.Max              = 100;
MOVS	R1, #100
MOVW	R0, #lo_addr(_FuelPrgMan+56)
MOVT	R0, #hi_addr(_FuelPrgMan+56)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4517 :: 		FuelPrgMan.Position         = 50;
MOVS	R1, #50
MOVW	R0, #lo_addr(_FuelPrgMan+58)
MOVT	R0, #hi_addr(_FuelPrgMan+58)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4518 :: 		FuelPrgMan.Show_Position    = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_FuelPrgMan+60)
MOVT	R0, #hi_addr(_FuelPrgMan+60)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4519 :: 		FuelPrgMan.Show_Percentage  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_FuelPrgMan+61)
MOVT	R0, #hi_addr(_FuelPrgMan+61)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4520 :: 		FuelPrgMan.Smooth           = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_FuelPrgMan+62)
MOVT	R0, #hi_addr(_FuelPrgMan+62)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4522 :: 		OilPrgMan.OwnerScreen      = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_OilPrgMan+0)
MOVT	R0, #hi_addr(_OilPrgMan+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4523 :: 		OilPrgMan.Order            = 23;
MOVS	R1, #23
MOVW	R0, #lo_addr(_OilPrgMan+4)
MOVT	R0, #hi_addr(_OilPrgMan+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4524 :: 		OilPrgMan.Visible          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_OilPrgMan+5)
MOVT	R0, #hi_addr(_OilPrgMan+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4525 :: 		OilPrgMan.Opacity          = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_OilPrgMan+6)
MOVT	R0, #hi_addr(_OilPrgMan+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4526 :: 		OilPrgMan.Tag              = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_OilPrgMan+7)
MOVT	R0, #hi_addr(_OilPrgMan+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4527 :: 		OilPrgMan.Left             = 570;
MOVW	R1, #570
SXTH	R1, R1
MOVW	R0, #lo_addr(_OilPrgMan+8)
MOVT	R0, #hi_addr(_OilPrgMan+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4528 :: 		OilPrgMan.Top              = 75;
MOVS	R1, #75
SXTH	R1, R1
MOVW	R0, #lo_addr(_OilPrgMan+10)
MOVT	R0, #hi_addr(_OilPrgMan+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4529 :: 		OilPrgMan.Width            = 150;
MOVS	R1, #150
SXTH	R1, R1
MOVW	R0, #lo_addr(_OilPrgMan+12)
MOVT	R0, #hi_addr(_OilPrgMan+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4530 :: 		OilPrgMan.Height           = 30;
MOVS	R1, #30
SXTH	R1, R1
MOVW	R0, #lo_addr(_OilPrgMan+14)
MOVT	R0, #hi_addr(_OilPrgMan+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4531 :: 		OilPrgMan.Pen_Width        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_OilPrgMan+16)
MOVT	R0, #hi_addr(_OilPrgMan+16)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4532 :: 		OilPrgMan.Pen_Color        = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_OilPrgMan+20)
MOVT	R0, #hi_addr(_OilPrgMan+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4533 :: 		OilPrgMan.Background_Color = 0xC0C0C0;
MOVW	R1, #49344
MOVT	R1, #192
MOVW	R0, #lo_addr(_OilPrgMan+24)
MOVT	R0, #hi_addr(_OilPrgMan+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4534 :: 		OilPrgMan.Color            = 0x80FF;
MOVW	R1, #33023
MOVW	R0, #lo_addr(_OilPrgMan+28)
MOVT	R0, #hi_addr(_OilPrgMan+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4535 :: 		OilPrgMan.Caption          = OilPrgMan_Caption;
MOVW	R1, #lo_addr(_OilPrgMan_Caption+0)
MOVT	R1, #hi_addr(_OilPrgMan_Caption+0)
MOVW	R0, #lo_addr(_OilPrgMan+32)
MOVT	R0, #hi_addr(_OilPrgMan+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4536 :: 		OilPrgMan.FontName         = Tahoma_25x25_Bold;
MOVW	R1, #31885
MOVW	R0, #lo_addr(_OilPrgMan+36)
MOVT	R0, #hi_addr(_OilPrgMan+36)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4537 :: 		OilPrgMan.Font_Color       = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_OilPrgMan+40)
MOVT	R0, #hi_addr(_OilPrgMan+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4538 :: 		OilPrgMan.FontHandle       = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_OilPrgMan+44)
MOVT	R0, #hi_addr(_OilPrgMan+44)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4539 :: 		OilPrgMan.Source           = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_OilPrgMan+48)
MOVT	R0, #hi_addr(_OilPrgMan+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4540 :: 		OilPrgMan.Corner_Radius    = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_OilPrgMan+52)
MOVT	R0, #hi_addr(_OilPrgMan+52)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4541 :: 		OilPrgMan.Min              = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_OilPrgMan+54)
MOVT	R0, #hi_addr(_OilPrgMan+54)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4542 :: 		OilPrgMan.Max              = 100;
MOVS	R1, #100
MOVW	R0, #lo_addr(_OilPrgMan+56)
MOVT	R0, #hi_addr(_OilPrgMan+56)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4543 :: 		OilPrgMan.Position         = 50;
MOVS	R1, #50
MOVW	R0, #lo_addr(_OilPrgMan+58)
MOVT	R0, #hi_addr(_OilPrgMan+58)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4544 :: 		OilPrgMan.Show_Position    = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_OilPrgMan+60)
MOVT	R0, #hi_addr(_OilPrgMan+60)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4545 :: 		OilPrgMan.Show_Percentage  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_OilPrgMan+61)
MOVT	R0, #hi_addr(_OilPrgMan+61)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4546 :: 		OilPrgMan.Smooth           = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_OilPrgMan+62)
MOVT	R0, #hi_addr(_OilPrgMan+62)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4548 :: 		ThrPrgMan.OwnerScreen      = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_ThrPrgMan+0)
MOVT	R0, #hi_addr(_ThrPrgMan+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4549 :: 		ThrPrgMan.Order            = 24;
MOVS	R1, #24
MOVW	R0, #lo_addr(_ThrPrgMan+4)
MOVT	R0, #hi_addr(_ThrPrgMan+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4550 :: 		ThrPrgMan.Visible          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ThrPrgMan+5)
MOVT	R0, #hi_addr(_ThrPrgMan+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4551 :: 		ThrPrgMan.Opacity          = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_ThrPrgMan+6)
MOVT	R0, #hi_addr(_ThrPrgMan+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4552 :: 		ThrPrgMan.Tag              = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_ThrPrgMan+7)
MOVT	R0, #hi_addr(_ThrPrgMan+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4553 :: 		ThrPrgMan.Left             = 280;
MOVW	R1, #280
SXTH	R1, R1
MOVW	R0, #lo_addr(_ThrPrgMan+8)
MOVT	R0, #hi_addr(_ThrPrgMan+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4554 :: 		ThrPrgMan.Top              = 274;
MOVW	R1, #274
SXTH	R1, R1
MOVW	R0, #lo_addr(_ThrPrgMan+10)
MOVT	R0, #hi_addr(_ThrPrgMan+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4555 :: 		ThrPrgMan.Width            = 240;
MOVS	R1, #240
SXTH	R1, R1
MOVW	R0, #lo_addr(_ThrPrgMan+12)
MOVT	R0, #hi_addr(_ThrPrgMan+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4556 :: 		ThrPrgMan.Height           = 42;
MOVS	R1, #42
SXTH	R1, R1
MOVW	R0, #lo_addr(_ThrPrgMan+14)
MOVT	R0, #hi_addr(_ThrPrgMan+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4557 :: 		ThrPrgMan.Pen_Width        = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_ThrPrgMan+16)
MOVT	R0, #hi_addr(_ThrPrgMan+16)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4558 :: 		ThrPrgMan.Pen_Color        = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ThrPrgMan+20)
MOVT	R0, #hi_addr(_ThrPrgMan+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4559 :: 		ThrPrgMan.Background_Color = 0xC0C0C0;
MOVW	R1, #49344
MOVT	R1, #192
MOVW	R0, #lo_addr(_ThrPrgMan+24)
MOVT	R0, #hi_addr(_ThrPrgMan+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4560 :: 		ThrPrgMan.Color            = 0x80FF;
MOVW	R1, #33023
MOVW	R0, #lo_addr(_ThrPrgMan+28)
MOVT	R0, #hi_addr(_ThrPrgMan+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4561 :: 		ThrPrgMan.Caption          = ThrPrgMan_Caption;
MOVW	R1, #lo_addr(_ThrPrgMan_Caption+0)
MOVT	R1, #hi_addr(_ThrPrgMan_Caption+0)
MOVW	R0, #lo_addr(_ThrPrgMan+32)
MOVT	R0, #hi_addr(_ThrPrgMan+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4562 :: 		ThrPrgMan.FontName         = Tahoma_25x25_Bold;
MOVW	R1, #31885
MOVW	R0, #lo_addr(_ThrPrgMan+36)
MOVT	R0, #hi_addr(_ThrPrgMan+36)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4563 :: 		ThrPrgMan.Font_Color       = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ThrPrgMan+40)
MOVT	R0, #hi_addr(_ThrPrgMan+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4564 :: 		ThrPrgMan.FontHandle       = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_ThrPrgMan+44)
MOVT	R0, #hi_addr(_ThrPrgMan+44)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4565 :: 		ThrPrgMan.Source           = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_ThrPrgMan+48)
MOVT	R0, #hi_addr(_ThrPrgMan+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4566 :: 		ThrPrgMan.Corner_Radius    = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ThrPrgMan+52)
MOVT	R0, #hi_addr(_ThrPrgMan+52)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4567 :: 		ThrPrgMan.Min              = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ThrPrgMan+54)
MOVT	R0, #hi_addr(_ThrPrgMan+54)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4568 :: 		ThrPrgMan.Max              = 100;
MOVS	R1, #100
MOVW	R0, #lo_addr(_ThrPrgMan+56)
MOVT	R0, #hi_addr(_ThrPrgMan+56)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4569 :: 		ThrPrgMan.Position         = 50;
MOVS	R1, #50
MOVW	R0, #lo_addr(_ThrPrgMan+58)
MOVT	R0, #hi_addr(_ThrPrgMan+58)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4570 :: 		ThrPrgMan.Show_Position    = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ThrPrgMan+60)
MOVT	R0, #hi_addr(_ThrPrgMan+60)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4571 :: 		ThrPrgMan.Show_Percentage  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ThrPrgMan+61)
MOVT	R0, #hi_addr(_ThrPrgMan+61)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4572 :: 		ThrPrgMan.Smooth           = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ThrPrgMan+62)
MOVT	R0, #hi_addr(_ThrPrgMan+62)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4574 :: 		FlPumButMan.OwnerScreen   = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_FlPumButMan+0)
MOVT	R0, #hi_addr(_FlPumButMan+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4575 :: 		FlPumButMan.Order         = 25;
MOVS	R1, #25
MOVW	R0, #lo_addr(_FlPumButMan+4)
MOVT	R0, #hi_addr(_FlPumButMan+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4576 :: 		FlPumButMan.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_FlPumButMan+5)
MOVT	R0, #hi_addr(_FlPumButMan+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4577 :: 		FlPumButMan.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_FlPumButMan+6)
MOVT	R0, #hi_addr(_FlPumButMan+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4578 :: 		FlPumButMan.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_FlPumButMan+7)
MOVT	R0, #hi_addr(_FlPumButMan+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4579 :: 		FlPumButMan.Left          = 140;
MOVS	R1, #140
SXTH	R1, R1
MOVW	R0, #lo_addr(_FlPumButMan+8)
MOVT	R0, #hi_addr(_FlPumButMan+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4580 :: 		FlPumButMan.Top           = 355;
MOVW	R1, #355
SXTH	R1, R1
MOVW	R0, #lo_addr(_FlPumButMan+10)
MOVT	R0, #hi_addr(_FlPumButMan+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4581 :: 		FlPumButMan.Width         = 150;
MOVS	R1, #150
SXTH	R1, R1
MOVW	R0, #lo_addr(_FlPumButMan+12)
MOVT	R0, #hi_addr(_FlPumButMan+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4582 :: 		FlPumButMan.Height        = 45;
MOVS	R1, #45
SXTH	R1, R1
MOVW	R0, #lo_addr(_FlPumButMan+14)
MOVT	R0, #hi_addr(_FlPumButMan+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4583 :: 		FlPumButMan.Color         = 0x278D1;
MOVW	R1, #30929
MOVT	R1, #2
MOVW	R0, #lo_addr(_FlPumButMan+16)
MOVT	R0, #hi_addr(_FlPumButMan+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4584 :: 		FlPumButMan.Press_Color   = 0x7AC6FE;
MOVW	R1, #50942
MOVT	R1, #122
MOVW	R0, #lo_addr(_FlPumButMan+20)
MOVT	R0, #hi_addr(_FlPumButMan+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4585 :: 		FlPumButMan.ColorTo       = 0x7AC6FE;
MOVW	R1, #50942
MOVT	R1, #122
MOVW	R0, #lo_addr(_FlPumButMan+24)
MOVT	R0, #hi_addr(_FlPumButMan+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4586 :: 		FlPumButMan.Press_ColorTo = 0x278D1;
MOVW	R1, #30929
MOVT	R1, #2
MOVW	R0, #lo_addr(_FlPumButMan+28)
MOVT	R0, #hi_addr(_FlPumButMan+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4587 :: 		FlPumButMan.Caption       = FlPumButMan_Caption;
MOVW	R1, #lo_addr(_FlPumButMan_Caption+0)
MOVT	R1, #hi_addr(_FlPumButMan_Caption+0)
MOVW	R0, #lo_addr(_FlPumButMan+32)
MOVT	R0, #hi_addr(_FlPumButMan+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4588 :: 		FlPumButMan.FontName      = Tahoma_19x23_Bold;
MOVW	R1, #17125
MOVW	R0, #lo_addr(_FlPumButMan+36)
MOVT	R0, #hi_addr(_FlPumButMan+36)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4589 :: 		FlPumButMan.Font_Color    = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_FlPumButMan+40)
MOVT	R0, #hi_addr(_FlPumButMan+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4590 :: 		FlPumButMan.FontHandle    = 7;
MOVS	R1, #7
MOVW	R0, #lo_addr(_FlPumButMan+44)
MOVT	R0, #hi_addr(_FlPumButMan+44)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4591 :: 		FlPumButMan.Source        = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_FlPumButMan+48)
MOVT	R0, #hi_addr(_FlPumButMan+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4592 :: 		FlPumButMan.Flat          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FlPumButMan+52)
MOVT	R0, #hi_addr(_FlPumButMan+52)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4593 :: 		FlPumButMan.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_FlPumButMan+53)
MOVT	R0, #hi_addr(_FlPumButMan+53)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4594 :: 		FlPumButMan.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FlPumButMan+56)
MOVT	R0, #hi_addr(_FlPumButMan+56)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4595 :: 		FlPumButMan.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FlPumButMan+60)
MOVT	R0, #hi_addr(_FlPumButMan+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4596 :: 		FlPumButMan.OnClick       = &FlPumButMan_OnClick;
MOVW	R1, #lo_addr(_FlPumButMan_OnClick+0)
MOVT	R1, #hi_addr(_FlPumButMan_OnClick+0)
MOVW	R0, #lo_addr(_FlPumButMan+64)
MOVT	R0, #hi_addr(_FlPumButMan+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4597 :: 		FlPumButMan.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FlPumButMan+68)
MOVT	R0, #hi_addr(_FlPumButMan+68)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4599 :: 		FlPumButMan_OnClick.Action       = FlPumButManOnClick;
MOVW	R1, #lo_addr(_FlPumButManOnClick+0)
MOVT	R1, #hi_addr(_FlPumButManOnClick+0)
MOVW	R0, #lo_addr(_FlPumButMan_OnClick+0)
MOVT	R0, #hi_addr(_FlPumButMan_OnClick+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4600 :: 		FlPumButMan_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FlPumButMan_OnClick+4)
MOVT	R0, #hi_addr(_FlPumButMan_OnClick+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4601 :: 		FlPumButMan_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
MOVS	R1, #65
MOVW	R0, #lo_addr(_FlPumButMan_OnClick+5)
MOVT	R0, #hi_addr(_FlPumButMan_OnClick+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4602 :: 		FlPumButMan_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
MOVS	R1, #81
MOVW	R0, #lo_addr(_FlPumButMan_OnClick+6)
MOVT	R0, #hi_addr(_FlPumButMan_OnClick+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4603 :: 		FlPumButMan_OnClick.Sound.Volume = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_FlPumButMan_OnClick+7)
MOVT	R0, #hi_addr(_FlPumButMan_OnClick+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4605 :: 		FlValButtMan.OwnerScreen   = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_FlValButtMan+0)
MOVT	R0, #hi_addr(_FlValButtMan+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4606 :: 		FlValButtMan.Order         = 26;
MOVS	R1, #26
MOVW	R0, #lo_addr(_FlValButtMan+4)
MOVT	R0, #hi_addr(_FlValButtMan+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4607 :: 		FlValButtMan.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_FlValButtMan+5)
MOVT	R0, #hi_addr(_FlValButtMan+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4608 :: 		FlValButtMan.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_FlValButtMan+6)
MOVT	R0, #hi_addr(_FlValButtMan+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4609 :: 		FlValButtMan.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_FlValButtMan+7)
MOVT	R0, #hi_addr(_FlValButtMan+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4610 :: 		FlValButtMan.Left          = 140;
MOVS	R1, #140
SXTH	R1, R1
MOVW	R0, #lo_addr(_FlValButtMan+8)
MOVT	R0, #hi_addr(_FlValButtMan+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4611 :: 		FlValButtMan.Top           = 410;
MOVW	R1, #410
SXTH	R1, R1
MOVW	R0, #lo_addr(_FlValButtMan+10)
MOVT	R0, #hi_addr(_FlValButtMan+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4612 :: 		FlValButtMan.Width         = 150;
MOVS	R1, #150
SXTH	R1, R1
MOVW	R0, #lo_addr(_FlValButtMan+12)
MOVT	R0, #hi_addr(_FlValButtMan+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4613 :: 		FlValButtMan.Height        = 45;
MOVS	R1, #45
SXTH	R1, R1
MOVW	R0, #lo_addr(_FlValButtMan+14)
MOVT	R0, #hi_addr(_FlValButtMan+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4614 :: 		FlValButtMan.Color         = 0x278D1;
MOVW	R1, #30929
MOVT	R1, #2
MOVW	R0, #lo_addr(_FlValButtMan+16)
MOVT	R0, #hi_addr(_FlValButtMan+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4615 :: 		FlValButtMan.Press_Color   = 0x7AC6FE;
MOVW	R1, #50942
MOVT	R1, #122
MOVW	R0, #lo_addr(_FlValButtMan+20)
MOVT	R0, #hi_addr(_FlValButtMan+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4616 :: 		FlValButtMan.ColorTo       = 0x7AC6FE;
MOVW	R1, #50942
MOVT	R1, #122
MOVW	R0, #lo_addr(_FlValButtMan+24)
MOVT	R0, #hi_addr(_FlValButtMan+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4617 :: 		FlValButtMan.Press_ColorTo = 0x278D1;
MOVW	R1, #30929
MOVT	R1, #2
MOVW	R0, #lo_addr(_FlValButtMan+28)
MOVT	R0, #hi_addr(_FlValButtMan+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4618 :: 		FlValButtMan.Caption       = FlValButtMan_Caption;
MOVW	R1, #lo_addr(_FlValButtMan_Caption+0)
MOVT	R1, #hi_addr(_FlValButtMan_Caption+0)
MOVW	R0, #lo_addr(_FlValButtMan+32)
MOVT	R0, #hi_addr(_FlValButtMan+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4619 :: 		FlValButtMan.FontName      = Tahoma_19x23_Bold;
MOVW	R1, #17125
MOVW	R0, #lo_addr(_FlValButtMan+36)
MOVT	R0, #hi_addr(_FlValButtMan+36)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4620 :: 		FlValButtMan.Font_Color    = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_FlValButtMan+40)
MOVT	R0, #hi_addr(_FlValButtMan+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4621 :: 		FlValButtMan.FontHandle    = 7;
MOVS	R1, #7
MOVW	R0, #lo_addr(_FlValButtMan+44)
MOVT	R0, #hi_addr(_FlValButtMan+44)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4622 :: 		FlValButtMan.Source        = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_FlValButtMan+48)
MOVT	R0, #hi_addr(_FlValButtMan+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4623 :: 		FlValButtMan.Flat          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FlValButtMan+52)
MOVT	R0, #hi_addr(_FlValButtMan+52)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4624 :: 		FlValButtMan.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_FlValButtMan+53)
MOVT	R0, #hi_addr(_FlValButtMan+53)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4625 :: 		FlValButtMan.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FlValButtMan+56)
MOVT	R0, #hi_addr(_FlValButtMan+56)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4626 :: 		FlValButtMan.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FlValButtMan+60)
MOVT	R0, #hi_addr(_FlValButtMan+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4627 :: 		FlValButtMan.OnClick       = &FlValButtMan_OnClick;
MOVW	R1, #lo_addr(_FlValButtMan_OnClick+0)
MOVT	R1, #hi_addr(_FlValButtMan_OnClick+0)
MOVW	R0, #lo_addr(_FlValButtMan+64)
MOVT	R0, #hi_addr(_FlValButtMan+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4628 :: 		FlValButtMan.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FlValButtMan+68)
MOVT	R0, #hi_addr(_FlValButtMan+68)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4630 :: 		FlValButtMan_OnClick.Action       = FlValButtManOnClick;
MOVW	R1, #lo_addr(_FlValButtManOnClick+0)
MOVT	R1, #hi_addr(_FlValButtManOnClick+0)
MOVW	R0, #lo_addr(_FlValButtMan_OnClick+0)
MOVT	R0, #hi_addr(_FlValButtMan_OnClick+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4631 :: 		FlValButtMan_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
MOVS	R1, #0
MOVW	R0, #lo_addr(_FlValButtMan_OnClick+4)
MOVT	R0, #hi_addr(_FlValButtMan_OnClick+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4632 :: 		FlValButtMan_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
MOVS	R1, #65
MOVW	R0, #lo_addr(_FlValButtMan_OnClick+5)
MOVT	R0, #hi_addr(_FlValButtMan_OnClick+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4633 :: 		FlValButtMan_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
MOVS	R1, #81
MOVW	R0, #lo_addr(_FlValButtMan_OnClick+6)
MOVT	R0, #hi_addr(_FlValButtMan_OnClick+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4634 :: 		FlValButtMan_OnClick.Sound.Volume = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_FlValButtMan_OnClick+7)
MOVT	R0, #hi_addr(_FlValButtMan_OnClick+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4636 :: 		IgButtMan.OwnerScreen   = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_IgButtMan+0)
MOVT	R0, #hi_addr(_IgButtMan+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4637 :: 		IgButtMan.Order         = 27;
MOVS	R1, #27
MOVW	R0, #lo_addr(_IgButtMan+4)
MOVT	R0, #hi_addr(_IgButtMan+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4638 :: 		IgButtMan.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_IgButtMan+5)
MOVT	R0, #hi_addr(_IgButtMan+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4639 :: 		IgButtMan.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_IgButtMan+6)
MOVT	R0, #hi_addr(_IgButtMan+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4640 :: 		IgButtMan.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_IgButtMan+7)
MOVT	R0, #hi_addr(_IgButtMan+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4641 :: 		IgButtMan.Left          = 365;
MOVW	R1, #365
SXTH	R1, R1
MOVW	R0, #lo_addr(_IgButtMan+8)
MOVT	R0, #hi_addr(_IgButtMan+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4642 :: 		IgButtMan.Top           = 355;
MOVW	R1, #355
SXTH	R1, R1
MOVW	R0, #lo_addr(_IgButtMan+10)
MOVT	R0, #hi_addr(_IgButtMan+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4643 :: 		IgButtMan.Width         = 150;
MOVS	R1, #150
SXTH	R1, R1
MOVW	R0, #lo_addr(_IgButtMan+12)
MOVT	R0, #hi_addr(_IgButtMan+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4644 :: 		IgButtMan.Height        = 45;
MOVS	R1, #45
SXTH	R1, R1
MOVW	R0, #lo_addr(_IgButtMan+14)
MOVT	R0, #hi_addr(_IgButtMan+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4645 :: 		IgButtMan.Color         = 0x278D1;
MOVW	R1, #30929
MOVT	R1, #2
MOVW	R0, #lo_addr(_IgButtMan+16)
MOVT	R0, #hi_addr(_IgButtMan+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4646 :: 		IgButtMan.Press_Color   = 0x7AC6FE;
MOVW	R1, #50942
MOVT	R1, #122
MOVW	R0, #lo_addr(_IgButtMan+20)
MOVT	R0, #hi_addr(_IgButtMan+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4647 :: 		IgButtMan.ColorTo       = 0x7AC6FE;
MOVW	R1, #50942
MOVT	R1, #122
MOVW	R0, #lo_addr(_IgButtMan+24)
MOVT	R0, #hi_addr(_IgButtMan+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4648 :: 		IgButtMan.Press_ColorTo = 0x278D1;
MOVW	R1, #30929
MOVT	R1, #2
MOVW	R0, #lo_addr(_IgButtMan+28)
MOVT	R0, #hi_addr(_IgButtMan+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4649 :: 		IgButtMan.Caption       = IgButtMan_Caption;
MOVW	R1, #lo_addr(_IgButtMan_Caption+0)
MOVT	R1, #hi_addr(_IgButtMan_Caption+0)
MOVW	R0, #lo_addr(_IgButtMan+32)
MOVT	R0, #hi_addr(_IgButtMan+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4650 :: 		IgButtMan.FontName      = Tahoma_19x23_Bold;
MOVW	R1, #17125
MOVW	R0, #lo_addr(_IgButtMan+36)
MOVT	R0, #hi_addr(_IgButtMan+36)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4651 :: 		IgButtMan.Font_Color    = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_IgButtMan+40)
MOVT	R0, #hi_addr(_IgButtMan+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4652 :: 		IgButtMan.FontHandle    = 7;
MOVS	R1, #7
MOVW	R0, #lo_addr(_IgButtMan+44)
MOVT	R0, #hi_addr(_IgButtMan+44)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4653 :: 		IgButtMan.Source        = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_IgButtMan+48)
MOVT	R0, #hi_addr(_IgButtMan+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4654 :: 		IgButtMan.Flat          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_IgButtMan+52)
MOVT	R0, #hi_addr(_IgButtMan+52)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4655 :: 		IgButtMan.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_IgButtMan+53)
MOVT	R0, #hi_addr(_IgButtMan+53)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4656 :: 		IgButtMan.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_IgButtMan+56)
MOVT	R0, #hi_addr(_IgButtMan+56)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4657 :: 		IgButtMan.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_IgButtMan+60)
MOVT	R0, #hi_addr(_IgButtMan+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4658 :: 		IgButtMan.OnClick       = &IgButtMan_OnClick;
MOVW	R1, #lo_addr(_IgButtMan_OnClick+0)
MOVT	R1, #hi_addr(_IgButtMan_OnClick+0)
MOVW	R0, #lo_addr(_IgButtMan+64)
MOVT	R0, #hi_addr(_IgButtMan+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4659 :: 		IgButtMan.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_IgButtMan+68)
MOVT	R0, #hi_addr(_IgButtMan+68)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4661 :: 		IgButtMan_OnClick.Action       = IgButtManOnClick;
MOVW	R1, #lo_addr(_IgButtManOnClick+0)
MOVT	R1, #hi_addr(_IgButtManOnClick+0)
MOVW	R0, #lo_addr(_IgButtMan_OnClick+0)
MOVT	R0, #hi_addr(_IgButtMan_OnClick+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4662 :: 		IgButtMan_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
MOVS	R1, #0
MOVW	R0, #lo_addr(_IgButtMan_OnClick+4)
MOVT	R0, #hi_addr(_IgButtMan_OnClick+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4663 :: 		IgButtMan_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
MOVS	R1, #65
MOVW	R0, #lo_addr(_IgButtMan_OnClick+5)
MOVT	R0, #hi_addr(_IgButtMan_OnClick+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4664 :: 		IgButtMan_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
MOVS	R1, #81
MOVW	R0, #lo_addr(_IgButtMan_OnClick+6)
MOVT	R0, #hi_addr(_IgButtMan_OnClick+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4665 :: 		IgButtMan_OnClick.Sound.Volume = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_IgButtMan_OnClick+7)
MOVT	R0, #hi_addr(_IgButtMan_OnClick+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4667 :: 		IgValButtMan.OwnerScreen   = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_IgValButtMan+0)
MOVT	R0, #hi_addr(_IgValButtMan+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4668 :: 		IgValButtMan.Order         = 28;
MOVS	R1, #28
MOVW	R0, #lo_addr(_IgValButtMan+4)
MOVT	R0, #hi_addr(_IgValButtMan+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4669 :: 		IgValButtMan.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_IgValButtMan+5)
MOVT	R0, #hi_addr(_IgValButtMan+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4670 :: 		IgValButtMan.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_IgValButtMan+6)
MOVT	R0, #hi_addr(_IgValButtMan+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4671 :: 		IgValButtMan.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_IgValButtMan+7)
MOVT	R0, #hi_addr(_IgValButtMan+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4672 :: 		IgValButtMan.Left          = 358;
MOVW	R1, #358
SXTH	R1, R1
MOVW	R0, #lo_addr(_IgValButtMan+8)
MOVT	R0, #hi_addr(_IgValButtMan+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4673 :: 		IgValButtMan.Top           = 410;
MOVW	R1, #410
SXTH	R1, R1
MOVW	R0, #lo_addr(_IgValButtMan+10)
MOVT	R0, #hi_addr(_IgValButtMan+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4674 :: 		IgValButtMan.Width         = 163;
MOVS	R1, #163
SXTH	R1, R1
MOVW	R0, #lo_addr(_IgValButtMan+12)
MOVT	R0, #hi_addr(_IgValButtMan+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4675 :: 		IgValButtMan.Height        = 45;
MOVS	R1, #45
SXTH	R1, R1
MOVW	R0, #lo_addr(_IgValButtMan+14)
MOVT	R0, #hi_addr(_IgValButtMan+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4676 :: 		IgValButtMan.Color         = 0x278D1;
MOVW	R1, #30929
MOVT	R1, #2
MOVW	R0, #lo_addr(_IgValButtMan+16)
MOVT	R0, #hi_addr(_IgValButtMan+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4677 :: 		IgValButtMan.Press_Color   = 0x7AC6FE;
MOVW	R1, #50942
MOVT	R1, #122
MOVW	R0, #lo_addr(_IgValButtMan+20)
MOVT	R0, #hi_addr(_IgValButtMan+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4678 :: 		IgValButtMan.ColorTo       = 0x7AC6FE;
MOVW	R1, #50942
MOVT	R1, #122
MOVW	R0, #lo_addr(_IgValButtMan+24)
MOVT	R0, #hi_addr(_IgValButtMan+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4679 :: 		IgValButtMan.Press_ColorTo = 0x278D1;
MOVW	R1, #30929
MOVT	R1, #2
MOVW	R0, #lo_addr(_IgValButtMan+28)
MOVT	R0, #hi_addr(_IgValButtMan+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4680 :: 		IgValButtMan.Caption       = IgValButtMan_Caption;
MOVW	R1, #lo_addr(_IgValButtMan_Caption+0)
MOVT	R1, #hi_addr(_IgValButtMan_Caption+0)
MOVW	R0, #lo_addr(_IgValButtMan+32)
MOVT	R0, #hi_addr(_IgValButtMan+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4681 :: 		IgValButtMan.FontName      = Tahoma_19x23_Bold;
MOVW	R1, #17125
MOVW	R0, #lo_addr(_IgValButtMan+36)
MOVT	R0, #hi_addr(_IgValButtMan+36)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4682 :: 		IgValButtMan.Font_Color    = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_IgValButtMan+40)
MOVT	R0, #hi_addr(_IgValButtMan+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4683 :: 		IgValButtMan.FontHandle    = 7;
MOVS	R1, #7
MOVW	R0, #lo_addr(_IgValButtMan+44)
MOVT	R0, #hi_addr(_IgValButtMan+44)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4684 :: 		IgValButtMan.Source        = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_IgValButtMan+48)
MOVT	R0, #hi_addr(_IgValButtMan+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4685 :: 		IgValButtMan.Flat          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_IgValButtMan+52)
MOVT	R0, #hi_addr(_IgValButtMan+52)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4686 :: 		IgValButtMan.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_IgValButtMan+53)
MOVT	R0, #hi_addr(_IgValButtMan+53)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4687 :: 		IgValButtMan.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_IgValButtMan+56)
MOVT	R0, #hi_addr(_IgValButtMan+56)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4688 :: 		IgValButtMan.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_IgValButtMan+60)
MOVT	R0, #hi_addr(_IgValButtMan+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4689 :: 		IgValButtMan.OnClick       = &IgValButtMan_OnClick;
MOVW	R1, #lo_addr(_IgValButtMan_OnClick+0)
MOVT	R1, #hi_addr(_IgValButtMan_OnClick+0)
MOVW	R0, #lo_addr(_IgValButtMan+64)
MOVT	R0, #hi_addr(_IgValButtMan+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4690 :: 		IgValButtMan.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_IgValButtMan+68)
MOVT	R0, #hi_addr(_IgValButtMan+68)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4692 :: 		IgValButtMan_OnClick.Action       = IgValButtManOnClick;
MOVW	R1, #lo_addr(_IgValButtManOnClick+0)
MOVT	R1, #hi_addr(_IgValButtManOnClick+0)
MOVW	R0, #lo_addr(_IgValButtMan_OnClick+0)
MOVT	R0, #hi_addr(_IgValButtMan_OnClick+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4693 :: 		IgValButtMan_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
MOVS	R1, #0
MOVW	R0, #lo_addr(_IgValButtMan_OnClick+4)
MOVT	R0, #hi_addr(_IgValButtMan_OnClick+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4694 :: 		IgValButtMan_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
MOVS	R1, #65
MOVW	R0, #lo_addr(_IgValButtMan_OnClick+5)
MOVT	R0, #hi_addr(_IgValButtMan_OnClick+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4695 :: 		IgValButtMan_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
MOVS	R1, #81
MOVW	R0, #lo_addr(_IgValButtMan_OnClick+6)
MOVT	R0, #hi_addr(_IgValButtMan_OnClick+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4696 :: 		IgValButtMan_OnClick.Sound.Volume = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_IgValButtMan_OnClick+7)
MOVT	R0, #hi_addr(_IgValButtMan_OnClick+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4698 :: 		StrStrButtMan.OwnerScreen   = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_StrStrButtMan+0)
MOVT	R0, #hi_addr(_StrStrButtMan+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4699 :: 		StrStrButtMan.Order         = 29;
MOVS	R1, #29
MOVW	R0, #lo_addr(_StrStrButtMan+4)
MOVT	R0, #hi_addr(_StrStrButtMan+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4700 :: 		StrStrButtMan.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_StrStrButtMan+5)
MOVT	R0, #hi_addr(_StrStrButtMan+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4701 :: 		StrStrButtMan.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_StrStrButtMan+6)
MOVT	R0, #hi_addr(_StrStrButtMan+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4702 :: 		StrStrButtMan.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_StrStrButtMan+7)
MOVT	R0, #hi_addr(_StrStrButtMan+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4703 :: 		StrStrButtMan.Left          = 590;
MOVW	R1, #590
SXTH	R1, R1
MOVW	R0, #lo_addr(_StrStrButtMan+8)
MOVT	R0, #hi_addr(_StrStrButtMan+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4704 :: 		StrStrButtMan.Top           = 355;
MOVW	R1, #355
SXTH	R1, R1
MOVW	R0, #lo_addr(_StrStrButtMan+10)
MOVT	R0, #hi_addr(_StrStrButtMan+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4705 :: 		StrStrButtMan.Width         = 150;
MOVS	R1, #150
SXTH	R1, R1
MOVW	R0, #lo_addr(_StrStrButtMan+12)
MOVT	R0, #hi_addr(_StrStrButtMan+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4706 :: 		StrStrButtMan.Height        = 45;
MOVS	R1, #45
SXTH	R1, R1
MOVW	R0, #lo_addr(_StrStrButtMan+14)
MOVT	R0, #hi_addr(_StrStrButtMan+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4707 :: 		StrStrButtMan.Color         = 0x278D1;
MOVW	R1, #30929
MOVT	R1, #2
MOVW	R0, #lo_addr(_StrStrButtMan+16)
MOVT	R0, #hi_addr(_StrStrButtMan+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4708 :: 		StrStrButtMan.Press_Color   = 0x7AC6FE;
MOVW	R1, #50942
MOVT	R1, #122
MOVW	R0, #lo_addr(_StrStrButtMan+20)
MOVT	R0, #hi_addr(_StrStrButtMan+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4709 :: 		StrStrButtMan.ColorTo       = 0x7AC6FE;
MOVW	R1, #50942
MOVT	R1, #122
MOVW	R0, #lo_addr(_StrStrButtMan+24)
MOVT	R0, #hi_addr(_StrStrButtMan+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4710 :: 		StrStrButtMan.Press_ColorTo = 0x278D1;
MOVW	R1, #30929
MOVT	R1, #2
MOVW	R0, #lo_addr(_StrStrButtMan+28)
MOVT	R0, #hi_addr(_StrStrButtMan+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4711 :: 		StrStrButtMan.Caption       = StrStrButtMan_Caption;
MOVW	R1, #lo_addr(_StrStrButtMan_Caption+0)
MOVT	R1, #hi_addr(_StrStrButtMan_Caption+0)
MOVW	R0, #lo_addr(_StrStrButtMan+32)
MOVT	R0, #hi_addr(_StrStrButtMan+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4712 :: 		StrStrButtMan.FontName      = Tahoma_19x23_Bold;
MOVW	R1, #17125
MOVW	R0, #lo_addr(_StrStrButtMan+36)
MOVT	R0, #hi_addr(_StrStrButtMan+36)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4713 :: 		StrStrButtMan.Font_Color    = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_StrStrButtMan+40)
MOVT	R0, #hi_addr(_StrStrButtMan+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4714 :: 		StrStrButtMan.FontHandle    = 7;
MOVS	R1, #7
MOVW	R0, #lo_addr(_StrStrButtMan+44)
MOVT	R0, #hi_addr(_StrStrButtMan+44)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4715 :: 		StrStrButtMan.Source        = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_StrStrButtMan+48)
MOVT	R0, #hi_addr(_StrStrButtMan+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4716 :: 		StrStrButtMan.Flat          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_StrStrButtMan+52)
MOVT	R0, #hi_addr(_StrStrButtMan+52)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4717 :: 		StrStrButtMan.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_StrStrButtMan+53)
MOVT	R0, #hi_addr(_StrStrButtMan+53)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4718 :: 		StrStrButtMan.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_StrStrButtMan+56)
MOVT	R0, #hi_addr(_StrStrButtMan+56)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4719 :: 		StrStrButtMan.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_StrStrButtMan+60)
MOVT	R0, #hi_addr(_StrStrButtMan+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4720 :: 		StrStrButtMan.OnClick       = &StrStrButtMan_OnClick;
MOVW	R1, #lo_addr(_StrStrButtMan_OnClick+0)
MOVT	R1, #hi_addr(_StrStrButtMan_OnClick+0)
MOVW	R0, #lo_addr(_StrStrButtMan+64)
MOVT	R0, #hi_addr(_StrStrButtMan+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4721 :: 		StrStrButtMan.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_StrStrButtMan+68)
MOVT	R0, #hi_addr(_StrStrButtMan+68)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4723 :: 		StrStrButtMan_OnClick.Action       = StrStrButtManOnClick;
MOVW	R1, #lo_addr(_StrStrButtManOnClick+0)
MOVT	R1, #hi_addr(_StrStrButtManOnClick+0)
MOVW	R0, #lo_addr(_StrStrButtMan_OnClick+0)
MOVT	R0, #hi_addr(_StrStrButtMan_OnClick+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4724 :: 		StrStrButtMan_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
MOVS	R1, #0
MOVW	R0, #lo_addr(_StrStrButtMan_OnClick+4)
MOVT	R0, #hi_addr(_StrStrButtMan_OnClick+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4725 :: 		StrStrButtMan_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
MOVS	R1, #65
MOVW	R0, #lo_addr(_StrStrButtMan_OnClick+5)
MOVT	R0, #hi_addr(_StrStrButtMan_OnClick+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4726 :: 		StrStrButtMan_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
MOVS	R1, #81
MOVW	R0, #lo_addr(_StrStrButtMan_OnClick+6)
MOVT	R0, #hi_addr(_StrStrButtMan_OnClick+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4727 :: 		StrStrButtMan_OnClick.Sound.Volume = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_StrStrButtMan_OnClick+7)
MOVT	R0, #hi_addr(_StrStrButtMan_OnClick+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4729 :: 		OilCtrlButtMan_.OwnerScreen   = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_OilCtrlButtMan_+0)
MOVT	R0, #hi_addr(_OilCtrlButtMan_+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4730 :: 		OilCtrlButtMan_.Order         = 30;
MOVS	R1, #30
MOVW	R0, #lo_addr(_OilCtrlButtMan_+4)
MOVT	R0, #hi_addr(_OilCtrlButtMan_+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4731 :: 		OilCtrlButtMan_.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_OilCtrlButtMan_+5)
MOVT	R0, #hi_addr(_OilCtrlButtMan_+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4732 :: 		OilCtrlButtMan_.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_OilCtrlButtMan_+6)
MOVT	R0, #hi_addr(_OilCtrlButtMan_+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4733 :: 		OilCtrlButtMan_.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_OilCtrlButtMan_+7)
MOVT	R0, #hi_addr(_OilCtrlButtMan_+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4734 :: 		OilCtrlButtMan_.Left          = 590;
MOVW	R1, #590
SXTH	R1, R1
MOVW	R0, #lo_addr(_OilCtrlButtMan_+8)
MOVT	R0, #hi_addr(_OilCtrlButtMan_+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4735 :: 		OilCtrlButtMan_.Top           = 410;
MOVW	R1, #410
SXTH	R1, R1
MOVW	R0, #lo_addr(_OilCtrlButtMan_+10)
MOVT	R0, #hi_addr(_OilCtrlButtMan_+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4736 :: 		OilCtrlButtMan_.Width         = 150;
MOVS	R1, #150
SXTH	R1, R1
MOVW	R0, #lo_addr(_OilCtrlButtMan_+12)
MOVT	R0, #hi_addr(_OilCtrlButtMan_+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4737 :: 		OilCtrlButtMan_.Height        = 45;
MOVS	R1, #45
SXTH	R1, R1
MOVW	R0, #lo_addr(_OilCtrlButtMan_+14)
MOVT	R0, #hi_addr(_OilCtrlButtMan_+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4738 :: 		OilCtrlButtMan_.Color         = 0x278D1;
MOVW	R1, #30929
MOVT	R1, #2
MOVW	R0, #lo_addr(_OilCtrlButtMan_+16)
MOVT	R0, #hi_addr(_OilCtrlButtMan_+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4739 :: 		OilCtrlButtMan_.Press_Color   = 0x7AC6FE;
MOVW	R1, #50942
MOVT	R1, #122
MOVW	R0, #lo_addr(_OilCtrlButtMan_+20)
MOVT	R0, #hi_addr(_OilCtrlButtMan_+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4740 :: 		OilCtrlButtMan_.ColorTo       = 0x7AC6FE;
MOVW	R1, #50942
MOVT	R1, #122
MOVW	R0, #lo_addr(_OilCtrlButtMan_+24)
MOVT	R0, #hi_addr(_OilCtrlButtMan_+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4741 :: 		OilCtrlButtMan_.Press_ColorTo = 0x278D1;
MOVW	R1, #30929
MOVT	R1, #2
MOVW	R0, #lo_addr(_OilCtrlButtMan_+28)
MOVT	R0, #hi_addr(_OilCtrlButtMan_+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4742 :: 		OilCtrlButtMan_.Caption       = OilCtrlButtMan__Caption;
MOVW	R1, #lo_addr(_OilCtrlButtMan__Caption+0)
MOVT	R1, #hi_addr(_OilCtrlButtMan__Caption+0)
MOVW	R0, #lo_addr(_OilCtrlButtMan_+32)
MOVT	R0, #hi_addr(_OilCtrlButtMan_+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4743 :: 		OilCtrlButtMan_.FontName      = Tahoma_19x23_Bold;
MOVW	R1, #17125
MOVW	R0, #lo_addr(_OilCtrlButtMan_+36)
MOVT	R0, #hi_addr(_OilCtrlButtMan_+36)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4744 :: 		OilCtrlButtMan_.Font_Color    = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_OilCtrlButtMan_+40)
MOVT	R0, #hi_addr(_OilCtrlButtMan_+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4745 :: 		OilCtrlButtMan_.FontHandle    = 7;
MOVS	R1, #7
MOVW	R0, #lo_addr(_OilCtrlButtMan_+44)
MOVT	R0, #hi_addr(_OilCtrlButtMan_+44)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4746 :: 		OilCtrlButtMan_.Source        = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_OilCtrlButtMan_+48)
MOVT	R0, #hi_addr(_OilCtrlButtMan_+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4747 :: 		OilCtrlButtMan_.Flat          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_OilCtrlButtMan_+52)
MOVT	R0, #hi_addr(_OilCtrlButtMan_+52)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4748 :: 		OilCtrlButtMan_.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_OilCtrlButtMan_+53)
MOVT	R0, #hi_addr(_OilCtrlButtMan_+53)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4749 :: 		OilCtrlButtMan_.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_OilCtrlButtMan_+56)
MOVT	R0, #hi_addr(_OilCtrlButtMan_+56)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4750 :: 		OilCtrlButtMan_.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_OilCtrlButtMan_+60)
MOVT	R0, #hi_addr(_OilCtrlButtMan_+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4751 :: 		OilCtrlButtMan_.OnClick       = &OilCtrlButtMan__OnClick;
MOVW	R1, #lo_addr(_OilCtrlButtMan__OnClick+0)
MOVT	R1, #hi_addr(_OilCtrlButtMan__OnClick+0)
MOVW	R0, #lo_addr(_OilCtrlButtMan_+64)
MOVT	R0, #hi_addr(_OilCtrlButtMan_+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4752 :: 		OilCtrlButtMan_.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_OilCtrlButtMan_+68)
MOVT	R0, #hi_addr(_OilCtrlButtMan_+68)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4754 :: 		OilCtrlButtMan__OnClick.Action       = OilCtrlButtMan_OnClick;
MOVW	R1, #lo_addr(_OilCtrlButtMan_OnClick+0)
MOVT	R1, #hi_addr(_OilCtrlButtMan_OnClick+0)
MOVW	R0, #lo_addr(_OilCtrlButtMan__OnClick+0)
MOVT	R0, #hi_addr(_OilCtrlButtMan__OnClick+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4755 :: 		OilCtrlButtMan__OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
MOVS	R1, #0
MOVW	R0, #lo_addr(_OilCtrlButtMan__OnClick+4)
MOVT	R0, #hi_addr(_OilCtrlButtMan__OnClick+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4756 :: 		OilCtrlButtMan__OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
MOVS	R1, #65
MOVW	R0, #lo_addr(_OilCtrlButtMan__OnClick+5)
MOVT	R0, #hi_addr(_OilCtrlButtMan__OnClick+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4757 :: 		OilCtrlButtMan__OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
MOVS	R1, #81
MOVW	R0, #lo_addr(_OilCtrlButtMan__OnClick+6)
MOVT	R0, #hi_addr(_OilCtrlButtMan__OnClick+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4758 :: 		OilCtrlButtMan__OnClick.Sound.Volume = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_OilCtrlButtMan__OnClick+7)
MOVT	R0, #hi_addr(_OilCtrlButtMan__OnClick+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4760 :: 		Line10.OwnerScreen    = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_Line10+0)
MOVT	R0, #hi_addr(_Line10+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4761 :: 		Line10.Order          = 31;
MOVS	R1, #31
MOVW	R0, #lo_addr(_Line10+4)
MOVT	R0, #hi_addr(_Line10+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4762 :: 		Line10.Visible        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Line10+5)
MOVT	R0, #hi_addr(_Line10+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4763 :: 		Line10.Opacity        = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Line10+6)
MOVT	R0, #hi_addr(_Line10+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4764 :: 		Line10.Tag            = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Line10+7)
MOVT	R0, #hi_addr(_Line10+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4765 :: 		Line10.First_Point_X  = 550;
MOVW	R1, #550
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line10+8)
MOVT	R0, #hi_addr(_Line10+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4766 :: 		Line10.First_Point_Y  = 315;
MOVW	R1, #315
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line10+10)
MOVT	R0, #hi_addr(_Line10+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4767 :: 		Line10.Second_Point_X = 780;
MOVW	R1, #780
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line10+12)
MOVT	R0, #hi_addr(_Line10+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4768 :: 		Line10.Second_Point_Y = 315;
MOVW	R1, #315
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line10+14)
MOVT	R0, #hi_addr(_Line10+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4769 :: 		Line10.Pen_Width      = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_Line10+16)
MOVT	R0, #hi_addr(_Line10+16)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4770 :: 		Line10.Pen_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Line10+20)
MOVT	R0, #hi_addr(_Line10+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4772 :: 		Line11.OwnerScreen    = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_Line11+0)
MOVT	R0, #hi_addr(_Line11+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4773 :: 		Line11.Order          = 32;
MOVS	R1, #32
MOVW	R0, #lo_addr(_Line11+4)
MOVT	R0, #hi_addr(_Line11+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4774 :: 		Line11.Visible        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Line11+5)
MOVT	R0, #hi_addr(_Line11+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4775 :: 		Line11.Opacity        = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Line11+6)
MOVT	R0, #hi_addr(_Line11+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4776 :: 		Line11.Tag            = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Line11+7)
MOVT	R0, #hi_addr(_Line11+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4777 :: 		Line11.First_Point_X  = 550;
MOVW	R1, #550
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line11+8)
MOVT	R0, #hi_addr(_Line11+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4778 :: 		Line11.First_Point_Y  = 239;
MOVS	R1, #239
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line11+10)
MOVT	R0, #hi_addr(_Line11+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4779 :: 		Line11.Second_Point_X = 780;
MOVW	R1, #780
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line11+12)
MOVT	R0, #hi_addr(_Line11+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4780 :: 		Line11.Second_Point_Y = 240;
MOVS	R1, #240
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line11+14)
MOVT	R0, #hi_addr(_Line11+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4781 :: 		Line11.Pen_Width      = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_Line11+16)
MOVT	R0, #hi_addr(_Line11+16)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4782 :: 		Line11.Pen_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Line11+20)
MOVT	R0, #hi_addr(_Line11+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4784 :: 		Line12.OwnerScreen    = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_Line12+0)
MOVT	R0, #hi_addr(_Line12+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4785 :: 		Line12.Order          = 33;
MOVS	R1, #33
MOVW	R0, #lo_addr(_Line12+4)
MOVT	R0, #hi_addr(_Line12+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4786 :: 		Line12.Visible        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Line12+5)
MOVT	R0, #hi_addr(_Line12+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4787 :: 		Line12.Opacity        = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Line12+6)
MOVT	R0, #hi_addr(_Line12+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4788 :: 		Line12.Tag            = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Line12+7)
MOVT	R0, #hi_addr(_Line12+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4789 :: 		Line12.First_Point_X  = 550;
MOVW	R1, #550
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line12+8)
MOVT	R0, #hi_addr(_Line12+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4790 :: 		Line12.First_Point_Y  = 117;
MOVS	R1, #117
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line12+10)
MOVT	R0, #hi_addr(_Line12+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4791 :: 		Line12.Second_Point_X = 780;
MOVW	R1, #780
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line12+12)
MOVT	R0, #hi_addr(_Line12+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4792 :: 		Line12.Second_Point_Y = 117;
MOVS	R1, #117
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line12+14)
MOVT	R0, #hi_addr(_Line12+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4793 :: 		Line12.Pen_Width      = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_Line12+16)
MOVT	R0, #hi_addr(_Line12+16)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4794 :: 		Line12.Pen_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Line12+20)
MOVT	R0, #hi_addr(_Line12+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4796 :: 		PFiLightMan.OwnerScreen   = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_PFiLightMan+0)
MOVT	R0, #hi_addr(_PFiLightMan+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4797 :: 		PFiLightMan.Order         = 34;
MOVS	R1, #34
MOVW	R0, #lo_addr(_PFiLightMan+4)
MOVT	R0, #hi_addr(_PFiLightMan+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4798 :: 		PFiLightMan.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_PFiLightMan+5)
MOVT	R0, #hi_addr(_PFiLightMan+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4799 :: 		PFiLightMan.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_PFiLightMan+6)
MOVT	R0, #hi_addr(_PFiLightMan+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4800 :: 		PFiLightMan.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_PFiLightMan+7)
MOVT	R0, #hi_addr(_PFiLightMan+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4801 :: 		PFiLightMan.Left          = 560;
MOVW	R1, #560
SXTH	R1, R1
MOVW	R0, #lo_addr(_PFiLightMan+8)
MOVT	R0, #hi_addr(_PFiLightMan+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4802 :: 		PFiLightMan.Top           = 125;
MOVS	R1, #125
SXTH	R1, R1
MOVW	R0, #lo_addr(_PFiLightMan+10)
MOVT	R0, #hi_addr(_PFiLightMan+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4803 :: 		PFiLightMan.Radius        = 15;
MOVS	R1, #15
SXTH	R1, R1
MOVW	R0, #lo_addr(_PFiLightMan+12)
MOVT	R0, #hi_addr(_PFiLightMan+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4804 :: 		PFiLightMan.Pen_Width     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_PFiLightMan+14)
MOVT	R0, #hi_addr(_PFiLightMan+14)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4805 :: 		PFiLightMan.Pen_Color     = 0xFF0000;
MOV	R1, #16711680
MOVW	R0, #lo_addr(_PFiLightMan+16)
MOVT	R0, #hi_addr(_PFiLightMan+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4806 :: 		PFiLightMan.Color         = 0xFF0000;
MOV	R1, #16711680
MOVW	R0, #lo_addr(_PFiLightMan+20)
MOVT	R0, #hi_addr(_PFiLightMan+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4807 :: 		PFiLightMan.Press_Color   = 0xE2E2E2;
MOVW	R1, #58082
MOVT	R1, #226
MOVW	R0, #lo_addr(_PFiLightMan+24)
MOVT	R0, #hi_addr(_PFiLightMan+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4808 :: 		PFiLightMan.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_PFiLightMan+28)
MOVT	R0, #hi_addr(_PFiLightMan+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4809 :: 		PFiLightMan.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_PFiLightMan+32)
MOVT	R0, #hi_addr(_PFiLightMan+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4810 :: 		PFiLightMan.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_PFiLightMan+36)
MOVT	R0, #hi_addr(_PFiLightMan+36)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4811 :: 		PFiLightMan.OnClick       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_PFiLightMan+40)
MOVT	R0, #hi_addr(_PFiLightMan+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4812 :: 		PFiLightMan.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_PFiLightMan+44)
MOVT	R0, #hi_addr(_PFiLightMan+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4814 :: 		POILightMan.OwnerScreen   = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_POILightMan+0)
MOVT	R0, #hi_addr(_POILightMan+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4815 :: 		POILightMan.Order         = 35;
MOVS	R1, #35
MOVW	R0, #lo_addr(_POILightMan+4)
MOVT	R0, #hi_addr(_POILightMan+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4816 :: 		POILightMan.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_POILightMan+5)
MOVT	R0, #hi_addr(_POILightMan+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4817 :: 		POILightMan.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_POILightMan+6)
MOVT	R0, #hi_addr(_POILightMan+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4818 :: 		POILightMan.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_POILightMan+7)
MOVT	R0, #hi_addr(_POILightMan+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4819 :: 		POILightMan.Left          = 560;
MOVW	R1, #560
SXTH	R1, R1
MOVW	R0, #lo_addr(_POILightMan+8)
MOVT	R0, #hi_addr(_POILightMan+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4820 :: 		POILightMan.Top           = 160;
MOVS	R1, #160
SXTH	R1, R1
MOVW	R0, #lo_addr(_POILightMan+10)
MOVT	R0, #hi_addr(_POILightMan+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4821 :: 		POILightMan.Radius        = 15;
MOVS	R1, #15
SXTH	R1, R1
MOVW	R0, #lo_addr(_POILightMan+12)
MOVT	R0, #hi_addr(_POILightMan+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4822 :: 		POILightMan.Pen_Width     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_POILightMan+14)
MOVT	R0, #hi_addr(_POILightMan+14)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4823 :: 		POILightMan.Pen_Color     = 0xFF0000;
MOV	R1, #16711680
MOVW	R0, #lo_addr(_POILightMan+16)
MOVT	R0, #hi_addr(_POILightMan+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4824 :: 		POILightMan.Color         = 0xFF0000;
MOV	R1, #16711680
MOVW	R0, #lo_addr(_POILightMan+20)
MOVT	R0, #hi_addr(_POILightMan+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4825 :: 		POILightMan.Press_Color   = 0xE2E2E2;
MOVW	R1, #58082
MOVT	R1, #226
MOVW	R0, #lo_addr(_POILightMan+24)
MOVT	R0, #hi_addr(_POILightMan+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4826 :: 		POILightMan.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_POILightMan+28)
MOVT	R0, #hi_addr(_POILightMan+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4827 :: 		POILightMan.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_POILightMan+32)
MOVT	R0, #hi_addr(_POILightMan+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4828 :: 		POILightMan.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_POILightMan+36)
MOVT	R0, #hi_addr(_POILightMan+36)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4829 :: 		POILightMan.OnClick       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_POILightMan+40)
MOVT	R0, #hi_addr(_POILightMan+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4830 :: 		POILightMan.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_POILightMan+44)
MOVT	R0, #hi_addr(_POILightMan+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4832 :: 		IWLightMan.OwnerScreen   = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_IWLightMan+0)
MOVT	R0, #hi_addr(_IWLightMan+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4833 :: 		IWLightMan.Order         = 36;
MOVS	R1, #36
MOVW	R0, #lo_addr(_IWLightMan+4)
MOVT	R0, #hi_addr(_IWLightMan+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4834 :: 		IWLightMan.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_IWLightMan+5)
MOVT	R0, #hi_addr(_IWLightMan+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4835 :: 		IWLightMan.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_IWLightMan+6)
MOVT	R0, #hi_addr(_IWLightMan+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4836 :: 		IWLightMan.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_IWLightMan+7)
MOVT	R0, #hi_addr(_IWLightMan+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4837 :: 		IWLightMan.Left          = 560;
MOVW	R1, #560
SXTH	R1, R1
MOVW	R0, #lo_addr(_IWLightMan+8)
MOVT	R0, #hi_addr(_IWLightMan+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4838 :: 		IWLightMan.Top           = 195;
MOVS	R1, #195
SXTH	R1, R1
MOVW	R0, #lo_addr(_IWLightMan+10)
MOVT	R0, #hi_addr(_IWLightMan+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4839 :: 		IWLightMan.Radius        = 15;
MOVS	R1, #15
SXTH	R1, R1
MOVW	R0, #lo_addr(_IWLightMan+12)
MOVT	R0, #hi_addr(_IWLightMan+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4840 :: 		IWLightMan.Pen_Width     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_IWLightMan+14)
MOVT	R0, #hi_addr(_IWLightMan+14)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4841 :: 		IWLightMan.Pen_Color     = 0xFF0000;
MOV	R1, #16711680
MOVW	R0, #lo_addr(_IWLightMan+16)
MOVT	R0, #hi_addr(_IWLightMan+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4842 :: 		IWLightMan.Color         = 0xFF0000;
MOV	R1, #16711680
MOVW	R0, #lo_addr(_IWLightMan+20)
MOVT	R0, #hi_addr(_IWLightMan+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4843 :: 		IWLightMan.Press_Color   = 0xE2E2E2;
MOVW	R1, #58082
MOVT	R1, #226
MOVW	R0, #lo_addr(_IWLightMan+24)
MOVT	R0, #hi_addr(_IWLightMan+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4844 :: 		IWLightMan.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_IWLightMan+28)
MOVT	R0, #hi_addr(_IWLightMan+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4845 :: 		IWLightMan.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_IWLightMan+32)
MOVT	R0, #hi_addr(_IWLightMan+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4846 :: 		IWLightMan.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_IWLightMan+36)
MOVT	R0, #hi_addr(_IWLightMan+36)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4847 :: 		IWLightMan.OnClick       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_IWLightMan+40)
MOVT	R0, #hi_addr(_IWLightMan+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4848 :: 		IWLightMan.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_IWLightMan+44)
MOVT	R0, #hi_addr(_IWLightMan+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4850 :: 		LighOKMan.OwnerScreen   = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_LighOKMan+0)
MOVT	R0, #hi_addr(_LighOKMan+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4851 :: 		LighOKMan.Order         = 37;
MOVS	R1, #37
MOVW	R0, #lo_addr(_LighOKMan+4)
MOVT	R0, #hi_addr(_LighOKMan+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4852 :: 		LighOKMan.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_LighOKMan+5)
MOVT	R0, #hi_addr(_LighOKMan+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4853 :: 		LighOKMan.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_LighOKMan+6)
MOVT	R0, #hi_addr(_LighOKMan+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4854 :: 		LighOKMan.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_LighOKMan+7)
MOVT	R0, #hi_addr(_LighOKMan+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4855 :: 		LighOKMan.Left          = 594;
MOVW	R1, #594
SXTH	R1, R1
MOVW	R0, #lo_addr(_LighOKMan+8)
MOVT	R0, #hi_addr(_LighOKMan+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4856 :: 		LighOKMan.Top           = 245;
MOVS	R1, #245
SXTH	R1, R1
MOVW	R0, #lo_addr(_LighOKMan+10)
MOVT	R0, #hi_addr(_LighOKMan+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4857 :: 		LighOKMan.Radius        = 30;
MOVS	R1, #30
SXTH	R1, R1
MOVW	R0, #lo_addr(_LighOKMan+12)
MOVT	R0, #hi_addr(_LighOKMan+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4858 :: 		LighOKMan.Pen_Width     = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_LighOKMan+14)
MOVT	R0, #hi_addr(_LighOKMan+14)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4859 :: 		LighOKMan.Pen_Color     = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_LighOKMan+16)
MOVT	R0, #hi_addr(_LighOKMan+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4860 :: 		LighOKMan.Color         = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_LighOKMan+20)
MOVT	R0, #hi_addr(_LighOKMan+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4861 :: 		LighOKMan.Press_Color   = 0xE2E2E2;
MOVW	R1, #58082
MOVT	R1, #226
MOVW	R0, #lo_addr(_LighOKMan+24)
MOVT	R0, #hi_addr(_LighOKMan+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4862 :: 		LighOKMan.Caption       = LighOKMan_Caption;
MOVW	R1, #lo_addr(_LighOKMan_Caption+0)
MOVT	R1, #hi_addr(_LighOKMan_Caption+0)
MOVW	R0, #lo_addr(_LighOKMan+28)
MOVT	R0, #hi_addr(_LighOKMan+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4863 :: 		LighOKMan.TextAlign     = taCenter;
MOVS	R1, #2
MOVW	R0, #lo_addr(_LighOKMan+32)
MOVT	R0, #hi_addr(_LighOKMan+32)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4864 :: 		LighOKMan.FontName      = Tahoma_29x29_Bold;
MOVW	R1, #41981
MOVW	R0, #lo_addr(_LighOKMan+36)
MOVT	R0, #hi_addr(_LighOKMan+36)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4865 :: 		LighOKMan.Font_Color    = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_LighOKMan+40)
MOVT	R0, #hi_addr(_LighOKMan+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4866 :: 		LighOKMan.FontHandle    = 6;
MOVS	R1, #6
MOVW	R0, #lo_addr(_LighOKMan+44)
MOVT	R0, #hi_addr(_LighOKMan+44)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4867 :: 		LighOKMan.Source        = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_LighOKMan+48)
MOVT	R0, #hi_addr(_LighOKMan+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4868 :: 		LighOKMan.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_LighOKMan+52)
MOVT	R0, #hi_addr(_LighOKMan+52)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4869 :: 		LighOKMan.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_LighOKMan+56)
MOVT	R0, #hi_addr(_LighOKMan+56)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4870 :: 		LighOKMan.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_LighOKMan+60)
MOVT	R0, #hi_addr(_LighOKMan+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4871 :: 		LighOKMan.OnClick       = &LighOKMan_OnClick;
MOVW	R1, #lo_addr(_LighOKMan_OnClick+0)
MOVT	R1, #hi_addr(_LighOKMan_OnClick+0)
MOVW	R0, #lo_addr(_LighOKMan+64)
MOVT	R0, #hi_addr(_LighOKMan+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4872 :: 		LighOKMan.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_LighOKMan+68)
MOVT	R0, #hi_addr(_LighOKMan+68)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4874 :: 		LighOKMan_OnClick.Action       = LighOKManOnClick;
MOVW	R1, #lo_addr(_LighOKManOnClick+0)
MOVT	R1, #hi_addr(_LighOKManOnClick+0)
MOVW	R0, #lo_addr(_LighOKMan_OnClick+0)
MOVT	R0, #hi_addr(_LighOKMan_OnClick+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4875 :: 		LighOKMan_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
MOVS	R1, #0
MOVW	R0, #lo_addr(_LighOKMan_OnClick+4)
MOVT	R0, #hi_addr(_LighOKMan_OnClick+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4876 :: 		LighOKMan_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
MOVS	R1, #65
MOVW	R0, #lo_addr(_LighOKMan_OnClick+5)
MOVT	R0, #hi_addr(_LighOKMan_OnClick+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4877 :: 		LighOKMan_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
MOVS	R1, #81
MOVW	R0, #lo_addr(_LighOKMan_OnClick+6)
MOVT	R0, #hi_addr(_LighOKMan_OnClick+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4878 :: 		LighOKMan_OnClick.Sound.Volume = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_LighOKMan_OnClick+7)
MOVT	R0, #hi_addr(_LighOKMan_OnClick+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4880 :: 		LighErrMan.OwnerScreen   = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_LighErrMan+0)
MOVT	R0, #hi_addr(_LighErrMan+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4881 :: 		LighErrMan.Order         = 38;
MOVS	R1, #38
MOVW	R0, #lo_addr(_LighErrMan+4)
MOVT	R0, #hi_addr(_LighErrMan+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4882 :: 		LighErrMan.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_LighErrMan+5)
MOVT	R0, #hi_addr(_LighErrMan+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4883 :: 		LighErrMan.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_LighErrMan+6)
MOVT	R0, #hi_addr(_LighErrMan+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4884 :: 		LighErrMan.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_LighErrMan+7)
MOVT	R0, #hi_addr(_LighErrMan+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4885 :: 		LighErrMan.Left          = 687;
MOVW	R1, #687
SXTH	R1, R1
MOVW	R0, #lo_addr(_LighErrMan+8)
MOVT	R0, #hi_addr(_LighErrMan+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4886 :: 		LighErrMan.Top           = 245;
MOVS	R1, #245
SXTH	R1, R1
MOVW	R0, #lo_addr(_LighErrMan+10)
MOVT	R0, #hi_addr(_LighErrMan+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4887 :: 		LighErrMan.Radius        = 30;
MOVS	R1, #30
SXTH	R1, R1
MOVW	R0, #lo_addr(_LighErrMan+12)
MOVT	R0, #hi_addr(_LighErrMan+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4888 :: 		LighErrMan.Pen_Width     = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_LighErrMan+14)
MOVT	R0, #hi_addr(_LighErrMan+14)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4889 :: 		LighErrMan.Pen_Color     = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_LighErrMan+16)
MOVT	R0, #hi_addr(_LighErrMan+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4890 :: 		LighErrMan.Color         = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_LighErrMan+20)
MOVT	R0, #hi_addr(_LighErrMan+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4891 :: 		LighErrMan.Press_Color   = 0xE2E2E2;
MOVW	R1, #58082
MOVT	R1, #226
MOVW	R0, #lo_addr(_LighErrMan+24)
MOVT	R0, #hi_addr(_LighErrMan+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4892 :: 		LighErrMan.Caption       = LighErrMan_Caption;
MOVW	R1, #lo_addr(_LighErrMan_Caption+0)
MOVT	R1, #hi_addr(_LighErrMan_Caption+0)
MOVW	R0, #lo_addr(_LighErrMan+28)
MOVT	R0, #hi_addr(_LighErrMan+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4893 :: 		LighErrMan.TextAlign     = taCenter;
MOVS	R1, #2
MOVW	R0, #lo_addr(_LighErrMan+32)
MOVT	R0, #hi_addr(_LighErrMan+32)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4894 :: 		LighErrMan.FontName      = Tahoma_25x25_Bold;
MOVW	R1, #31885
MOVW	R0, #lo_addr(_LighErrMan+36)
MOVT	R0, #hi_addr(_LighErrMan+36)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4895 :: 		LighErrMan.Font_Color    = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_LighErrMan+40)
MOVT	R0, #hi_addr(_LighErrMan+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4896 :: 		LighErrMan.FontHandle    = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_LighErrMan+44)
MOVT	R0, #hi_addr(_LighErrMan+44)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4897 :: 		LighErrMan.Source        = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_LighErrMan+48)
MOVT	R0, #hi_addr(_LighErrMan+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4898 :: 		LighErrMan.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_LighErrMan+52)
MOVT	R0, #hi_addr(_LighErrMan+52)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4899 :: 		LighErrMan.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_LighErrMan+56)
MOVT	R0, #hi_addr(_LighErrMan+56)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4900 :: 		LighErrMan.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_LighErrMan+60)
MOVT	R0, #hi_addr(_LighErrMan+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4901 :: 		LighErrMan.OnClick       = &LighErrMan_OnClick;
MOVW	R1, #lo_addr(_LighErrMan_OnClick+0)
MOVT	R1, #hi_addr(_LighErrMan_OnClick+0)
MOVW	R0, #lo_addr(_LighErrMan+64)
MOVT	R0, #hi_addr(_LighErrMan+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4902 :: 		LighErrMan.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_LighErrMan+68)
MOVT	R0, #hi_addr(_LighErrMan+68)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4904 :: 		LighErrMan_OnClick.Action       = LighErrManOnClick;
MOVW	R1, #lo_addr(_LighErrManOnClick+0)
MOVT	R1, #hi_addr(_LighErrManOnClick+0)
MOVW	R0, #lo_addr(_LighErrMan_OnClick+0)
MOVT	R0, #hi_addr(_LighErrMan_OnClick+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4905 :: 		LighErrMan_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
MOVS	R1, #0
MOVW	R0, #lo_addr(_LighErrMan_OnClick+4)
MOVT	R0, #hi_addr(_LighErrMan_OnClick+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4906 :: 		LighErrMan_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
MOVS	R1, #65
MOVW	R0, #lo_addr(_LighErrMan_OnClick+5)
MOVT	R0, #hi_addr(_LighErrMan_OnClick+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4907 :: 		LighErrMan_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
MOVS	R1, #81
MOVW	R0, #lo_addr(_LighErrMan_OnClick+6)
MOVT	R0, #hi_addr(_LighErrMan_OnClick+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4908 :: 		LighErrMan_OnClick.Sound.Volume = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_LighErrMan_OnClick+7)
MOVT	R0, #hi_addr(_LighErrMan_OnClick+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4910 :: 		RpmGagMan.OwnerScreen   = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_RpmGagMan+0)
MOVT	R0, #hi_addr(_RpmGagMan+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4911 :: 		RpmGagMan.Order         = 39;
MOVS	R1, #39
MOVW	R0, #lo_addr(_RpmGagMan+4)
MOVT	R0, #hi_addr(_RpmGagMan+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4912 :: 		RpmGagMan.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_RpmGagMan+5)
MOVT	R0, #hi_addr(_RpmGagMan+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4913 :: 		RpmGagMan.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_RpmGagMan+6)
MOVT	R0, #hi_addr(_RpmGagMan+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4914 :: 		RpmGagMan.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_RpmGagMan+7)
MOVT	R0, #hi_addr(_RpmGagMan+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4915 :: 		RpmGagMan.Left          = 300;
MOVW	R1, #300
SXTH	R1, R1
MOVW	R0, #lo_addr(_RpmGagMan+8)
MOVT	R0, #hi_addr(_RpmGagMan+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4916 :: 		RpmGagMan.Top           = 20;
MOVS	R1, #20
SXTH	R1, R1
MOVW	R0, #lo_addr(_RpmGagMan+10)
MOVT	R0, #hi_addr(_RpmGagMan+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4917 :: 		RpmGagMan.Radius        = 100;
MOVS	R1, #100
SXTH	R1, R1
MOVW	R0, #lo_addr(_RpmGagMan+12)
MOVT	R0, #hi_addr(_RpmGagMan+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4918 :: 		RpmGagMan.Pen_Width     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_RpmGagMan+14)
MOVT	R0, #hi_addr(_RpmGagMan+14)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4919 :: 		RpmGagMan.Pen_Color     = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_RpmGagMan+16)
MOVT	R0, #hi_addr(_RpmGagMan+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4920 :: 		RpmGagMan.Color         = 0xC0C0C0;
MOVW	R1, #49344
MOVT	R1, #192
MOVW	R0, #lo_addr(_RpmGagMan+20)
MOVT	R0, #hi_addr(_RpmGagMan+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4921 :: 		RpmGagMan.Press_Color   = 0x7AC6FE;
MOVW	R1, #50942
MOVT	R1, #122
MOVW	R0, #lo_addr(_RpmGagMan+24)
MOVT	R0, #hi_addr(_RpmGagMan+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4922 :: 		RpmGagMan.Major         = 7;
MOVS	R1, #7
MOVW	R0, #lo_addr(_RpmGagMan+28)
MOVT	R0, #hi_addr(_RpmGagMan+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4923 :: 		RpmGagMan.Minor         = 10;
MOVS	R1, #10
MOVW	R0, #lo_addr(_RpmGagMan+29)
MOVT	R0, #hi_addr(_RpmGagMan+29)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4924 :: 		RpmGagMan.Value         = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_RpmGagMan+30)
MOVT	R0, #hi_addr(_RpmGagMan+30)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4925 :: 		RpmGagMan.Range         = 70;
MOVS	R1, #70
MOVW	R0, #lo_addr(_RpmGagMan+32)
MOVT	R0, #hi_addr(_RpmGagMan+32)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4926 :: 		RpmGagMan.Flat          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_RpmGagMan+34)
MOVT	R0, #hi_addr(_RpmGagMan+34)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4927 :: 		RpmGagMan.NoBackground  = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_RpmGagMan+35)
MOVT	R0, #hi_addr(_RpmGagMan+35)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4928 :: 		RpmGagMan.NoPointer     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_RpmGagMan+36)
MOVT	R0, #hi_addr(_RpmGagMan+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4929 :: 		RpmGagMan.TicksVisible  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_RpmGagMan+37)
MOVT	R0, #hi_addr(_RpmGagMan+37)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4930 :: 		RpmGagMan.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_RpmGagMan+38)
MOVT	R0, #hi_addr(_RpmGagMan+38)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4931 :: 		RpmGagMan.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_RpmGagMan+40)
MOVT	R0, #hi_addr(_RpmGagMan+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4932 :: 		RpmGagMan.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_RpmGagMan+44)
MOVT	R0, #hi_addr(_RpmGagMan+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4933 :: 		RpmGagMan.OnClick       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_RpmGagMan+48)
MOVT	R0, #hi_addr(_RpmGagMan+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4934 :: 		RpmGagMan.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_RpmGagMan+52)
MOVT	R0, #hi_addr(_RpmGagMan+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4936 :: 		RpmNumMan.OwnerScreen   = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_RpmNumMan+0)
MOVT	R0, #hi_addr(_RpmNumMan+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4937 :: 		RpmNumMan.Order         = 40;
MOVS	R1, #40
MOVW	R0, #lo_addr(_RpmNumMan+4)
MOVT	R0, #hi_addr(_RpmNumMan+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4938 :: 		RpmNumMan.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_RpmNumMan+5)
MOVT	R0, #hi_addr(_RpmNumMan+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4939 :: 		RpmNumMan.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_RpmNumMan+6)
MOVT	R0, #hi_addr(_RpmNumMan+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4940 :: 		RpmNumMan.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_RpmNumMan+7)
MOVT	R0, #hi_addr(_RpmNumMan+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4941 :: 		RpmNumMan.Left          = 300;
MOVW	R1, #300
SXTH	R1, R1
MOVW	R0, #lo_addr(_RpmNumMan+8)
MOVT	R0, #hi_addr(_RpmNumMan+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4942 :: 		RpmNumMan.Top           = 200;
MOVS	R1, #200
SXTH	R1, R1
MOVW	R0, #lo_addr(_RpmNumMan+10)
MOVT	R0, #hi_addr(_RpmNumMan+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4943 :: 		RpmNumMan.Width         = 195;
MOVS	R1, #195
SXTH	R1, R1
MOVW	R0, #lo_addr(_RpmNumMan+12)
MOVT	R0, #hi_addr(_RpmNumMan+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4944 :: 		RpmNumMan.Height        = 42;
MOVS	R1, #42
SXTH	R1, R1
MOVW	R0, #lo_addr(_RpmNumMan+14)
MOVT	R0, #hi_addr(_RpmNumMan+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4945 :: 		RpmNumMan.Pen_Width     = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_RpmNumMan+16)
MOVT	R0, #hi_addr(_RpmNumMan+16)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4946 :: 		RpmNumMan.Pen_Color     = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_RpmNumMan+20)
MOVT	R0, #hi_addr(_RpmNumMan+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4947 :: 		RpmNumMan.Color         = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_RpmNumMan+24)
MOVT	R0, #hi_addr(_RpmNumMan+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4948 :: 		RpmNumMan.Press_Color   = 0xE2E2E2;
MOVW	R1, #58082
MOVT	R1, #226
MOVW	R0, #lo_addr(_RpmNumMan+28)
MOVT	R0, #hi_addr(_RpmNumMan+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4949 :: 		RpmNumMan.Caption       = RpmNumMan_Caption;
MOVW	R1, #lo_addr(_RpmNumMan_Caption+0)
MOVT	R1, #hi_addr(_RpmNumMan_Caption+0)
MOVW	R0, #lo_addr(_RpmNumMan+32)
MOVT	R0, #hi_addr(_RpmNumMan+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4950 :: 		RpmNumMan.TextAlign     = taCenter;
MOVS	R1, #2
MOVW	R0, #lo_addr(_RpmNumMan+36)
MOVT	R0, #hi_addr(_RpmNumMan+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4951 :: 		RpmNumMan.FontName      = Tahoma_25x25_Bold;
MOVW	R1, #31885
MOVW	R0, #lo_addr(_RpmNumMan+40)
MOVT	R0, #hi_addr(_RpmNumMan+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4952 :: 		RpmNumMan.Font_Color    = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_RpmNumMan+44)
MOVT	R0, #hi_addr(_RpmNumMan+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4953 :: 		RpmNumMan.FontHandle    = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_RpmNumMan+48)
MOVT	R0, #hi_addr(_RpmNumMan+48)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4954 :: 		RpmNumMan.Source        = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_RpmNumMan+52)
MOVT	R0, #hi_addr(_RpmNumMan+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4955 :: 		RpmNumMan.Corner_Radius = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_RpmNumMan+56)
MOVT	R0, #hi_addr(_RpmNumMan+56)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4956 :: 		RpmNumMan.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_RpmNumMan+57)
MOVT	R0, #hi_addr(_RpmNumMan+57)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4957 :: 		RpmNumMan.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_RpmNumMan+60)
MOVT	R0, #hi_addr(_RpmNumMan+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4958 :: 		RpmNumMan.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_RpmNumMan+64)
MOVT	R0, #hi_addr(_RpmNumMan+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4959 :: 		RpmNumMan.OnClick       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_RpmNumMan+68)
MOVT	R0, #hi_addr(_RpmNumMan+68)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4960 :: 		RpmNumMan.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_RpmNumMan+72)
MOVT	R0, #hi_addr(_RpmNumMan+72)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4962 :: 		Label43.OwnerScreen = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_Label43+0)
MOVT	R0, #hi_addr(_Label43+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4963 :: 		Label43.Order       = 41;
MOVS	R1, #41
MOVW	R0, #lo_addr(_Label43+4)
MOVT	R0, #hi_addr(_Label43+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4964 :: 		Label43.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label43+5)
MOVT	R0, #hi_addr(_Label43+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4965 :: 		Label43.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label43+6)
MOVT	R0, #hi_addr(_Label43+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4966 :: 		Label43.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label43+7)
MOVT	R0, #hi_addr(_Label43+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4967 :: 		Label43.Left        = 163;
MOVS	R1, #163
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label43+8)
MOVT	R0, #hi_addr(_Label43+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4968 :: 		Label43.Top         = 325;
MOVW	R1, #325
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label43+10)
MOVT	R0, #hi_addr(_Label43+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4969 :: 		Label43.Width       = 104;
MOVS	R1, #104
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label43+12)
MOVT	R0, #hi_addr(_Label43+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4970 :: 		Label43.Height      = 25;
MOVS	R1, #25
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label43+14)
MOVT	R0, #hi_addr(_Label43+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4971 :: 		Label43.Caption     = Label43_Caption;
MOVW	R1, #lo_addr(_Label43_Caption+0)
MOVT	R1, #hi_addr(_Label43_Caption+0)
MOVW	R0, #lo_addr(_Label43+16)
MOVT	R0, #hi_addr(_Label43+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4972 :: 		Label43.FontName    = Tahoma_19x23_Regular;
MOVW	R1, #10036
MOVW	R0, #lo_addr(_Label43+20)
MOVT	R0, #hi_addr(_Label43+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4973 :: 		Label43.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label43+24)
MOVT	R0, #hi_addr(_Label43+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4974 :: 		Label43.FontHandle  = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_Label43+28)
MOVT	R0, #hi_addr(_Label43+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4975 :: 		Label43.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label43+32)
MOVT	R0, #hi_addr(_Label43+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4976 :: 		Label43.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label43+36)
MOVT	R0, #hi_addr(_Label43+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4977 :: 		Label43.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label43+40)
MOVT	R0, #hi_addr(_Label43+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4978 :: 		Label43.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label43+44)
MOVT	R0, #hi_addr(_Label43+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4979 :: 		Label43.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label43+48)
MOVT	R0, #hi_addr(_Label43+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4980 :: 		Label43.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label43+52)
MOVT	R0, #hi_addr(_Label43+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4982 :: 		Label44.OwnerScreen = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_Label44+0)
MOVT	R0, #hi_addr(_Label44+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4983 :: 		Label44.Order       = 42;
MOVS	R1, #42
MOVW	R0, #lo_addr(_Label44+4)
MOVT	R0, #hi_addr(_Label44+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4984 :: 		Label44.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label44+5)
MOVT	R0, #hi_addr(_Label44+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4985 :: 		Label44.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label44+6)
MOVT	R0, #hi_addr(_Label44+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4986 :: 		Label44.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label44+7)
MOVT	R0, #hi_addr(_Label44+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4987 :: 		Label44.Left        = 377;
MOVW	R1, #377
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label44+8)
MOVT	R0, #hi_addr(_Label44+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4988 :: 		Label44.Top         = 325;
MOVW	R1, #325
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label44+10)
MOVT	R0, #hi_addr(_Label44+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4989 :: 		Label44.Width       = 125;
MOVS	R1, #125
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label44+12)
MOVT	R0, #hi_addr(_Label44+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4990 :: 		Label44.Height      = 25;
MOVS	R1, #25
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label44+14)
MOVT	R0, #hi_addr(_Label44+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4991 :: 		Label44.Caption     = Label44_Caption;
MOVW	R1, #lo_addr(_Label44_Caption+0)
MOVT	R1, #hi_addr(_Label44_Caption+0)
MOVW	R0, #lo_addr(_Label44+16)
MOVT	R0, #hi_addr(_Label44+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4992 :: 		Label44.FontName    = Tahoma_19x23_Regular;
MOVW	R1, #10036
MOVW	R0, #lo_addr(_Label44+20)
MOVT	R0, #hi_addr(_Label44+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4993 :: 		Label44.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label44+24)
MOVT	R0, #hi_addr(_Label44+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4994 :: 		Label44.FontHandle  = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_Label44+28)
MOVT	R0, #hi_addr(_Label44+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4995 :: 		Label44.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label44+32)
MOVT	R0, #hi_addr(_Label44+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4996 :: 		Label44.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label44+36)
MOVT	R0, #hi_addr(_Label44+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4997 :: 		Label44.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label44+40)
MOVT	R0, #hi_addr(_Label44+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4998 :: 		Label44.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label44+44)
MOVT	R0, #hi_addr(_Label44+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,4999 :: 		Label44.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label44+48)
MOVT	R0, #hi_addr(_Label44+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5000 :: 		Label44.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label44+52)
MOVT	R0, #hi_addr(_Label44+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5002 :: 		Label45.OwnerScreen = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_Label45+0)
MOVT	R0, #hi_addr(_Label45+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5003 :: 		Label45.Order       = 43;
MOVS	R1, #43
MOVW	R0, #lo_addr(_Label45+4)
MOVT	R0, #hi_addr(_Label45+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5004 :: 		Label45.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label45+5)
MOVT	R0, #hi_addr(_Label45+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5005 :: 		Label45.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label45+6)
MOVT	R0, #hi_addr(_Label45+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5006 :: 		Label45.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label45+7)
MOVT	R0, #hi_addr(_Label45+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5007 :: 		Label45.Left        = 575;
MOVW	R1, #575
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label45+8)
MOVT	R0, #hi_addr(_Label45+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5008 :: 		Label45.Top         = 325;
MOVW	R1, #325
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label45+10)
MOVT	R0, #hi_addr(_Label45+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5009 :: 		Label45.Width       = 194;
MOVS	R1, #194
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label45+12)
MOVT	R0, #hi_addr(_Label45+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5010 :: 		Label45.Height      = 25;
MOVS	R1, #25
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label45+14)
MOVT	R0, #hi_addr(_Label45+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5011 :: 		Label45.Caption     = Label45_Caption;
MOVW	R1, #lo_addr(_Label45_Caption+0)
MOVT	R1, #hi_addr(_Label45_Caption+0)
MOVW	R0, #lo_addr(_Label45+16)
MOVT	R0, #hi_addr(_Label45+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5012 :: 		Label45.FontName    = Tahoma_19x23_Regular;
MOVW	R1, #10036
MOVW	R0, #lo_addr(_Label45+20)
MOVT	R0, #hi_addr(_Label45+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5013 :: 		Label45.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label45+24)
MOVT	R0, #hi_addr(_Label45+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5014 :: 		Label45.FontHandle  = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_Label45+28)
MOVT	R0, #hi_addr(_Label45+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5015 :: 		Label45.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label45+32)
MOVT	R0, #hi_addr(_Label45+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5016 :: 		Label45.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label45+36)
MOVT	R0, #hi_addr(_Label45+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5017 :: 		Label45.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label45+40)
MOVT	R0, #hi_addr(_Label45+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5018 :: 		Label45.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label45+44)
MOVT	R0, #hi_addr(_Label45+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5019 :: 		Label45.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label45+48)
MOVT	R0, #hi_addr(_Label45+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5020 :: 		Label45.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label45+52)
MOVT	R0, #hi_addr(_Label45+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5022 :: 		Line13.OwnerScreen    = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_Line13+0)
MOVT	R0, #hi_addr(_Line13+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5023 :: 		Line13.Order          = 44;
MOVS	R1, #44
MOVW	R0, #lo_addr(_Line13+4)
MOVT	R0, #hi_addr(_Line13+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5024 :: 		Line13.Visible        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Line13+5)
MOVT	R0, #hi_addr(_Line13+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5025 :: 		Line13.Opacity        = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Line13+6)
MOVT	R0, #hi_addr(_Line13+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5026 :: 		Line13.Tag            = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Line13+7)
MOVT	R0, #hi_addr(_Line13+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5027 :: 		Line13.First_Point_X  = 325;
MOVW	R1, #325
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line13+8)
MOVT	R0, #hi_addr(_Line13+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5028 :: 		Line13.First_Point_Y  = 325;
MOVW	R1, #325
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line13+10)
MOVT	R0, #hi_addr(_Line13+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5029 :: 		Line13.Second_Point_X = 325;
MOVW	R1, #325
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line13+12)
MOVT	R0, #hi_addr(_Line13+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5030 :: 		Line13.Second_Point_Y = 470;
MOVW	R1, #470
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line13+14)
MOVT	R0, #hi_addr(_Line13+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5031 :: 		Line13.Pen_Width      = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_Line13+16)
MOVT	R0, #hi_addr(_Line13+16)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5032 :: 		Line13.Pen_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Line13+20)
MOVT	R0, #hi_addr(_Line13+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5034 :: 		Line14.OwnerScreen    = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_Line14+0)
MOVT	R0, #hi_addr(_Line14+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5035 :: 		Line14.Order          = 45;
MOVS	R1, #45
MOVW	R0, #lo_addr(_Line14+4)
MOVT	R0, #hi_addr(_Line14+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5036 :: 		Line14.Visible        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Line14+5)
MOVT	R0, #hi_addr(_Line14+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5037 :: 		Line14.Opacity        = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Line14+6)
MOVT	R0, #hi_addr(_Line14+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5038 :: 		Line14.Tag            = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Line14+7)
MOVT	R0, #hi_addr(_Line14+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5039 :: 		Line14.First_Point_X  = 550;
MOVW	R1, #550
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line14+8)
MOVT	R0, #hi_addr(_Line14+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5040 :: 		Line14.First_Point_Y  = 325;
MOVW	R1, #325
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line14+10)
MOVT	R0, #hi_addr(_Line14+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5041 :: 		Line14.Second_Point_X = 550;
MOVW	R1, #550
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line14+12)
MOVT	R0, #hi_addr(_Line14+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5042 :: 		Line14.Second_Point_Y = 470;
MOVW	R1, #470
SXTH	R1, R1
MOVW	R0, #lo_addr(_Line14+14)
MOVT	R0, #hi_addr(_Line14+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5043 :: 		Line14.Pen_Width      = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_Line14+16)
MOVT	R0, #hi_addr(_Line14+16)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5044 :: 		Line14.Pen_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Line14+20)
MOVT	R0, #hi_addr(_Line14+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5046 :: 		Label46.OwnerScreen = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_Label46+0)
MOVT	R0, #hi_addr(_Label46+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5047 :: 		Label46.Order       = 46;
MOVS	R1, #46
MOVW	R0, #lo_addr(_Label46+4)
MOVT	R0, #hi_addr(_Label46+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5048 :: 		Label46.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label46+5)
MOVT	R0, #hi_addr(_Label46+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5049 :: 		Label46.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label46+6)
MOVT	R0, #hi_addr(_Label46+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5050 :: 		Label46.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label46+7)
MOVT	R0, #hi_addr(_Label46+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5051 :: 		Label46.Left        = 356;
MOVW	R1, #356
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label46+8)
MOVT	R0, #hi_addr(_Label46+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5052 :: 		Label46.Top         = 245;
MOVS	R1, #245
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label46+10)
MOVT	R0, #hi_addr(_Label46+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5053 :: 		Label46.Width       = 87;
MOVS	R1, #87
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label46+12)
MOVT	R0, #hi_addr(_Label46+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5054 :: 		Label46.Height      = 28;
MOVS	R1, #28
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label46+14)
MOVT	R0, #hi_addr(_Label46+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5055 :: 		Label46.Caption     = Label46_Caption;
MOVW	R1, #lo_addr(_Label46_Caption+0)
MOVT	R1, #hi_addr(_Label46_Caption+0)
MOVW	R0, #lo_addr(_Label46+16)
MOVT	R0, #hi_addr(_Label46+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5056 :: 		Label46.FontName    = Tahoma_25x25_Bold;
MOVW	R1, #31885
MOVW	R0, #lo_addr(_Label46+20)
MOVT	R0, #hi_addr(_Label46+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5057 :: 		Label46.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label46+24)
MOVT	R0, #hi_addr(_Label46+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5058 :: 		Label46.FontHandle  = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_Label46+28)
MOVT	R0, #hi_addr(_Label46+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5059 :: 		Label46.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label46+32)
MOVT	R0, #hi_addr(_Label46+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5060 :: 		Label46.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label46+36)
MOVT	R0, #hi_addr(_Label46+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5061 :: 		Label46.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label46+40)
MOVT	R0, #hi_addr(_Label46+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5062 :: 		Label46.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label46+44)
MOVT	R0, #hi_addr(_Label46+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5063 :: 		Label46.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label46+48)
MOVT	R0, #hi_addr(_Label46+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5064 :: 		Label46.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label46+52)
MOVT	R0, #hi_addr(_Label46+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5066 :: 		Label47.OwnerScreen = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_Label47+0)
MOVT	R0, #hi_addr(_Label47+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5067 :: 		Label47.Order       = 47;
MOVS	R1, #47
MOVW	R0, #lo_addr(_Label47+4)
MOVT	R0, #hi_addr(_Label47+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5068 :: 		Label47.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label47+5)
MOVT	R0, #hi_addr(_Label47+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5069 :: 		Label47.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label47+6)
MOVT	R0, #hi_addr(_Label47+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5070 :: 		Label47.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label47+7)
MOVT	R0, #hi_addr(_Label47+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5071 :: 		Label47.Left        = 376;
MOVW	R1, #376
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label47+8)
MOVT	R0, #hi_addr(_Label47+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5072 :: 		Label47.Top         = 147;
MOVS	R1, #147
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label47+10)
MOVT	R0, #hi_addr(_Label47+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5073 :: 		Label47.Width       = 42;
MOVS	R1, #42
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label47+12)
MOVT	R0, #hi_addr(_Label47+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5074 :: 		Label47.Height      = 28;
MOVS	R1, #28
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label47+14)
MOVT	R0, #hi_addr(_Label47+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5075 :: 		Label47.Caption     = Label47_Caption;
MOVW	R1, #lo_addr(_Label47_Caption+0)
MOVT	R1, #hi_addr(_Label47_Caption+0)
MOVW	R0, #lo_addr(_Label47+16)
MOVT	R0, #hi_addr(_Label47+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5076 :: 		Label47.FontName    = Tahoma_21x25_Regular;
MOVW	R1, #24214
MOVW	R0, #lo_addr(_Label47+20)
MOVT	R0, #hi_addr(_Label47+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5077 :: 		Label47.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label47+24)
MOVT	R0, #hi_addr(_Label47+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5078 :: 		Label47.FontHandle  = 5;
MOVS	R1, #5
MOVW	R0, #lo_addr(_Label47+28)
MOVT	R0, #hi_addr(_Label47+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5079 :: 		Label47.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label47+32)
MOVT	R0, #hi_addr(_Label47+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5080 :: 		Label47.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label47+36)
MOVT	R0, #hi_addr(_Label47+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5081 :: 		Label47.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label47+40)
MOVT	R0, #hi_addr(_Label47+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5082 :: 		Label47.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label47+44)
MOVT	R0, #hi_addr(_Label47+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5083 :: 		Label47.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label47+48)
MOVT	R0, #hi_addr(_Label47+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5084 :: 		Label47.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label47+52)
MOVT	R0, #hi_addr(_Label47+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5086 :: 		Label48.OwnerScreen = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_Label48+0)
MOVT	R0, #hi_addr(_Label48+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5087 :: 		Label48.Order       = 48;
MOVS	R1, #48
MOVW	R0, #lo_addr(_Label48+4)
MOVT	R0, #hi_addr(_Label48+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5088 :: 		Label48.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label48+5)
MOVT	R0, #hi_addr(_Label48+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5089 :: 		Label48.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label48+6)
MOVT	R0, #hi_addr(_Label48+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5090 :: 		Label48.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label48+7)
MOVT	R0, #hi_addr(_Label48+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5091 :: 		Label48.Left        = 364;
MOVW	R1, #364
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label48+8)
MOVT	R0, #hi_addr(_Label48+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5092 :: 		Label48.Top         = 170;
MOVS	R1, #170
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label48+10)
MOVT	R0, #hi_addr(_Label48+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5093 :: 		Label48.Width       = 67;
MOVS	R1, #67
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label48+12)
MOVT	R0, #hi_addr(_Label48+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5094 :: 		Label48.Height      = 28;
MOVS	R1, #28
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label48+14)
MOVT	R0, #hi_addr(_Label48+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5095 :: 		Label48.Caption     = Label48_Caption;
MOVW	R1, #lo_addr(_Label48_Caption+0)
MOVT	R1, #hi_addr(_Label48_Caption+0)
MOVW	R0, #lo_addr(_Label48+16)
MOVT	R0, #hi_addr(_Label48+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5096 :: 		Label48.FontName    = Tahoma_21x25_Regular;
MOVW	R1, #24214
MOVW	R0, #lo_addr(_Label48+20)
MOVT	R0, #hi_addr(_Label48+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5097 :: 		Label48.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label48+24)
MOVT	R0, #hi_addr(_Label48+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5098 :: 		Label48.FontHandle  = 5;
MOVS	R1, #5
MOVW	R0, #lo_addr(_Label48+28)
MOVT	R0, #hi_addr(_Label48+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5099 :: 		Label48.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label48+32)
MOVT	R0, #hi_addr(_Label48+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5100 :: 		Label48.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label48+36)
MOVT	R0, #hi_addr(_Label48+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5101 :: 		Label48.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label48+40)
MOVT	R0, #hi_addr(_Label48+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5102 :: 		Label48.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label48+44)
MOVT	R0, #hi_addr(_Label48+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5103 :: 		Label48.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label48+48)
MOVT	R0, #hi_addr(_Label48+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5104 :: 		Label48.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label48+52)
MOVT	R0, #hi_addr(_Label48+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5106 :: 		Label49.OwnerScreen = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_Label49+0)
MOVT	R0, #hi_addr(_Label49+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5107 :: 		Label49.Order       = 49;
MOVS	R1, #49
MOVW	R0, #lo_addr(_Label49+4)
MOVT	R0, #hi_addr(_Label49+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5108 :: 		Label49.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label49+5)
MOVT	R0, #hi_addr(_Label49+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5109 :: 		Label49.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label49+6)
MOVT	R0, #hi_addr(_Label49+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5110 :: 		Label49.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label49+7)
MOVT	R0, #hi_addr(_Label49+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5111 :: 		Label49.Left        = 613;
MOVW	R1, #613
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label49+8)
MOVT	R0, #hi_addr(_Label49+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5112 :: 		Label49.Top         = 122;
MOVS	R1, #122
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label49+10)
MOVT	R0, #hi_addr(_Label49+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5113 :: 		Label49.Width       = 132;
MOVS	R1, #132
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label49+12)
MOVT	R0, #hi_addr(_Label49+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5114 :: 		Label49.Height      = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label49+14)
MOVT	R0, #hi_addr(_Label49+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5115 :: 		Label49.Caption     = Label49_Caption;
MOVW	R1, #lo_addr(_Label49_Caption+0)
MOVT	R1, #hi_addr(_Label49_Caption+0)
MOVW	R0, #lo_addr(_Label49+16)
MOVT	R0, #hi_addr(_Label49+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5116 :: 		Label49.FontName    = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_Label49+20)
MOVT	R0, #hi_addr(_Label49+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5117 :: 		Label49.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label49+24)
MOVT	R0, #hi_addr(_Label49+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5118 :: 		Label49.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label49+28)
MOVT	R0, #hi_addr(_Label49+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5119 :: 		Label49.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label49+32)
MOVT	R0, #hi_addr(_Label49+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5120 :: 		Label49.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label49+36)
MOVT	R0, #hi_addr(_Label49+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5121 :: 		Label49.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label49+40)
MOVT	R0, #hi_addr(_Label49+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5122 :: 		Label49.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label49+44)
MOVT	R0, #hi_addr(_Label49+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5123 :: 		Label49.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label49+48)
MOVT	R0, #hi_addr(_Label49+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5124 :: 		Label49.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label49+52)
MOVT	R0, #hi_addr(_Label49+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5126 :: 		Label50.OwnerScreen = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_Label50+0)
MOVT	R0, #hi_addr(_Label50+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5127 :: 		Label50.Order       = 50;
MOVS	R1, #50
MOVW	R0, #lo_addr(_Label50+4)
MOVT	R0, #hi_addr(_Label50+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5128 :: 		Label50.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label50+5)
MOVT	R0, #hi_addr(_Label50+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5129 :: 		Label50.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label50+6)
MOVT	R0, #hi_addr(_Label50+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5130 :: 		Label50.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label50+7)
MOVT	R0, #hi_addr(_Label50+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5131 :: 		Label50.Left        = 633;
MOVW	R1, #633
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label50+8)
MOVT	R0, #hi_addr(_Label50+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5132 :: 		Label50.Top         = 140;
MOVS	R1, #140
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label50+10)
MOVT	R0, #hi_addr(_Label50+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5133 :: 		Label50.Width       = 91;
MOVS	R1, #91
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label50+12)
MOVT	R0, #hi_addr(_Label50+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5134 :: 		Label50.Height      = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label50+14)
MOVT	R0, #hi_addr(_Label50+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5135 :: 		Label50.Caption     = Label50_Caption;
MOVW	R1, #lo_addr(_Label50_Caption+0)
MOVT	R1, #hi_addr(_Label50_Caption+0)
MOVW	R0, #lo_addr(_Label50+16)
MOVT	R0, #hi_addr(_Label50+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5136 :: 		Label50.FontName    = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_Label50+20)
MOVT	R0, #hi_addr(_Label50+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5137 :: 		Label50.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label50+24)
MOVT	R0, #hi_addr(_Label50+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5138 :: 		Label50.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label50+28)
MOVT	R0, #hi_addr(_Label50+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5139 :: 		Label50.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label50+32)
MOVT	R0, #hi_addr(_Label50+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5140 :: 		Label50.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label50+36)
MOVT	R0, #hi_addr(_Label50+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5141 :: 		Label50.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label50+40)
MOVT	R0, #hi_addr(_Label50+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5142 :: 		Label50.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label50+44)
MOVT	R0, #hi_addr(_Label50+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5143 :: 		Label50.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label50+48)
MOVT	R0, #hi_addr(_Label50+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5144 :: 		Label50.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label50+52)
MOVT	R0, #hi_addr(_Label50+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5146 :: 		Label51.OwnerScreen = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_Label51+0)
MOVT	R0, #hi_addr(_Label51+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5147 :: 		Label51.Order       = 51;
MOVS	R1, #51
MOVW	R0, #lo_addr(_Label51+4)
MOVT	R0, #hi_addr(_Label51+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5148 :: 		Label51.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label51+5)
MOVT	R0, #hi_addr(_Label51+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5149 :: 		Label51.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label51+6)
MOVT	R0, #hi_addr(_Label51+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5150 :: 		Label51.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label51+7)
MOVT	R0, #hi_addr(_Label51+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5151 :: 		Label51.Left        = 619;
MOVW	R1, #619
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label51+8)
MOVT	R0, #hi_addr(_Label51+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5152 :: 		Label51.Top         = 161;
MOVS	R1, #161
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label51+10)
MOVT	R0, #hi_addr(_Label51+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5153 :: 		Label51.Width       = 120;
MOVS	R1, #120
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label51+12)
MOVT	R0, #hi_addr(_Label51+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5154 :: 		Label51.Height      = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label51+14)
MOVT	R0, #hi_addr(_Label51+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5155 :: 		Label51.Caption     = Label51_Caption;
MOVW	R1, #lo_addr(_Label51_Caption+0)
MOVT	R1, #hi_addr(_Label51_Caption+0)
MOVW	R0, #lo_addr(_Label51+16)
MOVT	R0, #hi_addr(_Label51+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5156 :: 		Label51.FontName    = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_Label51+20)
MOVT	R0, #hi_addr(_Label51+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5157 :: 		Label51.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label51+24)
MOVT	R0, #hi_addr(_Label51+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5158 :: 		Label51.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label51+28)
MOVT	R0, #hi_addr(_Label51+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5159 :: 		Label51.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label51+32)
MOVT	R0, #hi_addr(_Label51+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5160 :: 		Label51.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label51+36)
MOVT	R0, #hi_addr(_Label51+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5161 :: 		Label51.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label51+40)
MOVT	R0, #hi_addr(_Label51+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5162 :: 		Label51.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label51+44)
MOVT	R0, #hi_addr(_Label51+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5163 :: 		Label51.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label51+48)
MOVT	R0, #hi_addr(_Label51+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5164 :: 		Label51.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label51+52)
MOVT	R0, #hi_addr(_Label51+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5166 :: 		Label52.OwnerScreen = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_Label52+0)
MOVT	R0, #hi_addr(_Label52+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5167 :: 		Label52.Order       = 52;
MOVS	R1, #52
MOVW	R0, #lo_addr(_Label52+4)
MOVT	R0, #hi_addr(_Label52+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5168 :: 		Label52.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label52+5)
MOVT	R0, #hi_addr(_Label52+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5169 :: 		Label52.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label52+6)
MOVT	R0, #hi_addr(_Label52+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5170 :: 		Label52.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label52+7)
MOVT	R0, #hi_addr(_Label52+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5171 :: 		Label52.Left        = 633;
MOVW	R1, #633
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label52+8)
MOVT	R0, #hi_addr(_Label52+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5172 :: 		Label52.Top         = 176;
MOVS	R1, #176
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label52+10)
MOVT	R0, #hi_addr(_Label52+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5173 :: 		Label52.Width       = 91;
MOVS	R1, #91
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label52+12)
MOVT	R0, #hi_addr(_Label52+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5174 :: 		Label52.Height      = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label52+14)
MOVT	R0, #hi_addr(_Label52+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5175 :: 		Label52.Caption     = Label52_Caption;
MOVW	R1, #lo_addr(_Label52_Caption+0)
MOVT	R1, #hi_addr(_Label52_Caption+0)
MOVW	R0, #lo_addr(_Label52+16)
MOVT	R0, #hi_addr(_Label52+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5176 :: 		Label52.FontName    = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_Label52+20)
MOVT	R0, #hi_addr(_Label52+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5177 :: 		Label52.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label52+24)
MOVT	R0, #hi_addr(_Label52+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5178 :: 		Label52.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label52+28)
MOVT	R0, #hi_addr(_Label52+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5179 :: 		Label52.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label52+32)
MOVT	R0, #hi_addr(_Label52+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5180 :: 		Label52.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label52+36)
MOVT	R0, #hi_addr(_Label52+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5181 :: 		Label52.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label52+40)
MOVT	R0, #hi_addr(_Label52+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5182 :: 		Label52.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label52+44)
MOVT	R0, #hi_addr(_Label52+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5183 :: 		Label52.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label52+48)
MOVT	R0, #hi_addr(_Label52+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5184 :: 		Label52.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label52+52)
MOVT	R0, #hi_addr(_Label52+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5186 :: 		Label53.OwnerScreen = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_Label53+0)
MOVT	R0, #hi_addr(_Label53+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5187 :: 		Label53.Order       = 53;
MOVS	R1, #53
MOVW	R0, #lo_addr(_Label53+4)
MOVT	R0, #hi_addr(_Label53+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5188 :: 		Label53.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label53+5)
MOVT	R0, #hi_addr(_Label53+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5189 :: 		Label53.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label53+6)
MOVT	R0, #hi_addr(_Label53+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5190 :: 		Label53.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label53+7)
MOVT	R0, #hi_addr(_Label53+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5191 :: 		Label53.Left        = 613;
MOVW	R1, #613
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label53+8)
MOVT	R0, #hi_addr(_Label53+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5192 :: 		Label53.Top         = 201;
MOVS	R1, #201
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label53+10)
MOVT	R0, #hi_addr(_Label53+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5193 :: 		Label53.Width       = 132;
MOVS	R1, #132
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label53+12)
MOVT	R0, #hi_addr(_Label53+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5194 :: 		Label53.Height      = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label53+14)
MOVT	R0, #hi_addr(_Label53+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5195 :: 		Label53.Caption     = Label53_Caption;
MOVW	R1, #lo_addr(_Label53_Caption+0)
MOVT	R1, #hi_addr(_Label53_Caption+0)
MOVW	R0, #lo_addr(_Label53+16)
MOVT	R0, #hi_addr(_Label53+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5196 :: 		Label53.FontName    = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_Label53+20)
MOVT	R0, #hi_addr(_Label53+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5197 :: 		Label53.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label53+24)
MOVT	R0, #hi_addr(_Label53+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5198 :: 		Label53.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label53+28)
MOVT	R0, #hi_addr(_Label53+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5199 :: 		Label53.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label53+32)
MOVT	R0, #hi_addr(_Label53+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5200 :: 		Label53.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label53+36)
MOVT	R0, #hi_addr(_Label53+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5201 :: 		Label53.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label53+40)
MOVT	R0, #hi_addr(_Label53+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5202 :: 		Label53.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label53+44)
MOVT	R0, #hi_addr(_Label53+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5203 :: 		Label53.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label53+48)
MOVT	R0, #hi_addr(_Label53+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5204 :: 		Label53.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label53+52)
MOVT	R0, #hi_addr(_Label53+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5206 :: 		Label54.OwnerScreen = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_Label54+0)
MOVT	R0, #hi_addr(_Label54+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5207 :: 		Label54.Order       = 54;
MOVS	R1, #54
MOVW	R0, #lo_addr(_Label54+4)
MOVT	R0, #hi_addr(_Label54+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5208 :: 		Label54.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label54+5)
MOVT	R0, #hi_addr(_Label54+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5209 :: 		Label54.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label54+6)
MOVT	R0, #hi_addr(_Label54+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5210 :: 		Label54.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label54+7)
MOVT	R0, #hi_addr(_Label54+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5211 :: 		Label54.Left        = 330;
MOVW	R1, #330
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label54+8)
MOVT	R0, #hi_addr(_Label54+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5212 :: 		Label54.Top         = 173;
MOVS	R1, #173
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label54+10)
MOVT	R0, #hi_addr(_Label54+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5213 :: 		Label54.Width       = 10;
MOVS	R1, #10
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label54+12)
MOVT	R0, #hi_addr(_Label54+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5214 :: 		Label54.Height      = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label54+14)
MOVT	R0, #hi_addr(_Label54+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5215 :: 		Label54.Caption     = Label54_Caption;
MOVW	R1, #lo_addr(_Label54_Caption+0)
MOVT	R1, #hi_addr(_Label54_Caption+0)
MOVW	R0, #lo_addr(_Label54+16)
MOVT	R0, #hi_addr(_Label54+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5216 :: 		Label54.FontName    = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_Label54+20)
MOVT	R0, #hi_addr(_Label54+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5217 :: 		Label54.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label54+24)
MOVT	R0, #hi_addr(_Label54+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5218 :: 		Label54.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label54+28)
MOVT	R0, #hi_addr(_Label54+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5219 :: 		Label54.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label54+32)
MOVT	R0, #hi_addr(_Label54+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5220 :: 		Label54.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label54+36)
MOVT	R0, #hi_addr(_Label54+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5221 :: 		Label54.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label54+40)
MOVT	R0, #hi_addr(_Label54+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5222 :: 		Label54.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label54+44)
MOVT	R0, #hi_addr(_Label54+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5223 :: 		Label54.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label54+48)
MOVT	R0, #hi_addr(_Label54+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5224 :: 		Label54.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label54+52)
MOVT	R0, #hi_addr(_Label54+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5226 :: 		Label55.OwnerScreen = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_Label55+0)
MOVT	R0, #hi_addr(_Label55+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5227 :: 		Label55.Order       = 55;
MOVS	R1, #55
MOVW	R0, #lo_addr(_Label55+4)
MOVT	R0, #hi_addr(_Label55+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5228 :: 		Label55.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label55+5)
MOVT	R0, #hi_addr(_Label55+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5229 :: 		Label55.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label55+6)
MOVT	R0, #hi_addr(_Label55+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5230 :: 		Label55.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label55+7)
MOVT	R0, #hi_addr(_Label55+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5231 :: 		Label55.Left        = 301;
MOVW	R1, #301
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label55+8)
MOVT	R0, #hi_addr(_Label55+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5232 :: 		Label55.Top         = 120;
MOVS	R1, #120
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label55+10)
MOVT	R0, #hi_addr(_Label55+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5233 :: 		Label55.Width       = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label55+12)
MOVT	R0, #hi_addr(_Label55+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5234 :: 		Label55.Height      = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label55+14)
MOVT	R0, #hi_addr(_Label55+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5235 :: 		Label55.Caption     = Label55_Caption;
MOVW	R1, #lo_addr(_Label55_Caption+0)
MOVT	R1, #hi_addr(_Label55_Caption+0)
MOVW	R0, #lo_addr(_Label55+16)
MOVT	R0, #hi_addr(_Label55+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5236 :: 		Label55.FontName    = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_Label55+20)
MOVT	R0, #hi_addr(_Label55+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5237 :: 		Label55.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label55+24)
MOVT	R0, #hi_addr(_Label55+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5238 :: 		Label55.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label55+28)
MOVT	R0, #hi_addr(_Label55+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5239 :: 		Label55.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label55+32)
MOVT	R0, #hi_addr(_Label55+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5240 :: 		Label55.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label55+36)
MOVT	R0, #hi_addr(_Label55+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5241 :: 		Label55.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label55+40)
MOVT	R0, #hi_addr(_Label55+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5242 :: 		Label55.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label55+44)
MOVT	R0, #hi_addr(_Label55+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5243 :: 		Label55.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label55+48)
MOVT	R0, #hi_addr(_Label55+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5244 :: 		Label55.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label55+52)
MOVT	R0, #hi_addr(_Label55+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5246 :: 		Label56.OwnerScreen = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_Label56+0)
MOVT	R0, #hi_addr(_Label56+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5247 :: 		Label56.Order       = 56;
MOVS	R1, #56
MOVW	R0, #lo_addr(_Label56+4)
MOVT	R0, #hi_addr(_Label56+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5248 :: 		Label56.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label56+5)
MOVT	R0, #hi_addr(_Label56+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5249 :: 		Label56.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label56+6)
MOVT	R0, #hi_addr(_Label56+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5250 :: 		Label56.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label56+7)
MOVT	R0, #hi_addr(_Label56+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5251 :: 		Label56.Left        = 313;
MOVW	R1, #313
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label56+8)
MOVT	R0, #hi_addr(_Label56+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5252 :: 		Label56.Top         = 65;
MOVS	R1, #65
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label56+10)
MOVT	R0, #hi_addr(_Label56+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5253 :: 		Label56.Width       = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label56+12)
MOVT	R0, #hi_addr(_Label56+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5254 :: 		Label56.Height      = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label56+14)
MOVT	R0, #hi_addr(_Label56+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5255 :: 		Label56.Caption     = Label56_Caption;
MOVW	R1, #lo_addr(_Label56_Caption+0)
MOVT	R1, #hi_addr(_Label56_Caption+0)
MOVW	R0, #lo_addr(_Label56+16)
MOVT	R0, #hi_addr(_Label56+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5256 :: 		Label56.FontName    = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_Label56+20)
MOVT	R0, #hi_addr(_Label56+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5257 :: 		Label56.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label56+24)
MOVT	R0, #hi_addr(_Label56+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5258 :: 		Label56.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label56+28)
MOVT	R0, #hi_addr(_Label56+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5259 :: 		Label56.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label56+32)
MOVT	R0, #hi_addr(_Label56+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5260 :: 		Label56.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label56+36)
MOVT	R0, #hi_addr(_Label56+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5261 :: 		Label56.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label56+40)
MOVT	R0, #hi_addr(_Label56+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5262 :: 		Label56.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label56+44)
MOVT	R0, #hi_addr(_Label56+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5263 :: 		Label56.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label56+48)
MOVT	R0, #hi_addr(_Label56+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5264 :: 		Label56.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label56+52)
MOVT	R0, #hi_addr(_Label56+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5266 :: 		Label57.OwnerScreen = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_Label57+0)
MOVT	R0, #hi_addr(_Label57+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5267 :: 		Label57.Order       = 57;
MOVS	R1, #57
MOVW	R0, #lo_addr(_Label57+4)
MOVT	R0, #hi_addr(_Label57+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5268 :: 		Label57.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label57+5)
MOVT	R0, #hi_addr(_Label57+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5269 :: 		Label57.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label57+6)
MOVT	R0, #hi_addr(_Label57+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5270 :: 		Label57.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label57+7)
MOVT	R0, #hi_addr(_Label57+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5271 :: 		Label57.Left        = 358;
MOVW	R1, #358
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label57+8)
MOVT	R0, #hi_addr(_Label57+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5272 :: 		Label57.Top         = 28;
MOVS	R1, #28
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label57+10)
MOVT	R0, #hi_addr(_Label57+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5273 :: 		Label57.Width       = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label57+12)
MOVT	R0, #hi_addr(_Label57+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5274 :: 		Label57.Height      = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label57+14)
MOVT	R0, #hi_addr(_Label57+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5275 :: 		Label57.Caption     = Label57_Caption;
MOVW	R1, #lo_addr(_Label57_Caption+0)
MOVT	R1, #hi_addr(_Label57_Caption+0)
MOVW	R0, #lo_addr(_Label57+16)
MOVT	R0, #hi_addr(_Label57+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5276 :: 		Label57.FontName    = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_Label57+20)
MOVT	R0, #hi_addr(_Label57+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5277 :: 		Label57.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label57+24)
MOVT	R0, #hi_addr(_Label57+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5278 :: 		Label57.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label57+28)
MOVT	R0, #hi_addr(_Label57+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5279 :: 		Label57.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label57+32)
MOVT	R0, #hi_addr(_Label57+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5280 :: 		Label57.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label57+36)
MOVT	R0, #hi_addr(_Label57+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5281 :: 		Label57.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label57+40)
MOVT	R0, #hi_addr(_Label57+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5282 :: 		Label57.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label57+44)
MOVT	R0, #hi_addr(_Label57+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5283 :: 		Label57.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label57+48)
MOVT	R0, #hi_addr(_Label57+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5284 :: 		Label57.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label57+52)
MOVT	R0, #hi_addr(_Label57+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5286 :: 		Label58.OwnerScreen = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_Label58+0)
MOVT	R0, #hi_addr(_Label58+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5287 :: 		Label58.Order       = 58;
MOVS	R1, #58
MOVW	R0, #lo_addr(_Label58+4)
MOVT	R0, #hi_addr(_Label58+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5288 :: 		Label58.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label58+5)
MOVT	R0, #hi_addr(_Label58+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5289 :: 		Label58.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label58+6)
MOVT	R0, #hi_addr(_Label58+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5290 :: 		Label58.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label58+7)
MOVT	R0, #hi_addr(_Label58+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5291 :: 		Label58.Left        = 423;
MOVW	R1, #423
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label58+8)
MOVT	R0, #hi_addr(_Label58+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5292 :: 		Label58.Top         = 28;
MOVS	R1, #28
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label58+10)
MOVT	R0, #hi_addr(_Label58+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5293 :: 		Label58.Width       = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label58+12)
MOVT	R0, #hi_addr(_Label58+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5294 :: 		Label58.Height      = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label58+14)
MOVT	R0, #hi_addr(_Label58+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5295 :: 		Label58.Caption     = Label58_Caption;
MOVW	R1, #lo_addr(_Label58_Caption+0)
MOVT	R1, #hi_addr(_Label58_Caption+0)
MOVW	R0, #lo_addr(_Label58+16)
MOVT	R0, #hi_addr(_Label58+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5296 :: 		Label58.FontName    = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_Label58+20)
MOVT	R0, #hi_addr(_Label58+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5297 :: 		Label58.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label58+24)
MOVT	R0, #hi_addr(_Label58+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5298 :: 		Label58.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label58+28)
MOVT	R0, #hi_addr(_Label58+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5299 :: 		Label58.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label58+32)
MOVT	R0, #hi_addr(_Label58+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5300 :: 		Label58.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label58+36)
MOVT	R0, #hi_addr(_Label58+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5301 :: 		Label58.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label58+40)
MOVT	R0, #hi_addr(_Label58+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5302 :: 		Label58.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label58+44)
MOVT	R0, #hi_addr(_Label58+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5303 :: 		Label58.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label58+48)
MOVT	R0, #hi_addr(_Label58+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5304 :: 		Label58.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label58+52)
MOVT	R0, #hi_addr(_Label58+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5306 :: 		Label59.OwnerScreen = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_Label59+0)
MOVT	R0, #hi_addr(_Label59+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5307 :: 		Label59.Order       = 59;
MOVS	R1, #59
MOVW	R0, #lo_addr(_Label59+4)
MOVT	R0, #hi_addr(_Label59+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5308 :: 		Label59.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label59+5)
MOVT	R0, #hi_addr(_Label59+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5309 :: 		Label59.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label59+6)
MOVT	R0, #hi_addr(_Label59+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5310 :: 		Label59.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label59+7)
MOVT	R0, #hi_addr(_Label59+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5311 :: 		Label59.Left        = 468;
MOVW	R1, #468
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label59+8)
MOVT	R0, #hi_addr(_Label59+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5312 :: 		Label59.Top         = 65;
MOVS	R1, #65
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label59+10)
MOVT	R0, #hi_addr(_Label59+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5313 :: 		Label59.Width       = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label59+12)
MOVT	R0, #hi_addr(_Label59+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5314 :: 		Label59.Height      = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label59+14)
MOVT	R0, #hi_addr(_Label59+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5315 :: 		Label59.Caption     = Label59_Caption;
MOVW	R1, #lo_addr(_Label59_Caption+0)
MOVT	R1, #hi_addr(_Label59_Caption+0)
MOVW	R0, #lo_addr(_Label59+16)
MOVT	R0, #hi_addr(_Label59+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5316 :: 		Label59.FontName    = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_Label59+20)
MOVT	R0, #hi_addr(_Label59+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5317 :: 		Label59.Font_Color  = 0xFF8000;
MOVW	R1, #32768
MOVT	R1, #255
MOVW	R0, #lo_addr(_Label59+24)
MOVT	R0, #hi_addr(_Label59+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5318 :: 		Label59.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label59+28)
MOVT	R0, #hi_addr(_Label59+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5319 :: 		Label59.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label59+32)
MOVT	R0, #hi_addr(_Label59+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5320 :: 		Label59.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label59+36)
MOVT	R0, #hi_addr(_Label59+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5321 :: 		Label59.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label59+40)
MOVT	R0, #hi_addr(_Label59+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5322 :: 		Label59.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label59+44)
MOVT	R0, #hi_addr(_Label59+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5323 :: 		Label59.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label59+48)
MOVT	R0, #hi_addr(_Label59+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5324 :: 		Label59.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label59+52)
MOVT	R0, #hi_addr(_Label59+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5326 :: 		Label60.OwnerScreen = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_Label60+0)
MOVT	R0, #hi_addr(_Label60+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5327 :: 		Label60.Order       = 60;
MOVS	R1, #60
MOVW	R0, #lo_addr(_Label60+4)
MOVT	R0, #hi_addr(_Label60+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5328 :: 		Label60.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label60+5)
MOVT	R0, #hi_addr(_Label60+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5329 :: 		Label60.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label60+6)
MOVT	R0, #hi_addr(_Label60+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5330 :: 		Label60.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label60+7)
MOVT	R0, #hi_addr(_Label60+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5331 :: 		Label60.Left        = 479;
MOVW	R1, #479
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label60+8)
MOVT	R0, #hi_addr(_Label60+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5332 :: 		Label60.Top         = 120;
MOVS	R1, #120
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label60+10)
MOVT	R0, #hi_addr(_Label60+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5333 :: 		Label60.Width       = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label60+12)
MOVT	R0, #hi_addr(_Label60+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5334 :: 		Label60.Height      = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label60+14)
MOVT	R0, #hi_addr(_Label60+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5335 :: 		Label60.Caption     = Label60_Caption;
MOVW	R1, #lo_addr(_Label60_Caption+0)
MOVT	R1, #hi_addr(_Label60_Caption+0)
MOVW	R0, #lo_addr(_Label60+16)
MOVT	R0, #hi_addr(_Label60+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5336 :: 		Label60.FontName    = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_Label60+20)
MOVT	R0, #hi_addr(_Label60+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5337 :: 		Label60.Font_Color  = 0xFF8000;
MOVW	R1, #32768
MOVT	R1, #255
MOVW	R0, #lo_addr(_Label60+24)
MOVT	R0, #hi_addr(_Label60+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5338 :: 		Label60.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label60+28)
MOVT	R0, #hi_addr(_Label60+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5339 :: 		Label60.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label60+32)
MOVT	R0, #hi_addr(_Label60+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5340 :: 		Label60.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label60+36)
MOVT	R0, #hi_addr(_Label60+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5341 :: 		Label60.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label60+40)
MOVT	R0, #hi_addr(_Label60+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5342 :: 		Label60.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label60+44)
MOVT	R0, #hi_addr(_Label60+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5343 :: 		Label60.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label60+48)
MOVT	R0, #hi_addr(_Label60+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5344 :: 		Label60.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label60+52)
MOVT	R0, #hi_addr(_Label60+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5346 :: 		Label61.OwnerScreen = &ManualCtrlScr;
MOVW	R1, #lo_addr(_ManualCtrlScr+0)
MOVT	R1, #hi_addr(_ManualCtrlScr+0)
MOVW	R0, #lo_addr(_Label61+0)
MOVT	R0, #hi_addr(_Label61+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5347 :: 		Label61.Order       = 61;
MOVS	R1, #61
MOVW	R0, #lo_addr(_Label61+4)
MOVT	R0, #hi_addr(_Label61+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5348 :: 		Label61.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label61+5)
MOVT	R0, #hi_addr(_Label61+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5349 :: 		Label61.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label61+6)
MOVT	R0, #hi_addr(_Label61+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5350 :: 		Label61.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label61+7)
MOVT	R0, #hi_addr(_Label61+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5351 :: 		Label61.Left        = 456;
MOVW	R1, #456
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label61+8)
MOVT	R0, #hi_addr(_Label61+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5352 :: 		Label61.Top         = 173;
MOVS	R1, #173
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label61+10)
MOVT	R0, #hi_addr(_Label61+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5353 :: 		Label61.Width       = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label61+12)
MOVT	R0, #hi_addr(_Label61+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5354 :: 		Label61.Height      = 21;
MOVS	R1, #21
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label61+14)
MOVT	R0, #hi_addr(_Label61+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5355 :: 		Label61.Caption     = Label61_Caption;
MOVW	R1, #lo_addr(_Label61_Caption+0)
MOVT	R1, #hi_addr(_Label61_Caption+0)
MOVW	R0, #lo_addr(_Label61+16)
MOVT	R0, #hi_addr(_Label61+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5356 :: 		Label61.FontName    = Tahoma_19x19_Bold;
MOVW	R1, #4111
MOVW	R0, #lo_addr(_Label61+20)
MOVT	R0, #hi_addr(_Label61+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5357 :: 		Label61.Font_Color  = 0xFF0000;
MOV	R1, #16711680
MOVW	R0, #lo_addr(_Label61+24)
MOVT	R0, #hi_addr(_Label61+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5358 :: 		Label61.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label61+28)
MOVT	R0, #hi_addr(_Label61+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5359 :: 		Label61.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label61+32)
MOVT	R0, #hi_addr(_Label61+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5360 :: 		Label61.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label61+36)
MOVT	R0, #hi_addr(_Label61+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5361 :: 		Label61.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label61+40)
MOVT	R0, #hi_addr(_Label61+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5362 :: 		Label61.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label61+44)
MOVT	R0, #hi_addr(_Label61+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5363 :: 		Label61.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label61+48)
MOVT	R0, #hi_addr(_Label61+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5364 :: 		Label61.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label61+52)
MOVT	R0, #hi_addr(_Label61+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5366 :: 		HomeAutomaticCtrl.OwnerScreen   = &HomeScr;
MOVW	R1, #lo_addr(_HomeScr+0)
MOVT	R1, #hi_addr(_HomeScr+0)
MOVW	R0, #lo_addr(_HomeAutomaticCtrl+0)
MOVT	R0, #hi_addr(_HomeAutomaticCtrl+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5367 :: 		HomeAutomaticCtrl.Order         = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeAutomaticCtrl+4)
MOVT	R0, #hi_addr(_HomeAutomaticCtrl+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5368 :: 		HomeAutomaticCtrl.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_HomeAutomaticCtrl+5)
MOVT	R0, #hi_addr(_HomeAutomaticCtrl+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5369 :: 		HomeAutomaticCtrl.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_HomeAutomaticCtrl+6)
MOVT	R0, #hi_addr(_HomeAutomaticCtrl+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5370 :: 		HomeAutomaticCtrl.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_HomeAutomaticCtrl+7)
MOVT	R0, #hi_addr(_HomeAutomaticCtrl+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5371 :: 		HomeAutomaticCtrl.Left          = 600;
MOVW	R1, #600
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeAutomaticCtrl+8)
MOVT	R0, #hi_addr(_HomeAutomaticCtrl+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5372 :: 		HomeAutomaticCtrl.Top           = 50;
MOVS	R1, #50
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeAutomaticCtrl+10)
MOVT	R0, #hi_addr(_HomeAutomaticCtrl+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5373 :: 		HomeAutomaticCtrl.Width         = 100;
MOVS	R1, #100
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeAutomaticCtrl+12)
MOVT	R0, #hi_addr(_HomeAutomaticCtrl+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5374 :: 		HomeAutomaticCtrl.Height        = 100;
MOVS	R1, #100
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeAutomaticCtrl+14)
MOVT	R0, #hi_addr(_HomeAutomaticCtrl+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5375 :: 		HomeAutomaticCtrl.Picture_Name  = auto3sm_bmp;
MOVW	R1, #5710
MOVT	R1, #1
MOVW	R0, #lo_addr(_HomeAutomaticCtrl+16)
MOVT	R0, #hi_addr(_HomeAutomaticCtrl+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5376 :: 		HomeAutomaticCtrl.Picture_Type  = 7;
MOVS	R1, #7
MOVW	R0, #lo_addr(_HomeAutomaticCtrl+20)
MOVT	R0, #hi_addr(_HomeAutomaticCtrl+20)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5377 :: 		HomeAutomaticCtrl.Picture_Ratio = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_HomeAutomaticCtrl+21)
MOVT	R0, #hi_addr(_HomeAutomaticCtrl+21)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5378 :: 		HomeAutomaticCtrl.Blend_Color   = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_HomeAutomaticCtrl+24)
MOVT	R0, #hi_addr(_HomeAutomaticCtrl+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5379 :: 		HomeAutomaticCtrl.Source        = -1L;
MOV	R1, #-1
MOVW	R0, #lo_addr(_HomeAutomaticCtrl+28)
MOVT	R0, #hi_addr(_HomeAutomaticCtrl+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5380 :: 		HomeAutomaticCtrl.RotationAngle = 0;
MOVS	R1, #0
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeAutomaticCtrl+32)
MOVT	R0, #hi_addr(_HomeAutomaticCtrl+32)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5381 :: 		HomeAutomaticCtrl.RotationCenterLeft = 612;
MOVW	R1, #612
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeAutomaticCtrl+34)
MOVT	R0, #hi_addr(_HomeAutomaticCtrl+34)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5382 :: 		HomeAutomaticCtrl.RotationCenterTop = 100;
MOVS	R1, #100
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeAutomaticCtrl+36)
MOVT	R0, #hi_addr(_HomeAutomaticCtrl+36)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5383 :: 		HomeAutomaticCtrl.ScaleX        = 1.0000;
VMOV.F32	S0, #1
MOVW	R0, #lo_addr(_HomeAutomaticCtrl+40)
MOVT	R0, #hi_addr(_HomeAutomaticCtrl+40)
VSTR	#1, S0, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5384 :: 		HomeAutomaticCtrl.ScaleY        = 1.0000;
VMOV.F32	S0, #1
MOVW	R0, #lo_addr(_HomeAutomaticCtrl+44)
MOVT	R0, #hi_addr(_HomeAutomaticCtrl+44)
VSTR	#1, S0, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5385 :: 		HomeAutomaticCtrl.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_HomeAutomaticCtrl+48)
MOVT	R0, #hi_addr(_HomeAutomaticCtrl+48)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5386 :: 		HomeAutomaticCtrl.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeAutomaticCtrl+52)
MOVT	R0, #hi_addr(_HomeAutomaticCtrl+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5387 :: 		HomeAutomaticCtrl.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeAutomaticCtrl+56)
MOVT	R0, #hi_addr(_HomeAutomaticCtrl+56)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5388 :: 		HomeAutomaticCtrl.OnClick       = &HomeAutomaticCtrl_OnClick;
MOVW	R1, #lo_addr(_HomeAutomaticCtrl_OnClick+0)
MOVT	R1, #hi_addr(_HomeAutomaticCtrl_OnClick+0)
MOVW	R0, #lo_addr(_HomeAutomaticCtrl+60)
MOVT	R0, #hi_addr(_HomeAutomaticCtrl+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5389 :: 		HomeAutomaticCtrl.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeAutomaticCtrl+64)
MOVT	R0, #hi_addr(_HomeAutomaticCtrl+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5391 :: 		HomeAutomaticCtrl_OnClick.Action       = HomeAutomaticCtrlOnClick;
MOVW	R1, #lo_addr(_HomeAutomaticCtrlOnClick+0)
MOVT	R1, #hi_addr(_HomeAutomaticCtrlOnClick+0)
MOVW	R0, #lo_addr(_HomeAutomaticCtrl_OnClick+0)
MOVT	R0, #hi_addr(_HomeAutomaticCtrl_OnClick+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5392 :: 		HomeAutomaticCtrl_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeAutomaticCtrl_OnClick+4)
MOVT	R0, #hi_addr(_HomeAutomaticCtrl_OnClick+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5393 :: 		HomeAutomaticCtrl_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
MOVS	R1, #65
MOVW	R0, #lo_addr(_HomeAutomaticCtrl_OnClick+5)
MOVT	R0, #hi_addr(_HomeAutomaticCtrl_OnClick+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5394 :: 		HomeAutomaticCtrl_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
MOVS	R1, #81
MOVW	R0, #lo_addr(_HomeAutomaticCtrl_OnClick+6)
MOVT	R0, #hi_addr(_HomeAutomaticCtrl_OnClick+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5395 :: 		HomeAutomaticCtrl_OnClick.Sound.Volume = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_HomeAutomaticCtrl_OnClick+7)
MOVT	R0, #hi_addr(_HomeAutomaticCtrl_OnClick+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5397 :: 		HomeSaveData.OwnerScreen   = &HomeScr;
MOVW	R1, #lo_addr(_HomeScr+0)
MOVT	R1, #hi_addr(_HomeScr+0)
MOVW	R0, #lo_addr(_HomeSaveData+0)
MOVT	R0, #hi_addr(_HomeSaveData+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5398 :: 		HomeSaveData.Order         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_HomeSaveData+4)
MOVT	R0, #hi_addr(_HomeSaveData+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5399 :: 		HomeSaveData.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_HomeSaveData+5)
MOVT	R0, #hi_addr(_HomeSaveData+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5400 :: 		HomeSaveData.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_HomeSaveData+6)
MOVT	R0, #hi_addr(_HomeSaveData+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5401 :: 		HomeSaveData.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_HomeSaveData+7)
MOVT	R0, #hi_addr(_HomeSaveData+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5402 :: 		HomeSaveData.Left          = 600;
MOVW	R1, #600
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeSaveData+8)
MOVT	R0, #hi_addr(_HomeSaveData+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5403 :: 		HomeSaveData.Top           = 300;
MOVW	R1, #300
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeSaveData+10)
MOVT	R0, #hi_addr(_HomeSaveData+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5404 :: 		HomeSaveData.Width         = 98;
MOVS	R1, #98
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeSaveData+12)
MOVT	R0, #hi_addr(_HomeSaveData+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5405 :: 		HomeSaveData.Height        = 83;
MOVS	R1, #83
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeSaveData+14)
MOVT	R0, #hi_addr(_HomeSaveData+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5406 :: 		HomeSaveData.Picture_Name  = folder2sm_bmp;
MOVW	R1, #25716
MOVT	R1, #1
MOVW	R0, #lo_addr(_HomeSaveData+16)
MOVT	R0, #hi_addr(_HomeSaveData+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5407 :: 		HomeSaveData.Picture_Type  = 7;
MOVS	R1, #7
MOVW	R0, #lo_addr(_HomeSaveData+20)
MOVT	R0, #hi_addr(_HomeSaveData+20)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5408 :: 		HomeSaveData.Picture_Ratio = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_HomeSaveData+21)
MOVT	R0, #hi_addr(_HomeSaveData+21)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5409 :: 		HomeSaveData.Blend_Color   = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_HomeSaveData+24)
MOVT	R0, #hi_addr(_HomeSaveData+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5410 :: 		HomeSaveData.Source        = -1L;
MOV	R1, #-1
MOVW	R0, #lo_addr(_HomeSaveData+28)
MOVT	R0, #hi_addr(_HomeSaveData+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5411 :: 		HomeSaveData.RotationAngle = 0;
MOVS	R1, #0
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeSaveData+32)
MOVT	R0, #hi_addr(_HomeSaveData+32)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5412 :: 		HomeSaveData.RotationCenterLeft = 614;
MOVW	R1, #614
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeSaveData+34)
MOVT	R0, #hi_addr(_HomeSaveData+34)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5413 :: 		HomeSaveData.RotationCenterTop = 282;
MOVW	R1, #282
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeSaveData+36)
MOVT	R0, #hi_addr(_HomeSaveData+36)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5414 :: 		HomeSaveData.ScaleX        = 1.0000;
VMOV.F32	S0, #1
MOVW	R0, #lo_addr(_HomeSaveData+40)
MOVT	R0, #hi_addr(_HomeSaveData+40)
VSTR	#1, S0, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5415 :: 		HomeSaveData.ScaleY        = 1.0000;
VMOV.F32	S0, #1
MOVW	R0, #lo_addr(_HomeSaveData+44)
MOVT	R0, #hi_addr(_HomeSaveData+44)
VSTR	#1, S0, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5416 :: 		HomeSaveData.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_HomeSaveData+48)
MOVT	R0, #hi_addr(_HomeSaveData+48)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5417 :: 		HomeSaveData.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeSaveData+52)
MOVT	R0, #hi_addr(_HomeSaveData+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5418 :: 		HomeSaveData.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeSaveData+56)
MOVT	R0, #hi_addr(_HomeSaveData+56)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5419 :: 		HomeSaveData.OnClick       = &HomeSaveData_OnClick;
MOVW	R1, #lo_addr(_HomeSaveData_OnClick+0)
MOVT	R1, #hi_addr(_HomeSaveData_OnClick+0)
MOVW	R0, #lo_addr(_HomeSaveData+60)
MOVT	R0, #hi_addr(_HomeSaveData+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5420 :: 		HomeSaveData.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeSaveData+64)
MOVT	R0, #hi_addr(_HomeSaveData+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5422 :: 		HomeSaveData_OnClick.Action       = HomeSaveDataOnClick;
MOVW	R1, #lo_addr(_HomeSaveDataOnClick+0)
MOVT	R1, #hi_addr(_HomeSaveDataOnClick+0)
MOVW	R0, #lo_addr(_HomeSaveData_OnClick+0)
MOVT	R0, #hi_addr(_HomeSaveData_OnClick+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5423 :: 		HomeSaveData_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeSaveData_OnClick+4)
MOVT	R0, #hi_addr(_HomeSaveData_OnClick+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5424 :: 		HomeSaveData_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
MOVS	R1, #65
MOVW	R0, #lo_addr(_HomeSaveData_OnClick+5)
MOVT	R0, #hi_addr(_HomeSaveData_OnClick+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5425 :: 		HomeSaveData_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
MOVS	R1, #81
MOVW	R0, #lo_addr(_HomeSaveData_OnClick+6)
MOVT	R0, #hi_addr(_HomeSaveData_OnClick+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5426 :: 		HomeSaveData_OnClick.Sound.Volume = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_HomeSaveData_OnClick+7)
MOVT	R0, #hi_addr(_HomeSaveData_OnClick+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5428 :: 		HomeEngineInfo.OwnerScreen   = &HomeScr;
MOVW	R1, #lo_addr(_HomeScr+0)
MOVT	R1, #hi_addr(_HomeScr+0)
MOVW	R0, #lo_addr(_HomeEngineInfo+0)
MOVT	R0, #hi_addr(_HomeEngineInfo+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5429 :: 		HomeEngineInfo.Order         = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_HomeEngineInfo+4)
MOVT	R0, #hi_addr(_HomeEngineInfo+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5430 :: 		HomeEngineInfo.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_HomeEngineInfo+5)
MOVT	R0, #hi_addr(_HomeEngineInfo+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5431 :: 		HomeEngineInfo.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_HomeEngineInfo+6)
MOVT	R0, #hi_addr(_HomeEngineInfo+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5432 :: 		HomeEngineInfo.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_HomeEngineInfo+7)
MOVT	R0, #hi_addr(_HomeEngineInfo+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5433 :: 		HomeEngineInfo.Left          = 95;
MOVS	R1, #95
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeEngineInfo+8)
MOVT	R0, #hi_addr(_HomeEngineInfo+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5434 :: 		HomeEngineInfo.Top           = 300;
MOVW	R1, #300
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeEngineInfo+10)
MOVT	R0, #hi_addr(_HomeEngineInfo+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5435 :: 		HomeEngineInfo.Width         = 100;
MOVS	R1, #100
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeEngineInfo+12)
MOVT	R0, #hi_addr(_HomeEngineInfo+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5436 :: 		HomeEngineInfo.Height        = 100;
MOVS	R1, #100
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeEngineInfo+14)
MOVT	R0, #hi_addr(_HomeEngineInfo+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5437 :: 		HomeEngineInfo.Picture_Name  = engine1sm_bmp;
MOVW	R1, #41990
MOVT	R1, #1
MOVW	R0, #lo_addr(_HomeEngineInfo+16)
MOVT	R0, #hi_addr(_HomeEngineInfo+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5438 :: 		HomeEngineInfo.Picture_Type  = 7;
MOVS	R1, #7
MOVW	R0, #lo_addr(_HomeEngineInfo+20)
MOVT	R0, #hi_addr(_HomeEngineInfo+20)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5439 :: 		HomeEngineInfo.Picture_Ratio = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_HomeEngineInfo+21)
MOVT	R0, #hi_addr(_HomeEngineInfo+21)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5440 :: 		HomeEngineInfo.Blend_Color   = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_HomeEngineInfo+24)
MOVT	R0, #hi_addr(_HomeEngineInfo+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5441 :: 		HomeEngineInfo.Source        = -1L;
MOV	R1, #-1
MOVW	R0, #lo_addr(_HomeEngineInfo+28)
MOVT	R0, #hi_addr(_HomeEngineInfo+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5442 :: 		HomeEngineInfo.RotationAngle = 0;
MOVS	R1, #0
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeEngineInfo+32)
MOVT	R0, #hi_addr(_HomeEngineInfo+32)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5443 :: 		HomeEngineInfo.RotationCenterLeft = 145;
MOVS	R1, #145
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeEngineInfo+34)
MOVT	R0, #hi_addr(_HomeEngineInfo+34)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5444 :: 		HomeEngineInfo.RotationCenterTop = 278;
MOVW	R1, #278
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeEngineInfo+36)
MOVT	R0, #hi_addr(_HomeEngineInfo+36)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5445 :: 		HomeEngineInfo.ScaleX        = 1.0000;
VMOV.F32	S0, #1
MOVW	R0, #lo_addr(_HomeEngineInfo+40)
MOVT	R0, #hi_addr(_HomeEngineInfo+40)
VSTR	#1, S0, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5446 :: 		HomeEngineInfo.ScaleY        = 1.0000;
VMOV.F32	S0, #1
MOVW	R0, #lo_addr(_HomeEngineInfo+44)
MOVT	R0, #hi_addr(_HomeEngineInfo+44)
VSTR	#1, S0, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5447 :: 		HomeEngineInfo.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_HomeEngineInfo+48)
MOVT	R0, #hi_addr(_HomeEngineInfo+48)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5448 :: 		HomeEngineInfo.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeEngineInfo+52)
MOVT	R0, #hi_addr(_HomeEngineInfo+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5449 :: 		HomeEngineInfo.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeEngineInfo+56)
MOVT	R0, #hi_addr(_HomeEngineInfo+56)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5450 :: 		HomeEngineInfo.OnClick       = &HomeEngineInfo_OnClick;
MOVW	R1, #lo_addr(_HomeEngineInfo_OnClick+0)
MOVT	R1, #hi_addr(_HomeEngineInfo_OnClick+0)
MOVW	R0, #lo_addr(_HomeEngineInfo+60)
MOVT	R0, #hi_addr(_HomeEngineInfo+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5451 :: 		HomeEngineInfo.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeEngineInfo+64)
MOVT	R0, #hi_addr(_HomeEngineInfo+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5453 :: 		HomeEngineInfo_OnClick.Action       = HomeEngineInfoOnClick;
MOVW	R1, #lo_addr(_HomeEngineInfoOnClick+0)
MOVT	R1, #hi_addr(_HomeEngineInfoOnClick+0)
MOVW	R0, #lo_addr(_HomeEngineInfo_OnClick+0)
MOVT	R0, #hi_addr(_HomeEngineInfo_OnClick+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5454 :: 		HomeEngineInfo_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeEngineInfo_OnClick+4)
MOVT	R0, #hi_addr(_HomeEngineInfo_OnClick+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5455 :: 		HomeEngineInfo_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
MOVS	R1, #65
MOVW	R0, #lo_addr(_HomeEngineInfo_OnClick+5)
MOVT	R0, #hi_addr(_HomeEngineInfo_OnClick+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5456 :: 		HomeEngineInfo_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
MOVS	R1, #81
MOVW	R0, #lo_addr(_HomeEngineInfo_OnClick+6)
MOVT	R0, #hi_addr(_HomeEngineInfo_OnClick+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5457 :: 		HomeEngineInfo_OnClick.Sound.Volume = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_HomeEngineInfo_OnClick+7)
MOVT	R0, #hi_addr(_HomeEngineInfo_OnClick+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5459 :: 		HomeAdjustments.OwnerScreen   = &HomeScr;
MOVW	R1, #lo_addr(_HomeScr+0)
MOVT	R1, #hi_addr(_HomeScr+0)
MOVW	R0, #lo_addr(_HomeAdjustments+0)
MOVT	R0, #hi_addr(_HomeAdjustments+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5460 :: 		HomeAdjustments.Order         = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_HomeAdjustments+4)
MOVT	R0, #hi_addr(_HomeAdjustments+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5461 :: 		HomeAdjustments.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_HomeAdjustments+5)
MOVT	R0, #hi_addr(_HomeAdjustments+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5462 :: 		HomeAdjustments.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_HomeAdjustments+6)
MOVT	R0, #hi_addr(_HomeAdjustments+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5463 :: 		HomeAdjustments.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_HomeAdjustments+7)
MOVT	R0, #hi_addr(_HomeAdjustments+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5464 :: 		HomeAdjustments.Left          = 257;
MOVW	R1, #257
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeAdjustments+8)
MOVT	R0, #hi_addr(_HomeAdjustments+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5465 :: 		HomeAdjustments.Top           = 50;
MOVS	R1, #50
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeAdjustments+10)
MOVT	R0, #hi_addr(_HomeAdjustments+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5466 :: 		HomeAdjustments.Width         = 102;
MOVS	R1, #102
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeAdjustments+12)
MOVT	R0, #hi_addr(_HomeAdjustments+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5467 :: 		HomeAdjustments.Height        = 102;
MOVS	R1, #102
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeAdjustments+14)
MOVT	R0, #hi_addr(_HomeAdjustments+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5468 :: 		HomeAdjustments.Picture_Name  = settings3sm_bmp;
MOVW	R1, #61996
MOVT	R1, #1
MOVW	R0, #lo_addr(_HomeAdjustments+16)
MOVT	R0, #hi_addr(_HomeAdjustments+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5469 :: 		HomeAdjustments.Picture_Type  = 7;
MOVS	R1, #7
MOVW	R0, #lo_addr(_HomeAdjustments+20)
MOVT	R0, #hi_addr(_HomeAdjustments+20)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5470 :: 		HomeAdjustments.Picture_Ratio = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_HomeAdjustments+21)
MOVT	R0, #hi_addr(_HomeAdjustments+21)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5471 :: 		HomeAdjustments.Blend_Color   = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_HomeAdjustments+24)
MOVT	R0, #hi_addr(_HomeAdjustments+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5472 :: 		HomeAdjustments.Source        = -1L;
MOV	R1, #-1
MOVW	R0, #lo_addr(_HomeAdjustments+28)
MOVT	R0, #hi_addr(_HomeAdjustments+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5473 :: 		HomeAdjustments.RotationAngle = 0;
MOVS	R1, #0
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeAdjustments+32)
MOVT	R0, #hi_addr(_HomeAdjustments+32)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5474 :: 		HomeAdjustments.RotationCenterLeft = 285;
MOVW	R1, #285
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeAdjustments+34)
MOVT	R0, #hi_addr(_HomeAdjustments+34)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5475 :: 		HomeAdjustments.RotationCenterTop = 38;
MOVS	R1, #38
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeAdjustments+36)
MOVT	R0, #hi_addr(_HomeAdjustments+36)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5476 :: 		HomeAdjustments.ScaleX        = 1.0000;
VMOV.F32	S0, #1
MOVW	R0, #lo_addr(_HomeAdjustments+40)
MOVT	R0, #hi_addr(_HomeAdjustments+40)
VSTR	#1, S0, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5477 :: 		HomeAdjustments.ScaleY        = 1.0000;
VMOV.F32	S0, #1
MOVW	R0, #lo_addr(_HomeAdjustments+44)
MOVT	R0, #hi_addr(_HomeAdjustments+44)
VSTR	#1, S0, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5478 :: 		HomeAdjustments.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_HomeAdjustments+48)
MOVT	R0, #hi_addr(_HomeAdjustments+48)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5479 :: 		HomeAdjustments.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeAdjustments+52)
MOVT	R0, #hi_addr(_HomeAdjustments+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5480 :: 		HomeAdjustments.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeAdjustments+56)
MOVT	R0, #hi_addr(_HomeAdjustments+56)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5481 :: 		HomeAdjustments.OnClick       = &HomeAdjustments_OnClick;
MOVW	R1, #lo_addr(_HomeAdjustments_OnClick+0)
MOVT	R1, #hi_addr(_HomeAdjustments_OnClick+0)
MOVW	R0, #lo_addr(_HomeAdjustments+60)
MOVT	R0, #hi_addr(_HomeAdjustments+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5482 :: 		HomeAdjustments.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeAdjustments+64)
MOVT	R0, #hi_addr(_HomeAdjustments+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5484 :: 		HomeAdjustments_OnClick.Action       = HomeAdjustmentsOnClick;
MOVW	R1, #lo_addr(_HomeAdjustmentsOnClick+0)
MOVT	R1, #hi_addr(_HomeAdjustmentsOnClick+0)
MOVW	R0, #lo_addr(_HomeAdjustments_OnClick+0)
MOVT	R0, #hi_addr(_HomeAdjustments_OnClick+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5485 :: 		HomeAdjustments_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeAdjustments_OnClick+4)
MOVT	R0, #hi_addr(_HomeAdjustments_OnClick+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5486 :: 		HomeAdjustments_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
MOVS	R1, #65
MOVW	R0, #lo_addr(_HomeAdjustments_OnClick+5)
MOVT	R0, #hi_addr(_HomeAdjustments_OnClick+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5487 :: 		HomeAdjustments_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
MOVS	R1, #81
MOVW	R0, #lo_addr(_HomeAdjustments_OnClick+6)
MOVT	R0, #hi_addr(_HomeAdjustments_OnClick+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5488 :: 		HomeAdjustments_OnClick.Sound.Volume = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_HomeAdjustments_OnClick+7)
MOVT	R0, #hi_addr(_HomeAdjustments_OnClick+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5490 :: 		HomeCtrlInfo.OwnerScreen   = &HomeScr;
MOVW	R1, #lo_addr(_HomeScr+0)
MOVT	R1, #hi_addr(_HomeScr+0)
MOVW	R0, #lo_addr(_HomeCtrlInfo+0)
MOVT	R0, #hi_addr(_HomeCtrlInfo+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5491 :: 		HomeCtrlInfo.Order         = 4;
MOVS	R1, #4
MOVW	R0, #lo_addr(_HomeCtrlInfo+4)
MOVT	R0, #hi_addr(_HomeCtrlInfo+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5492 :: 		HomeCtrlInfo.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_HomeCtrlInfo+5)
MOVT	R0, #hi_addr(_HomeCtrlInfo+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5493 :: 		HomeCtrlInfo.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_HomeCtrlInfo+6)
MOVT	R0, #hi_addr(_HomeCtrlInfo+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5494 :: 		HomeCtrlInfo.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_HomeCtrlInfo+7)
MOVT	R0, #hi_addr(_HomeCtrlInfo+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5495 :: 		HomeCtrlInfo.Left          = 95;
MOVS	R1, #95
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeCtrlInfo+8)
MOVT	R0, #hi_addr(_HomeCtrlInfo+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5496 :: 		HomeCtrlInfo.Top           = 50;
MOVS	R1, #50
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeCtrlInfo+10)
MOVT	R0, #hi_addr(_HomeCtrlInfo+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5497 :: 		HomeCtrlInfo.Width         = 112;
MOVS	R1, #112
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeCtrlInfo+12)
MOVT	R0, #hi_addr(_HomeCtrlInfo+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5498 :: 		HomeCtrlInfo.Height        = 112;
MOVS	R1, #112
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeCtrlInfo+14)
MOVT	R0, #hi_addr(_HomeCtrlInfo+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5499 :: 		HomeCtrlInfo.Picture_Name  = info3sm_bmp;
MOVW	R1, #17274
MOVT	R1, #2
MOVW	R0, #lo_addr(_HomeCtrlInfo+16)
MOVT	R0, #hi_addr(_HomeCtrlInfo+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5500 :: 		HomeCtrlInfo.Picture_Type  = 7;
MOVS	R1, #7
MOVW	R0, #lo_addr(_HomeCtrlInfo+20)
MOVT	R0, #hi_addr(_HomeCtrlInfo+20)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5501 :: 		HomeCtrlInfo.Picture_Ratio = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_HomeCtrlInfo+21)
MOVT	R0, #hi_addr(_HomeCtrlInfo+21)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5502 :: 		HomeCtrlInfo.Blend_Color   = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_HomeCtrlInfo+24)
MOVT	R0, #hi_addr(_HomeCtrlInfo+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5503 :: 		HomeCtrlInfo.Source        = -1L;
MOV	R1, #-1
MOVW	R0, #lo_addr(_HomeCtrlInfo+28)
MOVT	R0, #hi_addr(_HomeCtrlInfo+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5504 :: 		HomeCtrlInfo.RotationAngle = 0;
MOVS	R1, #0
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeCtrlInfo+32)
MOVT	R0, #hi_addr(_HomeCtrlInfo+32)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5505 :: 		HomeCtrlInfo.RotationCenterLeft = 151;
MOVS	R1, #151
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeCtrlInfo+34)
MOVT	R0, #hi_addr(_HomeCtrlInfo+34)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5506 :: 		HomeCtrlInfo.RotationCenterTop = 38;
MOVS	R1, #38
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeCtrlInfo+36)
MOVT	R0, #hi_addr(_HomeCtrlInfo+36)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5507 :: 		HomeCtrlInfo.ScaleX        = 1.0000;
VMOV.F32	S0, #1
MOVW	R0, #lo_addr(_HomeCtrlInfo+40)
MOVT	R0, #hi_addr(_HomeCtrlInfo+40)
VSTR	#1, S0, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5508 :: 		HomeCtrlInfo.ScaleY        = 1.0000;
VMOV.F32	S0, #1
MOVW	R0, #lo_addr(_HomeCtrlInfo+44)
MOVT	R0, #hi_addr(_HomeCtrlInfo+44)
VSTR	#1, S0, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5509 :: 		HomeCtrlInfo.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_HomeCtrlInfo+48)
MOVT	R0, #hi_addr(_HomeCtrlInfo+48)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5510 :: 		HomeCtrlInfo.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeCtrlInfo+52)
MOVT	R0, #hi_addr(_HomeCtrlInfo+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5511 :: 		HomeCtrlInfo.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeCtrlInfo+56)
MOVT	R0, #hi_addr(_HomeCtrlInfo+56)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5512 :: 		HomeCtrlInfo.OnClick       = &HomeCtrlInfo_OnClick;
MOVW	R1, #lo_addr(_HomeCtrlInfo_OnClick+0)
MOVT	R1, #hi_addr(_HomeCtrlInfo_OnClick+0)
MOVW	R0, #lo_addr(_HomeCtrlInfo+60)
MOVT	R0, #hi_addr(_HomeCtrlInfo+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5513 :: 		HomeCtrlInfo.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeCtrlInfo+64)
MOVT	R0, #hi_addr(_HomeCtrlInfo+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5515 :: 		HomeCtrlInfo_OnClick.Action       = HomeCtrlInfoOnClick;
MOVW	R1, #lo_addr(_HomeCtrlInfoOnClick+0)
MOVT	R1, #hi_addr(_HomeCtrlInfoOnClick+0)
MOVW	R0, #lo_addr(_HomeCtrlInfo_OnClick+0)
MOVT	R0, #hi_addr(_HomeCtrlInfo_OnClick+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5516 :: 		HomeCtrlInfo_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeCtrlInfo_OnClick+4)
MOVT	R0, #hi_addr(_HomeCtrlInfo_OnClick+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5517 :: 		HomeCtrlInfo_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
MOVS	R1, #65
MOVW	R0, #lo_addr(_HomeCtrlInfo_OnClick+5)
MOVT	R0, #hi_addr(_HomeCtrlInfo_OnClick+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5518 :: 		HomeCtrlInfo_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
MOVS	R1, #81
MOVW	R0, #lo_addr(_HomeCtrlInfo_OnClick+6)
MOVT	R0, #hi_addr(_HomeCtrlInfo_OnClick+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5519 :: 		HomeCtrlInfo_OnClick.Sound.Volume = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_HomeCtrlInfo_OnClick+7)
MOVT	R0, #hi_addr(_HomeCtrlInfo_OnClick+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5521 :: 		HomeManualCtrl.OwnerScreen   = &HomeScr;
MOVW	R1, #lo_addr(_HomeScr+0)
MOVT	R1, #hi_addr(_HomeScr+0)
MOVW	R0, #lo_addr(_HomeManualCtrl+0)
MOVT	R0, #hi_addr(_HomeManualCtrl+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5522 :: 		HomeManualCtrl.Order         = 5;
MOVS	R1, #5
MOVW	R0, #lo_addr(_HomeManualCtrl+4)
MOVT	R0, #hi_addr(_HomeManualCtrl+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5523 :: 		HomeManualCtrl.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_HomeManualCtrl+5)
MOVT	R0, #hi_addr(_HomeManualCtrl+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5524 :: 		HomeManualCtrl.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_HomeManualCtrl+6)
MOVT	R0, #hi_addr(_HomeManualCtrl+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5525 :: 		HomeManualCtrl.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_HomeManualCtrl+7)
MOVT	R0, #hi_addr(_HomeManualCtrl+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5526 :: 		HomeManualCtrl.Left          = 430;
MOVW	R1, #430
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeManualCtrl+8)
MOVT	R0, #hi_addr(_HomeManualCtrl+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5527 :: 		HomeManualCtrl.Top           = 50;
MOVS	R1, #50
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeManualCtrl+10)
MOVT	R0, #hi_addr(_HomeManualCtrl+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5528 :: 		HomeManualCtrl.Width         = 102;
MOVS	R1, #102
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeManualCtrl+12)
MOVT	R0, #hi_addr(_HomeManualCtrl+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5529 :: 		HomeManualCtrl.Height        = 102;
MOVS	R1, #102
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeManualCtrl+14)
MOVT	R0, #hi_addr(_HomeManualCtrl+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5530 :: 		HomeManualCtrl.Picture_Name  = manual1sm_bmp;
MOVW	R1, #42368
MOVT	R1, #2
MOVW	R0, #lo_addr(_HomeManualCtrl+16)
MOVT	R0, #hi_addr(_HomeManualCtrl+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5531 :: 		HomeManualCtrl.Picture_Type  = 7;
MOVS	R1, #7
MOVW	R0, #lo_addr(_HomeManualCtrl+20)
MOVT	R0, #hi_addr(_HomeManualCtrl+20)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5532 :: 		HomeManualCtrl.Picture_Ratio = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_HomeManualCtrl+21)
MOVT	R0, #hi_addr(_HomeManualCtrl+21)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5533 :: 		HomeManualCtrl.Blend_Color   = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_HomeManualCtrl+24)
MOVT	R0, #hi_addr(_HomeManualCtrl+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5534 :: 		HomeManualCtrl.Source        = -1L;
MOV	R1, #-1
MOVW	R0, #lo_addr(_HomeManualCtrl+28)
MOVT	R0, #hi_addr(_HomeManualCtrl+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5535 :: 		HomeManualCtrl.RotationAngle = 0;
MOVS	R1, #0
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeManualCtrl+32)
MOVT	R0, #hi_addr(_HomeManualCtrl+32)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5536 :: 		HomeManualCtrl.RotationCenterLeft = 436;
MOVW	R1, #436
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeManualCtrl+34)
MOVT	R0, #hi_addr(_HomeManualCtrl+34)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5537 :: 		HomeManualCtrl.RotationCenterTop = 101;
MOVS	R1, #101
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeManualCtrl+36)
MOVT	R0, #hi_addr(_HomeManualCtrl+36)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5538 :: 		HomeManualCtrl.ScaleX        = 1.0000;
VMOV.F32	S0, #1
MOVW	R0, #lo_addr(_HomeManualCtrl+40)
MOVT	R0, #hi_addr(_HomeManualCtrl+40)
VSTR	#1, S0, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5539 :: 		HomeManualCtrl.ScaleY        = 1.0000;
VMOV.F32	S0, #1
MOVW	R0, #lo_addr(_HomeManualCtrl+44)
MOVT	R0, #hi_addr(_HomeManualCtrl+44)
VSTR	#1, S0, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5540 :: 		HomeManualCtrl.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_HomeManualCtrl+48)
MOVT	R0, #hi_addr(_HomeManualCtrl+48)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5541 :: 		HomeManualCtrl.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeManualCtrl+52)
MOVT	R0, #hi_addr(_HomeManualCtrl+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5542 :: 		HomeManualCtrl.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeManualCtrl+56)
MOVT	R0, #hi_addr(_HomeManualCtrl+56)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5543 :: 		HomeManualCtrl.OnClick       = &HomeManualCtrl_OnClick;
MOVW	R1, #lo_addr(_HomeManualCtrl_OnClick+0)
MOVT	R1, #hi_addr(_HomeManualCtrl_OnClick+0)
MOVW	R0, #lo_addr(_HomeManualCtrl+60)
MOVT	R0, #hi_addr(_HomeManualCtrl+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5544 :: 		HomeManualCtrl.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeManualCtrl+64)
MOVT	R0, #hi_addr(_HomeManualCtrl+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5546 :: 		HomeManualCtrl_OnClick.Action       = HomeManualCtrlOnClick;
MOVW	R1, #lo_addr(_HomeManualCtrlOnClick+0)
MOVT	R1, #hi_addr(_HomeManualCtrlOnClick+0)
MOVW	R0, #lo_addr(_HomeManualCtrl_OnClick+0)
MOVT	R0, #hi_addr(_HomeManualCtrl_OnClick+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5547 :: 		HomeManualCtrl_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeManualCtrl_OnClick+4)
MOVT	R0, #hi_addr(_HomeManualCtrl_OnClick+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5548 :: 		HomeManualCtrl_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
MOVS	R1, #65
MOVW	R0, #lo_addr(_HomeManualCtrl_OnClick+5)
MOVT	R0, #hi_addr(_HomeManualCtrl_OnClick+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5549 :: 		HomeManualCtrl_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
MOVS	R1, #81
MOVW	R0, #lo_addr(_HomeManualCtrl_OnClick+6)
MOVT	R0, #hi_addr(_HomeManualCtrl_OnClick+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5550 :: 		HomeManualCtrl_OnClick.Sound.Volume = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_HomeManualCtrl_OnClick+7)
MOVT	R0, #hi_addr(_HomeManualCtrl_OnClick+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5552 :: 		Image11.OwnerScreen   = &HomeScr;
MOVW	R1, #lo_addr(_HomeScr+0)
MOVT	R1, #hi_addr(_HomeScr+0)
MOVW	R0, #lo_addr(_Image11+0)
MOVT	R0, #hi_addr(_Image11+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5553 :: 		Image11.Order         = 6;
MOVS	R1, #6
MOVW	R0, #lo_addr(_Image11+4)
MOVT	R0, #hi_addr(_Image11+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5554 :: 		Image11.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Image11+5)
MOVT	R0, #hi_addr(_Image11+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5555 :: 		Image11.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Image11+6)
MOVT	R0, #hi_addr(_Image11+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5556 :: 		Image11.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Image11+7)
MOVT	R0, #hi_addr(_Image11+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5557 :: 		Image11.Left          = 186;
MOVS	R1, #186
SXTH	R1, R1
MOVW	R0, #lo_addr(_Image11+8)
MOVT	R0, #hi_addr(_Image11+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5558 :: 		Image11.Top           = 173;
MOVS	R1, #173
SXTH	R1, R1
MOVW	R0, #lo_addr(_Image11+10)
MOVT	R0, #hi_addr(_Image11+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5559 :: 		Image11.Width         = 428;
MOVW	R1, #428
SXTH	R1, R1
MOVW	R0, #lo_addr(_Image11+12)
MOVT	R0, #hi_addr(_Image11+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5560 :: 		Image11.Height        = 112;
MOVS	R1, #112
SXTH	R1, R1
MOVW	R0, #lo_addr(_Image11+14)
MOVT	R0, #hi_addr(_Image11+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5561 :: 		Image11.Picture_Name  = EdeproLogoW_bmp;
MOVW	R1, #63182
MOVT	R1, #2
MOVW	R0, #lo_addr(_Image11+16)
MOVT	R0, #hi_addr(_Image11+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5562 :: 		Image11.Picture_Type  = 7;
MOVS	R1, #7
MOVW	R0, #lo_addr(_Image11+20)
MOVT	R0, #hi_addr(_Image11+20)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5563 :: 		Image11.Picture_Ratio = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Image11+21)
MOVT	R0, #hi_addr(_Image11+21)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5564 :: 		Image11.Blend_Color   = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_Image11+24)
MOVT	R0, #hi_addr(_Image11+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5565 :: 		Image11.Source        = -1L;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Image11+28)
MOVT	R0, #hi_addr(_Image11+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5566 :: 		Image11.RotationAngle = 0;
MOVS	R1, #0
SXTH	R1, R1
MOVW	R0, #lo_addr(_Image11+32)
MOVT	R0, #hi_addr(_Image11+32)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5567 :: 		Image11.RotationCenterLeft = 400;
MOVW	R1, #400
SXTH	R1, R1
MOVW	R0, #lo_addr(_Image11+34)
MOVT	R0, #hi_addr(_Image11+34)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5568 :: 		Image11.RotationCenterTop = 229;
MOVS	R1, #229
SXTH	R1, R1
MOVW	R0, #lo_addr(_Image11+36)
MOVT	R0, #hi_addr(_Image11+36)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5569 :: 		Image11.ScaleX        = 1.0000;
VMOV.F32	S0, #1
MOVW	R0, #lo_addr(_Image11+40)
MOVT	R0, #hi_addr(_Image11+40)
VSTR	#1, S0, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5570 :: 		Image11.ScaleY        = 1.0000;
VMOV.F32	S0, #1
MOVW	R0, #lo_addr(_Image11+44)
MOVT	R0, #hi_addr(_Image11+44)
VSTR	#1, S0, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5571 :: 		Image11.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Image11+48)
MOVT	R0, #hi_addr(_Image11+48)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5572 :: 		Image11.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Image11+52)
MOVT	R0, #hi_addr(_Image11+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5573 :: 		Image11.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Image11+56)
MOVT	R0, #hi_addr(_Image11+56)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5574 :: 		Image11.OnClick       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Image11+60)
MOVT	R0, #hi_addr(_Image11+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5575 :: 		Image11.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Image11+64)
MOVT	R0, #hi_addr(_Image11+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5577 :: 		HomeCheckList.OwnerScreen   = &HomeScr;
MOVW	R1, #lo_addr(_HomeScr+0)
MOVT	R1, #hi_addr(_HomeScr+0)
MOVW	R0, #lo_addr(_HomeCheckList+0)
MOVT	R0, #hi_addr(_HomeCheckList+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5578 :: 		HomeCheckList.Order         = 7;
MOVS	R1, #7
MOVW	R0, #lo_addr(_HomeCheckList+4)
MOVT	R0, #hi_addr(_HomeCheckList+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5579 :: 		HomeCheckList.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_HomeCheckList+5)
MOVT	R0, #hi_addr(_HomeCheckList+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5580 :: 		HomeCheckList.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_HomeCheckList+6)
MOVT	R0, #hi_addr(_HomeCheckList+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5581 :: 		HomeCheckList.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_HomeCheckList+7)
MOVT	R0, #hi_addr(_HomeCheckList+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5582 :: 		HomeCheckList.Left          = 257;
MOVW	R1, #257
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeCheckList+8)
MOVT	R0, #hi_addr(_HomeCheckList+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5583 :: 		HomeCheckList.Top           = 300;
MOVW	R1, #300
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeCheckList+10)
MOVT	R0, #hi_addr(_HomeCheckList+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5584 :: 		HomeCheckList.Width         = 112;
MOVS	R1, #112
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeCheckList+12)
MOVT	R0, #hi_addr(_HomeCheckList+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5585 :: 		HomeCheckList.Height        = 112;
MOVS	R1, #112
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeCheckList+14)
MOVT	R0, #hi_addr(_HomeCheckList+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5586 :: 		HomeCheckList.Picture_Name  = check2sm_bmp;
MOVW	R1, #27988
MOVT	R1, #4
MOVW	R0, #lo_addr(_HomeCheckList+16)
MOVT	R0, #hi_addr(_HomeCheckList+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5587 :: 		HomeCheckList.Picture_Type  = 7;
MOVS	R1, #7
MOVW	R0, #lo_addr(_HomeCheckList+20)
MOVT	R0, #hi_addr(_HomeCheckList+20)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5588 :: 		HomeCheckList.Picture_Ratio = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_HomeCheckList+21)
MOVT	R0, #hi_addr(_HomeCheckList+21)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5589 :: 		HomeCheckList.Blend_Color   = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_HomeCheckList+24)
MOVT	R0, #hi_addr(_HomeCheckList+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5590 :: 		HomeCheckList.Source        = -1L;
MOV	R1, #-1
MOVW	R0, #lo_addr(_HomeCheckList+28)
MOVT	R0, #hi_addr(_HomeCheckList+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5591 :: 		HomeCheckList.RotationAngle = 0;
MOVS	R1, #0
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeCheckList+32)
MOVT	R0, #hi_addr(_HomeCheckList+32)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5592 :: 		HomeCheckList.RotationCenterLeft = 289;
MOVW	R1, #289
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeCheckList+34)
MOVT	R0, #hi_addr(_HomeCheckList+34)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5593 :: 		HomeCheckList.RotationCenterTop = 275;
MOVW	R1, #275
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeCheckList+36)
MOVT	R0, #hi_addr(_HomeCheckList+36)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5594 :: 		HomeCheckList.ScaleX        = 1.0000;
VMOV.F32	S0, #1
MOVW	R0, #lo_addr(_HomeCheckList+40)
MOVT	R0, #hi_addr(_HomeCheckList+40)
VSTR	#1, S0, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5595 :: 		HomeCheckList.ScaleY        = 1.0000;
VMOV.F32	S0, #1
MOVW	R0, #lo_addr(_HomeCheckList+44)
MOVT	R0, #hi_addr(_HomeCheckList+44)
VSTR	#1, S0, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5596 :: 		HomeCheckList.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_HomeCheckList+48)
MOVT	R0, #hi_addr(_HomeCheckList+48)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5597 :: 		HomeCheckList.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeCheckList+52)
MOVT	R0, #hi_addr(_HomeCheckList+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5598 :: 		HomeCheckList.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeCheckList+56)
MOVT	R0, #hi_addr(_HomeCheckList+56)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5599 :: 		HomeCheckList.OnClick       = &HomeCheckList_OnClick;
MOVW	R1, #lo_addr(_HomeCheckList_OnClick+0)
MOVT	R1, #hi_addr(_HomeCheckList_OnClick+0)
MOVW	R0, #lo_addr(_HomeCheckList+60)
MOVT	R0, #hi_addr(_HomeCheckList+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5600 :: 		HomeCheckList.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeCheckList+64)
MOVT	R0, #hi_addr(_HomeCheckList+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5602 :: 		HomeCheckList_OnClick.Action       = HomeCheckListOnClick;
MOVW	R1, #lo_addr(_HomeCheckListOnClick+0)
MOVT	R1, #hi_addr(_HomeCheckListOnClick+0)
MOVW	R0, #lo_addr(_HomeCheckList_OnClick+0)
MOVT	R0, #hi_addr(_HomeCheckList_OnClick+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5603 :: 		HomeCheckList_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeCheckList_OnClick+4)
MOVT	R0, #hi_addr(_HomeCheckList_OnClick+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5604 :: 		HomeCheckList_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
MOVS	R1, #65
MOVW	R0, #lo_addr(_HomeCheckList_OnClick+5)
MOVT	R0, #hi_addr(_HomeCheckList_OnClick+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5605 :: 		HomeCheckList_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
MOVS	R1, #81
MOVW	R0, #lo_addr(_HomeCheckList_OnClick+6)
MOVT	R0, #hi_addr(_HomeCheckList_OnClick+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5606 :: 		HomeCheckList_OnClick.Sound.Volume = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_HomeCheckList_OnClick+7)
MOVT	R0, #hi_addr(_HomeCheckList_OnClick+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5608 :: 		HomeAlertCtrl.OwnerScreen   = &HomeScr;
MOVW	R1, #lo_addr(_HomeScr+0)
MOVT	R1, #hi_addr(_HomeScr+0)
MOVW	R0, #lo_addr(_HomeAlertCtrl+0)
MOVT	R0, #hi_addr(_HomeAlertCtrl+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5609 :: 		HomeAlertCtrl.Order         = 8;
MOVS	R1, #8
MOVW	R0, #lo_addr(_HomeAlertCtrl+4)
MOVT	R0, #hi_addr(_HomeAlertCtrl+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5610 :: 		HomeAlertCtrl.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_HomeAlertCtrl+5)
MOVT	R0, #hi_addr(_HomeAlertCtrl+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5611 :: 		HomeAlertCtrl.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_HomeAlertCtrl+6)
MOVT	R0, #hi_addr(_HomeAlertCtrl+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5612 :: 		HomeAlertCtrl.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_HomeAlertCtrl+7)
MOVT	R0, #hi_addr(_HomeAlertCtrl+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5613 :: 		HomeAlertCtrl.Left          = 430;
MOVW	R1, #430
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeAlertCtrl+8)
MOVT	R0, #hi_addr(_HomeAlertCtrl+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5614 :: 		HomeAlertCtrl.Top           = 300;
MOVW	R1, #300
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeAlertCtrl+10)
MOVT	R0, #hi_addr(_HomeAlertCtrl+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5615 :: 		HomeAlertCtrl.Width         = 102;
MOVS	R1, #102
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeAlertCtrl+12)
MOVT	R0, #hi_addr(_HomeAlertCtrl+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5616 :: 		HomeAlertCtrl.Height        = 102;
MOVS	R1, #102
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeAlertCtrl+14)
MOVT	R0, #hi_addr(_HomeAlertCtrl+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5617 :: 		HomeAlertCtrl.Picture_Name  = alertorange1sm_bmp;
MOVW	R1, #53082
MOVT	R1, #4
MOVW	R0, #lo_addr(_HomeAlertCtrl+16)
MOVT	R0, #hi_addr(_HomeAlertCtrl+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5618 :: 		HomeAlertCtrl.Picture_Type  = 7;
MOVS	R1, #7
MOVW	R0, #lo_addr(_HomeAlertCtrl+20)
MOVT	R0, #hi_addr(_HomeAlertCtrl+20)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5619 :: 		HomeAlertCtrl.Picture_Ratio = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_HomeAlertCtrl+21)
MOVT	R0, #hi_addr(_HomeAlertCtrl+21)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5620 :: 		HomeAlertCtrl.Blend_Color   = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_HomeAlertCtrl+24)
MOVT	R0, #hi_addr(_HomeAlertCtrl+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5621 :: 		HomeAlertCtrl.Source        = -1L;
MOV	R1, #-1
MOVW	R0, #lo_addr(_HomeAlertCtrl+28)
MOVT	R0, #hi_addr(_HomeAlertCtrl+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5622 :: 		HomeAlertCtrl.RotationAngle = 0;
MOVS	R1, #0
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeAlertCtrl+32)
MOVT	R0, #hi_addr(_HomeAlertCtrl+32)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5623 :: 		HomeAlertCtrl.RotationCenterLeft = 437;
MOVW	R1, #437
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeAlertCtrl+34)
MOVT	R0, #hi_addr(_HomeAlertCtrl+34)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5624 :: 		HomeAlertCtrl.RotationCenterTop = 278;
MOVW	R1, #278
SXTH	R1, R1
MOVW	R0, #lo_addr(_HomeAlertCtrl+36)
MOVT	R0, #hi_addr(_HomeAlertCtrl+36)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5625 :: 		HomeAlertCtrl.ScaleX        = 1.0000;
VMOV.F32	S0, #1
MOVW	R0, #lo_addr(_HomeAlertCtrl+40)
MOVT	R0, #hi_addr(_HomeAlertCtrl+40)
VSTR	#1, S0, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5626 :: 		HomeAlertCtrl.ScaleY        = 1.0000;
VMOV.F32	S0, #1
MOVW	R0, #lo_addr(_HomeAlertCtrl+44)
MOVT	R0, #hi_addr(_HomeAlertCtrl+44)
VSTR	#1, S0, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5627 :: 		HomeAlertCtrl.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_HomeAlertCtrl+48)
MOVT	R0, #hi_addr(_HomeAlertCtrl+48)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5628 :: 		HomeAlertCtrl.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeAlertCtrl+52)
MOVT	R0, #hi_addr(_HomeAlertCtrl+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5629 :: 		HomeAlertCtrl.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeAlertCtrl+56)
MOVT	R0, #hi_addr(_HomeAlertCtrl+56)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5630 :: 		HomeAlertCtrl.OnClick       = &HomeAlertCtrl_OnClick;
MOVW	R1, #lo_addr(_HomeAlertCtrl_OnClick+0)
MOVT	R1, #hi_addr(_HomeAlertCtrl_OnClick+0)
MOVW	R0, #lo_addr(_HomeAlertCtrl+60)
MOVT	R0, #hi_addr(_HomeAlertCtrl+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5631 :: 		HomeAlertCtrl.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeAlertCtrl+64)
MOVT	R0, #hi_addr(_HomeAlertCtrl+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5633 :: 		HomeAlertCtrl_OnClick.Action       = HomeAlertCtrlOnClick;
MOVW	R1, #lo_addr(_HomeAlertCtrlOnClick+0)
MOVT	R1, #hi_addr(_HomeAlertCtrlOnClick+0)
MOVW	R0, #lo_addr(_HomeAlertCtrl_OnClick+0)
MOVT	R0, #hi_addr(_HomeAlertCtrl_OnClick+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5634 :: 		HomeAlertCtrl_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
MOVS	R1, #0
MOVW	R0, #lo_addr(_HomeAlertCtrl_OnClick+4)
MOVT	R0, #hi_addr(_HomeAlertCtrl_OnClick+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5635 :: 		HomeAlertCtrl_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
MOVS	R1, #65
MOVW	R0, #lo_addr(_HomeAlertCtrl_OnClick+5)
MOVT	R0, #hi_addr(_HomeAlertCtrl_OnClick+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5636 :: 		HomeAlertCtrl_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
MOVS	R1, #81
MOVW	R0, #lo_addr(_HomeAlertCtrl_OnClick+6)
MOVT	R0, #hi_addr(_HomeAlertCtrl_OnClick+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5637 :: 		HomeAlertCtrl_OnClick.Sound.Volume = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_HomeAlertCtrl_OnClick+7)
MOVT	R0, #hi_addr(_HomeAlertCtrl_OnClick+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5639 :: 		Label65.OwnerScreen = &HomeScr;
MOVW	R1, #lo_addr(_HomeScr+0)
MOVT	R1, #hi_addr(_HomeScr+0)
MOVW	R0, #lo_addr(_Label65+0)
MOVT	R0, #hi_addr(_Label65+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5640 :: 		Label65.Order       = 9;
MOVS	R1, #9
MOVW	R0, #lo_addr(_Label65+4)
MOVT	R0, #hi_addr(_Label65+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5641 :: 		Label65.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label65+5)
MOVT	R0, #hi_addr(_Label65+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5642 :: 		Label65.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label65+6)
MOVT	R0, #hi_addr(_Label65+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5643 :: 		Label65.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label65+7)
MOVT	R0, #hi_addr(_Label65+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5644 :: 		Label65.Left        = 65;
MOVS	R1, #65
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label65+8)
MOVT	R0, #hi_addr(_Label65+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5645 :: 		Label65.Top         = 475;
MOVW	R1, #475
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label65+10)
MOVT	R0, #hi_addr(_Label65+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5646 :: 		Label65.Width       = 38;
MOVS	R1, #38
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label65+12)
MOVT	R0, #hi_addr(_Label65+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5647 :: 		Label65.Height      = 25;
MOVS	R1, #25
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label65+14)
MOVT	R0, #hi_addr(_Label65+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5648 :: 		Label65.Caption     = Label65_Caption;
MOVW	R1, #lo_addr(_Label65_Caption+0)
MOVT	R1, #hi_addr(_Label65_Caption+0)
MOVW	R0, #lo_addr(_Label65+16)
MOVT	R0, #hi_addr(_Label65+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5649 :: 		Label65.FontName    = Tahoma_19x23_Regular;
MOVW	R1, #10036
MOVW	R0, #lo_addr(_Label65+20)
MOVT	R0, #hi_addr(_Label65+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5650 :: 		Label65.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label65+24)
MOVT	R0, #hi_addr(_Label65+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5651 :: 		Label65.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label65+28)
MOVT	R0, #hi_addr(_Label65+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5652 :: 		Label65.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label65+32)
MOVT	R0, #hi_addr(_Label65+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5653 :: 		Label65.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label65+36)
MOVT	R0, #hi_addr(_Label65+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5654 :: 		Label65.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label65+40)
MOVT	R0, #hi_addr(_Label65+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5655 :: 		Label65.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label65+44)
MOVT	R0, #hi_addr(_Label65+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5656 :: 		Label65.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label65+48)
MOVT	R0, #hi_addr(_Label65+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5657 :: 		Label65.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label65+52)
MOVT	R0, #hi_addr(_Label65+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5659 :: 		Label66.OwnerScreen = &HomeScr;
MOVW	R1, #lo_addr(_HomeScr+0)
MOVT	R1, #hi_addr(_HomeScr+0)
MOVW	R0, #lo_addr(_Label66+0)
MOVT	R0, #hi_addr(_Label66+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5660 :: 		Label66.Order       = 10;
MOVS	R1, #10
MOVW	R0, #lo_addr(_Label66+4)
MOVT	R0, #hi_addr(_Label66+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5661 :: 		Label66.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label66+5)
MOVT	R0, #hi_addr(_Label66+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5662 :: 		Label66.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label66+6)
MOVT	R0, #hi_addr(_Label66+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5663 :: 		Label66.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label66+7)
MOVT	R0, #hi_addr(_Label66+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5664 :: 		Label66.Left        = 274;
MOVW	R1, #274
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label66+8)
MOVT	R0, #hi_addr(_Label66+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5665 :: 		Label66.Top         = 475;
MOVW	R1, #475
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label66+10)
MOVT	R0, #hi_addr(_Label66+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5666 :: 		Label66.Width       = 38;
MOVS	R1, #38
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label66+12)
MOVT	R0, #hi_addr(_Label66+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5667 :: 		Label66.Height      = 25;
MOVS	R1, #25
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label66+14)
MOVT	R0, #hi_addr(_Label66+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5668 :: 		Label66.Caption     = Label66_Caption;
MOVW	R1, #lo_addr(_Label66_Caption+0)
MOVT	R1, #hi_addr(_Label66_Caption+0)
MOVW	R0, #lo_addr(_Label66+16)
MOVT	R0, #hi_addr(_Label66+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5669 :: 		Label66.FontName    = Tahoma_19x23_Regular;
MOVW	R1, #10036
MOVW	R0, #lo_addr(_Label66+20)
MOVT	R0, #hi_addr(_Label66+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5670 :: 		Label66.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label66+24)
MOVT	R0, #hi_addr(_Label66+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5671 :: 		Label66.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label66+28)
MOVT	R0, #hi_addr(_Label66+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5672 :: 		Label66.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label66+32)
MOVT	R0, #hi_addr(_Label66+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5673 :: 		Label66.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label66+36)
MOVT	R0, #hi_addr(_Label66+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5674 :: 		Label66.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label66+40)
MOVT	R0, #hi_addr(_Label66+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5675 :: 		Label66.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label66+44)
MOVT	R0, #hi_addr(_Label66+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5676 :: 		Label66.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label66+48)
MOVT	R0, #hi_addr(_Label66+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5677 :: 		Label66.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label66+52)
MOVT	R0, #hi_addr(_Label66+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5679 :: 		Label62.OwnerScreen = &HomeScr;
MOVW	R1, #lo_addr(_HomeScr+0)
MOVT	R1, #hi_addr(_HomeScr+0)
MOVW	R0, #lo_addr(_Label62+0)
MOVT	R0, #hi_addr(_Label62+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5680 :: 		Label62.Order       = 11;
MOVS	R1, #11
MOVW	R0, #lo_addr(_Label62+4)
MOVT	R0, #hi_addr(_Label62+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5681 :: 		Label62.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label62+5)
MOVT	R0, #hi_addr(_Label62+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5682 :: 		Label62.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label62+6)
MOVT	R0, #hi_addr(_Label62+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5683 :: 		Label62.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label62+7)
MOVT	R0, #hi_addr(_Label62+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5684 :: 		Label62.Left        = 95;
MOVS	R1, #95
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label62+8)
MOVT	R0, #hi_addr(_Label62+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5685 :: 		Label62.Top         = 155;
MOVS	R1, #155
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label62+10)
MOVT	R0, #hi_addr(_Label62+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5686 :: 		Label62.Width       = 103;
MOVS	R1, #103
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label62+12)
MOVT	R0, #hi_addr(_Label62+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5687 :: 		Label62.Height      = 25;
MOVS	R1, #25
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label62+14)
MOVT	R0, #hi_addr(_Label62+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5688 :: 		Label62.Caption     = Label62_Caption;
MOVW	R1, #lo_addr(_Label62_Caption+0)
MOVT	R1, #hi_addr(_Label62_Caption+0)
MOVW	R0, #lo_addr(_Label62+16)
MOVT	R0, #hi_addr(_Label62+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5689 :: 		Label62.FontName    = Tahoma_19x23_Regular;
MOVW	R1, #10036
MOVW	R0, #lo_addr(_Label62+20)
MOVT	R0, #hi_addr(_Label62+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5690 :: 		Label62.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label62+24)
MOVT	R0, #hi_addr(_Label62+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5691 :: 		Label62.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label62+28)
MOVT	R0, #hi_addr(_Label62+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5692 :: 		Label62.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label62+32)
MOVT	R0, #hi_addr(_Label62+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5693 :: 		Label62.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label62+36)
MOVT	R0, #hi_addr(_Label62+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5694 :: 		Label62.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label62+40)
MOVT	R0, #hi_addr(_Label62+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5695 :: 		Label62.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label62+44)
MOVT	R0, #hi_addr(_Label62+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5696 :: 		Label62.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label62+48)
MOVT	R0, #hi_addr(_Label62+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5697 :: 		Label62.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label62+52)
MOVT	R0, #hi_addr(_Label62+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5699 :: 		Label63.OwnerScreen = &HomeScr;
MOVW	R1, #lo_addr(_HomeScr+0)
MOVT	R1, #hi_addr(_HomeScr+0)
MOVW	R0, #lo_addr(_Label63+0)
MOVT	R0, #hi_addr(_Label63+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5700 :: 		Label63.Order       = 12;
MOVS	R1, #12
MOVW	R0, #lo_addr(_Label63+4)
MOVT	R0, #hi_addr(_Label63+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5701 :: 		Label63.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label63+5)
MOVT	R0, #hi_addr(_Label63+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5702 :: 		Label63.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label63+6)
MOVT	R0, #hi_addr(_Label63+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5703 :: 		Label63.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label63+7)
MOVT	R0, #hi_addr(_Label63+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5704 :: 		Label63.Left        = 260;
MOVW	R1, #260
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label63+8)
MOVT	R0, #hi_addr(_Label63+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5705 :: 		Label63.Top         = 155;
MOVS	R1, #155
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label63+10)
MOVT	R0, #hi_addr(_Label63+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5706 :: 		Label63.Width       = 107;
MOVS	R1, #107
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label63+12)
MOVT	R0, #hi_addr(_Label63+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5707 :: 		Label63.Height      = 25;
MOVS	R1, #25
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label63+14)
MOVT	R0, #hi_addr(_Label63+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5708 :: 		Label63.Caption     = Label63_Caption;
MOVW	R1, #lo_addr(_Label63_Caption+0)
MOVT	R1, #hi_addr(_Label63_Caption+0)
MOVW	R0, #lo_addr(_Label63+16)
MOVT	R0, #hi_addr(_Label63+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5709 :: 		Label63.FontName    = Tahoma_19x23_Regular;
MOVW	R1, #10036
MOVW	R0, #lo_addr(_Label63+20)
MOVT	R0, #hi_addr(_Label63+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5710 :: 		Label63.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label63+24)
MOVT	R0, #hi_addr(_Label63+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5711 :: 		Label63.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label63+28)
MOVT	R0, #hi_addr(_Label63+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5712 :: 		Label63.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label63+32)
MOVT	R0, #hi_addr(_Label63+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5713 :: 		Label63.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label63+36)
MOVT	R0, #hi_addr(_Label63+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5714 :: 		Label63.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label63+40)
MOVT	R0, #hi_addr(_Label63+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5715 :: 		Label63.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label63+44)
MOVT	R0, #hi_addr(_Label63+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5716 :: 		Label63.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label63+48)
MOVT	R0, #hi_addr(_Label63+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5717 :: 		Label63.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label63+52)
MOVT	R0, #hi_addr(_Label63+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5719 :: 		Label67.OwnerScreen = &HomeScr;
MOVW	R1, #lo_addr(_HomeScr+0)
MOVT	R1, #hi_addr(_HomeScr+0)
MOVW	R0, #lo_addr(_Label67+0)
MOVT	R0, #hi_addr(_Label67+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5720 :: 		Label67.Order       = 13;
MOVS	R1, #13
MOVW	R0, #lo_addr(_Label67+4)
MOVT	R0, #hi_addr(_Label67+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5721 :: 		Label67.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label67+5)
MOVT	R0, #hi_addr(_Label67+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5722 :: 		Label67.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label67+6)
MOVT	R0, #hi_addr(_Label67+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5723 :: 		Label67.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label67+7)
MOVT	R0, #hi_addr(_Label67+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5724 :: 		Label67.Left        = 415;
MOVW	R1, #415
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label67+8)
MOVT	R0, #hi_addr(_Label67+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5725 :: 		Label67.Top         = 155;
MOVS	R1, #155
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label67+10)
MOVT	R0, #hi_addr(_Label67+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5726 :: 		Label67.Width       = 130;
MOVS	R1, #130
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label67+12)
MOVT	R0, #hi_addr(_Label67+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5727 :: 		Label67.Height      = 25;
MOVS	R1, #25
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label67+14)
MOVT	R0, #hi_addr(_Label67+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5728 :: 		Label67.Caption     = Label67_Caption;
MOVW	R1, #lo_addr(_Label67_Caption+0)
MOVT	R1, #hi_addr(_Label67_Caption+0)
MOVW	R0, #lo_addr(_Label67+16)
MOVT	R0, #hi_addr(_Label67+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5729 :: 		Label67.FontName    = Tahoma_19x23_Regular;
MOVW	R1, #10036
MOVW	R0, #lo_addr(_Label67+20)
MOVT	R0, #hi_addr(_Label67+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5730 :: 		Label67.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label67+24)
MOVT	R0, #hi_addr(_Label67+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5731 :: 		Label67.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label67+28)
MOVT	R0, #hi_addr(_Label67+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5732 :: 		Label67.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label67+32)
MOVT	R0, #hi_addr(_Label67+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5733 :: 		Label67.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label67+36)
MOVT	R0, #hi_addr(_Label67+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5734 :: 		Label67.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label67+40)
MOVT	R0, #hi_addr(_Label67+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5735 :: 		Label67.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label67+44)
MOVT	R0, #hi_addr(_Label67+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5736 :: 		Label67.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label67+48)
MOVT	R0, #hi_addr(_Label67+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5737 :: 		Label67.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label67+52)
MOVT	R0, #hi_addr(_Label67+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5739 :: 		Label68.OwnerScreen = &HomeScr;
MOVW	R1, #lo_addr(_HomeScr+0)
MOVT	R1, #hi_addr(_HomeScr+0)
MOVW	R0, #lo_addr(_Label68+0)
MOVT	R0, #hi_addr(_Label68+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5740 :: 		Label68.Order       = 14;
MOVS	R1, #14
MOVW	R0, #lo_addr(_Label68+4)
MOVT	R0, #hi_addr(_Label68+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5741 :: 		Label68.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label68+5)
MOVT	R0, #hi_addr(_Label68+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5742 :: 		Label68.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label68+6)
MOVT	R0, #hi_addr(_Label68+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5743 :: 		Label68.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label68+7)
MOVT	R0, #hi_addr(_Label68+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5744 :: 		Label68.Left        = 570;
MOVW	R1, #570
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label68+8)
MOVT	R0, #hi_addr(_Label68+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5745 :: 		Label68.Top         = 155;
MOVS	R1, #155
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label68+10)
MOVT	R0, #hi_addr(_Label68+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5746 :: 		Label68.Width       = 155;
MOVS	R1, #155
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label68+12)
MOVT	R0, #hi_addr(_Label68+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5747 :: 		Label68.Height      = 25;
MOVS	R1, #25
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label68+14)
MOVT	R0, #hi_addr(_Label68+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5748 :: 		Label68.Caption     = Label68_Caption;
MOVW	R1, #lo_addr(_Label68_Caption+0)
MOVT	R1, #hi_addr(_Label68_Caption+0)
MOVW	R0, #lo_addr(_Label68+16)
MOVT	R0, #hi_addr(_Label68+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5749 :: 		Label68.FontName    = Tahoma_19x23_Regular;
MOVW	R1, #10036
MOVW	R0, #lo_addr(_Label68+20)
MOVT	R0, #hi_addr(_Label68+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5750 :: 		Label68.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label68+24)
MOVT	R0, #hi_addr(_Label68+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5751 :: 		Label68.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label68+28)
MOVT	R0, #hi_addr(_Label68+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5752 :: 		Label68.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label68+32)
MOVT	R0, #hi_addr(_Label68+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5753 :: 		Label68.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label68+36)
MOVT	R0, #hi_addr(_Label68+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5754 :: 		Label68.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label68+40)
MOVT	R0, #hi_addr(_Label68+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5755 :: 		Label68.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label68+44)
MOVT	R0, #hi_addr(_Label68+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5756 :: 		Label68.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label68+48)
MOVT	R0, #hi_addr(_Label68+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5757 :: 		Label68.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label68+52)
MOVT	R0, #hi_addr(_Label68+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5759 :: 		Label69.OwnerScreen = &HomeScr;
MOVW	R1, #lo_addr(_HomeScr+0)
MOVT	R1, #hi_addr(_HomeScr+0)
MOVW	R0, #lo_addr(_Label69+0)
MOVT	R0, #hi_addr(_Label69+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5760 :: 		Label69.Order       = 15;
MOVS	R1, #15
MOVW	R0, #lo_addr(_Label69+4)
MOVT	R0, #hi_addr(_Label69+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5761 :: 		Label69.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label69+5)
MOVT	R0, #hi_addr(_Label69+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5762 :: 		Label69.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label69+6)
MOVT	R0, #hi_addr(_Label69+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5763 :: 		Label69.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label69+7)
MOVT	R0, #hi_addr(_Label69+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5764 :: 		Label69.Left        = 95;
MOVS	R1, #95
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label69+8)
MOVT	R0, #hi_addr(_Label69+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5765 :: 		Label69.Top         = 410;
MOVW	R1, #410
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label69+10)
MOVT	R0, #hi_addr(_Label69+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5766 :: 		Label69.Width       = 100;
MOVS	R1, #100
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label69+12)
MOVT	R0, #hi_addr(_Label69+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5767 :: 		Label69.Height      = 25;
MOVS	R1, #25
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label69+14)
MOVT	R0, #hi_addr(_Label69+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5768 :: 		Label69.Caption     = Label69_Caption;
MOVW	R1, #lo_addr(_Label69_Caption+0)
MOVT	R1, #hi_addr(_Label69_Caption+0)
MOVW	R0, #lo_addr(_Label69+16)
MOVT	R0, #hi_addr(_Label69+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5769 :: 		Label69.FontName    = Tahoma_19x23_Regular;
MOVW	R1, #10036
MOVW	R0, #lo_addr(_Label69+20)
MOVT	R0, #hi_addr(_Label69+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5770 :: 		Label69.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label69+24)
MOVT	R0, #hi_addr(_Label69+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5771 :: 		Label69.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label69+28)
MOVT	R0, #hi_addr(_Label69+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5772 :: 		Label69.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label69+32)
MOVT	R0, #hi_addr(_Label69+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5773 :: 		Label69.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label69+36)
MOVT	R0, #hi_addr(_Label69+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5774 :: 		Label69.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label69+40)
MOVT	R0, #hi_addr(_Label69+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5775 :: 		Label69.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label69+44)
MOVT	R0, #hi_addr(_Label69+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5776 :: 		Label69.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label69+48)
MOVT	R0, #hi_addr(_Label69+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5777 :: 		Label69.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label69+52)
MOVT	R0, #hi_addr(_Label69+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5779 :: 		Check_List.OwnerScreen = &HomeScr;
MOVW	R1, #lo_addr(_HomeScr+0)
MOVT	R1, #hi_addr(_HomeScr+0)
MOVW	R0, #lo_addr(_Check_List+0)
MOVT	R0, #hi_addr(_Check_List+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5780 :: 		Check_List.Order       = 16;
MOVS	R1, #16
MOVW	R0, #lo_addr(_Check_List+4)
MOVT	R0, #hi_addr(_Check_List+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5781 :: 		Check_List.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Check_List+5)
MOVT	R0, #hi_addr(_Check_List+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5782 :: 		Check_List.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Check_List+6)
MOVT	R0, #hi_addr(_Check_List+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5783 :: 		Check_List.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Check_List+7)
MOVT	R0, #hi_addr(_Check_List+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5784 :: 		Check_List.Left        = 270;
MOVW	R1, #270
SXTH	R1, R1
MOVW	R0, #lo_addr(_Check_List+8)
MOVT	R0, #hi_addr(_Check_List+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5785 :: 		Check_List.Top         = 410;
MOVW	R1, #410
SXTH	R1, R1
MOVW	R0, #lo_addr(_Check_List+10)
MOVT	R0, #hi_addr(_Check_List+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5786 :: 		Check_List.Width       = 87;
MOVS	R1, #87
SXTH	R1, R1
MOVW	R0, #lo_addr(_Check_List+12)
MOVT	R0, #hi_addr(_Check_List+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5787 :: 		Check_List.Height      = 25;
MOVS	R1, #25
SXTH	R1, R1
MOVW	R0, #lo_addr(_Check_List+14)
MOVT	R0, #hi_addr(_Check_List+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5788 :: 		Check_List.Caption     = Check_List_Caption;
MOVW	R1, #lo_addr(_Check_List_Caption+0)
MOVT	R1, #hi_addr(_Check_List_Caption+0)
MOVW	R0, #lo_addr(_Check_List+16)
MOVT	R0, #hi_addr(_Check_List+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5789 :: 		Check_List.FontName    = Tahoma_19x23_Regular;
MOVW	R1, #10036
MOVW	R0, #lo_addr(_Check_List+20)
MOVT	R0, #hi_addr(_Check_List+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5790 :: 		Check_List.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Check_List+24)
MOVT	R0, #hi_addr(_Check_List+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5791 :: 		Check_List.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Check_List+28)
MOVT	R0, #hi_addr(_Check_List+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5792 :: 		Check_List.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Check_List+32)
MOVT	R0, #hi_addr(_Check_List+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5793 :: 		Check_List.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Check_List+36)
MOVT	R0, #hi_addr(_Check_List+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5794 :: 		Check_List.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Check_List+40)
MOVT	R0, #hi_addr(_Check_List+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5795 :: 		Check_List.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Check_List+44)
MOVT	R0, #hi_addr(_Check_List+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5796 :: 		Check_List.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Check_List+48)
MOVT	R0, #hi_addr(_Check_List+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5797 :: 		Check_List.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Check_List+52)
MOVT	R0, #hi_addr(_Check_List+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5799 :: 		Alert_Control.OwnerScreen = &HomeScr;
MOVW	R1, #lo_addr(_HomeScr+0)
MOVT	R1, #hi_addr(_HomeScr+0)
MOVW	R0, #lo_addr(_Alert_Control+0)
MOVT	R0, #hi_addr(_Alert_Control+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5800 :: 		Alert_Control.Order       = 17;
MOVS	R1, #17
MOVW	R0, #lo_addr(_Alert_Control+4)
MOVT	R0, #hi_addr(_Alert_Control+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5801 :: 		Alert_Control.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Alert_Control+5)
MOVT	R0, #hi_addr(_Alert_Control+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5802 :: 		Alert_Control.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Alert_Control+6)
MOVT	R0, #hi_addr(_Alert_Control+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5803 :: 		Alert_Control.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Alert_Control+7)
MOVT	R0, #hi_addr(_Alert_Control+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5804 :: 		Alert_Control.Left        = 430;
MOVW	R1, #430
SXTH	R1, R1
MOVW	R0, #lo_addr(_Alert_Control+8)
MOVT	R0, #hi_addr(_Alert_Control+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5805 :: 		Alert_Control.Top         = 410;
MOVW	R1, #410
SXTH	R1, R1
MOVW	R0, #lo_addr(_Alert_Control+10)
MOVT	R0, #hi_addr(_Alert_Control+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5806 :: 		Alert_Control.Width       = 108;
MOVS	R1, #108
SXTH	R1, R1
MOVW	R0, #lo_addr(_Alert_Control+12)
MOVT	R0, #hi_addr(_Alert_Control+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5807 :: 		Alert_Control.Height      = 25;
MOVS	R1, #25
SXTH	R1, R1
MOVW	R0, #lo_addr(_Alert_Control+14)
MOVT	R0, #hi_addr(_Alert_Control+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5808 :: 		Alert_Control.Caption     = Alert_Control_Caption;
MOVW	R1, #lo_addr(_Alert_Control_Caption+0)
MOVT	R1, #hi_addr(_Alert_Control_Caption+0)
MOVW	R0, #lo_addr(_Alert_Control+16)
MOVT	R0, #hi_addr(_Alert_Control+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5809 :: 		Alert_Control.FontName    = Tahoma_19x23_Regular;
MOVW	R1, #10036
MOVW	R0, #lo_addr(_Alert_Control+20)
MOVT	R0, #hi_addr(_Alert_Control+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5810 :: 		Alert_Control.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Alert_Control+24)
MOVT	R0, #hi_addr(_Alert_Control+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5811 :: 		Alert_Control.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Alert_Control+28)
MOVT	R0, #hi_addr(_Alert_Control+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5812 :: 		Alert_Control.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Alert_Control+32)
MOVT	R0, #hi_addr(_Alert_Control+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5813 :: 		Alert_Control.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Alert_Control+36)
MOVT	R0, #hi_addr(_Alert_Control+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5814 :: 		Alert_Control.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Alert_Control+40)
MOVT	R0, #hi_addr(_Alert_Control+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5815 :: 		Alert_Control.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Alert_Control+44)
MOVT	R0, #hi_addr(_Alert_Control+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5816 :: 		Alert_Control.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Alert_Control+48)
MOVT	R0, #hi_addr(_Alert_Control+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5817 :: 		Alert_Control.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Alert_Control+52)
MOVT	R0, #hi_addr(_Alert_Control+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5819 :: 		Save_Data.OwnerScreen = &HomeScr;
MOVW	R1, #lo_addr(_HomeScr+0)
MOVT	R1, #hi_addr(_HomeScr+0)
MOVW	R0, #lo_addr(_Save_Data+0)
MOVT	R0, #hi_addr(_Save_Data+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5820 :: 		Save_Data.Order       = 18;
MOVS	R1, #18
MOVW	R0, #lo_addr(_Save_Data+4)
MOVT	R0, #hi_addr(_Save_Data+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5821 :: 		Save_Data.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Save_Data+5)
MOVT	R0, #hi_addr(_Save_Data+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5822 :: 		Save_Data.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Save_Data+6)
MOVT	R0, #hi_addr(_Save_Data+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5823 :: 		Save_Data.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Save_Data+7)
MOVT	R0, #hi_addr(_Save_Data+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5824 :: 		Save_Data.Left        = 600;
MOVW	R1, #600
SXTH	R1, R1
MOVW	R0, #lo_addr(_Save_Data+8)
MOVT	R0, #hi_addr(_Save_Data+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5825 :: 		Save_Data.Top         = 410;
MOVW	R1, #410
SXTH	R1, R1
MOVW	R0, #lo_addr(_Save_Data+10)
MOVT	R0, #hi_addr(_Save_Data+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5826 :: 		Save_Data.Width       = 88;
MOVS	R1, #88
SXTH	R1, R1
MOVW	R0, #lo_addr(_Save_Data+12)
MOVT	R0, #hi_addr(_Save_Data+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5827 :: 		Save_Data.Height      = 25;
MOVS	R1, #25
SXTH	R1, R1
MOVW	R0, #lo_addr(_Save_Data+14)
MOVT	R0, #hi_addr(_Save_Data+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5828 :: 		Save_Data.Caption     = Save_Data_Caption;
MOVW	R1, #lo_addr(_Save_Data_Caption+0)
MOVT	R1, #hi_addr(_Save_Data_Caption+0)
MOVW	R0, #lo_addr(_Save_Data+16)
MOVT	R0, #hi_addr(_Save_Data+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5829 :: 		Save_Data.FontName    = Tahoma_19x23_Regular;
MOVW	R1, #10036
MOVW	R0, #lo_addr(_Save_Data+20)
MOVT	R0, #hi_addr(_Save_Data+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5830 :: 		Save_Data.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Save_Data+24)
MOVT	R0, #hi_addr(_Save_Data+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5831 :: 		Save_Data.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Save_Data+28)
MOVT	R0, #hi_addr(_Save_Data+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5832 :: 		Save_Data.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Save_Data+32)
MOVT	R0, #hi_addr(_Save_Data+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5833 :: 		Save_Data.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Save_Data+36)
MOVT	R0, #hi_addr(_Save_Data+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5834 :: 		Save_Data.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Save_Data+40)
MOVT	R0, #hi_addr(_Save_Data+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5835 :: 		Save_Data.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Save_Data+44)
MOVT	R0, #hi_addr(_Save_Data+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5836 :: 		Save_Data.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Save_Data+48)
MOVT	R0, #hi_addr(_Save_Data+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5837 :: 		Save_Data.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Save_Data+52)
MOVT	R0, #hi_addr(_Save_Data+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5839 :: 		Image1.OwnerScreen   = &Intro;
MOVW	R1, #lo_addr(_Intro+0)
MOVT	R1, #hi_addr(_Intro+0)
MOVW	R0, #lo_addr(_Image1+0)
MOVT	R0, #hi_addr(_Image1+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5840 :: 		Image1.Order         = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Image1+4)
MOVT	R0, #hi_addr(_Image1+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5841 :: 		Image1.Visible       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Image1+5)
MOVT	R0, #hi_addr(_Image1+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5842 :: 		Image1.Opacity       = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Image1+6)
MOVT	R0, #hi_addr(_Image1+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5843 :: 		Image1.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Image1+7)
MOVT	R0, #hi_addr(_Image1+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5844 :: 		Image1.Left          = 186;
MOVS	R1, #186
SXTH	R1, R1
MOVW	R0, #lo_addr(_Image1+8)
MOVT	R0, #hi_addr(_Image1+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5845 :: 		Image1.Top           = 60;
MOVS	R1, #60
SXTH	R1, R1
MOVW	R0, #lo_addr(_Image1+10)
MOVT	R0, #hi_addr(_Image1+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5846 :: 		Image1.Width         = 428;
MOVW	R1, #428
SXTH	R1, R1
MOVW	R0, #lo_addr(_Image1+12)
MOVT	R0, #hi_addr(_Image1+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5847 :: 		Image1.Height        = 112;
MOVS	R1, #112
SXTH	R1, R1
MOVW	R0, #lo_addr(_Image1+14)
MOVT	R0, #hi_addr(_Image1+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5848 :: 		Image1.Picture_Name  = EdeproLogoW_bmp;
MOVW	R1, #63182
MOVT	R1, #2
MOVW	R0, #lo_addr(_Image1+16)
MOVT	R0, #hi_addr(_Image1+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5849 :: 		Image1.Picture_Type  = 7;
MOVS	R1, #7
MOVW	R0, #lo_addr(_Image1+20)
MOVT	R0, #hi_addr(_Image1+20)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5850 :: 		Image1.Picture_Ratio = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Image1+21)
MOVT	R0, #hi_addr(_Image1+21)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5851 :: 		Image1.Blend_Color   = 0xFFFFFF;
MVN	R1, #-16777216
MOVW	R0, #lo_addr(_Image1+24)
MOVT	R0, #hi_addr(_Image1+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5852 :: 		Image1.Source        = -1L;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Image1+28)
MOVT	R0, #hi_addr(_Image1+28)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5853 :: 		Image1.RotationAngle = 0;
MOVS	R1, #0
SXTH	R1, R1
MOVW	R0, #lo_addr(_Image1+32)
MOVT	R0, #hi_addr(_Image1+32)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5854 :: 		Image1.RotationCenterLeft = 400;
MOVW	R1, #400
SXTH	R1, R1
MOVW	R0, #lo_addr(_Image1+34)
MOVT	R0, #hi_addr(_Image1+34)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5855 :: 		Image1.RotationCenterTop = 116;
MOVS	R1, #116
SXTH	R1, R1
MOVW	R0, #lo_addr(_Image1+36)
MOVT	R0, #hi_addr(_Image1+36)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5856 :: 		Image1.ScaleX        = 1.0000;
VMOV.F32	S0, #1
MOVW	R0, #lo_addr(_Image1+40)
MOVT	R0, #hi_addr(_Image1+40)
VSTR	#1, S0, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5857 :: 		Image1.ScaleY        = 1.0000;
VMOV.F32	S0, #1
MOVW	R0, #lo_addr(_Image1+44)
MOVT	R0, #hi_addr(_Image1+44)
VSTR	#1, S0, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5858 :: 		Image1.Active        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Image1+48)
MOVT	R0, #hi_addr(_Image1+48)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5859 :: 		Image1.OnUp          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Image1+52)
MOVT	R0, #hi_addr(_Image1+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5860 :: 		Image1.OnDown        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Image1+56)
MOVT	R0, #hi_addr(_Image1+56)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5861 :: 		Image1.OnClick       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Image1+60)
MOVT	R0, #hi_addr(_Image1+60)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5862 :: 		Image1.OnPress       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Image1+64)
MOVT	R0, #hi_addr(_Image1+64)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5864 :: 		EveSpinner1.OwnerScreen   = &Intro;
MOVW	R1, #lo_addr(_Intro+0)
MOVT	R1, #hi_addr(_Intro+0)
MOVW	R0, #lo_addr(_EveSpinner1+0)
MOVT	R0, #hi_addr(_EveSpinner1+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5865 :: 		EveSpinner1.Tag           = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_EveSpinner1+4)
MOVT	R0, #hi_addr(_EveSpinner1+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5866 :: 		EveSpinner1.Left          = 400;
MOVW	R1, #400
SXTH	R1, R1
MOVW	R0, #lo_addr(_EveSpinner1+6)
MOVT	R0, #hi_addr(_EveSpinner1+6)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5867 :: 		EveSpinner1.Top           = 275;
MOVW	R1, #275
SXTH	R1, R1
MOVW	R0, #lo_addr(_EveSpinner1+8)
MOVT	R0, #hi_addr(_EveSpinner1+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5868 :: 		EveSpinner1.Color         = 0xFF00;
MOVW	R1, #65280
MOVW	R0, #lo_addr(_EveSpinner1+12)
MOVT	R0, #hi_addr(_EveSpinner1+12)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5869 :: 		EveSpinner1.Style         = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_EveSpinner1+16)
MOVT	R0, #hi_addr(_EveSpinner1+16)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5870 :: 		EveSpinner1.Scale         = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_EveSpinner1+17)
MOVT	R0, #hi_addr(_EveSpinner1+17)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5872 :: 		Label64.OwnerScreen = &Intro;
MOVW	R1, #lo_addr(_Intro+0)
MOVT	R1, #hi_addr(_Intro+0)
MOVW	R0, #lo_addr(_Label64+0)
MOVT	R0, #hi_addr(_Label64+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5873 :: 		Label64.Order       = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_Label64+4)
MOVT	R0, #hi_addr(_Label64+4)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5874 :: 		Label64.Visible     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label64+5)
MOVT	R0, #hi_addr(_Label64+5)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5875 :: 		Label64.Opacity     = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label64+6)
MOVT	R0, #hi_addr(_Label64+6)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5876 :: 		Label64.Tag         = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label64+7)
MOVT	R0, #hi_addr(_Label64+7)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5877 :: 		Label64.Left        = 258;
MOVW	R1, #258
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label64+8)
MOVT	R0, #hi_addr(_Label64+8)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5878 :: 		Label64.Top         = 380;
MOVW	R1, #380
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label64+10)
MOVT	R0, #hi_addr(_Label64+10)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5879 :: 		Label64.Width       = 284;
MOVW	R1, #284
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label64+12)
MOVT	R0, #hi_addr(_Label64+12)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5880 :: 		Label64.Height      = 28;
MOVS	R1, #28
SXTH	R1, R1
MOVW	R0, #lo_addr(_Label64+14)
MOVT	R0, #hi_addr(_Label64+14)
STRH	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5881 :: 		Label64.Caption     = Label64_Caption;
MOVW	R1, #lo_addr(_Label64_Caption+0)
MOVT	R1, #hi_addr(_Label64_Caption+0)
MOVW	R0, #lo_addr(_Label64+16)
MOVT	R0, #hi_addr(_Label64+16)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5882 :: 		Label64.FontName    = Tahoma_21x25_Regular;
MOVW	R1, #24214
MOVW	R0, #lo_addr(_Label64+20)
MOVT	R0, #hi_addr(_Label64+20)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5883 :: 		Label64.Font_Color  = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label64+24)
MOVT	R0, #hi_addr(_Label64+24)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5884 :: 		Label64.FontHandle  = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label64+28)
MOVT	R0, #hi_addr(_Label64+28)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5885 :: 		Label64.Source      = -1UL;
MOV	R1, #-1
MOVW	R0, #lo_addr(_Label64+32)
MOVT	R0, #hi_addr(_Label64+32)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5886 :: 		Label64.Active      = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label64+36)
MOVT	R0, #hi_addr(_Label64+36)
STRB	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5887 :: 		Label64.OnUp        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label64+40)
MOVT	R0, #hi_addr(_Label64+40)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5888 :: 		Label64.OnDown      = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label64+44)
MOVT	R0, #hi_addr(_Label64+44)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5889 :: 		Label64.OnClick     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label64+48)
MOVT	R0, #hi_addr(_Label64+48)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5890 :: 		Label64.OnPress     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label64+52)
MOVT	R0, #hi_addr(_Label64+52)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5892 :: 		}
L_end_InitObjects:
BX	LR
; end of TJ_GUI14e_v_1_1_driver_InitObjects
_Init_MCU:
;TJ_GUI14e_v_1_1_driver.c,5894 :: 		void Init_MCU() {
SUB	SP, SP, #4
STR	LR, [SP, #0]
;TJ_GUI14e_v_1_1_driver.c,5900 :: 		&_GPIO_MODULE_SPI3_PC10_11_12);
MOVW	R2, #lo_addr(__GPIO_MODULE_SPI3_PC10_11_12+0)
MOVT	R2, #hi_addr(__GPIO_MODULE_SPI3_PC10_11_12+0)
;TJ_GUI14e_v_1_1_driver.c,5899 :: 		_SPI_MSB_FIRST | _SPI_SS_DISABLE | _SPI_SSM_ENABLE | _SPI_SSI_1,
MOVW	R1, #772
;TJ_GUI14e_v_1_1_driver.c,5897 :: 		SPI3_Init_Advanced(_SPI_FPCLK_DIV2, _SPI_MASTER | _SPI_8_BIT |
MOVS	R0, #0
;TJ_GUI14e_v_1_1_driver.c,5900 :: 		&_GPIO_MODULE_SPI3_PC10_11_12);
BL	_SPI3_Init_Advanced+0
;TJ_GUI14e_v_1_1_driver.c,5901 :: 		}
L_end_Init_MCU:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _Init_MCU
_VTFT_GetExtData:
;TJ_GUI14e_v_1_1_driver.c,5904 :: 		char* VTFT_GetExtData(unsigned long offset, unsigned long count, unsigned long *num) {
; offset start address is: 0 (R0)
SUB	SP, SP, #20
STR	LR, [SP, #0]
MOV	R5, R0
STR	R1, [SP, #12]
STR	R2, [SP, #16]
; offset end address is: 0 (R0)
; offset start address is: 20 (R5)
;TJ_GUI14e_v_1_1_driver.c,5907 :: 		SPI_Set_Active(&SPI1_Read,&SPI1_Write);
MOVW	R1, #lo_addr(_SPI1_Write+0)
MOVT	R1, #hi_addr(_SPI1_Write+0)
MOVW	R0, #lo_addr(_SPI1_Read+0)
MOVT	R0, #hi_addr(_SPI1_Read+0)
BL	_SPI_Set_Active+0
;TJ_GUI14e_v_1_1_driver.c,5908 :: 		start_sector = Mmc_Get_File_Write_Sector() + offset/512;
BL	_Mmc_Get_File_Write_Sector+0
LSRS	R3, R5, #9
ADDS	R4, R0, R3
STR	R4, [SP, #4]
;TJ_GUI14e_v_1_1_driver.c,5909 :: 		fpos = (unsigned long)offset%512;
MOVW	R3, #511
AND	R3, R5, R3, LSL #0
; offset end address is: 20 (R5)
STRH	R3, [SP, #8]
;TJ_GUI14e_v_1_1_driver.c,5911 :: 		if(start_sector == currentSector+1) {
MOVW	R3, #lo_addr(_currentSector+0)
MOVT	R3, #hi_addr(_currentSector+0)
LDR	R3, [R3, #0]
ADDS	R3, R3, #1
CMP	R4, R3
IT	NE
BNE	L_VTFT_GetExtData368
;TJ_GUI14e_v_1_1_driver.c,5912 :: 		Mmc_Multi_Read_Sector(Ext_Data_Buffer);
MOVW	R0, #lo_addr(_Ext_Data_Buffer+0)
MOVT	R0, #hi_addr(_Ext_Data_Buffer+0)
BL	_Mmc_Multi_Read_Sector+0
;TJ_GUI14e_v_1_1_driver.c,5913 :: 		currentSector = start_sector;
LDR	R4, [SP, #4]
MOVW	R3, #lo_addr(_currentSector+0)
MOVT	R3, #hi_addr(_currentSector+0)
STR	R4, [R3, #0]
;TJ_GUI14e_v_1_1_driver.c,5914 :: 		} else if (start_sector != currentSector) {
IT	AL
BAL	L_VTFT_GetExtData369
L_VTFT_GetExtData368:
MOVW	R3, #lo_addr(_currentSector+0)
MOVT	R3, #hi_addr(_currentSector+0)
LDR	R4, [R3, #0]
LDR	R3, [SP, #4]
CMP	R3, R4
IT	EQ
BEQ	L_VTFT_GetExtData370
;TJ_GUI14e_v_1_1_driver.c,5915 :: 		if(currentSector != -1)
MOVW	R3, #lo_addr(_currentSector+0)
MOVT	R3, #hi_addr(_currentSector+0)
LDR	R3, [R3, #0]
CMP	R3, #-1
IT	EQ
BEQ	L_VTFT_GetExtData371
;TJ_GUI14e_v_1_1_driver.c,5916 :: 		Mmc_Multi_Read_Stop();
BL	_Mmc_Multi_Read_Stop+0
L_VTFT_GetExtData371:
;TJ_GUI14e_v_1_1_driver.c,5917 :: 		Mmc_Multi_Read_Start(start_sector);
LDR	R0, [SP, #4]
BL	_Mmc_Multi_Read_Start+0
;TJ_GUI14e_v_1_1_driver.c,5918 :: 		Mmc_Multi_Read_Sector(Ext_Data_Buffer);
MOVW	R0, #lo_addr(_Ext_Data_Buffer+0)
MOVT	R0, #hi_addr(_Ext_Data_Buffer+0)
BL	_Mmc_Multi_Read_Sector+0
;TJ_GUI14e_v_1_1_driver.c,5919 :: 		currentSector = start_sector;
LDR	R4, [SP, #4]
MOVW	R3, #lo_addr(_currentSector+0)
MOVT	R3, #hi_addr(_currentSector+0)
STR	R4, [R3, #0]
;TJ_GUI14e_v_1_1_driver.c,5920 :: 		}
L_VTFT_GetExtData370:
L_VTFT_GetExtData369:
;TJ_GUI14e_v_1_1_driver.c,5922 :: 		if(count>512-fpos)
LDRH	R3, [SP, #8]
RSB	R4, R3, #512
UXTH	R4, R4
LDR	R3, [SP, #12]
CMP	R3, R4
IT	LS
BLS	L_VTFT_GetExtData372
;TJ_GUI14e_v_1_1_driver.c,5923 :: 		*num = 512-fpos;
LDRH	R3, [SP, #8]
RSB	R4, R3, #512
UXTH	R4, R4
LDR	R3, [SP, #16]
STR	R4, [R3, #0]
IT	AL
BAL	L_VTFT_GetExtData373
L_VTFT_GetExtData372:
;TJ_GUI14e_v_1_1_driver.c,5925 :: 		*num = count;
LDR	R4, [SP, #12]
LDR	R3, [SP, #16]
STR	R4, [R3, #0]
L_VTFT_GetExtData373:
;TJ_GUI14e_v_1_1_driver.c,5926 :: 		SPI_Set_Active(&SPI3_Read,&SPI3_Write);
MOVW	R1, #lo_addr(_SPI3_Write+0)
MOVT	R1, #hi_addr(_SPI3_Write+0)
MOVW	R0, #lo_addr(_SPI3_Read+0)
MOVT	R0, #hi_addr(_SPI3_Read+0)
BL	_SPI_Set_Active+0
;TJ_GUI14e_v_1_1_driver.c,5927 :: 		return Ext_Data_Buffer+fpos;
LDRH	R4, [SP, #8]
MOVW	R3, #lo_addr(_Ext_Data_Buffer+0)
MOVT	R3, #hi_addr(_Ext_Data_Buffer+0)
ADDS	R3, R3, R4
MOV	R0, R3
;TJ_GUI14e_v_1_1_driver.c,5928 :: 		}
L_end_VTFT_GetExtData:
LDR	LR, [SP, #0]
ADD	SP, SP, #20
BX	LR
; end of _VTFT_GetExtData
_Init_Ext_Mem:
;TJ_GUI14e_v_1_1_driver.c,5932 :: 		void Init_Ext_Mem() {
SUB	SP, SP, #4
STR	LR, [SP, #0]
;TJ_GUI14e_v_1_1_driver.c,5936 :: 		&_GPIO_MODULE_SPI1_PA567);
MOVW	R2, #lo_addr(__GPIO_MODULE_SPI1_PA567+0)
MOVT	R2, #hi_addr(__GPIO_MODULE_SPI1_PA567+0)
;TJ_GUI14e_v_1_1_driver.c,5935 :: 		_SPI_MSB_FIRST | _SPI_SS_DISABLE | _SPI_SSM_ENABLE | _SPI_SSI_1,
MOVW	R1, #772
;TJ_GUI14e_v_1_1_driver.c,5933 :: 		SPI1_Init_Advanced(_SPI_FPCLK_DIV64, _SPI_MASTER | _SPI_8_BIT |
MOVS	R0, #5
;TJ_GUI14e_v_1_1_driver.c,5936 :: 		&_GPIO_MODULE_SPI1_PA567);
BL	_SPI1_Init_Advanced+0
;TJ_GUI14e_v_1_1_driver.c,5937 :: 		SPI_Set_Active(&SPI1_Read,&SPI1_Write);
MOVW	R1, #lo_addr(_SPI1_Write+0)
MOVT	R1, #hi_addr(_SPI1_Write+0)
MOVW	R0, #lo_addr(_SPI1_Read+0)
MOVT	R0, #hi_addr(_SPI1_Read+0)
BL	_SPI_Set_Active+0
;TJ_GUI14e_v_1_1_driver.c,5938 :: 		Delay_ms(10);
MOVW	R7, #35710
MOVT	R7, #8
NOP
NOP
L_Init_Ext_Mem374:
SUBS	R7, R7, #1
BNE	L_Init_Ext_Mem374
NOP
NOP
NOP
;TJ_GUI14e_v_1_1_driver.c,5939 :: 		Mmc_Set_Interface(_MMC_INTERFACE_SPI);
MOVS	R0, #0
BL	_Mmc_Set_Interface+0
;TJ_GUI14e_v_1_1_driver.c,5941 :: 		if (!Mmc_Fat_Init()) {
BL	_Mmc_Fat_Init+0
CMP	R0, #0
IT	NE
BNE	L_Init_Ext_Mem376
;TJ_GUI14e_v_1_1_driver.c,5942 :: 		SPI1_CR1 = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(SPI1_CR1+0)
MOVT	R0, #hi_addr(SPI1_CR1+0)
STR	R1, [R0, #0]
;TJ_GUI14e_v_1_1_driver.c,5947 :: 		&_GPIO_MODULE_SPI1_PA567);
MOVW	R2, #lo_addr(__GPIO_MODULE_SPI1_PA567+0)
MOVT	R2, #hi_addr(__GPIO_MODULE_SPI1_PA567+0)
;TJ_GUI14e_v_1_1_driver.c,5946 :: 		_SPI_MSB_FIRST | _SPI_SS_DISABLE | _SPI_SSM_ENABLE | _SPI_SSI_1,
MOVW	R1, #772
;TJ_GUI14e_v_1_1_driver.c,5944 :: 		SPI1_Init_Advanced(_SPI_FPCLK_DIV2, _SPI_MASTER | _SPI_8_BIT |
MOVS	R0, #0
;TJ_GUI14e_v_1_1_driver.c,5947 :: 		&_GPIO_MODULE_SPI1_PA567);
BL	_SPI1_Init_Advanced+0
;TJ_GUI14e_v_1_1_driver.c,5949 :: 		Mmc_Fat_Assign("TJ_GUI14.RES", 0);
MOVW	R0, #lo_addr(?lstr2_TJ_GUI14e_v_1_1_driver+0)
MOVT	R0, #hi_addr(?lstr2_TJ_GUI14e_v_1_1_driver+0)
MOVS	R1, #0
BL	_Mmc_Fat_Assign+0
;TJ_GUI14e_v_1_1_driver.c,5950 :: 		Mmc_Fat_Reset(&res_file_size);
MOVW	R0, #lo_addr(_res_file_size+0)
MOVT	R0, #hi_addr(_res_file_size+0)
BL	_Mmc_Fat_Reset+0
;TJ_GUI14e_v_1_1_driver.c,5951 :: 		}
L_Init_Ext_Mem376:
;TJ_GUI14e_v_1_1_driver.c,5952 :: 		SPI_Set_Active(&SPI3_Read,&SPI3_Write);
MOVW	R1, #lo_addr(_SPI3_Write+0)
MOVT	R1, #hi_addr(_SPI3_Write+0)
MOVW	R0, #lo_addr(_SPI3_Read+0)
MOVT	R0, #hi_addr(_SPI3_Read+0)
BL	_SPI_Set_Active+0
;TJ_GUI14e_v_1_1_driver.c,5953 :: 		}
L_end_Init_Ext_Mem:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _Init_Ext_Mem
_InitVTFTStack:
;TJ_GUI14e_v_1_1_driver.c,5955 :: 		void InitVTFTStack() {
SUB	SP, SP, #4
STR	LR, [SP, #0]
;TJ_GUI14e_v_1_1_driver.c,5956 :: 		Init_MCU();
BL	_Init_MCU+0
;TJ_GUI14e_v_1_1_driver.c,5958 :: 		Init_Ext_Mem();
BL	_Init_Ext_Mem+0
;TJ_GUI14e_v_1_1_driver.c,5960 :: 		SPI_Set_Active(SPI3_Read, SPI3_Write);
MOVW	R1, #lo_addr(_SPI3_Write+0)
MOVT	R1, #hi_addr(_SPI3_Write+0)
MOVW	R0, #lo_addr(_SPI3_Read+0)
MOVT	R0, #hi_addr(_SPI3_Read+0)
BL	_SPI_Set_Active+0
;TJ_GUI14e_v_1_1_driver.c,5963 :: 		InitObjects();
BL	TJ_GUI14e_v_1_1_driver_InitObjects+0
;TJ_GUI14e_v_1_1_driver.c,5966 :: 		FT812_Init();
BL	_FT812_Init+0
;TJ_GUI14e_v_1_1_driver.c,5968 :: 		FT812_Core_ClockSource(_FT812_CLK_SOURCE_INTERNAL);
MOVS	R0, #72
BL	_FT812_Core_ClockSource+0
;TJ_GUI14e_v_1_1_driver.c,5969 :: 		FT812_Core_SetFrequency(VTFT_FT812_CONFIG_DISPLAY.Frequency);
MOVW	R0, #17920
MOVT	R0, #9155
BL	_FT812_Core_SetFrequency+0
;TJ_GUI14e_v_1_1_driver.c,5972 :: 		FT812_Display_SetConfig(&VTFT_FT812_CONFIG_DISPLAY);
MOVW	R0, #lo_addr(_VTFT_FT812_CONFIG_DISPLAY+0)
MOVT	R0, #hi_addr(_VTFT_FT812_CONFIG_DISPLAY+0)
BL	_FT812_Display_SetConfig+0
;TJ_GUI14e_v_1_1_driver.c,5974 :: 		FT812_Audio_SetConfig(&VTFT_FT812_CONFIG_AUDIO);
MOVW	R0, #lo_addr(_VTFT_FT812_CONFIG_AUDIO+0)
MOVT	R0, #hi_addr(_VTFT_FT812_CONFIG_AUDIO+0)
BL	_FT812_Audio_SetConfig+0
;TJ_GUI14e_v_1_1_driver.c,5976 :: 		FT812_Sound_SetConfig(&VTFT_FT812_CONFIG_SOUND);
MOVW	R0, #lo_addr(_VTFT_FT812_CONFIG_SOUND+0)
MOVT	R0, #hi_addr(_VTFT_FT812_CONFIG_SOUND+0)
BL	_FT812_Sound_SetConfig+0
;TJ_GUI14e_v_1_1_driver.c,5978 :: 		FT812_Interrupt_SetConfig(&VTFT_FT812_CONFIG_INTERRUPT);
MOVW	R0, #lo_addr(_VTFT_FT812_CONFIG_INTERRUPT+0)
MOVT	R0, #hi_addr(_VTFT_FT812_CONFIG_INTERRUPT+0)
BL	_FT812_Interrupt_SetConfig+0
;TJ_GUI14e_v_1_1_driver.c,5980 :: 		FT812_PWM_SetConfig(&VTFT_FT812_CONFIG_PWM);
MOVW	R0, #lo_addr(_VTFT_FT812_CONFIG_PWM+0)
MOVT	R0, #hi_addr(_VTFT_FT812_CONFIG_PWM+0)
BL	_FT812_PWM_SetConfig+0
;TJ_GUI14e_v_1_1_driver.c,5982 :: 		FT812_GPIO_SetConfig(&VTFT_FT812_CONFIG_GPIO);
MOVW	R0, #lo_addr(_VTFT_FT812_CONFIG_GPIO+0)
MOVT	R0, #hi_addr(_VTFT_FT812_CONFIG_GPIO+0)
BL	_FT812_GPIO_SetConfig+0
;TJ_GUI14e_v_1_1_driver.c,5984 :: 		FT812_Touch_Mode(_FT812_TOUCH_SMPL_MODE_CONTINUOUS, _FT812_TOUCH_OP_MODE_COMPATIBILITY);
MOVS	R1, #1
MOVS	R0, #3
BL	_FT812_Touch_Mode+0
;TJ_GUI14e_v_1_1_driver.c,5986 :: 		FT812_TouchTransform_SetConfig(&VTFT_FT812_CONFIG_TOUCHTRANSFORM);
MOVW	R0, #lo_addr(_VTFT_FT812_CONFIG_TOUCHTRANSFORM+0)
MOVT	R0, #hi_addr(_VTFT_FT812_CONFIG_TOUCHTRANSFORM+0)
BL	_FT812_TouchTransform_SetConfig+0
;TJ_GUI14e_v_1_1_driver.c,5989 :: 		FT812_SPI_SharedWithExtMem();
BL	_FT812_SPI_SharedWithExtMem+0
;TJ_GUI14e_v_1_1_driver.c,5990 :: 		FT812_Register_GetExtData(VTFT_GetExtData);
MOVW	R0, #lo_addr(_VTFT_GetExtData+0)
MOVT	R0, #hi_addr(_VTFT_GetExtData+0)
BL	_FT812_Register_GetExtData+0
;TJ_GUI14e_v_1_1_driver.c,5993 :: 		DrawScreen(&HomeScr);
MOVW	R0, #lo_addr(_HomeScr+0)
MOVT	R0, #hi_addr(_HomeScr+0)
BL	_DrawScreen+0
;TJ_GUI14e_v_1_1_driver.c,5994 :: 		}
L_end_InitVTFTStack:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _InitVTFTStack
TJ_GUI14e_v_1_1_driver____?ag:
L_end_TJ_GUI14e_v_1_1_driver___?ag:
BX	LR
; end of TJ_GUI14e_v_1_1_driver____?ag
