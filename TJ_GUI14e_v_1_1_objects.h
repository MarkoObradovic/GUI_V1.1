#ifndef TJ_GUI14E_V_1_1_OBJECTS
#define TJ_GUI14E_V_1_1_OBJECTS

#include "FT812_Types.h"

typedef enum {taNone, taLeft, taCenter, taRight, taCenterX, taCenterY, taRightX} TTextAlign;

typedef struct Screen TScreen;

typedef unsigned long TPointer;

typedef struct tagObjInfo {
  void     *Obj;
  char     Type;
  char     Order;
  char     Flags;

  char     HitTag;
  int      HitX;
  int      HitY;
} TObjInfo;

typedef struct tagTouchStat {
  char Pressed;

  char Tag;
  int  X;
  int  Y;

  TObjInfo ActObjInfo;
} TTouchStat;

typedef void (*TDrawHandler)(TPointer aObj);

typedef void (*TEvtAction)();

typedef struct tagEvtSound {
  char SndAct;
  char Effect;
  char Pitch;
  char Volume;
} TEvtSound;

typedef const struct tagCEvent {
  TEvtAction Action;
  TEvtSound  Sound;
} TCEvent;

typedef struct tagEvent {
  TEvtAction Action;
  TEvtSound  Sound;
} TEvent;

typedef const struct tagCRect {
  int Left;
  int Top;
  int Width;
  int Height;
} TCRect;

typedef struct tagRect {
  int Left;
  int Top;
  int Width;
  int Height;
} TRect;

typedef struct tagButton_Round {
  TScreen      *OwnerScreen;
  char         Order;
  char         Visible;
  char         Opacity;
  char         Tag;
  int          Left;
  int          Top;
  int          Width;
  int          Height;
  char         Pen_Width;
  uintcolor_ft Pen_Color;
  uintcolor_ft Color;
  uintcolor_ft Press_Color;
  char         *Caption;
  TTextAlign   TextAlign;
  TPointer     FontName;
  uintcolor_ft Font_Color;
  char         FontHandle;
  long         Source;
  char         Corner_Radius;
  char         Active;
  TEvent       *OnUp;
  TEvent       *OnDown;
  TEvent       *OnClick;
  TEvent       *OnPress;
} TButton_Round;

typedef struct tagLabel {
  TScreen  *OwnerScreen;
  char     Order;
  char     Visible;
  char     Opacity;
  char     Tag;
  int      Left;
  int      Top;
  int      Width;
  int      Height;
  char     *Caption;
  TPointer FontName;
  uintcolor_ft Font_Color;
  char     FontHandle;
  long     Source;
  char     Active;
  TEvent   *OnUp;
  TEvent   *OnDown;
  TEvent   *OnClick;
  TEvent   *OnPress;
} TLabel;

typedef struct tagImage {
  TScreen         *OwnerScreen;
  char            Order;
  char            Visible;
  char            Opacity;
  char            Tag;
  int             Left;
  int             Top;
  int             Width;
  int             Height;
  TPointer        Picture_Name;
  char            Picture_Type;
  char            Picture_Ratio;
  uintcolor_ft    Blend_Color;
  long            Source;
  int             RotationAngle;
  int             RotationCenterLeft;
  int             RotationCenterTop;
  float           ScaleX;
  float           ScaleY;
  char            Active;
  TEvent          *OnUp;
  TEvent          *OnDown;
  TEvent          *OnClick;
  TEvent          *OnPress;
} TImage;

typedef struct tagCircle {
  TScreen      *OwnerScreen;
  char         Order;
  char         Visible;
  char         Opacity;
  char         Tag;
  int          Left;
  int          Top;
  int          Radius;
  char         Pen_Width;
  uintcolor_ft Pen_Color;
  uintcolor_ft Color;
  uintcolor_ft Press_Color;
  char         Active;
  TEvent       *OnUp;
  TEvent       *OnDown;
  TEvent       *OnClick;
  TEvent       *OnPress;
} TCircle;

typedef struct tagCircleButton {
  TScreen      *OwnerScreen;
  char         Order;
  char         Visible;
  char         Opacity;
  char         Tag;
  int          Left;
  int          Top;
  int          Radius;
  char         Pen_Width;
  uintcolor_ft Pen_Color;
  uintcolor_ft Color;
  uintcolor_ft Press_Color;
  char         *Caption;
  TTextAlign   TextAlign;
  TPointer     FontName;
  uintcolor_ft Font_Color;
  char         FontHandle;
  long         Source;
  char         Active;
  TEvent       *OnUp;
  TEvent       *OnDown;
  TEvent       *OnClick;
  TEvent       *OnPress;
} TCircleButton;

typedef struct tagLine {
  TScreen      *OwnerScreen;
  char         Order;
  char         Visible;
  char         Opacity;
  char         Tag;
  int          First_Point_X;
  int          First_Point_Y;
  int          Second_Point_X;
  int          Second_Point_Y;
  char         Pen_Width;
  uintcolor_ft Pen_Color;
} TLine;

typedef struct tagProgressBar {
  TScreen      *OwnerScreen;
  char         Order;
  char         Visible;
  char         Opacity;
  char         Tag;
  int          Left;
  int          Top;
  int          Width;
  int          Height;
  char         Pen_Width;
  uintcolor_ft Pen_Color;
  uintcolor_ft Background_Color;
  uintcolor_ft Color;
  char         *Caption;
  TPointer     FontName;
  uintcolor_ft Font_Color;
  char         FontHandle;
  long         Source;
  char         Corner_Radius;
  unsigned int Min;
  unsigned int Max;
  unsigned int Position;
  char         Show_Position;
  char         Show_Percentage;
  char         Smooth;
} TProgressBar;

typedef struct tagEveGauge {
  TScreen      *OwnerScreen;
  char         Order;
  char         Visible;
  char         Opacity;
  char         Tag;
  int          Left;
  int          Top;
  int          Radius;
  char         Pen_Width;
  uintcolor_ft Pen_Color;
  uintcolor_ft Color;
  uintcolor_ft Press_Color;
  char         Major;
  char         Minor;
  unsigned int Value;
  unsigned int Range;
  char         Flat;
  char         NoBackground;
  char         NoPointer;
  char         TicksVisible;
  char         Active;
  TEvent       *OnUp;
  TEvent       *OnDown;
  TEvent       *OnClick;
  TEvent       *OnPress;
} TEveGauge;

typedef struct tagEveSpinner {
  TScreen      *OwnerScreen;
  char         Tag;
  int          Left;
  int          Top;
  uintcolor_ft Color;
  char         Style;
  char         Scale;
} TEveSpinner;

typedef struct tagEveButton {
  TScreen      *OwnerScreen;
  char         Order;
  char         Visible;
  char         Opacity;
  char         Tag;
  int          Left;
  int          Top;
  int          Width;
  int          Height;
  uintcolor_ft Color;
  uintcolor_ft Press_Color;
  uintcolor_ft ColorTo;
  uintcolor_ft Press_ColorTo;
  char         *Caption;
  TPointer     FontName;
  uintcolor_ft Font_Color;
  char         FontHandle;
  long         Source;
  char         Flat;
  char         Active;
  TEvent       *OnUp;
  TEvent       *OnDown;
  TEvent       *OnClick;
  TEvent       *OnPress;
} TEveButton;

struct Screen {
  uintcolor_ft   Color;
  unsigned int   Width;
  unsigned int   Height;
  unsigned short ObjectsCount;
  unsigned short Buttons_RoundCount;
  TButton_Round  *const code *Buttons_Round;
  unsigned short LabelsCount;
  TLabel         *const code *Labels;
  unsigned short ImagesCount;
  TImage         *const code *Images;
  unsigned short CirclesCount;
  TCircle        *const code *Circles;
  unsigned short CircleButtonsCount;
  TCircleButton  *const code *CircleButtons;
  unsigned short LinesCount;
  TLine          *const code *Lines;
  unsigned short ProgressBarsCount;
  TProgressBar   *const code *ProgressBars;
  unsigned short EveGaugesCount;
  TEveGauge      *const code *EveGauges;
  unsigned short EveSpinnersCount;
  TEveSpinner    *const code *EveSpinners;
  unsigned short EveButtonsCount;
  TEveButton     *const code *EveButtons;
  unsigned long  DynResStart;
  unsigned short Active;
  unsigned short **EveAnimation;
  unsigned short SniffObjectEvents;
  TEvent         *OnUp;
  TEvent         *OnDown;
  TEvent         *OnTagChange;
  TEvent         *OnPress;
};


// Object type constants
// Usage: VTFT stack internally
extern const VTFT_OT_BUTTONROUND;
extern const VTFT_OT_LABEL;
extern const VTFT_OT_IMAGE;
extern const VTFT_OT_CIRCLE;
extern const VTFT_OT_CIRCLEBUTTON;
extern const VTFT_OT_EVEGAUGE;
extern const VTFT_OT_EVEBUTTON;
// ~Object type constants

// Event type constants
// Usage: OnEvent
extern const VTFT_EVT_UP;
extern const VTFT_EVT_DOWN;
extern const VTFT_EVT_CLICK;
extern const VTFT_EVT_PRESS;
// ~Event type constants

// Sound action constants
// Usage: sound event action property and ProcessEvent
extern const VTFT_SNDACT_NONE;
extern const VTFT_SNDACT_PLAY;
extern const VTFT_SNDACT_STOP;
// ~Sound action constants

// Resource loading constants.
// Usage: DrawScreenO and LoadCurrentScreenResToGRAM
extern const VTFT_LOAD_RES_NONE;
extern const VTFT_LOAD_RES_STATIC;
extern const VTFT_LOAD_RES_DYNAMIC;
extern const VTFT_LOAD_RES_ALL;
// ~Resource loading constants

// Display effect constants
// Usage: DrawScreenO
extern const VTFT_DISPLAY_EFF_NONE;
extern const VTFT_DISPLAY_EFF_LIGHTS_FADE;
extern const VTFT_DISPLAY_EFF_LIGHTS_OFF;
// ~Display effect constants

// Stack flags
// Usage: internally used by VTFT stack
extern const VTFT_INT_REPAINT_ON_DOWN;
extern const VTFT_INT_REPAINT_ON_UP;
extern const VTFT_INT_BRING_TO_FRONT;
extern const VTFT_INT_INTRINSIC_CLICK_EFF;
// ~Stack flags

extern const TPointer DrawHandlerTable[44];

// Table of animations
extern void *ScreensEveAnimationTable[4];
// ~Table of animations


// Default configuration parameters
extern const TFT812PWM            VTFT_FT812_CONFIG_PWM;
extern const TFT812GPIO           VTFT_FT812_CONFIG_GPIO;
extern const TFT812Sound          VTFT_FT812_CONFIG_SOUND;
extern const TFT812Audio          VTFT_FT812_CONFIG_AUDIO;
extern const TFT812Display        VTFT_FT812_CONFIG_DISPLAY;
extern const TFT812Interrupt      VTFT_FT812_CONFIG_INTERRUPT;
extern const TFT812TouchTransform VTFT_FT812_CONFIG_TOUCHTRANSFORM;

extern TTouchStat TouchS;

extern TScreen AutomaticCtrlScr;

extern TImage        AutomaticCtrlSet;
extern TEvent        AutomaticCtrlSet_OnClick;
extern TImage        AutomaticCtrlBack;
extern TEvent        AutomaticCtrlBack_OnClick;
extern TImage        Image3;
extern TImage        Image4;
extern TProgressBar  FuelPrgAut;
extern TProgressBar  OilPrgAut;
extern TEveButton    StrStrButtAut;
extern TEvent        StrStrButtAut_OnClick;
extern TEveButton    StrPumButtAut;
extern TEvent        StrPumButtAut_OnClick;
extern TEveButton    StrEngButtAut;
extern TEvent        StrEngButtAut_OnClick;
extern TEveButton    FinButtAut;
extern TEvent        FinButtAut_OnClick;
extern TEveButton    StpEngButtAut;
extern TEvent        StpEngButtAut_OnClick;
extern TEveGauge     RpmGagAut;
extern TButton_Round ExTempNumAut;
extern TButton_Round FirBearTempNumAut;
extern TButton_Round SecBearTempNumAut;
extern TButton_Round SourTempNumAut;
extern TLabel        Label1;
extern TLabel        Label2;
extern TLabel        Label3;
extern TLabel        Label4;
extern TLabel        Label5;
extern TLine         Line1;
extern TLine         Line2;
extern TLine         Line3;
extern TButton_Round P0NumAut;
extern TButton_Round HNumAut;
extern TButton_Round TimeNumAut;
extern TButton_Round FuelFlNumAut;
extern TButton_Round BattVNumAut;
extern TLine         Line4;
extern TLabel        Label6;
extern TLabel        Label7;
extern TLabel        Label8;
extern TLabel        Label9;
extern TLabel        Label10;
extern TCircleButton LighOKAut;
extern TEvent        LighOKAut_OnClick;
extern TCircleButton LighErrAut;
extern TEvent        LighErrAut_OnClick;
extern TButton_Round RpmNumAut;
extern TProgressBar  ThrPrgAut;
extern TButton_Round RpmInpAut;
extern TLabel        Label11;
extern TLabel        Label12;
extern TLabel        Label13;
extern TLabel        Label14;
extern TCircle       CtrlOnAut;
extern TCircle       JoyOnAut;
extern TLine         Line5;
extern TCircle       PFiLightAut;
extern TCircle       POILightAut;
extern TCircle       IWLightAut;
extern TCircle       OilCtrlLigAut;
extern TCircle       IgValLigAut;
extern TCircle       IgLigAut;
extern TCircle       FlValLigAut;
extern TCircle       FlPumLigAut;
extern TLine         Line6;
extern TLabel        Label15;
extern TLabel        Label16;
extern TLabel        Label17;
extern TLabel        Label18;
extern TLabel        Label19;
extern TLabel        Label20;
extern TLabel        Label21;
extern TLabel        Label22;
extern TLabel        Label23;
extern TLabel        Label24;
extern TLabel        Label25;
extern TLabel        Label26;
extern TLabel        Label27;
extern TLabel        Label28;
extern TLabel        Label29;
extern TLabel        Label30;
extern TLabel        Label31;
extern TLabel        Label32;
extern TLabel        Label33;
extern TLabel        Label34;

extern TButton_Round *const code AutomaticCtrlScr_Buttons_Round[11];
extern TLabel        *const code AutomaticCtrlScr_Labels[34];
extern TImage        *const code AutomaticCtrlScr_Images[4];
extern TCircle       *const code AutomaticCtrlScr_Circles[10];
extern TCircleButton *const code AutomaticCtrlScr_CircleButtons[2];
extern TLine         *const code AutomaticCtrlScr_Lines[6];
extern TProgressBar  *const code AutomaticCtrlScr_ProgressBars[3];
extern TEveGauge     *const code AutomaticCtrlScr_EveGauges[1];
extern TEveButton    *const code AutomaticCtrlScr_EveButtons[5];

extern TScreen ManualCtrlScr;

extern TImage        ManualCtrlBack;
extern TEvent        ManualCtrlBack_OnClick;
extern TImage        ManualCtrlSet;
extern TEvent        ManualCtrlSet_OnClick;
extern TButton_Round ExTempNumMan;
extern TButton_Round FirBearTempNumMan;
extern TButton_Round SecBearTempNumMan;
extern TButton_Round SourTempNumMan;
extern TButton_Round TimeNumMan;
extern TButton_Round FuelFlNumMan;
extern TButton_Round BattVNumMan;
extern TLine         Line7;
extern TLine         Line8;
extern TLine         Line9;
extern TLabel        Label35;
extern TLabel        Label36;
extern TLabel        Label37;
extern TLabel        Label38;
extern TLabel        Label39;
extern TLabel        Label40;
extern TLabel        Label41;
extern TLabel        Label42;
extern TImage        Image7;
extern TImage        Image8;
extern TProgressBar  FuelPrgMan;
extern TProgressBar  OilPrgMan;
extern TProgressBar  ThrPrgMan;
extern TEveButton    FlPumButMan;
extern TEvent        FlPumButMan_OnClick;
extern TEveButton    FlValButtMan;
extern TEvent        FlValButtMan_OnClick;
extern TEveButton    IgButtMan;
extern TEvent        IgButtMan_OnClick;
extern TEveButton    IgValButtMan;
extern TEvent        IgValButtMan_OnClick;
extern TEveButton    StrStrButtMan;
extern TEvent        StrStrButtMan_OnClick;
extern TEveButton    OilCtrlButtMan_;
extern TEvent        OilCtrlButtMan__OnClick;
extern TLine         Line10;
extern TLine         Line11;
extern TLine         Line12;
extern TCircle       PFiLightMan;
extern TCircle       POILightMan;
extern TCircle       IWLightMan;
extern TCircleButton LighOKMan;
extern TEvent        LighOKMan_OnClick;
extern TCircleButton LighErrMan;
extern TEvent        LighErrMan_OnClick;
extern TEveGauge     RpmGagMan;
extern TButton_Round RpmNumMan;
extern TLabel        Label43;
extern TLabel        Label44;
extern TLabel        Label45;
extern TLine         Line13;
extern TLine         Line14;
extern TLabel        Label46;
extern TLabel        Label47;
extern TLabel        Label48;
extern TLabel        Label49;
extern TLabel        Label50;
extern TLabel        Label51;
extern TLabel        Label52;
extern TLabel        Label53;
extern TLabel        Label54;
extern TLabel        Label55;
extern TLabel        Label56;
extern TLabel        Label57;
extern TLabel        Label58;
extern TLabel        Label59;
extern TLabel        Label60;
extern TLabel        Label61;

extern TButton_Round *const code ManualCtrlScr_Buttons_Round[8];
extern TLabel        *const code ManualCtrlScr_Labels[27];
extern TImage        *const code ManualCtrlScr_Images[4];
extern TCircle       *const code ManualCtrlScr_Circles[3];
extern TCircleButton *const code ManualCtrlScr_CircleButtons[2];
extern TLine         *const code ManualCtrlScr_Lines[8];
extern TProgressBar  *const code ManualCtrlScr_ProgressBars[3];
extern TEveGauge     *const code ManualCtrlScr_EveGauges[1];
extern TEveButton    *const code ManualCtrlScr_EveButtons[6];

extern TScreen HomeScr;

extern TImage HomeAutomaticCtrl;
extern TEvent HomeAutomaticCtrl_OnClick;
extern TImage HomeSaveData;
extern TEvent HomeSaveData_OnClick;
extern TImage HomeEngineInfo;
extern TEvent HomeEngineInfo_OnClick;
extern TImage HomeAdjustments;
extern TEvent HomeAdjustments_OnClick;
extern TImage HomeCtrlInfo;
extern TEvent HomeCtrlInfo_OnClick;
extern TImage HomeManualCtrl;
extern TEvent HomeManualCtrl_OnClick;
extern TImage Image11;
extern TImage HomeCheckList;
extern TEvent HomeCheckList_OnClick;
extern TImage HomeAlertCtrl;
extern TEvent HomeAlertCtrl_OnClick;
extern TLabel Label65;
extern TLabel Label66;
extern TLabel Label62;
extern TLabel Label63;
extern TLabel Label67;
extern TLabel Label68;
extern TLabel Label69;
extern TLabel Check_List;
extern TLabel Alert_Control;
extern TLabel Save_Data;

extern TLabel *const code HomeScr_Labels[10];
extern TImage *const code HomeScr_Images[9];

extern TScreen Intro;

extern TImage      Image1;
extern TEveSpinner EveSpinner1;
extern TLabel      Label64;

extern TLabel      *const code Intro_Labels[1];
extern TImage      *const code Intro_Images[1];
extern TEveSpinner *const code Intro_EveSpinners[1];

extern TScreen *CurrentScreen;

/////////////////////////
// User Event Handlers
void AutomaticCtrlBackOnClick();
void AutomaticCtrlSetOnClick();
void FinButtAutOnClick();
void FlPumButManOnClick();
void FlValButtManOnClick();
void HomeAdjustmentsOnClick();
void HomeAlertCtrlOnClick();
void HomeAutomaticCtrlOnClick();
void HomeCheckListOnClick();
void HomeCtrlInfoOnClick();
void HomeEngineInfoOnClick();
void HomeManualCtrlOnClick();
void HomeSaveDataOnClick();
void IgButtManOnClick();
void IgValButtManOnClick();
void LighErrAutOnClick();
void LighErrManOnClick();
void LighOKAutOnClick();
void LighOKManOnClick();
void ManualCtrlBackOnClick();
void ManualCtrlSetOnClick();
void OilCtrlButtMan_OnClick();
void StpEngButtAutOnClick();
void StrEngButtAutOnClick();
void StrPumButtAutOnClick();
void StrStrButtAutOnClick();
void StrStrButtManOnClick();
/////////////////////////

/////////////////////////////////
// Captions
extern char FuelPrgAut_Caption[];
extern char OilPrgAut_Caption[];
extern char StrStrButtAut_Caption[];
extern char StrPumButtAut_Caption[];
extern char StrEngButtAut_Caption[];
extern char FinButtAut_Caption[];
extern char StpEngButtAut_Caption[];
extern char ExTempNumAut_Caption[];
extern char FirBearTempNumAut_Caption[];
extern char SecBearTempNumAut_Caption[];
extern char SourTempNumAut_Caption[];
extern char Label1_Caption[];
extern char Label2_Caption[];
extern char Label3_Caption[];
extern char Label4_Caption[];
extern char Label5_Caption[];
extern char P0NumAut_Caption[];
extern char HNumAut_Caption[];
extern char TimeNumAut_Caption[];
extern char FuelFlNumAut_Caption[];
extern char BattVNumAut_Caption[];
extern char Label6_Caption[];
extern char Label7_Caption[];
extern char Label8_Caption[];
extern char Label9_Caption[];
extern char Label10_Caption[];
extern char LighOKAut_Caption[];
extern char LighErrAut_Caption[];
extern char RpmNumAut_Caption[];
extern char ThrPrgAut_Caption[];
extern char RpmInpAut_Caption[];
extern char Label11_Caption[];
extern char Label12_Caption[];
extern char Label13_Caption[];
extern char Label14_Caption[];
extern char Label15_Caption[];
extern char Label16_Caption[];
extern char Label17_Caption[];
extern char Label18_Caption[];
extern char Label19_Caption[];
extern char Label20_Caption[];
extern char Label21_Caption[];
extern char Label22_Caption[];
extern char Label23_Caption[];
extern char Label24_Caption[];
extern char Label25_Caption[];
extern char Label26_Caption[];
extern char Label27_Caption[];
extern char Label28_Caption[];
extern char Label29_Caption[];
extern char Label30_Caption[];
extern char Label31_Caption[];
extern char Label32_Caption[];
extern char Label33_Caption[];
extern char Label34_Caption[];
extern char ExTempNumMan_Caption[];
extern char FirBearTempNumMan_Caption[];
extern char SecBearTempNumMan_Caption[];
extern char SourTempNumMan_Caption[];
extern char TimeNumMan_Caption[];
extern char FuelFlNumMan_Caption[];
extern char BattVNumMan_Caption[];
extern char Label35_Caption[];
extern char Label36_Caption[];
extern char Label37_Caption[];
extern char Label38_Caption[];
extern char Label39_Caption[];
extern char Label40_Caption[];
extern char Label41_Caption[];
extern char Label42_Caption[];
extern char FuelPrgMan_Caption[];
extern char OilPrgMan_Caption[];
extern char ThrPrgMan_Caption[];
extern char FlPumButMan_Caption[];
extern char FlValButtMan_Caption[];
extern char IgButtMan_Caption[];
extern char IgValButtMan_Caption[];
extern char StrStrButtMan_Caption[];
extern char OilCtrlButtMan__Caption[];
extern char LighOKMan_Caption[];
extern char LighErrMan_Caption[];
extern char RpmNumMan_Caption[];
extern char Label43_Caption[];
extern char Label44_Caption[];
extern char Label45_Caption[];
extern char Label46_Caption[];
extern char Label47_Caption[];
extern char Label48_Caption[];
extern char Label49_Caption[];
extern char Label50_Caption[];
extern char Label51_Caption[];
extern char Label52_Caption[];
extern char Label53_Caption[];
extern char Label54_Caption[];
extern char Label55_Caption[];
extern char Label56_Caption[];
extern char Label57_Caption[];
extern char Label58_Caption[];
extern char Label59_Caption[];
extern char Label60_Caption[];
extern char Label61_Caption[];
extern char Label65_Caption[];
extern char Label66_Caption[];
extern char Label62_Caption[];
extern char Label63_Caption[];
extern char Label67_Caption[];
extern char Label68_Caption[];
extern char Label69_Caption[];
extern char Check_List_Caption[];
extern char Alert_Control_Caption[];
extern char Save_Data_Caption[];
extern char Label64_Caption[];

/////////////////////////////////
// Event Descriptors 
extern TEvent AutomaticCtrlSet_OnUpOnClick;
extern TEvent AutomaticCtrlBack_OnUpOnClick;
extern TEvent StrStrButtAut_OnUpOnClick;
extern TEvent StrPumButtAut_OnUpOnClick;
extern TEvent StrEngButtAut_OnUpOnClick;
extern TEvent FinButtAut_OnUpOnClick;
extern TEvent StpEngButtAut_OnUpOnClick;
extern TEvent LighOKAut_OnUpOnClick;
extern TEvent LighErrAut_OnUpOnClick;
extern TEvent ManualCtrlBack_OnUpOnClick;
extern TEvent ManualCtrlSet_OnUpOnClick;
extern TEvent FlPumButMan_OnUpOnClick;
extern TEvent FlValButtMan_OnUpOnClick;
extern TEvent IgButtMan_OnUpOnClick;
extern TEvent IgValButtMan_OnUpOnClick;
extern TEvent StrStrButtMan_OnUpOnClick;
extern TEvent OilCtrlButtMan__OnUpOnClick;
extern TEvent LighOKMan_OnUpOnClick;
extern TEvent LighErrMan_OnUpOnClick;
extern TEvent HomeAutomaticCtrl_OnUpOnClick;
extern TEvent HomeSaveData_OnUpOnClick;
extern TEvent HomeEngineInfo_OnUpOnClick;
extern TEvent HomeAdjustments_OnUpOnClick;
extern TEvent HomeCtrlInfo_OnUpOnClick;
extern TEvent HomeManualCtrl_OnUpOnClick;
extern TEvent HomeCheckList_OnUpOnClick;
extern TEvent HomeAlertCtrl_OnUpOnClick;
/////////////////////////////////

void DrawScreenO(TScreen *aScreen, char aOptions);
void DrawScreen(TScreen *aScreen);
void DisableEveAnimation(TScreen *AScreen);
void EnableEveAnimation(TScreen *AScreen, void * AEveAnimation);
void DrawButtonRound(TButton_Round *AButtonRound);
void DrawLabel(TLabel *ALabel);
void DrawImage(TImage *AImage);
void DrawCircle(TCircle *ACircle);
void DrawCircleButton(TCircleButton *ACircleButton);
void DrawLine(TLine *ALine);
void DrawProgressBar(TProgressBar *AProgressBar);
void DrawEveGauge(TEveGauge *AEveGauge);
char DrawEveSpinner(TEveSpinner *AEveSpinner);
void DrawEveButton(TEveButton *AEveButton);
void ProcessVTFTStack();
void InitVTFTStack();

#endif
