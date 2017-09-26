#include "TJ_GUI14e_v_1_1_objects.h"
#include "TJ_GUI14e_v_1_1_resources.h"
#include "built_in.h"
#include "FT812_Types.h"


// Extern memory interface
// Place your global declarations here
// MMC/SD Connections
sbit Mmc_Chip_Select           at GPIOC_ODR.B5;
// end of MMC/SD

// TFT Get Data globals
char Ext_Data_Buffer[512];
unsigned long currentSector = -1, res_file_size;
// End of extern memory interface
// End of extern memory interface


// TFT module connections
sbit FT812_RST at GPIOE_ODR.B7;
sbit FT812_CS at GPIOE_ODR.B8;
sbit FT812_RST_Direction at GPIOE_ODR.B7;
sbit FT812_CS_Direction at GPIOE_ODR.B8;
// End TFT module connections

// Object type constants
// Usage: VTFT stack internally
const VTFT_OT_BUTTONROUND  = 2;
const VTFT_OT_LABEL        = 4;
const VTFT_OT_IMAGE        = 6;
const VTFT_OT_CIRCLE       = 8;
const VTFT_OT_CIRCLEBUTTON = 10;
const VTFT_OT_EVEGAUGE     = 25;
const VTFT_OT_EVEBUTTON    = 36;
// ~Object type constants

// Event type constants
// Usage: OnEvent
const VTFT_EVT_UP    = 0;
const VTFT_EVT_DOWN  = 1;
const VTFT_EVT_CLICK = 2;
const VTFT_EVT_PRESS = 3;
// ~Event type constants

// Sound action constants
// Usage: sound event action property and ProcessEvent
const VTFT_SNDACT_NONE  = 0;
const VTFT_SNDACT_PLAY  = 1;
const VTFT_SNDACT_STOP  = 2;
// ~Sound action constants

// Resource loading constants.
// Usage: DrawScreenO and LoadCurrentScreenResToGRAM
const VTFT_LOAD_RES_NONE    = 0x00; // do not load g-ram resources
const VTFT_LOAD_RES_STATIC  = 0x01; // load g-ram resources for static objects
const VTFT_LOAD_RES_DYNAMIC = 0x02; // load g-ram resources for dynamic objects
const VTFT_LOAD_RES_ALL     = 0x03; // load g-ram resources for all objects
// ~Resource loading constants

// Display effect constants
// Usage: DrawScreenO
const VTFT_DISPLAY_EFF_NONE         = 0x00; // no effect when switching between screens
const VTFT_DISPLAY_EFF_LIGHTS_FADE  = 0x04; // backlight: fade out before, fade in after drawing new screen
const VTFT_DISPLAY_EFF_LIGHTS_OFF   = 0x08; // backlight: turn off before, turn on after drawing new screen
// ~Display effect constants

// Stack flags
// Usage: internally used by VTFT stack
const VTFT_INT_REPAINT_ON_DOWN     = 1 << 0;
const VTFT_INT_REPAINT_ON_UP       = 1 << 1;
const VTFT_INT_BRING_TO_FRONT      = 1 << 2;
const VTFT_INT_INTRINSIC_CLICK_EFF = 1 << 3;
// ~Stack flags

// Table of object draw handlers
// Use object type constants to access coresponding object draw handler
const TPointer DrawHandlerTable[44] = {
  0,                 // Button draw handler not used
  0,                 // CButton draw handler not used
  &DrawButtonRound,  // ButtonRound draw handler
  0,                 // CButtonRound draw handler not used
  &DrawLabel,        // Label draw handler
  0,                 // CLabel draw handler not used
  &DrawImage,        // Image draw handler
  0,                 // CImage draw handler not used
  &DrawCircle,       // Circle draw handler
  0,                 // CCircle draw handler not used
  &DrawCircleButton, // CircleButton draw handler
  0,                 // CCircleButton draw handler not used
  0,                 // Box draw handler not used
  0,                 // CBox draw handler not used
  0,                 // BoxRound draw handler not used
  0,                 // CBoxRound draw handler not used
  &DrawLine,         // Line draw handler
  0,                 // CLine draw handler not used
  0,                 // Polygon draw handler not used
  0,                 // CPolygon draw handler not used
  0,                 // CheckBox draw handler not used
  0,                 // RadioButton draw handler not used
  &DrawProgressBar,  // ProgressBar draw handler
  0,                 // Audio draw handler not used
  0,                 // EveClock draw handler not used
  &DrawEveGauge,     // EveGauge draw handler
  0,                 // EveDial draw handler not used
  0,                 // EveKeys draw handler not used
  0,                 // CEveKeys draw handler not used
  0,                 // EveProgressBar draw handler not used
  0,                 // EveScrollBar draw handler not used
  0,                 // EveToggle draw handler not used
  0,                 // EveSlider draw handler not used
  &DrawEveSpinner,   // EveSpinner draw handler
  0,                 // EveScreenSaver draw handler not used
  0,                 // EveSketch draw handler not used
  &DrawEveButton,    // EveButton draw handler
  0,                 // CEveButton draw handler not used
  0,                 // EveGradient draw handler not used
  0,                 // CEveGradient draw handler not used
  0,                 // EveText draw handler not used
  0,                 // CEveText draw handler not used
  0,                 // EveNumber draw handler not used
  0                  // CEveNumber draw handler not used
};
// ~Table of draw handler pointers

// Table of animations
void *ScreensEveAnimationTable[4] = {
  0,
  0,
  0,
  &EveSpinner1
};
// ~Table of animations


// Default configuration parameters
const TFT812Display VTFT_FT812_CONFIG_DISPLAY =
{
  600000000,       // Frequency          = main clock frequency
  0,               // OutRenderMode      = 0 normal, 1 write, 2 read
  0,               // RenderReadScanLine = scanline for read render mode
  0,               // RenderWriteTrigger = trigger for write render mode (read only)
  928,             // hCycle             = number if horizontal cycles for display
  32,              // hOffset            = horizontal offset from starting signal
  800,             // hSize              = width resolution
  0,               // hSync0             = hsync falls
  3,               // hSync1             = hsync rise
  525,             // vCycle             = number of vertical cycles for display
  32,              // vOffset            = vertical offset from start signal
  480,             // vSize              = height resolution
  0,               // vSync0             = vsync falls
  3,               // vSync1             = vsync rise
  0,               // Rotate             = rotate display
  0x01B6,          // OutBits            = output bits resolution
  0,               // OutDither          = output number of bits
  0x0000,          // OutSwizzle         = output swizzle
  0,               // OutCSpread         = output clock spread enable
  0,               // PClockPolarity     = clock polarity: 0 - rising edge, 1 - falling edge
  2,               // PClock             = clock prescaler of FT812: - 0 means disable and >0 means 48MHz/pclock
};

const TFT812TouchTransform VTFT_FT812_CONFIG_TOUCHTRANSFORM =
{
  0x000070B9,      // TransformA = touch matrix transformation coefficient A
  0x000000D2,      // TransformB = touch matrix transformation coefficient B
  0x0009063E,      // TransformC = touch matrix transformation coefficient C
  0x0000017C,      // TransformD = touch matrix transformation coefficient D
  0x0000774C,      // TransformE = touch matrix transformation coefficient E
  0x0003CCC5,      // TransformF = touch matrix transformation coefficient F
};

const TFT812GPIO VTFT_FT812_CONFIG_GPIO =
{
  0xFFF0,          // GPIODIR = GPIO direction: 1 - output, 0 - input (16bit wide)
  0xFFFF,          // GPIO    = GPIO data latch
};

const TFT812PWM VTFT_FT812_CONFIG_PWM =
{
  250,             // Freq = PWM frequency - 14 bits
  64,              // Duty = PWM duty cycle, 0 to 128 is the range
};

const TFT812Interrupt VTFT_FT812_CONFIG_INTERRUPT =
{
  0,               // Flags  = interrupt flags (read only)
  0,               // Enable = global interrupt enable: 1 - enabled, 0 - disabled
  255,             // Mask   = interrupt mask value (individual interrupt enable): 1 - masked/disabled, 0 - enabled
};

const TFT812Sound VTFT_FT812_CONFIG_SOUND =
{
  0,               // Volume
  {0,              // Effect
  0},              // Pitch
  0,               // Play
};

const TFT812Audio VTFT_FT812_CONFIG_AUDIO =
{
  0,               // Volume
  0,               // StartAddress
  0,               // Length
  0,               // ReadPtr
  8000,            // Frequency
  0,               // Format
  0,               // Loop = audio playback mode
  0,               // Play
};

// Global variables

TTouchStat TouchS = {0};


/////////////////////////
TScreen *CurrentScreen = 0;


TScreen AutomaticCtrlScr;

TImage        AutomaticCtrlSet;
TEvent        AutomaticCtrlSet_OnClick;
TImage        AutomaticCtrlBack;
TEvent        AutomaticCtrlBack_OnClick;
TImage        Image3;
TImage        Image4;
TProgressBar  FuelPrgAut;
char          FuelPrgAut_Caption[6] = "50\\%";
TProgressBar  OilPrgAut;
char          OilPrgAut_Caption[6] = "50\\%";
TEveButton    StrStrButtAut;
TEvent        StrStrButtAut_OnClick;
char          StrStrButtAut_Caption[8] = "STARTER";
TEveButton    StrPumButtAut;
TEvent        StrPumButtAut_OnClick;
char          StrPumButtAut_Caption[11] = "START PUMP";
TEveButton    StrEngButtAut;
TEvent        StrEngButtAut_OnClick;
char          StrEngButtAut_Caption[13] = "START ENGINE";
TEveButton    FinButtAut;
TEvent        FinButtAut_OnClick;
char          FinButtAut_Caption[7] = "FINISH";
TEveButton    StpEngButtAut;
TEvent        StpEngButtAut_OnClick;
char          StpEngButtAut_Caption[12] = "STOP ENGINE";
TEveGauge     RpmGagAut;
TButton_Round ExTempNumAut;
char          ExTempNumAut_Caption[8] = "000.000";
TButton_Round FirBearTempNumAut;
char          FirBearTempNumAut_Caption[8] = "000.000";
TButton_Round SecBearTempNumAut;
char          SecBearTempNumAut_Caption[8] = "000.000";
TButton_Round SourTempNumAut;
char          SourTempNumAut_Caption[8] = "000.000";
TLabel        Label1;
char          Label1_Caption[17] = "Temperatures [C]";
TLabel        Label2;
char          Label2_Caption[7] = "Exaust";
TLabel        Label3;
char          Label3_Caption[14] = "First Bearing";
TLabel        Label4;
char          Label4_Caption[15] = "Second Bearing";
TLabel        Label5;
char          Label5_Caption[13] = "Surroundings";
TLine         Line1;
TLine         Line2;
TLine         Line3;
TButton_Round P0NumAut;
char          P0NumAut_Caption[8] = "000.000";
TButton_Round HNumAut;
char          HNumAut_Caption[8] = "000.000";
TButton_Round TimeNumAut;
char          TimeNumAut_Caption[8] = "000.000";
TButton_Round FuelFlNumAut;
char          FuelFlNumAut_Caption[8] = "000.000";
TButton_Round BattVNumAut;
char          BattVNumAut_Caption[8] = "000.000";
TLine         Line4;
TLabel        Label6;
char          Label6_Caption[9] = "Time [s]";
TLabel        Label7;
char          Label7_Caption[16] = "Fuel Flow [g/s]";
TLabel        Label8;
char          Label8_Caption[20] = "Battery Voltage [V]";
TLabel        Label9;
char          Label9_Caption[2] = "H";
TLabel        Label10;
char          Label10_Caption[4] = "P 0";
TCircleButton LighOKAut;
TEvent        LighOKAut_OnClick;
char          LighOKAut_Caption[5] = "O.K.";
TCircleButton LighErrAut;
TEvent        LighErrAut_OnClick;
char          LighErrAut_Caption[6] = "Error";
TButton_Round RpmNumAut;
char          RpmNumAut_Caption[8] = "000.000";
TProgressBar  ThrPrgAut;
char          ThrPrgAut_Caption[6] = "50\\%";
TButton_Round RpmInpAut;
char          RpmInpAut_Caption[8] = "000.000";
TLabel        Label11;
char          Label11_Caption[9] = "Throttle";
TLabel        Label12;
char          Label12_Caption[26] = "Desired RPM from Joystick";
TLabel        Label13;
char          Label13_Caption[11] = "Controller";
TLabel        Label14;
char          Label14_Caption[9] = "Joystick";
TCircle       CtrlOnAut;
TCircle       JoyOnAut;
TLine         Line5;
TCircle       PFiLightAut;
TCircle       POILightAut;
TCircle       IWLightAut;
TCircle       OilCtrlLigAut;
TCircle       IgValLigAut;
TCircle       IgLigAut;
TCircle       FlValLigAut;
TCircle       FlPumLigAut;
TLine         Line6;
TLabel        Label15;
char          Label15_Caption[17] = "Pressure in Fuel";
TLabel        Label16;
char          Label16_Caption[16] = "Pressure in Oil";
TLabel        Label17;
char          Label17_Caption[15] = "Igniter Warmed";
TLabel        Label18;
char          Label18_Caption[10] = "Fuel Pump";
TLabel        Label19;
char          Label19_Caption[11] = "Fuel Valve";
TLabel        Label20;
char          Label20_Caption[8] = "Igniter";
TLabel        Label21;
char          Label21_Caption[14] = "Igniter Valve";
TLabel        Label22;
char          Label22_Caption[12] = "Oil Control";
TLabel        Label23;
char          Label23_Caption[2] = "0";
TLabel        Label24;
char          Label24_Caption[3] = "10";
TLabel        Label25;
char          Label25_Caption[3] = "20";
TLabel        Label26;
char          Label26_Caption[3] = "30";
TLabel        Label27;
char          Label27_Caption[3] = "40";
TLabel        Label28;
char          Label28_Caption[3] = "50";
TLabel        Label29;
char          Label29_Caption[3] = "60";
TLabel        Label30;
char          Label30_Caption[3] = "70";
TLabel        Label31;
char          Label31_Caption[4] = "RPM";
TLabel        Label32;
char          Label32_Caption[7] = "X 1000";
TLabel        Label33;
char          Label33_Caption[13] = "Installation";
TLabel        Label34;
char          Label34_Caption[13] = "Installation";

TButton_Round *const code AutomaticCtrlScr_Buttons_Round[11] = {
  &ExTempNumAut,        
  &FirBearTempNumAut,   
  &SecBearTempNumAut,   
  &SourTempNumAut,      
  &P0NumAut,            
  &HNumAut,             
  &TimeNumAut,          
  &FuelFlNumAut,        
  &BattVNumAut,         
  &RpmNumAut,           
  &RpmInpAut            
};

TLabel *const code AutomaticCtrlScr_Labels[34] = {
  &Label1,              
  &Label2,              
  &Label3,              
  &Label4,              
  &Label5,              
  &Label6,              
  &Label7,              
  &Label8,              
  &Label9,              
  &Label10,             
  &Label11,             
  &Label12,             
  &Label13,             
  &Label14,             
  &Label15,             
  &Label16,             
  &Label17,             
  &Label18,             
  &Label19,             
  &Label20,             
  &Label21,             
  &Label22,             
  &Label23,             
  &Label24,             
  &Label25,             
  &Label26,             
  &Label27,             
  &Label28,             
  &Label29,             
  &Label30,             
  &Label31,             
  &Label32,             
  &Label33,             
  &Label34              
};

TImage *const code AutomaticCtrlScr_Images[4] = {
  &AutomaticCtrlSet,    
  &AutomaticCtrlBack,   
  &Image3,              
  &Image4               
};

TCircle *const code AutomaticCtrlScr_Circles[10] = {
  &CtrlOnAut,           
  &JoyOnAut,            
  &PFiLightAut,         
  &POILightAut,         
  &IWLightAut,          
  &OilCtrlLigAut,       
  &IgValLigAut,         
  &IgLigAut,            
  &FlValLigAut,         
  &FlPumLigAut          
};

TCircleButton *const code AutomaticCtrlScr_CircleButtons[2] = {
  &LighOKAut,           
  &LighErrAut           
};

TLine *const code AutomaticCtrlScr_Lines[6] = {
  &Line1,               
  &Line2,               
  &Line3,               
  &Line4,               
  &Line5,               
  &Line6                
};

TProgressBar *const code AutomaticCtrlScr_ProgressBars[3] = {
  &FuelPrgAut,          
  &OilPrgAut,           
  &ThrPrgAut            
};

TEveGauge *const code AutomaticCtrlScr_EveGauges[1] = {
  &RpmGagAut            
};

TEveButton *const code AutomaticCtrlScr_EveButtons[5] = {
  &StrStrButtAut,       
  &StrPumButtAut,       
  &StrEngButtAut,       
  &FinButtAut,          
  &StpEngButtAut        
};


TScreen ManualCtrlScr;

TImage        ManualCtrlBack;
TEvent        ManualCtrlBack_OnClick;
TImage        ManualCtrlSet;
TEvent        ManualCtrlSet_OnClick;
TButton_Round ExTempNumMan;
char          ExTempNumMan_Caption[8] = "000.000";
TButton_Round FirBearTempNumMan;
char          FirBearTempNumMan_Caption[8] = "000.000";
TButton_Round SecBearTempNumMan;
char          SecBearTempNumMan_Caption[8] = "000.000";
TButton_Round SourTempNumMan;
char          SourTempNumMan_Caption[8] = "000.000";
TButton_Round TimeNumMan;
char          TimeNumMan_Caption[8] = "000.000";
TButton_Round FuelFlNumMan;
char          FuelFlNumMan_Caption[8] = "000.000";
TButton_Round BattVNumMan;
char          BattVNumMan_Caption[8] = "000.000";
TLine         Line7;
TLine         Line8;
TLine         Line9;
TLabel        Label35;
char          Label35_Caption[17] = "Temperatures [C]";
TLabel        Label36;
char          Label36_Caption[7] = "Exaust";
TLabel        Label37;
char          Label37_Caption[14] = "First Bearing";
TLabel        Label38;
char          Label38_Caption[15] = "Second Bearing";
TLabel        Label39;
char          Label39_Caption[13] = "Surroundings";
TLabel        Label40;
char          Label40_Caption[9] = "Time [s]";
TLabel        Label41;
char          Label41_Caption[16] = "Fuel Flow [g/s]";
TLabel        Label42;
char          Label42_Caption[20] = "Battery Voltage [V]";
TImage        Image7;
TImage        Image8;
TProgressBar  FuelPrgMan;
char          FuelPrgMan_Caption[6] = "50\\%";
TProgressBar  OilPrgMan;
char          OilPrgMan_Caption[6] = "50\\%";
TProgressBar  ThrPrgMan;
char          ThrPrgMan_Caption[6] = "50\\%";
TEveButton    FlPumButMan;
TEvent        FlPumButMan_OnClick;
char          FlPumButMan_Caption[10] = "FUEL PUMP";
TEveButton    FlValButtMan;
TEvent        FlValButtMan_OnClick;
char          FlValButtMan_Caption[11] = "FUEL VALVE";
TEveButton    IgButtMan;
TEvent        IgButtMan_OnClick;
char          IgButtMan_Caption[8] = "IGNITER";
TEveButton    IgValButtMan;
TEvent        IgValButtMan_OnClick;
char          IgValButtMan_Caption[14] = "IGNITER VALVE";
TEveButton    StrStrButtMan;
TEvent        StrStrButtMan_OnClick;
char          StrStrButtMan_Caption[8] = "STARTER";
TEveButton    OilCtrlButtMan_;
TEvent        OilCtrlButtMan__OnClick;
char          OilCtrlButtMan__Caption[12] = "OIL CONTROL";
TLine         Line10;
TLine         Line11;
TLine         Line12;
TCircle       PFiLightMan;
TCircle       POILightMan;
TCircle       IWLightMan;
TCircleButton LighOKMan;
TEvent        LighOKMan_OnClick;
char          LighOKMan_Caption[5] = "O.K.";
TCircleButton LighErrMan;
TEvent        LighErrMan_OnClick;
char          LighErrMan_Caption[6] = "Error";
TEveGauge     RpmGagMan;
TButton_Round RpmNumMan;
char          RpmNumMan_Caption[8] = "000.000";
TLabel        Label43;
char          Label43_Caption[13] = "Fuel Control";
TLabel        Label44;
char          Label44_Caption[16] = "Igniter Control";
TLabel        Label45;
char          Label45_Caption[24] = "Starter and Oil Control";
TLine         Line13;
TLine         Line14;
TLabel        Label46;
char          Label46_Caption[9] = "Throttle";
TLabel        Label47;
char          Label47_Caption[4] = "RPM";
TLabel        Label48;
char          Label48_Caption[7] = "X 1000";
TLabel        Label49;
char          Label49_Caption[17] = "Pressure in Fuel";
TLabel        Label50;
char          Label50_Caption[12] = "Instalation";
TLabel        Label51;
char          Label51_Caption[16] = "Pressure in Oil";
TLabel        Label52;
char          Label52_Caption[12] = "Instalation";
TLabel        Label53;
char          Label53_Caption[15] = "Igniter Warmed";
TLabel        Label54;
char          Label54_Caption[2] = "0";
TLabel        Label55;
char          Label55_Caption[3] = "10";
TLabel        Label56;
char          Label56_Caption[3] = "20";
TLabel        Label57;
char          Label57_Caption[3] = "30";
TLabel        Label58;
char          Label58_Caption[3] = "40";
TLabel        Label59;
char          Label59_Caption[3] = "50";
TLabel        Label60;
char          Label60_Caption[3] = "60";
TLabel        Label61;
char          Label61_Caption[3] = "70";

TButton_Round *const code ManualCtrlScr_Buttons_Round[8] = {
  &ExTempNumMan,        
  &FirBearTempNumMan,   
  &SecBearTempNumMan,   
  &SourTempNumMan,      
  &TimeNumMan,          
  &FuelFlNumMan,        
  &BattVNumMan,         
  &RpmNumMan            
};

TLabel *const code ManualCtrlScr_Labels[27] = {
  &Label35,             
  &Label36,             
  &Label37,             
  &Label38,             
  &Label39,             
  &Label40,             
  &Label41,             
  &Label42,             
  &Label43,             
  &Label44,             
  &Label45,             
  &Label46,             
  &Label47,             
  &Label48,             
  &Label49,             
  &Label50,             
  &Label51,             
  &Label52,             
  &Label53,             
  &Label54,             
  &Label55,             
  &Label56,             
  &Label57,             
  &Label58,             
  &Label59,             
  &Label60,             
  &Label61              
};

TImage *const code ManualCtrlScr_Images[4] = {
  &ManualCtrlBack,      
  &ManualCtrlSet,       
  &Image7,              
  &Image8               
};

TCircle *const code ManualCtrlScr_Circles[3] = {
  &PFiLightMan,         
  &POILightMan,         
  &IWLightMan           
};

TCircleButton *const code ManualCtrlScr_CircleButtons[2] = {
  &LighOKMan,           
  &LighErrMan           
};

TLine *const code ManualCtrlScr_Lines[8] = {
  &Line7,               
  &Line8,               
  &Line9,               
  &Line10,              
  &Line11,              
  &Line12,              
  &Line13,              
  &Line14               
};

TProgressBar *const code ManualCtrlScr_ProgressBars[3] = {
  &FuelPrgMan,          
  &OilPrgMan,           
  &ThrPrgMan            
};

TEveGauge *const code ManualCtrlScr_EveGauges[1] = {
  &RpmGagMan            
};

TEveButton *const code ManualCtrlScr_EveButtons[6] = {
  &FlPumButMan,         
  &FlValButtMan,        
  &IgButtMan,           
  &IgValButtMan,        
  &StrStrButtMan,       
  &OilCtrlButtMan_      
};


TScreen HomeScr;

TImage HomeAutomaticCtrl;
TEvent HomeAutomaticCtrl_OnClick;
TImage HomeSaveData;
TEvent HomeSaveData_OnClick;
TImage HomeEngineInfo;
TEvent HomeEngineInfo_OnClick;
TImage HomeAdjustments;
TEvent HomeAdjustments_OnClick;
TImage HomeCtrlInfo;
TEvent HomeCtrlInfo_OnClick;
TImage HomeManualCtrl;
TEvent HomeManualCtrl_OnClick;
TImage Image11;
TImage HomeCheckList;
TEvent HomeCheckList_OnClick;
TImage HomeAlertCtrl;
TEvent HomeAlertCtrl_OnClick;
TLabel Label65;
char   Label65_Caption[5] = "Text";
TLabel Label66;
char   Label66_Caption[5] = "Text";
TLabel Label62;
char   Label62_Caption[13] = "Control Info";
TLabel Label63;
char   Label63_Caption[12] = "Adjustments";
TLabel Label67;
char   Label67_Caption[15] = "Manual Control";
TLabel Label68;
char   Label68_Caption[18] = "Automatic Control";
TLabel Label69;
char   Label69_Caption[12] = "Engine Info";
TLabel Check_List;
char   Check_List_Caption[11] = "Check List";
TLabel Alert_Control;
char   Alert_Control_Caption[14] = "Alert Control";
TLabel Save_Data;
char   Save_Data_Caption[10] = "Save Data";

TLabel *const code HomeScr_Labels[10] = {
  &Label65,             
  &Label66,             
  &Label62,             
  &Label63,             
  &Label67,             
  &Label68,             
  &Label69,             
  &Check_List,          
  &Alert_Control,       
  &Save_Data            
};

TImage *const code HomeScr_Images[9] = {
  &HomeAutomaticCtrl,   
  &HomeSaveData,        
  &HomeEngineInfo,      
  &HomeAdjustments,     
  &HomeCtrlInfo,        
  &HomeManualCtrl,      
  &Image11,             
  &HomeCheckList,       
  &HomeAlertCtrl        
};


TScreen Intro;

TImage      Image1;
TEveSpinner EveSpinner1;
TLabel      Label64;
char        Label64_Caption[29] = "Engine control GUI V1.1 2017";

TLabel *const code Intro_Labels[1] = {
  &Label64              
};

TImage *const code Intro_Images[1] = {
  &Image1               
};

TEveSpinner *const code Intro_EveSpinners[1] = {
  &EveSpinner1          
};


static char IsInsideObject(TObjInfo *AObjInfo, unsigned int X, unsigned int Y) {
  TRect *ptrPressRect = 0;
  TRect *ptrPressCircle = 0;

  if ((AObjInfo->HitX == X) && (AObjInfo->HitY == Y))
    return 1;

  switch (AObjInfo->Type) {
    // ButtonRound
    case VTFT_OT_BUTTONROUND: {
      ptrPressRect = (TRect *)&(((TButton_Round *)AObjInfo->Obj)->Left);
      break;
    }
    // Label
    case VTFT_OT_LABEL: {
      ptrPressRect = (TRect *)&(((TLabel *)AObjInfo->Obj)->Left);
      break;
    }
    // Image
    case VTFT_OT_IMAGE: {
      ptrPressRect = (TRect *)&(((TImage *)AObjInfo->Obj)->Left);
      break;
    }
    // Circle
    case VTFT_OT_CIRCLE: {
      ptrPressCircle = (TRect *)&(((TCircle *)AObjInfo->Obj)->Left);
      break;
    }
    // CircleButton
    case VTFT_OT_CIRCLEBUTTON: {
      ptrPressCircle = (TRect *)&(((TCircleButton *)AObjInfo->Obj)->Left);
      break;
    }
    // EveGauge
    case VTFT_OT_EVEGAUGE: {
      ptrPressCircle = (TRect *)&(((TEveGauge *)AObjInfo->Obj)->Left);
      break;
    }
    // EveButton
    case VTFT_OT_EVEBUTTON: {
      ptrPressRect = (TRect *)&(((TEveButton *)AObjInfo->Obj)->Left);
      break;
    }
  }

  if (ptrPressRect) {
    if ((ptrPressRect->Left <= X) && (ptrPressRect->Left+ptrPressRect->Width-1 >= X) &&
        (ptrPressRect->Top  <= Y) && (ptrPressRect->Top+ptrPressRect->Height-1 >= Y))
      return 1;
  }
  else if (ptrPressCircle) {
    if ((ptrPressCircle->Left <= X) && (ptrPressCircle->Left+ptrPressCircle->Width*2-1 >= X) &&
        (ptrPressCircle->Top  <= Y) && (ptrPressCircle->Top+ptrPressCircle->Width*2-1 >= Y))
      return 1;
  }

  return 0;
}

void DrawButtonRound(TButton_Round *AButtonRound) {
  int textWidth;
  int textHeight;
  
  if (AButtonRound->Visible) {
    if (AButtonRound == (TButton_Round *)TouchS.ActObjInfo.Obj)
      FT812_Canvas_BrushSingleColor(_FT812_BRUSH_STYLE_SOLID, AButtonRound->Press_Color, AButtonRound->Opacity);
    else 
      FT812_Canvas_BrushSingleColor(_FT812_BRUSH_STYLE_SOLID, AButtonRound->Color, AButtonRound->Opacity);

    FT812_Canvas_Pen(AButtonRound->Pen_Width, AButtonRound->Pen_Color, AButtonRound->Opacity);

    if (AButtonRound->Tag)
      FT812_Canvas_Tag(AButtonRound->Tag);

    FT812_Screen_BoxRound(AButtonRound->Left, AButtonRound->Top, AButtonRound->Left+AButtonRound->Width-1, AButtonRound->Top+AButtonRound->Height-1, AButtonRound->Corner_Radius);
    if (AButtonRound->FontHandle >= 16)
      FT812_Canvas_FontSystem(AButtonRound->FontHandle, AButtonRound->Font_Color, AButtonRound->Opacity);
    else
      FT812_Canvas_FontExt(AButtonRound->FontHandle, AButtonRound->FontName, AButtonRound->Source, AButtonRound->Font_Color, AButtonRound->Opacity);
    
    textWidth  = FT812_Canvas_TextWidth(AButtonRound->Caption);
    textHeight = FT812_Canvas_TextHeight();
    if (AButtonRound->TextAlign == taLeft)
      FT812_Screen_TextPos(AButtonRound->Left+(AButtonRound->Pen_Width)+1, AButtonRound->Top+(AButtonRound->Height-textHeight)/2, AButtonRound->Caption);
    else if (AButtonRound->TextAlign == taCenter)
      FT812_Screen_TextPos(AButtonRound->Left+(AButtonRound->Width-textWidth)/2, AButtonRound->Top+(AButtonRound->Height-textHeight)/2, AButtonRound->Caption);
    else if (AButtonRound->TextAlign == taRight)
      FT812_Screen_TextPos(AButtonRound->Left+AButtonRound->Width-textWidth-1, AButtonRound->Top+(AButtonRound->Height-textHeight)/2, AButtonRound->Caption);
  }
}

void DrawLabel(TLabel *ALabel) {
  if (ALabel->Visible) {
    if (ALabel->FontHandle >= 16)
      FT812_Canvas_FontSystem(ALabel->FontHandle, ALabel->Font_Color, ALabel->Opacity);
    else
      FT812_Canvas_FontExt(ALabel->FontHandle, ALabel->FontName, ALabel->Source, ALabel->Font_Color, ALabel->Opacity);

    if (ALabel->Tag)
      FT812_Canvas_Tag(ALabel->Tag);

    FT812_Screen_TextPos(ALabel->Left, ALabel->Top, ALabel->Caption);
  }
}

void DrawImage(TImage *AImage) {
  TFT812BmpConfig bmpCfg;
  TFT812Rect currRect;
  TFT812Point rotationCenter;
  char format;
  unsigned int width, height;

  if (AImage->Visible) {
    if (AImage->Tag)
      FT812_Canvas_Tag(AImage->Tag);

    if (AImage->Picture_Type != _FT812_BITMAP_FORMAT_JPEG) {
      FT812_Canvas_BmpGetInfoExt(AImage->Picture_Name, &format, &width, &height);
      FT812_Canvas_BmpParamsToCfg(AImage->Source, width, height, format, &bmpCfg);
      FT812_Canvas_Bitmap(0, &bmpCfg, AImage->Blend_Color, AImage->Opacity);
      FT812_Canvas_PixelFormat12p4();
      FT812_Canvas_CurrRectSet(FT812_Canvas_IntTo12p4(AImage->Left), FT812_Canvas_IntTo12p4(AImage->Top), FT812_Canvas_IntTo12p4(width), FT812_Canvas_IntTo12p4(height));
      FT812_Canvas_Transform_Identity();
      rotationCenter.X = FT812_Canvas_IntTo12p4(AImage->RotationCenterLeft);
      rotationCenter.Y = FT812_Canvas_IntTo12p4(AImage->RotationCenterTop);
      FT812_Canvas_Transform_RotateAndScale(AImage->RotationAngle, &rotationCenter, AImage->ScaleX * 65536, AImage->ScaleY * 65536);
      FT812_Canvas_Transform_Set();
      FT812_Canvas_CurrRectGet(&currRect.Left, &currRect.Top, &currRect.Width, &currRect.Height);

      bmpCfg.Size.Width  = FT812_Canvas_12p4ToInt(currRect.Width);
      bmpCfg.Size.Height = FT812_Canvas_12p4ToInt(currRect.Height);
      FT812_Canvas_Bitmap(0, &bmpCfg, AImage->Blend_Color, AImage->Opacity);
      FT812_Screen_Bitmap(currRect.Left, currRect.Top);
      FT812_Canvas_Transform_Identity();
      FT812_Canvas_Transform_Set();
      FT812_Canvas_PixelFormatInt();
    }
  }
}

void DrawCircle(TCircle *ACircle) {
  if (ACircle->Visible) {
    if (ACircle == (TCircle *)TouchS.ActObjInfo.Obj)
      FT812_Canvas_BrushSingleColor(_FT812_BRUSH_STYLE_SOLID, ACircle->Press_Color, ACircle->Opacity);
    else 
      FT812_Canvas_BrushSingleColor(_FT812_BRUSH_STYLE_SOLID, ACircle->Color, ACircle->Opacity);

    FT812_Canvas_Pen(ACircle->Pen_Width, ACircle->Pen_Color, ACircle->Opacity);

    if (ACircle->Tag)
      FT812_Canvas_Tag(ACircle->Tag);

    FT812_Screen_Circle(ACircle->Left+ACircle->Radius, 
                      ACircle->Top+ACircle->Radius, 
                      ACircle->Radius);
  }
}

void DrawCircleButton(TCircleButton *ACircleButton) {
  int textWidth;
  int textHeight;
  
  if (ACircleButton->Visible) {
    if (ACircleButton == (TCircleButton *)TouchS.ActObjInfo.Obj)
      FT812_Canvas_BrushSingleColor(_FT812_BRUSH_STYLE_SOLID, ACircleButton->Press_Color, ACircleButton->Opacity);
    else 
      FT812_Canvas_BrushSingleColor(_FT812_BRUSH_STYLE_SOLID, ACircleButton->Color, ACircleButton->Opacity);

    FT812_Canvas_Pen(ACircleButton->Pen_Width, ACircleButton->Pen_Color, ACircleButton->Opacity);

    if (ACircleButton->Tag)
      FT812_Canvas_Tag(ACircleButton->Tag);

    FT812_Screen_Circle(ACircleButton->Left+ACircleButton->Radius, 
                      ACircleButton->Top+ACircleButton->Radius, 
                      ACircleButton->Radius);
    if (ACircleButton->FontHandle >= 16)
      FT812_Canvas_FontSystem(ACircleButton->FontHandle, ACircleButton->Font_Color, ACircleButton->Opacity);
    else
      FT812_Canvas_FontExt(ACircleButton->FontHandle, ACircleButton->FontName, ACircleButton->Source, ACircleButton->Font_Color, ACircleButton->Opacity);
    
    textWidth  = FT812_Canvas_TextWidth(ACircleButton->Caption);
    textHeight = FT812_Canvas_TextHeight();
    if (ACircleButton->TextAlign == taLeft)
      FT812_Screen_TextPos(ACircleButton->Left+ACircleButton->Pen_Width+1, ACircleButton->Top+ACircleButton->Radius-textHeight/2, ACircleButton->Caption);
    else if (ACircleButton->TextAlign == taCenter)
      FT812_Screen_TextPos(ACircleButton->Left+ACircleButton->Radius-textWidth/2, ACircleButton->Top+ACircleButton->Radius-textHeight/2, ACircleButton->Caption);
    else if (ACircleButton->TextAlign == taRight)
      FT812_Screen_TextPos(ACircleButton->Left+ACircleButton->Radius*2-textWidth-1, ACircleButton->Top+ACircleButton->Radius-textHeight/2, ACircleButton->Caption);
  }
}

void DrawLine(TLine *ALine) {
  if (ALine->Visible) {
    FT812_Canvas_Pen(ALine->Pen_Width, ALine->Pen_Color, ALine->Opacity);

    if (ALine->Tag)
      FT812_Canvas_Tag(ALine->Tag);

    FT812_Screen_Line(ALine->First_Point_X, ALine->First_Point_Y, ALine->Second_Point_X, ALine->Second_Point_Y);
  }
}

void DrawProgressBar(TProgressBar *AProgressBar) {
  signed   int  relPos;
  signed   int  cntPos;
  unsigned int  offset;
  TRect         text;
  TRect         rect;
  unsigned char str[10];
  const    char RECTWIDTH   = 8;
  const    char RECTSPACING = 2;
  
  if (AProgressBar->Visible) {
    FT812_Canvas_BrushSingleColor(_FT812_BRUSH_STYLE_SOLID, AProgressBar->Background_Color, AProgressBar->Opacity);

    FT812_Canvas_Pen(AProgressBar->Pen_Width, AProgressBar->Pen_Color, AProgressBar->Opacity);

    if (AProgressBar->Tag)
      FT812_Canvas_Tag(AProgressBar->Tag);

    FT812_Screen_BoxRound(AProgressBar->Left, AProgressBar->Top, AProgressBar->Left+AProgressBar->Width-1, AProgressBar->Top+AProgressBar->Height-1, AProgressBar->Corner_Radius);

    relPos = ((long)(AProgressBar->Position-AProgressBar->Min)*100)/(AProgressBar->Max-AProgressBar->Min);
    if (relPos > 100)
      relPos = 100;
    if (relPos > 0) {
      FT812_Canvas_BrushSingleColor(_FT812_BRUSH_STYLE_SOLID, AProgressBar->Color, AProgressBar->Opacity);

      offset = AProgressBar->Pen_Width/2;
      if (AProgressBar->Pen_Width%2)
        offset++;

      rect.Left   = AProgressBar->Left+AProgressBar->Corner_Radius+offset;
      rect.Top    = AProgressBar->Top+offset;
      rect.Height = AProgressBar->Height-2*offset;

      rect.Width  = (long)(relPos*(AProgressBar->Width-2*(AProgressBar->Corner_Radius+offset)))/100;

      if (AProgressBar->Smooth) {
        FT812_Screen_RectangleRound(rect.Left, rect.Top, rect.Left+rect.Width-1, rect.Top+rect.Height-1, 1);
      }
      else {
        cntPos     = rect.Width;
        rect.Width = RECTWIDTH;

        while (cntPos > 0) {
          if (cntPos < rect.Width) {
            rect.Width = cntPos;
          }
          FT812_Screen_RectangleRound(rect.Left, rect.Top, rect.Left+rect.Width-1, rect.Top+rect.Height-1, 1);
          cntPos    -= rect.Width+RECTSPACING;
          rect.Left += rect.Width+RECTSPACING;
        }
      }
    }

    if (AProgressBar->Show_Position) {
      if (AProgressBar->FontHandle >= 16)
        FT812_Canvas_FontSystem(AProgressBar->FontHandle, AProgressBar->Font_Color, AProgressBar->Opacity);
      else
        FT812_Canvas_FontExt(AProgressBar->FontHandle, AProgressBar->FontName, AProgressBar->Source, AProgressBar->Font_Color, AProgressBar->Opacity);
      if (AProgressBar->Show_Percentage) {
        IntToStr(relPos, str);
        strcat(str, "\%");
      } else {
        IntToStr(AProgressBar->Position, str);
      }
      Ltrim(str);

      text.Width  = FT812_Canvas_TextWidth(str);
      text.Height = FT812_Canvas_TextHeight();
      text.Top    = AProgressBar->Top+(AProgressBar->Height-text.Height)/2;
      text.Left   = AProgressBar->Left+(AProgressBar->Width-text.Width)/2;
      FT812_Screen_TextPos(text.Left, text.Top, str);
    }
  }
}

void DrawEveGauge(TEveGauge *AEveGauge) {
  unsigned long drawOptions;
  
  if (AEveGauge->Visible) {
    if (AEveGauge == (TEveGauge *)TouchS.ActObjInfo.Obj)
      FT812_Canvas_BrushSingleColor(_FT812_BRUSH_STYLE_SOLID, AEveGauge->Press_Color, AEveGauge->Opacity);
    else 
      FT812_Canvas_BrushSingleColor(_FT812_BRUSH_STYLE_SOLID, AEveGauge->Color, AEveGauge->Opacity);

    FT812_Canvas_Pen(AEveGauge->Pen_Width, AEveGauge->Pen_Color, AEveGauge->Opacity);

    FT812_Canvas_CPGraphics_Major(AEveGauge->Major);
    FT812_Canvas_CPGraphics_Minor(AEveGauge->Minor);

    FT812_Canvas_CPGraphics_Range(AEveGauge->Range);

    FT812_Canvas_CPGraphics_Value(AEveGauge->Value);

    if (AEveGauge->Tag)
      FT812_Canvas_Tag(AEveGauge->Tag);

    drawOptions = 0;
    if (AEveGauge->Flat)
      drawOptions |= _FT812_CP_DRAW_OPT_FLAT;
    if (AEveGauge->NoBackground)
      drawOptions |= _FT812_CP_DRAW_OPT_NOBACK;
    if (!AEveGauge->TicksVisible)
      drawOptions |= _FT812_CP_DRAW_OPT_NOTICKS;
    if (AEveGauge->NoPointer)
      drawOptions |= _FT812_CP_DRAW_OPT_NOPTR;
    FT812_Canvas_CPGraphics_DrawingOptions(drawOptions);

    FT812_Screen_GaugeCp(AEveGauge->Left+AEveGauge->Radius, 
                       AEveGauge->Top+AEveGauge->Radius, 
                       AEveGauge->Radius);
  }
}

char DrawEveSpinner(TEveSpinner *AEveSpinner) {
  if(*CurrentScreen->EveAnimation == (unsigned short*)AEveSpinner) {
    if (AEveSpinner->Tag)
      FT812_Canvas_Tag(AEveSpinner->Tag);

    FT812_Canvas_BrushSingleColor(_FT812_BRUSH_STYLE_SOLID, AEveSpinner->Color, 255);

    FT812_Canvas_CPGraphics_Spinner(AEveSpinner->Style, AEveSpinner->Scale);
    FT812_Screen_SpinnerCP(AEveSpinner->Left, AEveSpinner->Top);
    return 1;
  }
  return 0;
}

void DrawEveButton(TEveButton *AEveButton) {
  unsigned long drawOptions;
  
  if (AEveButton->Visible) {
    if (AEveButton == (TEveButton *)TouchS.ActObjInfo.Obj) {
      FT812_Canvas_BrushGradient(_FT812_BRUSH_STYLE_SOLID, _FT812_BRUSH_GR_BOTTOM_TO_TOP, AEveButton->Press_Color, AEveButton->Press_ColorTo, AEveButton->Opacity);
    }
    else {
      FT812_Canvas_BrushGradient(_FT812_BRUSH_STYLE_SOLID, _FT812_BRUSH_GR_BOTTOM_TO_TOP, AEveButton->Color, AEveButton->ColorTo, AEveButton->Opacity);
    }

    if (AEveButton->FontHandle >= 16)
      FT812_Canvas_FontSystem(AEveButton->FontHandle, AEveButton->Font_Color, AEveButton->Opacity);
    else
      FT812_Canvas_FontExt(AEveButton->FontHandle, AEveButton->FontName, AEveButton->Source, AEveButton->Font_Color, AEveButton->Opacity);

    if (AEveButton->Tag)
      FT812_Canvas_Tag(AEveButton->Tag);

    drawOptions = 0;
    if (AEveButton->Flat)
      drawOptions |= _FT812_CP_DRAW_OPT_FLAT;
    FT812_Canvas_CPGraphics_DrawingOptions(drawOptions);

    FT812_Screen_ButtonCP(AEveButton->Left, AEveButton->Top, AEveButton->Width, AEveButton->Height, AEveButton->Caption);
  }
}

void DisableEveAnimation(TScreen *AScreen) {
  *AScreen->EveAnimation = 0;
}

void EnableEveAnimation(TScreen *AScreen, void * AEveAnimation) {
  *AScreen->EveAnimation = AEveAnimation;
}

void SetIdenticalImageSources(TPointer APictureName, unsigned long ASource) {
  char i;
  TImage *pImage;
  void *const code *ptrO;

  // Image
  i    = CurrentScreen->ImagesCount;
  ptrO = CurrentScreen->Images;
  while (i--) {
    pImage = (TImage *)(*ptrO);
    if (pImage->Picture_Name == APictureName)
      pImage->Source = ASource;
    ptrO++;
  }
}

void SetIdenticalFontSources(TPointer AFontName, unsigned long ASource) {
  char i;
  TButton_Round *pButtonRound;
  TLabel        *pLabel;
  TCircleButton *pCircleButton;
  TProgressBar  *pProgressBar;
  TEveButton    *pEveButton;
  void *const code *ptrO;

  // ButtonRound
  i    = CurrentScreen->Buttons_RoundCount;
  ptrO = CurrentScreen->Buttons_Round;
  while (i--) {
    pButtonRound = (TButton_Round *)(*ptrO);
    if (pButtonRound->FontName == AFontName)
      pButtonRound->Source = ASource;
    ptrO++;
  }

  // Label
  i    = CurrentScreen->LabelsCount;
  ptrO = CurrentScreen->Labels;
  while (i--) {
    pLabel = (TLabel *)(*ptrO);
    if (pLabel->FontName == AFontName)
      pLabel->Source = ASource;
    ptrO++;
  }

  // CircleButton
  i    = CurrentScreen->CircleButtonsCount;
  ptrO = CurrentScreen->CircleButtons;
  while (i--) {
    pCircleButton = (TCircleButton *)(*ptrO);
    if (pCircleButton->FontName == AFontName)
      pCircleButton->Source = ASource;
    ptrO++;
  }

  // ProgressBar
  i    = CurrentScreen->ProgressBarsCount;
  ptrO = CurrentScreen->ProgressBars;
  while (i--) {
    pProgressBar = (TProgressBar *)(*ptrO);
    if (pProgressBar->FontName == AFontName)
      pProgressBar->Source = ASource;
    ptrO++;
  }

  // EveButton
  i    = CurrentScreen->EveButtonsCount;
  ptrO = CurrentScreen->EveButtons;
  while (i--) {
    pEveButton = (TEveButton *)(*ptrO);
    if (pEveButton->FontName == AFontName)
      pEveButton->Source = ASource;
    ptrO++;
  }
}

static void ClearDynObjSource() {
  char i;
  TButton_Round *pButtonRound;
  TLabel        *pLabel;
  TImage        *pImage;
  TCircleButton *pCircleButton;
  TProgressBar  *pProgressBar;
  TEveButton    *pEveButton;
  void *const code *ptrO;

  // ButtonRound
  i    = CurrentScreen->Buttons_RoundCount;
  ptrO = CurrentScreen->Buttons_Round;
  while (i--) {
    pButtonRound = (TButton_Round *)(*ptrO);
    pButtonRound->Source = 0xFFFFFFFF;
    ptrO++;
  }

  // Label
  i    = CurrentScreen->LabelsCount;
  ptrO = CurrentScreen->Labels;
  while (i--) {
    pLabel = (TLabel *)(*ptrO);
    pLabel->Source = 0xFFFFFFFF;
    ptrO++;
  }

  // Image
  i    = CurrentScreen->ImagesCount;
  ptrO = CurrentScreen->Images;
  while (i--) {
    pImage = (TImage *)(*ptrO);
    pImage->Source = 0xFFFFFFFF;
    ptrO++;
  }

  // CircleButton
  i    = CurrentScreen->CircleButtonsCount;
  ptrO = CurrentScreen->CircleButtons;
  while (i--) {
    pCircleButton = (TCircleButton *)(*ptrO);
    pCircleButton->Source = 0xFFFFFFFF;
    ptrO++;
  }

  // ProgressBar
  i    = CurrentScreen->ProgressBarsCount;
  ptrO = CurrentScreen->ProgressBars;
  while (i--) {
    pProgressBar = (TProgressBar *)(*ptrO);
    pProgressBar->Source = 0xFFFFFFFF;
    ptrO++;
  }

  // EveButton
  i    = CurrentScreen->EveButtonsCount;
  ptrO = CurrentScreen->EveButtons;
  while (i--) {
    pEveButton = (TEveButton *)(*ptrO);
    pEveButton->Source = 0xFFFFFFFF;
    ptrO++;
  }
}

void LoadCurrentScreenResToGRAM(char loadOptions) {
  char i;
  long currSource = -1;
  long tmpDynResStart;
  TButton_Round *pButtonRound;
  TLabel        *pLabel;
  TImage        *pImage;
  TCircleButton *pCircleButton;
  TProgressBar  *pProgressBar;
  TEveButton    *pEveButton;
  void *const code *ptrO;

  // clear dynamic resource addresses first, if necessary
  if (loadOptions & VTFT_LOAD_RES_DYNAMIC)
    ClearDynObjSource();

  // dynamic resources allocation
  if (loadOptions & VTFT_LOAD_RES_DYNAMIC) {

    tmpDynResStart = CurrentScreen->DynResStart;
    if (FT812_RES_BeginLoad(tmpDynResStart)) {
      return;
    }

    // Image
    i    = CurrentScreen->ImagesCount;
    ptrO = CurrentScreen->Images;
    while (i--) {
      pImage = (TImage *)(*ptrO);
      if (pImage->Source == 0xFFFFFFFF) {
        currSource = FT812_Res_LoadBitmapExt(pImage->Picture_Name);
        pImage->Source = currSource;
        SetIdenticalImageSources(pImage->Picture_Name, currSource);
      }
      ptrO++;
    }

    // ButtonRound
    i    = CurrentScreen->Buttons_RoundCount;
    ptrO = CurrentScreen->Buttons_Round;
    while (i--) {
      pButtonRound = (TButton_Round *)(*ptrO);
      if (pButtonRound->FontHandle < 16)
        if (pButtonRound->Source == 0xFFFFFFFF) {
          currSource = FT812_Res_LoadFontExt(pButtonRound->FontName);
          pButtonRound->Source = currSource;
          SetIdenticalFontSources(pButtonRound->FontName, currSource);
        }
      ptrO++;
    }

    // Label
    i    = CurrentScreen->LabelsCount;
    ptrO = CurrentScreen->Labels;
    while (i--) {
      pLabel = (TLabel *)(*ptrO);
      if (pLabel->FontHandle < 16)
        if (pLabel->Source == 0xFFFFFFFF) {
          currSource = FT812_Res_LoadFontExt(pLabel->FontName);
          pLabel->Source = currSource;
          SetIdenticalFontSources(pLabel->FontName, currSource);
        }
      ptrO++;
    }

    // CircleButton
    i    = CurrentScreen->CircleButtonsCount;
    ptrO = CurrentScreen->CircleButtons;
    while (i--) {
      pCircleButton = (TCircleButton *)(*ptrO);
      if (pCircleButton->FontHandle < 16)
        if (pCircleButton->Source == 0xFFFFFFFF) {
          currSource = FT812_Res_LoadFontExt(pCircleButton->FontName);
          pCircleButton->Source = currSource;
          SetIdenticalFontSources(pCircleButton->FontName, currSource);
        }
      ptrO++;
    }

    // ProgressBar
    i    = CurrentScreen->ProgressBarsCount;
    ptrO = CurrentScreen->ProgressBars;
    while (i--) {
      pProgressBar = (TProgressBar *)(*ptrO);
      if (pProgressBar->FontHandle < 16)
        if (pProgressBar->Source == 0xFFFFFFFF) {
          currSource = FT812_Res_LoadFontExt(pProgressBar->FontName);
          pProgressBar->Source = currSource;
          SetIdenticalFontSources(pProgressBar->FontName, currSource);
        }
      ptrO++;
    }

    // EveButton
    i    = CurrentScreen->EveButtonsCount;
    ptrO = CurrentScreen->EveButtons;
    while (i--) {
      pEveButton = (TEveButton *)(*ptrO);
      if (pEveButton->FontHandle < 16)
        if (pEveButton->Source == 0xFFFFFFFF) {
          currSource = FT812_Res_LoadFontExt(pEveButton->FontName);
          pEveButton->Source = currSource;
          SetIdenticalFontSources(pEveButton->FontName, currSource);
        }
      ptrO++;
    }

    FT812_RES_EndLoad();
  }
}

void DrawObject(TPointer aObj, char aObjType) {
  TDrawHandler drawHandler;

  drawHandler = DrawHandlerTable[aObjType];
  if (drawHandler)
    drawHandler(aObj);
}

void DrawScreenO(TScreen *aScreen, char aOptions) {
  unsigned short cOrder, saveOrder;
  signed   int   actObjOrder;
  unsigned short pwmDuty;
  // counter variables
  char cntButtonRound;
  char cntLabel;
  char cntImage;
  char cntCircle;
  char cntCircleButton;
  char cntLine;
  char cntProgressBar;
  char cntEveGauge;
  char cntEveSpinner;
  char cntEveButton;
  // pointer variables
  TButton_Round *const code *pButtonRound;
  TLabel        *const code *pLabel;
  TImage        *const code *pImage;
  TCircle       *const code *pCircle;
  TCircleButton *const code *pCircleButton;
  TLine         *const code *pLine;
  TProgressBar  *const code *pProgressBar;
  TEveGauge     *const code *pEveGauge;
  TEveSpinner   *const code *pEveSpinner;
  TEveButton    *const code *pEveButton;

  // process screen switching effects
  if (aOptions & VTFT_DISPLAY_EFF_LIGHTS_FADE) {
    FT812_PWM_Get(0, &pwmDuty);
    FT812_PWM_FadeOut(pwmDuty, 0, pwmDuty/32? pwmDuty/32 : 1, 1);
  }
  else if (aOptions & VTFT_DISPLAY_EFF_LIGHTS_OFF) {
    FT812_PWM_Get(0, &pwmDuty);
    FT812_PWM_Duty(0);
  }

  if (CurrentScreen != aScreen) {
    // clear active object when drawing to new screen
    memset(&TouchS.ActObjInfo, 0, sizeof(TObjInfo));
  }

  CurrentScreen = aScreen;

  LoadCurrentScreenResToGRAM(aOptions);

  // init counter variables
  cntButtonRound  = CurrentScreen->Buttons_RoundCount;
  cntLabel        = CurrentScreen->LabelsCount;
  cntImage        = CurrentScreen->ImagesCount;
  cntCircle       = CurrentScreen->CirclesCount;
  cntCircleButton = CurrentScreen->CircleButtonsCount;
  cntLine         = CurrentScreen->LinesCount;
  cntProgressBar  = CurrentScreen->ProgressBarsCount;
  cntEveGauge     = CurrentScreen->EveGaugesCount;
  cntEveSpinner   = CurrentScreen->EveSpinnersCount;
  cntEveButton    = CurrentScreen->EveButtonsCount;
  // init pointer variables
  pButtonRound  = CurrentScreen->Buttons_Round;
  pLabel        = CurrentScreen->Labels;
  pImage        = CurrentScreen->Images;
  pCircle       = CurrentScreen->Circles;
  pCircleButton = CurrentScreen->CircleButtons;
  pLine         = CurrentScreen->Lines;
  pProgressBar  = CurrentScreen->ProgressBars;
  pEveGauge     = CurrentScreen->EveGauges;
  pEveSpinner   = CurrentScreen->EveSpinners;
  pEveButton    = CurrentScreen->EveButtons;

  FT812_Screen_BeginUpdateCP();

  if ((FT812_Controller.Display.Width != CurrentScreen->Width) ||
      (FT812_Controller.Display.Height != CurrentScreen->Height)) {
    FT812_Controller.Display.Width = CurrentScreen->Width;
    FT812_Controller.Display.Height = CurrentScreen->Height;
    FT812_Canvas_UnClip();

    if (FT812_Controller.Display.Width > FT812_Controller.Display.Height) {
      FT812_CP_CmdSetRotate(VTFT_FT812_CONFIG_DISPLAY.Rotate180 % 2);
    }
    else {
      FT812_CP_CmdSetRotate((VTFT_FT812_CONFIG_DISPLAY.Rotate180 % 2) + 2);
    }
  }

  FT812_Canvas_BrushSingleColor(_FT812_BRUSH_STYLE_SOLID, CurrentScreen->Color, 255);
  FT812_Canvas_Tag(0);
  FT812_Screen_Clear(_FT812_CLEAR_ALL);
  FT812_CP_CmdStop();

  actObjOrder = -1;
  if (TouchS.ActObjInfo.Obj)
    if (TouchS.ActObjInfo.Flags & VTFT_INT_BRING_TO_FRONT)
      actObjOrder = TouchS.ActObjInfo.Order;

  cOrder = 0;
  while (cOrder < CurrentScreen->ObjectsCount) {
    saveOrder = cOrder;
    if (pButtonRound) {
      while ((*pButtonRound)->Order == cOrder) {
        if (actObjOrder != cOrder) // draw pressed object at the end
          DrawButtonRound(*pButtonRound);
        cOrder++;
        pButtonRound++;
        cntButtonRound--;
        if (!cntButtonRound) {
          pButtonRound = 0;
          break;
        }
      }
      if (saveOrder != cOrder)
        continue;
    }

    if (pLabel) {
      while ((*pLabel)->Order == cOrder) {
        if (actObjOrder != cOrder) // draw pressed object at the end
          DrawLabel(*pLabel);
        cOrder++;
        pLabel++;
        cntLabel--;
        if (!cntLabel) {
          pLabel = 0;
          break;
        }
      }
      if (saveOrder != cOrder)
        continue;
    }

    if (pImage) {
      while ((*pImage)->Order == cOrder) {
        if (actObjOrder != cOrder) // draw pressed object at the end
          DrawImage(*pImage);
        cOrder++;
        pImage++;
        cntImage--;
        if (!cntImage) {
          pImage = 0;
          break;
        }
      }
      if (saveOrder != cOrder)
        continue;
    }

    if (pCircle) {
      while ((*pCircle)->Order == cOrder) {
        if (actObjOrder != cOrder) // draw pressed object at the end
          DrawCircle(*pCircle);
        cOrder++;
        pCircle++;
        cntCircle--;
        if (!cntCircle) {
          pCircle = 0;
          break;
        }
      }
      if (saveOrder != cOrder)
        continue;
    }

    if (pCircleButton) {
      while ((*pCircleButton)->Order == cOrder) {
        if (actObjOrder != cOrder) // draw pressed object at the end
          DrawCircleButton(*pCircleButton);
        cOrder++;
        pCircleButton++;
        cntCircleButton--;
        if (!cntCircleButton) {
          pCircleButton = 0;
          break;
        }
      }
      if (saveOrder != cOrder)
        continue;
    }

    if (pLine) {
      while ((*pLine)->Order == cOrder) {
        if (actObjOrder != cOrder) // draw pressed object at the end
          DrawLine(*pLine);
        cOrder++;
        pLine++;
        cntLine--;
        if (!cntLine) {
          pLine = 0;
          break;
        }
      }
      if (saveOrder != cOrder)
        continue;
    }

    if (pProgressBar) {
      while ((*pProgressBar)->Order == cOrder) {
        if (actObjOrder != cOrder) // draw pressed object at the end
          DrawProgressBar(*pProgressBar);
        cOrder++;
        pProgressBar++;
        cntProgressBar--;
        if (!cntProgressBar) {
          pProgressBar = 0;
          break;
        }
      }
      if (saveOrder != cOrder)
        continue;
    }

    if (pEveGauge) {
      while ((*pEveGauge)->Order == cOrder) {
        if (actObjOrder != cOrder) // draw pressed object at the end
          DrawEveGauge(*pEveGauge);
        cOrder++;
        pEveGauge++;
        cntEveGauge--;
        if (!cntEveGauge) {
          pEveGauge = 0;
          break;
        }
      }
      if (saveOrder != cOrder)
        continue;
    }

    if (pEveButton) {
      while ((*pEveButton)->Order == cOrder) {
        if (actObjOrder != cOrder) // draw pressed object at the end
          DrawEveButton(*pEveButton);
        cOrder++;
        pEveButton++;
        cntEveButton--;
        if (!cntEveButton) {
          pEveButton = 0;
          break;
        }
      }
      if (saveOrder != cOrder)
        continue;
    }

    cOrder++;
  }

  // draw pressed object now
  if (TouchS.ActObjInfo.Obj)
    DrawObject(TouchS.ActObjInfo.Obj, TouchS.ActObjInfo.Type);

  while(cntEveSpinner > 0) {
    if(DrawEveSpinner(*pEveSpinner) != 0) {
      break;
    }
    pEveSpinner++;
    cntEveSpinner--;
  }

  if(cntEveSpinner == 0) {
    FT812_Screen_EndUpdate();
    FT812_Screen_Show();
  }
  else {
    FT812_CP_EndUpdate();
    FT812_Display_WaitSwapComplete(2000);
  }

  // process screen switching effects
  if (aOptions & VTFT_DISPLAY_EFF_LIGHTS_FADE) {
    FT812_PWM_FadeIn(0, pwmDuty, 1, 3);
  }
  else if (aOptions & VTFT_DISPLAY_EFF_LIGHTS_OFF) {
    FT812_PWM_Duty(pwmDuty);
  }

}

void DrawScreen(TScreen *aScreen) {
  if (aScreen != CurrentScreen)
    DrawScreenO(aScreen, VTFT_LOAD_RES_ALL | VTFT_DISPLAY_EFF_LIGHTS_FADE);
  else
    DrawScreenO(aScreen, VTFT_LOAD_RES_NONE);
}

char GetActiveObjectByXY(int X, int Y, TObjInfo *AObjInfo) {
  char i;
  int  hiOrder;
  TButton_Round *pButtonRound;
  TLabel        *pLabel;
  TImage        *pImage;
  TCircle       *pCircle;
  TCircleButton *pCircleButton;
  TProgressBar  *pProgressBar;
  TEveGauge     *pEveGauge;
  TEveButton    *pEveButton;
  void *const code *ptrO;

  // clear current object info
  memset(AObjInfo, 0, sizeof(TObjInfo));

  // Find object with highest order at specified position.
  // Objects lists are sorted by object order ascending.
  hiOrder = -1;

  // ButtonRound
  i    = CurrentScreen->Buttons_RoundCount;
  ptrO = CurrentScreen->Buttons_Round+CurrentScreen->Buttons_RoundCount-1;
  while (i--) {
    pButtonRound = (TButton_Round *)(*ptrO);
    if (pButtonRound->Order < hiOrder)
      break;
    if (pButtonRound->Active) {
      if ((pButtonRound->Left <= X) && (pButtonRound->Left+pButtonRound->Width-1 >= X) &&
          (pButtonRound->Top  <= Y) && (pButtonRound->Top+pButtonRound->Height-1 >= Y)) {
        AObjInfo->Obj   = (void *)pButtonRound;
        AObjInfo->Type  = VTFT_OT_BUTTONROUND;
        AObjInfo->Order = pButtonRound->Order;
        AObjInfo->Flags = VTFT_INT_BRING_TO_FRONT;
        if (pButtonRound->Press_Color != pButtonRound->Color)
          AObjInfo->Flags |= VTFT_INT_REPAINT_ON_DOWN | VTFT_INT_REPAINT_ON_UP;

        hiOrder         = pButtonRound->Order;

        break;
      }
    }
    ptrO--;
  }

  // Label
  i    = CurrentScreen->LabelsCount;
  ptrO = CurrentScreen->Labels+CurrentScreen->LabelsCount-1;
  while (i--) {
    pLabel = (TLabel *)(*ptrO);
    if (pLabel->Order < hiOrder)
      break;
    if (pLabel->Active) {
      if ((pLabel->Left <= X) && (pLabel->Left+pLabel->Width-1 >= X) &&
          (pLabel->Top  <= Y) && (pLabel->Top+pLabel->Height-1 >= Y)) {
        AObjInfo->Obj   = (void *)pLabel;
        AObjInfo->Type  = VTFT_OT_LABEL;
        AObjInfo->Order = pLabel->Order;
        AObjInfo->Flags = VTFT_INT_BRING_TO_FRONT;

        hiOrder         = pLabel->Order;

        break;
      }
    }
    ptrO--;
  }

  // Image
  i    = CurrentScreen->ImagesCount;
  ptrO = CurrentScreen->Images+CurrentScreen->ImagesCount-1;
  while (i--) {
    pImage = (TImage *)(*ptrO);
    if (pImage->Order < hiOrder)
      break;
    if (pImage->Active) {
      if ((pImage->Left <= X) && (pImage->Left+pImage->Width-1 >= X) &&
          (pImage->Top  <= Y) && (pImage->Top+pImage->Height-1 >= Y)) {
        AObjInfo->Obj   = (void *)pImage;
        AObjInfo->Type  = VTFT_OT_IMAGE;
        AObjInfo->Order = pImage->Order;
        AObjInfo->Flags = VTFT_INT_BRING_TO_FRONT;

        hiOrder         = pImage->Order;

        break;
      }
    }
    ptrO--;
  }

  // Circle
  i    = CurrentScreen->CirclesCount;
  ptrO = CurrentScreen->Circles+CurrentScreen->CirclesCount-1;
  while (i--) {
    pCircle = (TCircle *)(*ptrO);
    if (pCircle->Order < hiOrder)
      break;
    if (pCircle->Active) {
      // for circle objects common object width is its radius property
      if ((pCircle->Left <= X) && (pCircle->Left+pCircle->Radius*2-1 >= X) &&
          (pCircle->Top  <= Y) && (pCircle->Top+pCircle->Radius*2-1 >= Y)) {
        AObjInfo->Obj   = (void *)pCircle;
        AObjInfo->Type  = VTFT_OT_CIRCLE;
        AObjInfo->Order = pCircle->Order;
        AObjInfo->Flags = VTFT_INT_BRING_TO_FRONT;
        if (pCircle->Press_Color != pCircle->Color)
          AObjInfo->Flags |= VTFT_INT_REPAINT_ON_DOWN | VTFT_INT_REPAINT_ON_UP;

        hiOrder         = pCircle->Order;

        break;
      }
    }
    ptrO--;
  }

  // CircleButton
  i    = CurrentScreen->CircleButtonsCount;
  ptrO = CurrentScreen->CircleButtons+CurrentScreen->CircleButtonsCount-1;
  while (i--) {
    pCircleButton = (TCircleButton *)(*ptrO);
    if (pCircleButton->Order < hiOrder)
      break;
    if (pCircleButton->Active) {
      // for circle objects common object width is its radius property
      if ((pCircleButton->Left <= X) && (pCircleButton->Left+pCircleButton->Radius*2-1 >= X) &&
          (pCircleButton->Top  <= Y) && (pCircleButton->Top+pCircleButton->Radius*2-1 >= Y)) {
        AObjInfo->Obj   = (void *)pCircleButton;
        AObjInfo->Type  = VTFT_OT_CIRCLEBUTTON;
        AObjInfo->Order = pCircleButton->Order;
        AObjInfo->Flags = VTFT_INT_BRING_TO_FRONT;
        if (pCircleButton->Press_Color != pCircleButton->Color)
          AObjInfo->Flags |= VTFT_INT_REPAINT_ON_DOWN | VTFT_INT_REPAINT_ON_UP;

        hiOrder         = pCircleButton->Order;

        break;
      }
    }
    ptrO--;
  }

  // EveGauge
  i    = CurrentScreen->EveGaugesCount;
  ptrO = CurrentScreen->EveGauges+CurrentScreen->EveGaugesCount-1;
  while (i--) {
    pEveGauge = (TEveGauge *)(*ptrO);
    if (pEveGauge->Order < hiOrder)
      break;
    if (pEveGauge->Active) {
      // for circle objects common object width is its radius property
      if ((pEveGauge->Left <= X) && (pEveGauge->Left+pEveGauge->Radius*2-1 >= X) &&
          (pEveGauge->Top  <= Y) && (pEveGauge->Top+pEveGauge->Radius*2-1 >= Y)) {
        AObjInfo->Obj   = (void *)pEveGauge;
        AObjInfo->Type  = VTFT_OT_EVEGAUGE;
        AObjInfo->Order = pEveGauge->Order;
        AObjInfo->Flags = VTFT_INT_BRING_TO_FRONT;
        if (pEveGauge->Press_Color != pEveGauge->Color)
          AObjInfo->Flags |= VTFT_INT_REPAINT_ON_DOWN | VTFT_INT_REPAINT_ON_UP;

        hiOrder         = pEveGauge->Order;

        break;
      }
    }
    ptrO--;
  }

  // EveButton
  i    = CurrentScreen->EveButtonsCount;
  ptrO = CurrentScreen->EveButtons+CurrentScreen->EveButtonsCount-1;
  while (i--) {
    pEveButton = (TEveButton *)(*ptrO);
    if (pEveButton->Order < hiOrder)
      break;
    if (pEveButton->Active) {
      if ((pEveButton->Left <= X) && (pEveButton->Left+pEveButton->Width-1 >= X) &&
          (pEveButton->Top  <= Y) && (pEveButton->Top+pEveButton->Height-1 >= Y)) {
        AObjInfo->Obj   = (void *)pEveButton;
        AObjInfo->Type  = VTFT_OT_EVEBUTTON;
        AObjInfo->Order = pEveButton->Order;
        AObjInfo->Flags = VTFT_INT_BRING_TO_FRONT;
        if ((pEveButton->Press_Color != pEveButton->Color) ||
            (pEveButton->Press_ColorTo != pEveButton->ColorTo))
          AObjInfo->Flags |= VTFT_INT_REPAINT_ON_DOWN | VTFT_INT_REPAINT_ON_UP;

        hiOrder         = pEveButton->Order;

        break;
      }
    }
    ptrO--;
  }

  if (AObjInfo->Obj) {
    AObjInfo->HitX = X;
    AObjInfo->HitY = Y;
    return 1;
  }
  else {
    return 0;
  }
}

char GetActiveObjectByTag(char ATag, TObjInfo *AObjInfo) {
  char i;
  TButton_Round *pButtonRound;
  TLabel        *pLabel;
  TImage        *pImage;
  TCircle       *pCircle;
  TCircleButton *pCircleButton;
  TProgressBar  *pProgressBar;
  TEveGauge     *pEveGauge;
  TEveButton    *pEveButton;
  void *const code *ptrO;

  // clear current object info
  memset(AObjInfo, 0, sizeof(TObjInfo));

  // Find object with specified tag value.

  // ButtonRound
  i    = CurrentScreen->Buttons_RoundCount;
  ptrO = CurrentScreen->Buttons_Round+CurrentScreen->Buttons_RoundCount-1;
  while (i--) {
    pButtonRound = (TButton_Round *)(*ptrO);
    if (pButtonRound->Tag == ATag) {
      if (pButtonRound->Active) {
        AObjInfo->Obj   = (void *)pButtonRound;
        AObjInfo->Type  = VTFT_OT_BUTTONROUND;
        AObjInfo->Order = pButtonRound->Order;
        AObjInfo->Flags = VTFT_INT_BRING_TO_FRONT;
        if (pButtonRound->Press_Color != pButtonRound->Color)
          AObjInfo->Flags |= VTFT_INT_REPAINT_ON_DOWN | VTFT_INT_REPAINT_ON_UP;

      }
      break;
    }
    ptrO--;
  }

  // Label
  i    = CurrentScreen->LabelsCount;
  ptrO = CurrentScreen->Labels+CurrentScreen->LabelsCount-1;
  while (i--) {
    pLabel = (TLabel *)(*ptrO);
    if (pLabel->Tag == ATag) {
      if (pLabel->Active) {
        AObjInfo->Obj   = (void *)pLabel;
        AObjInfo->Type  = VTFT_OT_LABEL;
        AObjInfo->Order = pLabel->Order;
        AObjInfo->Flags = VTFT_INT_BRING_TO_FRONT;
      }
      break;
    }
    ptrO--;
  }

  // Image
  i    = CurrentScreen->ImagesCount;
  ptrO = CurrentScreen->Images+CurrentScreen->ImagesCount-1;
  while (i--) {
    pImage = (TImage *)(*ptrO);
    if (pImage->Tag == ATag) {
      if (pImage->Active) {
        AObjInfo->Obj   = (void *)pImage;
        AObjInfo->Type  = VTFT_OT_IMAGE;
        AObjInfo->Order = pImage->Order;
        AObjInfo->Flags = VTFT_INT_BRING_TO_FRONT;
      }
      break;
    }
    ptrO--;
  }

  // Circle
  i    = CurrentScreen->CirclesCount;
  ptrO = CurrentScreen->Circles+CurrentScreen->CirclesCount-1;
  while (i--) {
    pCircle = (TCircle *)(*ptrO);
    if (pCircle->Tag == ATag) {
      if (pCircle->Active) {
        AObjInfo->Obj   = (void *)pCircle;
        AObjInfo->Type  = VTFT_OT_CIRCLE;
        AObjInfo->Order = pCircle->Order;
        AObjInfo->Flags = VTFT_INT_BRING_TO_FRONT;
        if (pCircle->Press_Color != pCircle->Color)
          AObjInfo->Flags |= VTFT_INT_REPAINT_ON_DOWN | VTFT_INT_REPAINT_ON_UP;

      }
      break;
    }
    ptrO--;
  }

  // CircleButton
  i    = CurrentScreen->CircleButtonsCount;
  ptrO = CurrentScreen->CircleButtons+CurrentScreen->CircleButtonsCount-1;
  while (i--) {
    pCircleButton = (TCircleButton *)(*ptrO);
    if (pCircleButton->Tag == ATag) {
      if (pCircleButton->Active) {
        AObjInfo->Obj   = (void *)pCircleButton;
        AObjInfo->Type  = VTFT_OT_CIRCLEBUTTON;
        AObjInfo->Order = pCircleButton->Order;
        AObjInfo->Flags = VTFT_INT_BRING_TO_FRONT;
        if (pCircleButton->Press_Color != pCircleButton->Color)
          AObjInfo->Flags |= VTFT_INT_REPAINT_ON_DOWN | VTFT_INT_REPAINT_ON_UP;

      }
      break;
    }
    ptrO--;
  }

  // EveGauge
  i    = CurrentScreen->EveGaugesCount;
  ptrO = CurrentScreen->EveGauges+CurrentScreen->EveGaugesCount-1;
  while (i--) {
    pEveGauge = (TEveGauge *)(*ptrO);
    if (pEveGauge->Tag == ATag) {
      if (pEveGauge->Active) {
        AObjInfo->Obj   = (void *)pEveGauge;
        AObjInfo->Type  = VTFT_OT_EVEGAUGE;
        AObjInfo->Order = pEveGauge->Order;
        AObjInfo->Flags = VTFT_INT_BRING_TO_FRONT;
        if (pEveGauge->Press_Color != pEveGauge->Color)
          AObjInfo->Flags |= VTFT_INT_REPAINT_ON_DOWN | VTFT_INT_REPAINT_ON_UP;

      }
      break;
    }
    ptrO--;
  }

  // EveButton
  i    = CurrentScreen->EveButtonsCount;
  ptrO = CurrentScreen->EveButtons+CurrentScreen->EveButtonsCount-1;
  while (i--) {
    pEveButton = (TEveButton *)(*ptrO);
    if (pEveButton->Tag == ATag) {
      if (pEveButton->Active) {
        AObjInfo->Obj   = (void *)pEveButton;
        AObjInfo->Type  = VTFT_OT_EVEBUTTON;
        AObjInfo->Order = pEveButton->Order;
        AObjInfo->Flags = VTFT_INT_BRING_TO_FRONT;
        if ((pEveButton->Press_Color != pEveButton->Color) ||
            (pEveButton->Press_ColorTo != pEveButton->ColorTo))
          AObjInfo->Flags |= VTFT_INT_REPAINT_ON_DOWN | VTFT_INT_REPAINT_ON_UP;

      }
      break;
    }
    ptrO--;
  }

  if (AObjInfo->Obj) {
    AObjInfo->HitTag = ATag;
    return 1;
  }
  else {
    return 0;
  }
}

static void ProcessEvent(TEvent *pEvent) {
  if (pEvent) {
    if (pEvent->Sound.SndAct == VTFT_SNDACT_PLAY) 
      FT812_Sound_SetAndPlay(pEvent->Sound.Effect, pEvent->Sound.Pitch, pEvent->Sound.Volume);
    else if (pEvent->Sound.SndAct == VTFT_SNDACT_STOP) 
      FT812_Sound_Stop();
    if (pEvent->Action) 
      pEvent->Action();
  }
}

static void ProcessCEvent(TCEvent *pEventC) {
  if (pEventC) {
    if (pEventC->Sound.SndAct == VTFT_SNDACT_PLAY) 
      FT812_Sound_SetAndPlay(pEventC->Sound.Effect, pEventC->Sound.Pitch, pEventC->Sound.Volume);
    else if (pEventC->Sound.SndAct == VTFT_SNDACT_STOP) 
      FT812_Sound_Stop();
    if (pEventC->Action) 
      pEventC->Action();
  }
}

static void OnEvent(TObjInfo *AObjInfo, char AEventType){
  TEvent **ppEvent;
  TEvent  *pEvent = 0;

  switch (AObjInfo->Type) {
    // ButtonRound
    case VTFT_OT_BUTTONROUND: {
      ppEvent = &(((TButton_Round *)AObjInfo->Obj)->OnUp);
      pEvent  = ppEvent[AEventType];
      break;
    }
    // Label
    case VTFT_OT_LABEL: {
      ppEvent = &(((TLabel *)AObjInfo->Obj)->OnUp);
      pEvent  = ppEvent[AEventType];
      break;
    }
    // Image
    case VTFT_OT_IMAGE: {
      ppEvent = &(((TImage *)AObjInfo->Obj)->OnUp);
      pEvent  = ppEvent[AEventType];
      break;
    }
    // Circle
    case VTFT_OT_CIRCLE: {
      ppEvent = &(((TCircle *)AObjInfo->Obj)->OnUp);
      pEvent  = ppEvent[AEventType];
      break;
    }
    // CircleButton
    case VTFT_OT_CIRCLEBUTTON: {
      ppEvent = &(((TCircleButton *)AObjInfo->Obj)->OnUp);
      pEvent  = ppEvent[AEventType];
      break;
    }
    // EveGauge
    case VTFT_OT_EVEGAUGE: {
      ppEvent = &(((TEveGauge *)AObjInfo->Obj)->OnUp);
      pEvent  = ppEvent[AEventType];
      break;
    }
    // EveButton
    case VTFT_OT_EVEBUTTON: {
      ppEvent = &(((TEveButton *)AObjInfo->Obj)->OnUp);
      pEvent  = ppEvent[AEventType];
      break;
    }
  } // end switch

  if (pEvent) {
    ProcessEvent(pEvent);
  }
}

static void Process_TP_Press() {
  // Screen Event
  if (CurrentScreen->Active)
    if ((CurrentScreen->SniffObjectEvents) || (!TouchS.ActObjInfo.Obj))
      ProcessEvent(CurrentScreen->OnPress);

  // Object Event
  if (!TouchS.ActObjInfo.Obj)
    return;

  OnEvent(&TouchS.ActObjInfo, VTFT_EVT_PRESS);
}

static void Process_TP_Up() {
  char     isClick;
  TObjInfo actObj;

  // Screen Event
  if (CurrentScreen->Active)
    if ((CurrentScreen->SniffObjectEvents) || (!TouchS.ActObjInfo.Obj))
      ProcessEvent(CurrentScreen->OnUp);

  actObj = TouchS.ActObjInfo;
  // Cler active object info
  memset(&TouchS.ActObjInfo, 0, sizeof(TObjInfo));

  // Object Event
  if (!actObj.Obj)
    return;

  isClick = IsInsideObject(&actObj, TouchS.X, TouchS.Y);

  if (actObj.Flags & VTFT_INT_REPAINT_ON_UP)
    DrawScreen(CurrentScreen);

  OnEvent(&actObj, VTFT_EVT_UP);
  if (isClick)
    OnEvent(&actObj, VTFT_EVT_CLICK);
}

static void Process_TP_Down() {
  // Search for active object
  if (TouchS.Tag) {        // objects must not have zero for tag value
    if (TouchS.Tag != 255) // can not search objects by default tag value
      GetActiveObjectByTag(TouchS.Tag, &TouchS.ActObjInfo);
    if (!TouchS.ActObjInfo.Obj) // object not found by tag, search by coordinates
      GetActiveObjectByXY(TouchS.X, TouchS.Y, &TouchS.ActObjInfo);
  }

  // Screen Event
  if (CurrentScreen->Active)
    if ((CurrentScreen->SniffObjectEvents) || (!TouchS.ActObjInfo.Obj))
      ProcessEvent(CurrentScreen->OnDown);

  // Object Event
  if (!TouchS.ActObjInfo.Obj)
    return;

  if (TouchS.ActObjInfo.Flags & VTFT_INT_REPAINT_ON_DOWN)
    DrawScreen(CurrentScreen);

  OnEvent(&TouchS.ActObjInfo, VTFT_EVT_DOWN);
}

static void Process_TP_TagChange() {
  // Screen Event
  if (CurrentScreen->Active)
    ProcessEvent(CurrentScreen->OnTagChange);
}

void ProcessVTFTStack() {
  char         Tag, oldTag;
  unsigned int X, Y;

  oldTag = TouchS.Tag;

  if (FT812_Touch_GetTagXY(&X, &Y) == 1) {
    FT812_Touch_GetTag(&Tag);

    TouchS.Tag = Tag;
    TouchS.X = X;
    TouchS.Y = Y;

    if (!TouchS.Pressed) {
      TouchS.Pressed = 1;
      Process_TP_Down();
    }

    Process_TP_Press();
  }
  else if (TouchS.Pressed) {
    Process_TP_Up();

    TouchS.Tag = 0;
    TouchS.X   = X;
    TouchS.Y   = Y;

    TouchS.Pressed = 0;
  }

  if (oldTag != TouchS.Tag)
    Process_TP_TagChange();
}

static void InitObjects() {
  // AutomaticCtrlScr: Init block start
  AutomaticCtrlScr.Color              = 0xFFFFFF;
  AutomaticCtrlScr.Width              = 800;
  AutomaticCtrlScr.Height             = 480;
  AutomaticCtrlScr.ObjectsCount       = 76;
  AutomaticCtrlScr.Buttons_RoundCount = 11;
  AutomaticCtrlScr.Buttons_Round      = AutomaticCtrlScr_Buttons_Round;
  AutomaticCtrlScr.LabelsCount        = 34;
  AutomaticCtrlScr.Labels             = AutomaticCtrlScr_Labels;
  AutomaticCtrlScr.ImagesCount        = 4;
  AutomaticCtrlScr.Images             = AutomaticCtrlScr_Images;
  AutomaticCtrlScr.CirclesCount       = 10;
  AutomaticCtrlScr.Circles            = AutomaticCtrlScr_Circles;
  AutomaticCtrlScr.CircleButtonsCount = 2;
  AutomaticCtrlScr.CircleButtons      = AutomaticCtrlScr_CircleButtons;
  AutomaticCtrlScr.LinesCount         = 6;
  AutomaticCtrlScr.Lines              = AutomaticCtrlScr_Lines;
  AutomaticCtrlScr.ProgressBarsCount  = 3;
  AutomaticCtrlScr.ProgressBars       = AutomaticCtrlScr_ProgressBars;
  AutomaticCtrlScr.EveGaugesCount     = 1;
  AutomaticCtrlScr.EveGauges          = AutomaticCtrlScr_EveGauges;
  AutomaticCtrlScr.EveSpinnersCount   = 0;
  AutomaticCtrlScr.EveSpinners        = 0;
  AutomaticCtrlScr.EveButtonsCount    = 5;
  AutomaticCtrlScr.EveButtons         = AutomaticCtrlScr_EveButtons;
  AutomaticCtrlScr.DynResStart        = 0;
  AutomaticCtrlScr.Active             = 1;
  AutomaticCtrlScr.EveAnimation       = &ScreensEveAnimationTable[0];
  AutomaticCtrlScr.SniffObjectEvents  = 0;
  AutomaticCtrlScr.OnUp               = 0;
  AutomaticCtrlScr.OnDown             = 0;
  AutomaticCtrlScr.OnTagChange        = 0;
  AutomaticCtrlScr.OnPress            = 0;

  // ManualCtrlScr: Init block start
  ManualCtrlScr.Color              = 0xFFFFFF;
  ManualCtrlScr.Width              = 800;
  ManualCtrlScr.Height             = 480;
  ManualCtrlScr.ObjectsCount       = 62;
  ManualCtrlScr.Buttons_RoundCount = 8;
  ManualCtrlScr.Buttons_Round      = ManualCtrlScr_Buttons_Round;
  ManualCtrlScr.LabelsCount        = 27;
  ManualCtrlScr.Labels             = ManualCtrlScr_Labels;
  ManualCtrlScr.ImagesCount        = 4;
  ManualCtrlScr.Images             = ManualCtrlScr_Images;
  ManualCtrlScr.CirclesCount       = 3;
  ManualCtrlScr.Circles            = ManualCtrlScr_Circles;
  ManualCtrlScr.CircleButtonsCount = 2;
  ManualCtrlScr.CircleButtons      = ManualCtrlScr_CircleButtons;
  ManualCtrlScr.LinesCount         = 8;
  ManualCtrlScr.Lines              = ManualCtrlScr_Lines;
  ManualCtrlScr.ProgressBarsCount  = 3;
  ManualCtrlScr.ProgressBars       = ManualCtrlScr_ProgressBars;
  ManualCtrlScr.EveGaugesCount     = 1;
  ManualCtrlScr.EveGauges          = ManualCtrlScr_EveGauges;
  ManualCtrlScr.EveSpinnersCount   = 0;
  ManualCtrlScr.EveSpinners        = 0;
  ManualCtrlScr.EveButtonsCount    = 6;
  ManualCtrlScr.EveButtons         = ManualCtrlScr_EveButtons;
  ManualCtrlScr.DynResStart        = 0;
  ManualCtrlScr.Active             = 1;
  ManualCtrlScr.EveAnimation       = &ScreensEveAnimationTable[1];
  ManualCtrlScr.SniffObjectEvents  = 0;
  ManualCtrlScr.OnUp               = 0;
  ManualCtrlScr.OnDown             = 0;
  ManualCtrlScr.OnTagChange        = 0;
  ManualCtrlScr.OnPress            = 0;

  // HomeScr: Init block start
  HomeScr.Color              = 0xFFFFFF;
  HomeScr.Width              = 800;
  HomeScr.Height             = 480;
  HomeScr.ObjectsCount       = 19;
  HomeScr.Buttons_RoundCount = 0;
  HomeScr.Buttons_Round      = 0;
  HomeScr.LabelsCount        = 10;
  HomeScr.Labels             = HomeScr_Labels;
  HomeScr.ImagesCount        = 9;
  HomeScr.Images             = HomeScr_Images;
  HomeScr.CirclesCount       = 0;
  HomeScr.Circles            = 0;
  HomeScr.CircleButtonsCount = 0;
  HomeScr.CircleButtons      = 0;
  HomeScr.LinesCount         = 0;
  HomeScr.Lines              = 0;
  HomeScr.ProgressBarsCount  = 0;
  HomeScr.ProgressBars       = 0;
  HomeScr.EveGaugesCount     = 0;
  HomeScr.EveGauges          = 0;
  HomeScr.EveSpinnersCount   = 0;
  HomeScr.EveSpinners        = 0;
  HomeScr.EveButtonsCount    = 0;
  HomeScr.EveButtons         = 0;
  HomeScr.DynResStart        = 0;
  HomeScr.Active             = 1;
  HomeScr.EveAnimation       = &ScreensEveAnimationTable[2];
  HomeScr.SniffObjectEvents  = 0;
  HomeScr.OnUp               = 0;
  HomeScr.OnDown             = 0;
  HomeScr.OnTagChange        = 0;
  HomeScr.OnPress            = 0;

  // Intro: Init block start
  Intro.Color              = 0xFFFFFF;
  Intro.Width              = 800;
  Intro.Height             = 480;
  Intro.ObjectsCount       = 3;
  Intro.Buttons_RoundCount = 0;
  Intro.Buttons_Round      = 0;
  Intro.LabelsCount        = 1;
  Intro.Labels             = Intro_Labels;
  Intro.ImagesCount        = 1;
  Intro.Images             = Intro_Images;
  Intro.CirclesCount       = 0;
  Intro.Circles            = 0;
  Intro.CircleButtonsCount = 0;
  Intro.CircleButtons      = 0;
  Intro.LinesCount         = 0;
  Intro.Lines              = 0;
  Intro.ProgressBarsCount  = 0;
  Intro.ProgressBars       = 0;
  Intro.EveGaugesCount     = 0;
  Intro.EveGauges          = 0;
  Intro.EveSpinnersCount   = 1;
  Intro.EveSpinners        = Intro_EveSpinners;
  Intro.EveButtonsCount    = 0;
  Intro.EveButtons         = 0;
  Intro.DynResStart        = 0;
  Intro.Active             = 1;
  Intro.EveAnimation       = &ScreensEveAnimationTable[3];
  Intro.SniffObjectEvents  = 0;
  Intro.OnUp               = 0;
  Intro.OnDown             = 0;
  Intro.OnTagChange        = 0;
  Intro.OnPress            = 0;

  AutomaticCtrlSet.OwnerScreen   = &AutomaticCtrlScr;
  AutomaticCtrlSet.Order         = 0;
  AutomaticCtrlSet.Visible       = 1;
  AutomaticCtrlSet.Opacity       = 255;
  AutomaticCtrlSet.Tag           = 255;
  AutomaticCtrlSet.Left          = 101;
  AutomaticCtrlSet.Top           = 410;
  AutomaticCtrlSet.Width         = 50;
  AutomaticCtrlSet.Height        = 50;
  AutomaticCtrlSet.Picture_Name  = settings2sm_bmp;
  AutomaticCtrlSet.Picture_Type  = 7;
  AutomaticCtrlSet.Picture_Ratio = 1;
  AutomaticCtrlSet.Blend_Color   = 0xFFFFFF;
  AutomaticCtrlSet.Source        = -1L;
  AutomaticCtrlSet.RotationAngle = 0;
  AutomaticCtrlSet.RotationCenterLeft = 126;
  AutomaticCtrlSet.RotationCenterTop = 435;
  AutomaticCtrlSet.ScaleX        = 1.0000;
  AutomaticCtrlSet.ScaleY        = 1.0000;
  AutomaticCtrlSet.Active        = 1;
  AutomaticCtrlSet.OnUp          = 0;
  AutomaticCtrlSet.OnDown        = 0;
  AutomaticCtrlSet.OnClick       = &AutomaticCtrlSet_OnClick;
  AutomaticCtrlSet.OnPress       = 0;

  AutomaticCtrlSet_OnClick.Action       = AutomaticCtrlSetOnClick;
  AutomaticCtrlSet_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
  AutomaticCtrlSet_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
  AutomaticCtrlSet_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
  AutomaticCtrlSet_OnClick.Sound.Volume = 255;

  AutomaticCtrlBack.OwnerScreen   = &AutomaticCtrlScr;
  AutomaticCtrlBack.Order         = 1;
  AutomaticCtrlBack.Visible       = 1;
  AutomaticCtrlBack.Opacity       = 255;
  AutomaticCtrlBack.Tag           = 255;
  AutomaticCtrlBack.Left          = 29;
  AutomaticCtrlBack.Top           = 410;
  AutomaticCtrlBack.Width         = 50;
  AutomaticCtrlBack.Height        = 50;
  AutomaticCtrlBack.Picture_Name  = back1sm_bmp;
  AutomaticCtrlBack.Picture_Type  = 7;
  AutomaticCtrlBack.Picture_Ratio = 1;
  AutomaticCtrlBack.Blend_Color   = 0xFFFFFF;
  AutomaticCtrlBack.Source        = -1L;
  AutomaticCtrlBack.RotationAngle = 0;
  AutomaticCtrlBack.RotationCenterLeft = 54;
  AutomaticCtrlBack.RotationCenterTop = 435;
  AutomaticCtrlBack.ScaleX        = 1.0000;
  AutomaticCtrlBack.ScaleY        = 1.0000;
  AutomaticCtrlBack.Active        = 1;
  AutomaticCtrlBack.OnUp          = 0;
  AutomaticCtrlBack.OnDown        = 0;
  AutomaticCtrlBack.OnClick       = &AutomaticCtrlBack_OnClick;
  AutomaticCtrlBack.OnPress       = 0;

  AutomaticCtrlBack_OnClick.Action       = AutomaticCtrlBackOnClick;
  AutomaticCtrlBack_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
  AutomaticCtrlBack_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
  AutomaticCtrlBack_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
  AutomaticCtrlBack_OnClick.Sound.Volume = 255;

  Image3.OwnerScreen   = &AutomaticCtrlScr;
  Image3.Order         = 2;
  Image3.Visible       = 1;
  Image3.Opacity       = 255;
  Image3.Tag           = 255;
  Image3.Left          = 736;
  Image3.Top           = 23;
  Image3.Width         = 36;
  Image3.Height        = 36;
  Image3.Picture_Name  = fuel_dispensersm_bmp;
  Image3.Picture_Type  = 7;
  Image3.Picture_Ratio = 1;
  Image3.Blend_Color   = 0xFFFFFF;
  Image3.Source        = -1L;
  Image3.RotationAngle = 0;
  Image3.RotationCenterLeft = 753;
  Image3.RotationCenterTop = 41;
  Image3.ScaleX        = 1.0000;
  Image3.ScaleY        = 1.0000;
  Image3.Active        = 1;
  Image3.OnUp          = 0;
  Image3.OnDown        = 0;
  Image3.OnClick       = 0;
  Image3.OnPress       = 0;

  Image4.OwnerScreen   = &AutomaticCtrlScr;
  Image4.Order         = 3;
  Image4.Visible       = 1;
  Image4.Opacity       = 255;
  Image4.Tag           = 255;
  Image4.Left          = 732;
  Image4.Top           = 66;
  Image4.Width         = 50;
  Image4.Height        = 50;
  Image4.Picture_Name  = CarOilsm_bmp;
  Image4.Picture_Type  = 7;
  Image4.Picture_Ratio = 1;
  Image4.Blend_Color   = 0xFFFFFF;
  Image4.Source        = -1L;
  Image4.RotationAngle = 0;
  Image4.RotationCenterLeft = 756;
  Image4.RotationCenterTop = 90;
  Image4.ScaleX        = 1.0000;
  Image4.ScaleY        = 1.0000;
  Image4.Active        = 1;
  Image4.OnUp          = 0;
  Image4.OnDown        = 0;
  Image4.OnClick       = 0;
  Image4.OnPress       = 0;

  FuelPrgAut.OwnerScreen      = &AutomaticCtrlScr;
  FuelPrgAut.Order            = 4;
  FuelPrgAut.Visible          = 1;
  FuelPrgAut.Opacity          = 255;
  FuelPrgAut.Tag              = 255;
  FuelPrgAut.Left             = 570;
  FuelPrgAut.Top              = 25;
  FuelPrgAut.Width            = 150;
  FuelPrgAut.Height           = 30;
  FuelPrgAut.Pen_Width        = 2;
  FuelPrgAut.Pen_Color        = 0x0000;
  FuelPrgAut.Background_Color = 0xC0C0C0;
  FuelPrgAut.Color            = 0x80FF;
  FuelPrgAut.Caption          = FuelPrgAut_Caption;
  FuelPrgAut.FontName         = Tahoma_19x19_Bold;
  FuelPrgAut.Font_Color       = 0x0000;
  FuelPrgAut.FontHandle       = 1;
  FuelPrgAut.Source           = -1UL;
  FuelPrgAut.Corner_Radius    = 1;
  FuelPrgAut.Min              = 0;
  FuelPrgAut.Max              = 100;
  FuelPrgAut.Position         = 50;
  FuelPrgAut.Show_Position    = 1;
  FuelPrgAut.Show_Percentage  = 1;
  FuelPrgAut.Smooth           = 1;

  OilPrgAut.OwnerScreen      = &AutomaticCtrlScr;
  OilPrgAut.Order            = 5;
  OilPrgAut.Visible          = 1;
  OilPrgAut.Opacity          = 255;
  OilPrgAut.Tag              = 255;
  OilPrgAut.Left             = 570;
  OilPrgAut.Top              = 75;
  OilPrgAut.Width            = 150;
  OilPrgAut.Height           = 30;
  OilPrgAut.Pen_Width        = 2;
  OilPrgAut.Pen_Color        = 0x0000;
  OilPrgAut.Background_Color = 0xC0C0C0;
  OilPrgAut.Color            = 0x80FF;
  OilPrgAut.Caption          = OilPrgAut_Caption;
  OilPrgAut.FontName         = Tahoma_19x19_Bold;
  OilPrgAut.Font_Color       = 0x0000;
  OilPrgAut.FontHandle       = 1;
  OilPrgAut.Source           = -1UL;
  OilPrgAut.Corner_Radius    = 1;
  OilPrgAut.Min              = 0;
  OilPrgAut.Max              = 100;
  OilPrgAut.Position         = 50;
  OilPrgAut.Show_Position    = 1;
  OilPrgAut.Show_Percentage  = 1;
  OilPrgAut.Smooth           = 1;

  StrStrButtAut.OwnerScreen   = &AutomaticCtrlScr;
  StrStrButtAut.Order         = 6;
  StrStrButtAut.Visible       = 1;
  StrStrButtAut.Opacity       = 255;
  StrStrButtAut.Tag           = 255;
  StrStrButtAut.Left          = 170;
  StrStrButtAut.Top           = 410;
  StrStrButtAut.Width         = 115;
  StrStrButtAut.Height        = 42;
  StrStrButtAut.Color         = 0x278D1;
  StrStrButtAut.Press_Color   = 0x7AC6FE;
  StrStrButtAut.ColorTo       = 0x7AC6FE;
  StrStrButtAut.Press_ColorTo = 0x278D1;
  StrStrButtAut.Caption       = StrStrButtAut_Caption;
  StrStrButtAut.FontName      = Tahoma_19x23_Bold;
  StrStrButtAut.Font_Color    = 0xFFFFFF;
  StrStrButtAut.FontHandle    = 3;
  StrStrButtAut.Source        = -1UL;
  StrStrButtAut.Flat          = 0;
  StrStrButtAut.Active        = 1;
  StrStrButtAut.OnUp          = 0;
  StrStrButtAut.OnDown        = 0;
  StrStrButtAut.OnClick       = &StrStrButtAut_OnClick;
  StrStrButtAut.OnPress       = 0;

  StrStrButtAut_OnClick.Action       = StrStrButtAutOnClick;
  StrStrButtAut_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
  StrStrButtAut_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
  StrStrButtAut_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
  StrStrButtAut_OnClick.Sound.Volume = 255;

  StrPumButtAut.OwnerScreen   = &AutomaticCtrlScr;
  StrPumButtAut.Order         = 7;
  StrPumButtAut.Visible       = 1;
  StrPumButtAut.Opacity       = 255;
  StrPumButtAut.Tag           = 255;
  StrPumButtAut.Left          = 290;
  StrPumButtAut.Top           = 410;
  StrPumButtAut.Width         = 115;
  StrPumButtAut.Height        = 42;
  StrPumButtAut.Color         = 0x278D1;
  StrPumButtAut.Press_Color   = 0x7AC6FE;
  StrPumButtAut.ColorTo       = 0x7AC6FE;
  StrPumButtAut.Press_ColorTo = 0x278D1;
  StrPumButtAut.Caption       = StrPumButtAut_Caption;
  StrPumButtAut.FontName      = Tahoma_19x19_Bold;
  StrPumButtAut.Font_Color    = 0xFFFFFF;
  StrPumButtAut.FontHandle    = 1;
  StrPumButtAut.Source        = -1UL;
  StrPumButtAut.Flat          = 0;
  StrPumButtAut.Active        = 1;
  StrPumButtAut.OnUp          = 0;
  StrPumButtAut.OnDown        = 0;
  StrPumButtAut.OnClick       = &StrPumButtAut_OnClick;
  StrPumButtAut.OnPress       = 0;

  StrPumButtAut_OnClick.Action       = StrPumButtAutOnClick;
  StrPumButtAut_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
  StrPumButtAut_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
  StrPumButtAut_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
  StrPumButtAut_OnClick.Sound.Volume = 255;

  StrEngButtAut.OwnerScreen   = &AutomaticCtrlScr;
  StrEngButtAut.Order         = 8;
  StrEngButtAut.Visible       = 1;
  StrEngButtAut.Opacity       = 255;
  StrEngButtAut.Tag           = 255;
  StrEngButtAut.Left          = 410;
  StrEngButtAut.Top           = 410;
  StrEngButtAut.Width         = 135;
  StrEngButtAut.Height        = 43;
  StrEngButtAut.Color         = 0x278D1;
  StrEngButtAut.Press_Color   = 0x7AC6FE;
  StrEngButtAut.ColorTo       = 0x7AC6FE;
  StrEngButtAut.Press_ColorTo = 0x278D1;
  StrEngButtAut.Caption       = StrEngButtAut_Caption;
  StrEngButtAut.FontName      = Tahoma_19x19_Bold;
  StrEngButtAut.Font_Color    = 0xFFFFFF;
  StrEngButtAut.FontHandle    = 1;
  StrEngButtAut.Source        = -1UL;
  StrEngButtAut.Flat          = 0;
  StrEngButtAut.Active        = 1;
  StrEngButtAut.OnUp          = 0;
  StrEngButtAut.OnDown        = 0;
  StrEngButtAut.OnClick       = &StrEngButtAut_OnClick;
  StrEngButtAut.OnPress       = 0;

  StrEngButtAut_OnClick.Action       = StrEngButtAutOnClick;
  StrEngButtAut_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
  StrEngButtAut_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
  StrEngButtAut_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
  StrEngButtAut_OnClick.Sound.Volume = 255;

  FinButtAut.OwnerScreen   = &AutomaticCtrlScr;
  FinButtAut.Order         = 9;
  FinButtAut.Visible       = 1;
  FinButtAut.Opacity       = 255;
  FinButtAut.Tag           = 255;
  FinButtAut.Left          = 550;
  FinButtAut.Top           = 410;
  FinButtAut.Width         = 115;
  FinButtAut.Height        = 43;
  FinButtAut.Color         = 0x278D1;
  FinButtAut.Press_Color   = 0x7AC6FE;
  FinButtAut.ColorTo       = 0x7AC6FE;
  FinButtAut.Press_ColorTo = 0x278D1;
  FinButtAut.Caption       = FinButtAut_Caption;
  FinButtAut.FontName      = Tahoma_19x23_Bold;
  FinButtAut.Font_Color    = 0xFFFFFF;
  FinButtAut.FontHandle    = 3;
  FinButtAut.Source        = -1UL;
  FinButtAut.Flat          = 0;
  FinButtAut.Active        = 1;
  FinButtAut.OnUp          = 0;
  FinButtAut.OnDown        = 0;
  FinButtAut.OnClick       = &FinButtAut_OnClick;
  FinButtAut.OnPress       = 0;

  FinButtAut_OnClick.Action       = FinButtAutOnClick;
  FinButtAut_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
  FinButtAut_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
  FinButtAut_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
  FinButtAut_OnClick.Sound.Volume = 255;

  StpEngButtAut.OwnerScreen   = &AutomaticCtrlScr;
  StpEngButtAut.Order         = 10;
  StpEngButtAut.Visible       = 1;
  StpEngButtAut.Opacity       = 255;
  StpEngButtAut.Tag           = 255;
  StpEngButtAut.Left          = 670;
  StpEngButtAut.Top           = 410;
  StpEngButtAut.Width         = 125;
  StpEngButtAut.Height        = 42;
  StpEngButtAut.Color         = 0x278D1;
  StpEngButtAut.Press_Color   = 0x7AC6FE;
  StpEngButtAut.ColorTo       = 0x7AC6FE;
  StpEngButtAut.Press_ColorTo = 0x278D1;
  StpEngButtAut.Caption       = StpEngButtAut_Caption;
  StpEngButtAut.FontName      = Tahoma_19x19_Bold;
  StpEngButtAut.Font_Color    = 0xFFFFFF;
  StpEngButtAut.FontHandle    = 1;
  StpEngButtAut.Source        = -1UL;
  StpEngButtAut.Flat          = 0;
  StpEngButtAut.Active        = 1;
  StpEngButtAut.OnUp          = 0;
  StpEngButtAut.OnDown        = 0;
  StpEngButtAut.OnClick       = &StpEngButtAut_OnClick;
  StpEngButtAut.OnPress       = 0;

  StpEngButtAut_OnClick.Action       = StpEngButtAutOnClick;
  StpEngButtAut_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
  StpEngButtAut_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
  StpEngButtAut_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
  StpEngButtAut_OnClick.Sound.Volume = 255;

  RpmGagAut.OwnerScreen   = &AutomaticCtrlScr;
  RpmGagAut.Order         = 11;
  RpmGagAut.Visible       = 1;
  RpmGagAut.Opacity       = 255;
  RpmGagAut.Tag           = 255;
  RpmGagAut.Left          = 300;
  RpmGagAut.Top           = 20;
  RpmGagAut.Radius        = 100;
  RpmGagAut.Pen_Width     = 1;
  RpmGagAut.Pen_Color     = 0x0000;
  RpmGagAut.Color         = 0xC0C0C0;
  RpmGagAut.Press_Color   = 0x7AC6FE;
  RpmGagAut.Major         = 7;
  RpmGagAut.Minor         = 10;
  RpmGagAut.Value         = 0;
  RpmGagAut.Range         = 70;
  RpmGagAut.Flat          = 1;
  RpmGagAut.NoBackground  = 0;
  RpmGagAut.NoPointer     = 0;
  RpmGagAut.TicksVisible  = 1;
  RpmGagAut.Active        = 1;
  RpmGagAut.OnUp          = 0;
  RpmGagAut.OnDown        = 0;
  RpmGagAut.OnClick       = 0;
  RpmGagAut.OnPress       = 0;

  ExTempNumAut.OwnerScreen   = &AutomaticCtrlScr;
  ExTempNumAut.Order         = 12;
  ExTempNumAut.Visible       = 1;
  ExTempNumAut.Opacity       = 255;
  ExTempNumAut.Tag           = 255;
  ExTempNumAut.Left          = 155;
  ExTempNumAut.Top           = 50;
  ExTempNumAut.Width         = 80;
  ExTempNumAut.Height        = 30;
  ExTempNumAut.Pen_Width     = 1;
  ExTempNumAut.Pen_Color     = 0x0000;
  ExTempNumAut.Color         = 0xFF00;
  ExTempNumAut.Press_Color   = 0xE2E2E2;
  ExTempNumAut.Caption       = ExTempNumAut_Caption;
  ExTempNumAut.TextAlign     = taCenter;
  ExTempNumAut.FontName      = Tahoma_19x19_Bold;
  ExTempNumAut.Font_Color    = 0x0000;
  ExTempNumAut.FontHandle    = 1;
  ExTempNumAut.Source        = -1UL;
  ExTempNumAut.Corner_Radius = 3;
  ExTempNumAut.Active        = 1;
  ExTempNumAut.OnUp          = 0;
  ExTempNumAut.OnDown        = 0;
  ExTempNumAut.OnClick       = 0;
  ExTempNumAut.OnPress       = 0;

  FirBearTempNumAut.OwnerScreen   = &AutomaticCtrlScr;
  FirBearTempNumAut.Order         = 13;
  FirBearTempNumAut.Visible       = 1;
  FirBearTempNumAut.Opacity       = 255;
  FirBearTempNumAut.Tag           = 255;
  FirBearTempNumAut.Left          = 155;
  FirBearTempNumAut.Top           = 85;
  FirBearTempNumAut.Width         = 80;
  FirBearTempNumAut.Height        = 30;
  FirBearTempNumAut.Pen_Width     = 1;
  FirBearTempNumAut.Pen_Color     = 0x0000;
  FirBearTempNumAut.Color         = 0xFF00;
  FirBearTempNumAut.Press_Color   = 0xE2E2E2;
  FirBearTempNumAut.Caption       = FirBearTempNumAut_Caption;
  FirBearTempNumAut.TextAlign     = taCenter;
  FirBearTempNumAut.FontName      = Tahoma_19x19_Bold;
  FirBearTempNumAut.Font_Color    = 0x0000;
  FirBearTempNumAut.FontHandle    = 1;
  FirBearTempNumAut.Source        = -1UL;
  FirBearTempNumAut.Corner_Radius = 3;
  FirBearTempNumAut.Active        = 1;
  FirBearTempNumAut.OnUp          = 0;
  FirBearTempNumAut.OnDown        = 0;
  FirBearTempNumAut.OnClick       = 0;
  FirBearTempNumAut.OnPress       = 0;

  SecBearTempNumAut.OwnerScreen   = &AutomaticCtrlScr;
  SecBearTempNumAut.Order         = 14;
  SecBearTempNumAut.Visible       = 1;
  SecBearTempNumAut.Opacity       = 255;
  SecBearTempNumAut.Tag           = 255;
  SecBearTempNumAut.Left          = 155;
  SecBearTempNumAut.Top           = 120;
  SecBearTempNumAut.Width         = 80;
  SecBearTempNumAut.Height        = 30;
  SecBearTempNumAut.Pen_Width     = 1;
  SecBearTempNumAut.Pen_Color     = 0x0000;
  SecBearTempNumAut.Color         = 0xFF00;
  SecBearTempNumAut.Press_Color   = 0xE2E2E2;
  SecBearTempNumAut.Caption       = SecBearTempNumAut_Caption;
  SecBearTempNumAut.TextAlign     = taCenter;
  SecBearTempNumAut.FontName      = Tahoma_19x19_Bold;
  SecBearTempNumAut.Font_Color    = 0x0000;
  SecBearTempNumAut.FontHandle    = 1;
  SecBearTempNumAut.Source        = -1UL;
  SecBearTempNumAut.Corner_Radius = 3;
  SecBearTempNumAut.Active        = 1;
  SecBearTempNumAut.OnUp          = 0;
  SecBearTempNumAut.OnDown        = 0;
  SecBearTempNumAut.OnClick       = 0;
  SecBearTempNumAut.OnPress       = 0;

  SourTempNumAut.OwnerScreen   = &AutomaticCtrlScr;
  SourTempNumAut.Order         = 15;
  SourTempNumAut.Visible       = 1;
  SourTempNumAut.Opacity       = 255;
  SourTempNumAut.Tag           = 255;
  SourTempNumAut.Left          = 155;
  SourTempNumAut.Top           = 155;
  SourTempNumAut.Width         = 80;
  SourTempNumAut.Height        = 30;
  SourTempNumAut.Pen_Width     = 1;
  SourTempNumAut.Pen_Color     = 0x0000;
  SourTempNumAut.Color         = 0xFF00;
  SourTempNumAut.Press_Color   = 0xE2E2E2;
  SourTempNumAut.Caption       = SourTempNumAut_Caption;
  SourTempNumAut.TextAlign     = taCenter;
  SourTempNumAut.FontName      = Tahoma_19x19_Bold;
  SourTempNumAut.Font_Color    = 0x0000;
  SourTempNumAut.FontHandle    = 1;
  SourTempNumAut.Source        = -1UL;
  SourTempNumAut.Corner_Radius = 3;
  SourTempNumAut.Active        = 1;
  SourTempNumAut.OnUp          = 0;
  SourTempNumAut.OnDown        = 0;
  SourTempNumAut.OnClick       = 0;
  SourTempNumAut.OnPress       = 0;

  Label1.OwnerScreen = &AutomaticCtrlScr;
  Label1.Order       = 16;
  Label1.Visible     = 1;
  Label1.Opacity     = 255;
  Label1.Tag         = 255;
  Label1.Left        = 45;
  Label1.Top         = 20;
  Label1.Width       = 153;
  Label1.Height      = 25;
  Label1.Caption     = Label1_Caption;
  Label1.FontName    = Tahoma_19x23_Regular;
  Label1.Font_Color  = 0x0000;
  Label1.FontHandle  = 4;
  Label1.Source      = -1UL;
  Label1.Active      = 1;
  Label1.OnUp        = 0;
  Label1.OnDown      = 0;
  Label1.OnClick     = 0;
  Label1.OnPress     = 0;

  Label2.OwnerScreen = &AutomaticCtrlScr;
  Label2.Order       = 17;
  Label2.Visible     = 1;
  Label2.Opacity     = 255;
  Label2.Tag         = 255;
  Label2.Left        = 20;
  Label2.Top         = 55;
  Label2.Width       = 56;
  Label2.Height      = 21;
  Label2.Caption     = Label2_Caption;
  Label2.FontName    = Tahoma_19x19_Bold;
  Label2.Font_Color  = 0x0000;
  Label2.FontHandle  = 1;
  Label2.Source      = -1UL;
  Label2.Active      = 1;
  Label2.OnUp        = 0;
  Label2.OnDown      = 0;
  Label2.OnClick     = 0;
  Label2.OnPress     = 0;

  Label3.OwnerScreen = &AutomaticCtrlScr;
  Label3.Order       = 18;
  Label3.Visible     = 1;
  Label3.Opacity     = 255;
  Label3.Tag         = 255;
  Label3.Left        = 20;
  Label3.Top         = 90;
  Label3.Width       = 106;
  Label3.Height      = 21;
  Label3.Caption     = Label3_Caption;
  Label3.FontName    = Tahoma_19x19_Bold;
  Label3.Font_Color  = 0x0000;
  Label3.FontHandle  = 1;
  Label3.Source      = -1UL;
  Label3.Active      = 1;
  Label3.OnUp        = 0;
  Label3.OnDown      = 0;
  Label3.OnClick     = 0;
  Label3.OnPress     = 0;

  Label4.OwnerScreen = &AutomaticCtrlScr;
  Label4.Order       = 19;
  Label4.Visible     = 1;
  Label4.Opacity     = 255;
  Label4.Tag         = 255;
  Label4.Left        = 20;
  Label4.Top         = 125;
  Label4.Width       = 129;
  Label4.Height      = 21;
  Label4.Caption     = Label4_Caption;
  Label4.FontName    = Tahoma_19x19_Bold;
  Label4.Font_Color  = 0x0000;
  Label4.FontHandle  = 1;
  Label4.Source      = -1UL;
  Label4.Active      = 1;
  Label4.OnUp        = 0;
  Label4.OnDown      = 0;
  Label4.OnClick     = 0;
  Label4.OnPress     = 0;

  Label5.OwnerScreen = &AutomaticCtrlScr;
  Label5.Order       = 20;
  Label5.Visible     = 1;
  Label5.Opacity     = 255;
  Label5.Tag         = 255;
  Label5.Left        = 20;
  Label5.Top         = 160;
  Label5.Width       = 111;
  Label5.Height      = 21;
  Label5.Caption     = Label5_Caption;
  Label5.FontName    = Tahoma_19x19_Bold;
  Label5.Font_Color  = 0x0000;
  Label5.FontHandle  = 1;
  Label5.Source      = -1UL;
  Label5.Active      = 1;
  Label5.OnUp        = 0;
  Label5.OnDown      = 0;
  Label5.OnClick     = 0;
  Label5.OnPress     = 0;

  Line1.OwnerScreen    = &AutomaticCtrlScr;
  Line1.Order          = 21;
  Line1.Visible        = 1;
  Line1.Opacity        = 255;
  Line1.Tag            = 255;
  Line1.First_Point_X  = 20;
  Line1.First_Point_Y  = 195;
  Line1.Second_Point_X = 240;
  Line1.Second_Point_Y = 195;
  Line1.Pen_Width      = 2;
  Line1.Pen_Color      = 0x0000;

  Line2.OwnerScreen    = &AutomaticCtrlScr;
  Line2.Order          = 22;
  Line2.Visible        = 1;
  Line2.Opacity        = 255;
  Line2.Tag            = 255;
  Line2.First_Point_X  = 550;
  Line2.First_Point_Y  = 128;
  Line2.Second_Point_X = 780;
  Line2.Second_Point_Y = 128;
  Line2.Pen_Width      = 2;
  Line2.Pen_Color      = 0x0000;

  Line3.OwnerScreen    = &AutomaticCtrlScr;
  Line3.Order          = 23;
  Line3.Visible        = 1;
  Line3.Opacity        = 255;
  Line3.Tag            = 255;
  Line3.First_Point_X  = 20;
  Line3.First_Point_Y  = 397;
  Line3.Second_Point_X = 240;
  Line3.Second_Point_Y = 397;
  Line3.Pen_Width      = 2;
  Line3.Pen_Color      = 0x0000;

  P0NumAut.OwnerScreen   = &AutomaticCtrlScr;
  P0NumAut.Order         = 24;
  P0NumAut.Visible       = 1;
  P0NumAut.Opacity       = 255;
  P0NumAut.Tag           = 255;
  P0NumAut.Left          = 155;
  P0NumAut.Top           = 360;
  P0NumAut.Width         = 80;
  P0NumAut.Height        = 30;
  P0NumAut.Pen_Width     = 1;
  P0NumAut.Pen_Color     = 0x0000;
  P0NumAut.Color         = 0xFFFFFF;
  P0NumAut.Press_Color   = 0xE2E2E2;
  P0NumAut.Caption       = P0NumAut_Caption;
  P0NumAut.TextAlign     = taCenter;
  P0NumAut.FontName      = Tahoma_19x19_Bold;
  P0NumAut.Font_Color    = 0x0000;
  P0NumAut.FontHandle    = 1;
  P0NumAut.Source        = -1UL;
  P0NumAut.Corner_Radius = 3;
  P0NumAut.Active        = 1;
  P0NumAut.OnUp          = 0;
  P0NumAut.OnDown        = 0;
  P0NumAut.OnClick       = 0;
  P0NumAut.OnPress       = 0;

  HNumAut.OwnerScreen   = &AutomaticCtrlScr;
  HNumAut.Order         = 25;
  HNumAut.Visible       = 1;
  HNumAut.Opacity       = 255;
  HNumAut.Tag           = 255;
  HNumAut.Left          = 155;
  HNumAut.Top           = 325;
  HNumAut.Width         = 80;
  HNumAut.Height        = 30;
  HNumAut.Pen_Width     = 1;
  HNumAut.Pen_Color     = 0x0000;
  HNumAut.Color         = 0xFFFFFF;
  HNumAut.Press_Color   = 0xE2E2E2;
  HNumAut.Caption       = HNumAut_Caption;
  HNumAut.TextAlign     = taCenter;
  HNumAut.FontName      = Tahoma_19x19_Bold;
  HNumAut.Font_Color    = 0x0000;
  HNumAut.FontHandle    = 1;
  HNumAut.Source        = -1UL;
  HNumAut.Corner_Radius = 3;
  HNumAut.Active        = 1;
  HNumAut.OnUp          = 0;
  HNumAut.OnDown        = 0;
  HNumAut.OnClick       = 0;
  HNumAut.OnPress       = 0;

  TimeNumAut.OwnerScreen   = &AutomaticCtrlScr;
  TimeNumAut.Order         = 26;
  TimeNumAut.Visible       = 1;
  TimeNumAut.Opacity       = 255;
  TimeNumAut.Tag           = 255;
  TimeNumAut.Left          = 155;
  TimeNumAut.Top           = 205;
  TimeNumAut.Width         = 80;
  TimeNumAut.Height        = 30;
  TimeNumAut.Pen_Width     = 1;
  TimeNumAut.Pen_Color     = 0x0000;
  TimeNumAut.Color         = 0xFFFFFF;
  TimeNumAut.Press_Color   = 0xE2E2E2;
  TimeNumAut.Caption       = TimeNumAut_Caption;
  TimeNumAut.TextAlign     = taCenter;
  TimeNumAut.FontName      = Tahoma_19x19_Bold;
  TimeNumAut.Font_Color    = 0x0000;
  TimeNumAut.FontHandle    = 1;
  TimeNumAut.Source        = -1UL;
  TimeNumAut.Corner_Radius = 3;
  TimeNumAut.Active        = 1;
  TimeNumAut.OnUp          = 0;
  TimeNumAut.OnDown        = 0;
  TimeNumAut.OnClick       = 0;
  TimeNumAut.OnPress       = 0;

  FuelFlNumAut.OwnerScreen   = &AutomaticCtrlScr;
  FuelFlNumAut.Order         = 27;
  FuelFlNumAut.Visible       = 1;
  FuelFlNumAut.Opacity       = 255;
  FuelFlNumAut.Tag           = 255;
  FuelFlNumAut.Left          = 155;
  FuelFlNumAut.Top           = 240;
  FuelFlNumAut.Width         = 80;
  FuelFlNumAut.Height        = 30;
  FuelFlNumAut.Pen_Width     = 1;
  FuelFlNumAut.Pen_Color     = 0x0000;
  FuelFlNumAut.Color         = 0xFFFFFF;
  FuelFlNumAut.Press_Color   = 0xE2E2E2;
  FuelFlNumAut.Caption       = FuelFlNumAut_Caption;
  FuelFlNumAut.TextAlign     = taCenter;
  FuelFlNumAut.FontName      = Tahoma_19x19_Bold;
  FuelFlNumAut.Font_Color    = 0x0000;
  FuelFlNumAut.FontHandle    = 1;
  FuelFlNumAut.Source        = -1UL;
  FuelFlNumAut.Corner_Radius = 3;
  FuelFlNumAut.Active        = 1;
  FuelFlNumAut.OnUp          = 0;
  FuelFlNumAut.OnDown        = 0;
  FuelFlNumAut.OnClick       = 0;
  FuelFlNumAut.OnPress       = 0;

  BattVNumAut.OwnerScreen   = &AutomaticCtrlScr;
  BattVNumAut.Order         = 28;
  BattVNumAut.Visible       = 1;
  BattVNumAut.Opacity       = 255;
  BattVNumAut.Tag           = 255;
  BattVNumAut.Left          = 155;
  BattVNumAut.Top           = 275;
  BattVNumAut.Width         = 80;
  BattVNumAut.Height        = 30;
  BattVNumAut.Pen_Width     = 1;
  BattVNumAut.Pen_Color     = 0x0000;
  BattVNumAut.Color         = 0xFFFFFF;
  BattVNumAut.Press_Color   = 0xE2E2E2;
  BattVNumAut.Caption       = BattVNumAut_Caption;
  BattVNumAut.TextAlign     = taCenter;
  BattVNumAut.FontName      = Tahoma_19x19_Bold;
  BattVNumAut.Font_Color    = 0x0000;
  BattVNumAut.FontHandle    = 1;
  BattVNumAut.Source        = -1UL;
  BattVNumAut.Corner_Radius = 3;
  BattVNumAut.Active        = 1;
  BattVNumAut.OnUp          = 0;
  BattVNumAut.OnDown        = 0;
  BattVNumAut.OnClick       = 0;
  BattVNumAut.OnPress       = 0;

  Line4.OwnerScreen    = &AutomaticCtrlScr;
  Line4.Order          = 29;
  Line4.Visible        = 1;
  Line4.Opacity        = 255;
  Line4.Tag            = 255;
  Line4.First_Point_X  = 20;
  Line4.First_Point_Y  = 315;
  Line4.Second_Point_X = 240;
  Line4.Second_Point_Y = 315;
  Line4.Pen_Width      = 2;
  Line4.Pen_Color      = 0x0000;

  Label6.OwnerScreen = &AutomaticCtrlScr;
  Label6.Order       = 30;
  Label6.Visible     = 1;
  Label6.Opacity     = 255;
  Label6.Tag         = 255;
  Label6.Left        = 20;
  Label6.Top         = 210;
  Label6.Width       = 69;
  Label6.Height      = 21;
  Label6.Caption     = Label6_Caption;
  Label6.FontName    = Tahoma_19x19_Bold;
  Label6.Font_Color  = 0x0000;
  Label6.FontHandle  = 1;
  Label6.Source      = -1UL;
  Label6.Active      = 1;
  Label6.OnUp        = 0;
  Label6.OnDown      = 0;
  Label6.OnClick     = 0;
  Label6.OnPress     = 0;

  Label7.OwnerScreen = &AutomaticCtrlScr;
  Label7.Order       = 31;
  Label7.Visible     = 1;
  Label7.Opacity     = 255;
  Label7.Tag         = 255;
  Label7.Left        = 20;
  Label7.Top         = 245;
  Label7.Width       = 127;
  Label7.Height      = 21;
  Label7.Caption     = Label7_Caption;
  Label7.FontName    = Tahoma_19x19_Bold;
  Label7.Font_Color  = 0x0000;
  Label7.FontHandle  = 1;
  Label7.Source      = -1UL;
  Label7.Active      = 1;
  Label7.OnUp        = 0;
  Label7.OnDown      = 0;
  Label7.OnClick     = 0;
  Label7.OnPress     = 0;

  Label8.OwnerScreen = &AutomaticCtrlScr;
  Label8.Order       = 32;
  Label8.Visible     = 1;
  Label8.Opacity     = 255;
  Label8.Tag         = 255;
  Label8.Left        = 20;
  Label8.Top         = 280;
  Label8.Width       = 130;
  Label8.Height      = 17;
  Label8.Caption     = Label8_Caption;
  Label8.FontName    = Tahoma_14x16_Bold;
  Label8.Font_Color  = 0x0000;
  Label8.FontHandle  = 5;
  Label8.Source      = -1UL;
  Label8.Active      = 1;
  Label8.OnUp        = 0;
  Label8.OnDown      = 0;
  Label8.OnClick     = 0;
  Label8.OnPress     = 0;

  Label9.OwnerScreen = &AutomaticCtrlScr;
  Label9.Order       = 33;
  Label9.Visible     = 1;
  Label9.Opacity     = 255;
  Label9.Tag         = 255;
  Label9.Left        = 20;
  Label9.Top         = 328;
  Label9.Width       = 15;
  Label9.Height      = 25;
  Label9.Caption     = Label9_Caption;
  Label9.FontName    = Tahoma_19x23_Bold;
  Label9.Font_Color  = 0x0000;
  Label9.FontHandle  = 3;
  Label9.Source      = -1UL;
  Label9.Active      = 1;
  Label9.OnUp        = 0;
  Label9.OnDown      = 0;
  Label9.OnClick     = 0;
  Label9.OnPress     = 0;

  Label10.OwnerScreen = &AutomaticCtrlScr;
  Label10.Order       = 34;
  Label10.Visible     = 1;
  Label10.Opacity     = 255;
  Label10.Tag         = 255;
  Label10.Left        = 20;
  Label10.Top         = 363;
  Label10.Width       = 31;
  Label10.Height      = 25;
  Label10.Caption     = Label10_Caption;
  Label10.FontName    = Tahoma_19x23_Bold;
  Label10.Font_Color  = 0x0000;
  Label10.FontHandle  = 3;
  Label10.Source      = -1UL;
  Label10.Active      = 1;
  Label10.OnUp        = 0;
  Label10.OnDown      = 0;
  Label10.OnClick     = 0;
  Label10.OnPress     = 0;

  LighOKAut.OwnerScreen   = &AutomaticCtrlScr;
  LighOKAut.Order         = 35;
  LighOKAut.Visible       = 1;
  LighOKAut.Opacity       = 255;
  LighOKAut.Tag           = 255;
  LighOKAut.Left          = 265;
  LighOKAut.Top           = 10;
  LighOKAut.Radius        = 29;
  LighOKAut.Pen_Width     = 1;
  LighOKAut.Pen_Color     = 0x0000;
  LighOKAut.Color         = 0xFFFFFF;
  LighOKAut.Press_Color   = 0xE2E2E2;
  LighOKAut.Caption       = LighOKAut_Caption;
  LighOKAut.TextAlign     = taCenter;
  LighOKAut.FontName      = Tahoma_29x29_Bold;
  LighOKAut.Font_Color    = 0x0000;
  LighOKAut.FontHandle    = 6;
  LighOKAut.Source        = -1UL;
  LighOKAut.Active        = 1;
  LighOKAut.OnUp          = 0;
  LighOKAut.OnDown        = 0;
  LighOKAut.OnClick       = &LighOKAut_OnClick;
  LighOKAut.OnPress       = 0;

  LighOKAut_OnClick.Action       = LighOKAutOnClick;
  LighOKAut_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
  LighOKAut_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
  LighOKAut_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
  LighOKAut_OnClick.Sound.Volume = 255;

  LighErrAut.OwnerScreen   = &AutomaticCtrlScr;
  LighErrAut.Order         = 36;
  LighErrAut.Visible       = 1;
  LighErrAut.Opacity       = 255;
  LighErrAut.Tag           = 255;
  LighErrAut.Left          = 480;
  LighErrAut.Top           = 10;
  LighErrAut.Radius        = 29;
  LighErrAut.Pen_Width     = 1;
  LighErrAut.Pen_Color     = 0x0000;
  LighErrAut.Color         = 0xFFFFFF;
  LighErrAut.Press_Color   = 0xE2E2E2;
  LighErrAut.Caption       = LighErrAut_Caption;
  LighErrAut.TextAlign     = taCenter;
  LighErrAut.FontName      = Tahoma_25x25_Bold;
  LighErrAut.Font_Color    = 0x0000;
  LighErrAut.FontHandle    = 2;
  LighErrAut.Source        = -1UL;
  LighErrAut.Active        = 1;
  LighErrAut.OnUp          = 0;
  LighErrAut.OnDown        = 0;
  LighErrAut.OnClick       = &LighErrAut_OnClick;
  LighErrAut.OnPress       = 0;

  LighErrAut_OnClick.Action       = LighErrAutOnClick;
  LighErrAut_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
  LighErrAut_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
  LighErrAut_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
  LighErrAut_OnClick.Sound.Volume = 255;

  RpmNumAut.OwnerScreen   = &AutomaticCtrlScr;
  RpmNumAut.Order         = 37;
  RpmNumAut.Visible       = 1;
  RpmNumAut.Opacity       = 255;
  RpmNumAut.Tag           = 255;
  RpmNumAut.Left          = 312;
  RpmNumAut.Top           = 188;
  RpmNumAut.Width         = 177;
  RpmNumAut.Height        = 45;
  RpmNumAut.Pen_Width     = 2;
  RpmNumAut.Pen_Color     = 0x0000;
  RpmNumAut.Color         = 0xFFFFFF;
  RpmNumAut.Press_Color   = 0xE2E2E2;
  RpmNumAut.Caption       = RpmNumAut_Caption;
  RpmNumAut.TextAlign     = taCenter;
  RpmNumAut.FontName      = Tahoma_25x25_Bold;
  RpmNumAut.Font_Color    = 0x0000;
  RpmNumAut.FontHandle    = 2;
  RpmNumAut.Source        = -1UL;
  RpmNumAut.Corner_Radius = 3;
  RpmNumAut.Active        = 1;
  RpmNumAut.OnUp          = 0;
  RpmNumAut.OnDown        = 0;
  RpmNumAut.OnClick       = 0;
  RpmNumAut.OnPress       = 0;

  ThrPrgAut.OwnerScreen      = &AutomaticCtrlScr;
  ThrPrgAut.Order            = 38;
  ThrPrgAut.Visible          = 1;
  ThrPrgAut.Opacity          = 255;
  ThrPrgAut.Tag              = 255;
  ThrPrgAut.Left             = 269;
  ThrPrgAut.Top              = 355;
  ThrPrgAut.Width            = 265;
  ThrPrgAut.Height           = 40;
  ThrPrgAut.Pen_Width        = 2;
  ThrPrgAut.Pen_Color        = 0x0000;
  ThrPrgAut.Background_Color = 0xC0C0C0;
  ThrPrgAut.Color            = 0x80FF;
  ThrPrgAut.Caption          = ThrPrgAut_Caption;
  ThrPrgAut.FontName         = Tahoma_19x19_Bold;
  ThrPrgAut.Font_Color       = 0x0000;
  ThrPrgAut.FontHandle       = 1;
  ThrPrgAut.Source           = -1UL;
  ThrPrgAut.Corner_Radius    = 1;
  ThrPrgAut.Min              = 0;
  ThrPrgAut.Max              = 100;
  ThrPrgAut.Position         = 50;
  ThrPrgAut.Show_Position    = 1;
  ThrPrgAut.Show_Percentage  = 1;
  ThrPrgAut.Smooth           = 1;

  RpmInpAut.OwnerScreen   = &AutomaticCtrlScr;
  RpmInpAut.Order         = 39;
  RpmInpAut.Visible       = 1;
  RpmInpAut.Opacity       = 255;
  RpmInpAut.Tag           = 255;
  RpmInpAut.Left          = 313;
  RpmInpAut.Top           = 290;
  RpmInpAut.Width         = 175;
  RpmInpAut.Height        = 37;
  RpmInpAut.Pen_Width     = 2;
  RpmInpAut.Pen_Color     = 0x0000;
  RpmInpAut.Color         = 0xFFFFFF;
  RpmInpAut.Press_Color   = 0xE2E2E2;
  RpmInpAut.Caption       = RpmInpAut_Caption;
  RpmInpAut.TextAlign     = taCenter;
  RpmInpAut.FontName      = Tahoma_19x23_Bold;
  RpmInpAut.Font_Color    = 0x0000;
  RpmInpAut.FontHandle    = 3;
  RpmInpAut.Source        = -1UL;
  RpmInpAut.Corner_Radius = 3;
  RpmInpAut.Active        = 1;
  RpmInpAut.OnUp          = 0;
  RpmInpAut.OnDown        = 0;
  RpmInpAut.OnClick       = 0;
  RpmInpAut.OnPress       = 0;

  Label11.OwnerScreen = &AutomaticCtrlScr;
  Label11.Order       = 40;
  Label11.Visible     = 1;
  Label11.Opacity     = 255;
  Label11.Tag         = 255;
  Label11.Left        = 363;
  Label11.Top         = 330;
  Label11.Width       = 79;
  Label11.Height      = 25;
  Label11.Caption     = Label11_Caption;
  Label11.FontName    = Tahoma_19x23_Bold;
  Label11.Font_Color  = 0x0000;
  Label11.FontHandle  = 3;
  Label11.Source      = -1UL;
  Label11.Active      = 1;
  Label11.OnUp        = 0;
  Label11.OnDown      = 0;
  Label11.OnClick     = 0;
  Label11.OnPress     = 0;

  Label12.OwnerScreen = &AutomaticCtrlScr;
  Label12.Order       = 41;
  Label12.Visible     = 1;
  Label12.Opacity     = 255;
  Label12.Tag         = 255;
  Label12.Left        = 263;
  Label12.Top         = 265;
  Label12.Width       = 263;
  Label12.Height      = 25;
  Label12.Caption     = Label12_Caption;
  Label12.FontName    = Tahoma_19x23_Bold;
  Label12.Font_Color  = 0x0000;
  Label12.FontHandle  = 3;
  Label12.Source      = -1UL;
  Label12.Active      = 1;
  Label12.OnUp        = 0;
  Label12.OnDown      = 0;
  Label12.OnClick     = 0;
  Label12.OnPress     = 0;

  Label13.OwnerScreen = &AutomaticCtrlScr;
  Label13.Order       = 42;
  Label13.Visible     = 1;
  Label13.Opacity     = 255;
  Label13.Tag         = 255;
  Label13.Left        = 260;
  Label13.Top         = 235;
  Label13.Width       = 98;
  Label13.Height      = 25;
  Label13.Caption     = Label13_Caption;
  Label13.FontName    = Tahoma_19x23_Bold;
  Label13.Font_Color  = 0x0000;
  Label13.FontHandle  = 3;
  Label13.Source      = -1UL;
  Label13.Active      = 1;
  Label13.OnUp        = 0;
  Label13.OnDown      = 0;
  Label13.OnClick     = 0;
  Label13.OnPress     = 0;

  Label14.OwnerScreen = &AutomaticCtrlScr;
  Label14.Order       = 43;
  Label14.Visible     = 1;
  Label14.Opacity     = 255;
  Label14.Tag         = 255;
  Label14.Left        = 460;
  Label14.Top         = 235;
  Label14.Width       = 79;
  Label14.Height      = 25;
  Label14.Caption     = Label14_Caption;
  Label14.FontName    = Tahoma_19x23_Bold;
  Label14.Font_Color  = 0x0000;
  Label14.FontHandle  = 3;
  Label14.Source      = -1UL;
  Label14.Active      = 1;
  Label14.OnUp        = 0;
  Label14.OnDown      = 0;
  Label14.OnClick     = 0;
  Label14.OnPress     = 0;

  CtrlOnAut.OwnerScreen   = &AutomaticCtrlScr;
  CtrlOnAut.Order         = 44;
  CtrlOnAut.Visible       = 1;
  CtrlOnAut.Opacity       = 255;
  CtrlOnAut.Tag           = 255;
  CtrlOnAut.Left          = 260;
  CtrlOnAut.Top           = 192;
  CtrlOnAut.Radius        = 18;
  CtrlOnAut.Pen_Width     = 1;
  CtrlOnAut.Pen_Color     = 0x0000;
  CtrlOnAut.Color         = 0xFFFFFF;
  CtrlOnAut.Press_Color   = 0xE2E2E2;
  CtrlOnAut.Active        = 1;
  CtrlOnAut.OnUp          = 0;
  CtrlOnAut.OnDown        = 0;
  CtrlOnAut.OnClick       = 0;
  CtrlOnAut.OnPress       = 0;

  JoyOnAut.OwnerScreen   = &AutomaticCtrlScr;
  JoyOnAut.Order         = 45;
  JoyOnAut.Visible       = 1;
  JoyOnAut.Opacity       = 255;
  JoyOnAut.Tag           = 255;
  JoyOnAut.Left          = 501;
  JoyOnAut.Top           = 192;
  JoyOnAut.Radius        = 18;
  JoyOnAut.Pen_Width     = 1;
  JoyOnAut.Pen_Color     = 0x0000;
  JoyOnAut.Color         = 0xFFFFFF;
  JoyOnAut.Press_Color   = 0xE2E2E2;
  JoyOnAut.Active        = 1;
  JoyOnAut.OnUp          = 0;
  JoyOnAut.OnDown        = 0;
  JoyOnAut.OnClick       = 0;
  JoyOnAut.OnPress       = 0;

  Line5.OwnerScreen    = &AutomaticCtrlScr;
  Line5.Order          = 46;
  Line5.Visible        = 1;
  Line5.Opacity        = 255;
  Line5.Tag            = 255;
  Line5.First_Point_X  = 550;
  Line5.First_Point_Y  = 395;
  Line5.Second_Point_X = 780;
  Line5.Second_Point_Y = 394;
  Line5.Pen_Width      = 2;
  Line5.Pen_Color      = 0x0000;

  PFiLightAut.OwnerScreen   = &AutomaticCtrlScr;
  PFiLightAut.Order         = 47;
  PFiLightAut.Visible       = 1;
  PFiLightAut.Opacity       = 255;
  PFiLightAut.Tag           = 255;
  PFiLightAut.Left          = 550;
  PFiLightAut.Top           = 132;
  PFiLightAut.Radius        = 15;
  PFiLightAut.Pen_Width     = 1;
  PFiLightAut.Pen_Color     = 0xFF0000;
  PFiLightAut.Color         = 0xFF0000;
  PFiLightAut.Press_Color   = 0xE2E2E2;
  PFiLightAut.Active        = 1;
  PFiLightAut.OnUp          = 0;
  PFiLightAut.OnDown        = 0;
  PFiLightAut.OnClick       = 0;
  PFiLightAut.OnPress       = 0;

  POILightAut.OwnerScreen   = &AutomaticCtrlScr;
  POILightAut.Order         = 48;
  POILightAut.Visible       = 1;
  POILightAut.Opacity       = 255;
  POILightAut.Tag           = 255;
  POILightAut.Left          = 550;
  POILightAut.Top           = 164;
  POILightAut.Radius        = 15;
  POILightAut.Pen_Width     = 1;
  POILightAut.Pen_Color     = 0xFF0000;
  POILightAut.Color         = 0xFF0000;
  POILightAut.Press_Color   = 0xE2E2E2;
  POILightAut.Active        = 1;
  POILightAut.OnUp          = 0;
  POILightAut.OnDown        = 0;
  POILightAut.OnClick       = 0;
  POILightAut.OnPress       = 0;

  IWLightAut.OwnerScreen   = &AutomaticCtrlScr;
  IWLightAut.Order         = 49;
  IWLightAut.Visible       = 1;
  IWLightAut.Opacity       = 255;
  IWLightAut.Tag           = 255;
  IWLightAut.Left          = 550;
  IWLightAut.Top           = 198;
  IWLightAut.Radius        = 15;
  IWLightAut.Pen_Width     = 1;
  IWLightAut.Pen_Color     = 0xFF0000;
  IWLightAut.Color         = 0xFF0000;
  IWLightAut.Press_Color   = 0xE2E2E2;
  IWLightAut.Active        = 1;
  IWLightAut.OnUp          = 0;
  IWLightAut.OnDown        = 0;
  IWLightAut.OnClick       = 0;
  IWLightAut.OnPress       = 0;

  OilCtrlLigAut.OwnerScreen   = &AutomaticCtrlScr;
  OilCtrlLigAut.Order         = 50;
  OilCtrlLigAut.Visible       = 1;
  OilCtrlLigAut.Opacity       = 255;
  OilCtrlLigAut.Tag           = 255;
  OilCtrlLigAut.Left          = 550;
  OilCtrlLigAut.Top           = 362;
  OilCtrlLigAut.Radius        = 15;
  OilCtrlLigAut.Pen_Width     = 1;
  OilCtrlLigAut.Pen_Color     = 0xFF0000;
  OilCtrlLigAut.Color         = 0xFF0000;
  OilCtrlLigAut.Press_Color   = 0xE2E2E2;
  OilCtrlLigAut.Active        = 1;
  OilCtrlLigAut.OnUp          = 0;
  OilCtrlLigAut.OnDown        = 0;
  OilCtrlLigAut.OnClick       = 0;
  OilCtrlLigAut.OnPress       = 0;

  IgValLigAut.OwnerScreen   = &AutomaticCtrlScr;
  IgValLigAut.Order         = 51;
  IgValLigAut.Visible       = 1;
  IgValLigAut.Opacity       = 255;
  IgValLigAut.Tag           = 255;
  IgValLigAut.Left          = 550;
  IgValLigAut.Top           = 330;
  IgValLigAut.Radius        = 15;
  IgValLigAut.Pen_Width     = 1;
  IgValLigAut.Pen_Color     = 0xFF0000;
  IgValLigAut.Color         = 0xFF0000;
  IgValLigAut.Press_Color   = 0xE2E2E2;
  IgValLigAut.Active        = 1;
  IgValLigAut.OnUp          = 0;
  IgValLigAut.OnDown        = 0;
  IgValLigAut.OnClick       = 0;
  IgValLigAut.OnPress       = 0;

  IgLigAut.OwnerScreen   = &AutomaticCtrlScr;
  IgLigAut.Order         = 52;
  IgLigAut.Visible       = 1;
  IgLigAut.Opacity       = 255;
  IgLigAut.Tag           = 255;
  IgLigAut.Left          = 550;
  IgLigAut.Top           = 298;
  IgLigAut.Radius        = 15;
  IgLigAut.Pen_Width     = 1;
  IgLigAut.Pen_Color     = 0xFF0000;
  IgLigAut.Color         = 0xFF0000;
  IgLigAut.Press_Color   = 0xE2E2E2;
  IgLigAut.Active        = 1;
  IgLigAut.OnUp          = 0;
  IgLigAut.OnDown        = 0;
  IgLigAut.OnClick       = 0;
  IgLigAut.OnPress       = 0;

  FlValLigAut.OwnerScreen   = &AutomaticCtrlScr;
  FlValLigAut.Order         = 53;
  FlValLigAut.Visible       = 1;
  FlValLigAut.Opacity       = 255;
  FlValLigAut.Tag           = 255;
  FlValLigAut.Left          = 550;
  FlValLigAut.Top           = 266;
  FlValLigAut.Radius        = 15;
  FlValLigAut.Pen_Width     = 1;
  FlValLigAut.Pen_Color     = 0xFF0000;
  FlValLigAut.Color         = 0xFF0000;
  FlValLigAut.Press_Color   = 0xE2E2E2;
  FlValLigAut.Active        = 1;
  FlValLigAut.OnUp          = 0;
  FlValLigAut.OnDown        = 0;
  FlValLigAut.OnClick       = 0;
  FlValLigAut.OnPress       = 0;

  FlPumLigAut.OwnerScreen   = &AutomaticCtrlScr;
  FlPumLigAut.Order         = 54;
  FlPumLigAut.Visible       = 1;
  FlPumLigAut.Opacity       = 255;
  FlPumLigAut.Tag           = 255;
  FlPumLigAut.Left          = 550;
  FlPumLigAut.Top           = 234;
  FlPumLigAut.Radius        = 15;
  FlPumLigAut.Pen_Width     = 1;
  FlPumLigAut.Pen_Color     = 0xFF0000;
  FlPumLigAut.Color         = 0xFF0000;
  FlPumLigAut.Press_Color   = 0xE2E2E2;
  FlPumLigAut.Active        = 1;
  FlPumLigAut.OnUp          = 0;
  FlPumLigAut.OnDown        = 0;
  FlPumLigAut.OnClick       = 0;
  FlPumLigAut.OnPress       = 0;

  Line6.OwnerScreen    = &AutomaticCtrlScr;
  Line6.Order          = 55;
  Line6.Visible        = 1;
  Line6.Opacity        = 255;
  Line6.Tag            = 255;
  Line6.First_Point_X  = 550;
  Line6.First_Point_Y  = 231;
  Line6.Second_Point_X = 780;
  Line6.Second_Point_Y = 230;
  Line6.Pen_Width      = 2;
  Line6.Pen_Color      = 0x0000;

  Label15.OwnerScreen = &AutomaticCtrlScr;
  Label15.Order       = 56;
  Label15.Visible     = 1;
  Label15.Opacity     = 255;
  Label15.Tag         = 255;
  Label15.Left        = 600;
  Label15.Top         = 130;
  Label15.Width       = 132;
  Label15.Height      = 21;
  Label15.Caption     = Label15_Caption;
  Label15.FontName    = Tahoma_19x19_Bold;
  Label15.Font_Color  = 0x0000;
  Label15.FontHandle  = 1;
  Label15.Source      = -1UL;
  Label15.Active      = 1;
  Label15.OnUp        = 0;
  Label15.OnDown      = 0;
  Label15.OnClick     = 0;
  Label15.OnPress     = 0;

  Label16.OwnerScreen = &AutomaticCtrlScr;
  Label16.Order       = 57;
  Label16.Visible     = 1;
  Label16.Opacity     = 255;
  Label16.Tag         = 255;
  Label16.Left        = 606;
  Label16.Top         = 164;
  Label16.Width       = 120;
  Label16.Height      = 21;
  Label16.Caption     = Label16_Caption;
  Label16.FontName    = Tahoma_19x19_Bold;
  Label16.Font_Color  = 0x0000;
  Label16.FontHandle  = 1;
  Label16.Source      = -1UL;
  Label16.Active      = 1;
  Label16.OnUp        = 0;
  Label16.OnDown      = 0;
  Label16.OnClick     = 0;
  Label16.OnPress     = 0;

  Label17.OwnerScreen = &AutomaticCtrlScr;
  Label17.Order       = 58;
  Label17.Visible     = 1;
  Label17.Opacity     = 255;
  Label17.Tag         = 255;
  Label17.Left        = 600;
  Label17.Top         = 203;
  Label17.Width       = 132;
  Label17.Height      = 21;
  Label17.Caption     = Label17_Caption;
  Label17.FontName    = Tahoma_19x19_Bold;
  Label17.Font_Color  = 0x0000;
  Label17.FontHandle  = 1;
  Label17.Source      = -1UL;
  Label17.Active      = 1;
  Label17.OnUp        = 0;
  Label17.OnDown      = 0;
  Label17.OnClick     = 0;
  Label17.OnPress     = 0;

  Label18.OwnerScreen = &AutomaticCtrlScr;
  Label18.Order       = 59;
  Label18.Visible     = 1;
  Label18.Opacity     = 255;
  Label18.Tag         = 255;
  Label18.Left        = 622;
  Label18.Top         = 239;
  Label18.Width       = 87;
  Label18.Height      = 21;
  Label18.Caption     = Label18_Caption;
  Label18.FontName    = Tahoma_19x19_Bold;
  Label18.Font_Color  = 0x0000;
  Label18.FontHandle  = 1;
  Label18.Source      = -1UL;
  Label18.Active      = 1;
  Label18.OnUp        = 0;
  Label18.OnDown      = 0;
  Label18.OnClick     = 0;
  Label18.OnPress     = 0;

  Label19.OwnerScreen = &AutomaticCtrlScr;
  Label19.Order       = 60;
  Label19.Visible     = 1;
  Label19.Opacity     = 255;
  Label19.Tag         = 255;
  Label19.Left        = 623;
  Label19.Top         = 271;
  Label19.Width       = 85;
  Label19.Height      = 21;
  Label19.Caption     = Label19_Caption;
  Label19.FontName    = Tahoma_19x19_Bold;
  Label19.Font_Color  = 0x0000;
  Label19.FontHandle  = 1;
  Label19.Source      = -1UL;
  Label19.Active      = 1;
  Label19.OnUp        = 0;
  Label19.OnDown      = 0;
  Label19.OnClick     = 0;
  Label19.OnPress     = 0;

  Label20.OwnerScreen = &AutomaticCtrlScr;
  Label20.Order       = 61;
  Label20.Visible     = 1;
  Label20.Opacity     = 255;
  Label20.Tag         = 255;
  Label20.Left        = 637;
  Label20.Top         = 303;
  Label20.Width       = 58;
  Label20.Height      = 21;
  Label20.Caption     = Label20_Caption;
  Label20.FontName    = Tahoma_19x19_Bold;
  Label20.Font_Color  = 0x0000;
  Label20.FontHandle  = 1;
  Label20.Source      = -1UL;
  Label20.Active      = 1;
  Label20.OnUp        = 0;
  Label20.OnDown      = 0;
  Label20.OnClick     = 0;
  Label20.OnPress     = 0;

  Label21.OwnerScreen = &AutomaticCtrlScr;
  Label21.Order       = 62;
  Label21.Visible     = 1;
  Label21.Opacity     = 255;
  Label21.Tag         = 255;
  Label21.Left        = 612;
  Label21.Top         = 335;
  Label21.Width       = 108;
  Label21.Height      = 21;
  Label21.Caption     = Label21_Caption;
  Label21.FontName    = Tahoma_19x19_Bold;
  Label21.Font_Color  = 0x0000;
  Label21.FontHandle  = 1;
  Label21.Source      = -1UL;
  Label21.Active      = 1;
  Label21.OnUp        = 0;
  Label21.OnDown      = 0;
  Label21.OnClick     = 0;
  Label21.OnPress     = 0;

  Label22.OwnerScreen = &AutomaticCtrlScr;
  Label22.Order       = 63;
  Label22.Visible     = 1;
  Label22.Opacity     = 255;
  Label22.Tag         = 255;
  Label22.Left        = 621;
  Label22.Top         = 367;
  Label22.Width       = 88;
  Label22.Height      = 21;
  Label22.Caption     = Label22_Caption;
  Label22.FontName    = Tahoma_19x19_Bold;
  Label22.Font_Color  = 0x0000;
  Label22.FontHandle  = 1;
  Label22.Source      = -1UL;
  Label22.Active      = 1;
  Label22.OnUp        = 0;
  Label22.OnDown      = 0;
  Label22.OnClick     = 0;
  Label22.OnPress     = 0;

  Label23.OwnerScreen = &AutomaticCtrlScr;
  Label23.Order       = 64;
  Label23.Visible     = 1;
  Label23.Opacity     = 255;
  Label23.Tag         = 255;
  Label23.Left        = 328;
  Label23.Top         = 169;
  Label23.Width       = 10;
  Label23.Height      = 21;
  Label23.Caption     = Label23_Caption;
  Label23.FontName    = Tahoma_19x19_Bold;
  Label23.Font_Color  = 0x0000;
  Label23.FontHandle  = 1;
  Label23.Source      = -1UL;
  Label23.Active      = 1;
  Label23.OnUp        = 0;
  Label23.OnDown      = 0;
  Label23.OnClick     = 0;
  Label23.OnPress     = 0;

  Label24.OwnerScreen = &AutomaticCtrlScr;
  Label24.Order       = 65;
  Label24.Visible     = 1;
  Label24.Opacity     = 255;
  Label24.Tag         = 255;
  Label24.Left        = 301;
  Label24.Top         = 120;
  Label24.Width       = 21;
  Label24.Height      = 21;
  Label24.Caption     = Label24_Caption;
  Label24.FontName    = Tahoma_19x19_Bold;
  Label24.Font_Color  = 0x0000;
  Label24.FontHandle  = 1;
  Label24.Source      = -1UL;
  Label24.Active      = 1;
  Label24.OnUp        = 0;
  Label24.OnDown      = 0;
  Label24.OnClick     = 0;
  Label24.OnPress     = 0;

  Label25.OwnerScreen = &AutomaticCtrlScr;
  Label25.Order       = 66;
  Label25.Visible     = 1;
  Label25.Opacity     = 255;
  Label25.Tag         = 255;
  Label25.Left        = 313;
  Label25.Top         = 66;
  Label25.Width       = 21;
  Label25.Height      = 21;
  Label25.Caption     = Label25_Caption;
  Label25.FontName    = Tahoma_19x19_Bold;
  Label25.Font_Color  = 0x0000;
  Label25.FontHandle  = 1;
  Label25.Source      = -1UL;
  Label25.Active      = 1;
  Label25.OnUp        = 0;
  Label25.OnDown      = 0;
  Label25.OnClick     = 0;
  Label25.OnPress     = 0;

  Label26.OwnerScreen = &AutomaticCtrlScr;
  Label26.Order       = 67;
  Label26.Visible     = 1;
  Label26.Opacity     = 255;
  Label26.Tag         = 255;
  Label26.Left        = 357;
  Label26.Top         = 28;
  Label26.Width       = 21;
  Label26.Height      = 21;
  Label26.Caption     = Label26_Caption;
  Label26.FontName    = Tahoma_19x19_Bold;
  Label26.Font_Color  = 0x0000;
  Label26.FontHandle  = 1;
  Label26.Source      = -1UL;
  Label26.Active      = 1;
  Label26.OnUp        = 0;
  Label26.OnDown      = 0;
  Label26.OnClick     = 0;
  Label26.OnPress     = 0;

  Label27.OwnerScreen = &AutomaticCtrlScr;
  Label27.Order       = 68;
  Label27.Visible     = 1;
  Label27.Opacity     = 255;
  Label27.Tag         = 255;
  Label27.Left        = 426;
  Label27.Top         = 28;
  Label27.Width       = 21;
  Label27.Height      = 21;
  Label27.Caption     = Label27_Caption;
  Label27.FontName    = Tahoma_19x19_Bold;
  Label27.Font_Color  = 0x0000;
  Label27.FontHandle  = 1;
  Label27.Source      = -1UL;
  Label27.Active      = 1;
  Label27.OnUp        = 0;
  Label27.OnDown      = 0;
  Label27.OnClick     = 0;
  Label27.OnPress     = 0;

  Label28.OwnerScreen = &AutomaticCtrlScr;
  Label28.Order       = 69;
  Label28.Visible     = 1;
  Label28.Opacity     = 255;
  Label28.Tag         = 255;
  Label28.Left        = 468;
  Label28.Top         = 66;
  Label28.Width       = 21;
  Label28.Height      = 21;
  Label28.Caption     = Label28_Caption;
  Label28.FontName    = Tahoma_19x19_Bold;
  Label28.Font_Color  = 0xFF8000;
  Label28.FontHandle  = 1;
  Label28.Source      = -1UL;
  Label28.Active      = 1;
  Label28.OnUp        = 0;
  Label28.OnDown      = 0;
  Label28.OnClick     = 0;
  Label28.OnPress     = 0;

  Label29.OwnerScreen = &AutomaticCtrlScr;
  Label29.Order       = 70;
  Label29.Visible     = 1;
  Label29.Opacity     = 255;
  Label29.Tag         = 255;
  Label29.Left        = 479;
  Label29.Top         = 120;
  Label29.Width       = 21;
  Label29.Height      = 21;
  Label29.Caption     = Label29_Caption;
  Label29.FontName    = Tahoma_19x19_Bold;
  Label29.Font_Color  = 0xFF8000;
  Label29.FontHandle  = 1;
  Label29.Source      = -1UL;
  Label29.Active      = 1;
  Label29.OnUp        = 0;
  Label29.OnDown      = 0;
  Label29.OnClick     = 0;
  Label29.OnPress     = 0;

  Label30.OwnerScreen = &AutomaticCtrlScr;
  Label30.Order       = 71;
  Label30.Visible     = 1;
  Label30.Opacity     = 255;
  Label30.Tag         = 255;
  Label30.Left        = 459;
  Label30.Top         = 169;
  Label30.Width       = 21;
  Label30.Height      = 21;
  Label30.Caption     = Label30_Caption;
  Label30.FontName    = Tahoma_19x19_Bold;
  Label30.Font_Color  = 0xFF0000;
  Label30.FontHandle  = 1;
  Label30.Source      = -1UL;
  Label30.Active      = 1;
  Label30.OnUp        = 0;
  Label30.OnDown      = 0;
  Label30.OnClick     = 0;
  Label30.OnPress     = 0;

  Label31.OwnerScreen = &AutomaticCtrlScr;
  Label31.Order       = 72;
  Label31.Visible     = 1;
  Label31.Opacity     = 255;
  Label31.Tag         = 255;
  Label31.Left        = 383;
  Label31.Top         = 140;
  Label31.Width       = 38;
  Label31.Height      = 25;
  Label31.Caption     = Label31_Caption;
  Label31.FontName    = Tahoma_19x23_Regular;
  Label31.Font_Color  = 0x0000;
  Label31.FontHandle  = 4;
  Label31.Source      = -1UL;
  Label31.Active      = 1;
  Label31.OnUp        = 0;
  Label31.OnDown      = 0;
  Label31.OnClick     = 0;
  Label31.OnPress     = 0;

  Label32.OwnerScreen = &AutomaticCtrlScr;
  Label32.Order       = 73;
  Label32.Visible     = 1;
  Label32.Opacity     = 255;
  Label32.Tag         = 255;
  Label32.Left        = 372;
  Label32.Top         = 162;
  Label32.Width       = 60;
  Label32.Height      = 25;
  Label32.Caption     = Label32_Caption;
  Label32.FontName    = Tahoma_19x23_Regular;
  Label32.Font_Color  = 0x0000;
  Label32.FontHandle  = 4;
  Label32.Source      = -1UL;
  Label32.Active      = 1;
  Label32.OnUp        = 0;
  Label32.OnDown      = 0;
  Label32.OnClick     = 0;
  Label32.OnPress     = 0;

  Label33.OwnerScreen = &AutomaticCtrlScr;
  Label33.Order       = 74;
  Label33.Visible     = 1;
  Label33.Opacity     = 255;
  Label33.Tag         = 255;
  Label33.Left        = 618;
  Label33.Top         = 144;
  Label33.Width       = 96;
  Label33.Height      = 21;
  Label33.Caption     = Label33_Caption;
  Label33.FontName    = Tahoma_19x19_Bold;
  Label33.Font_Color  = 0x0000;
  Label33.FontHandle  = 1;
  Label33.Source      = -1UL;
  Label33.Active      = 1;
  Label33.OnUp        = 0;
  Label33.OnDown      = 0;
  Label33.OnClick     = 0;
  Label33.OnPress     = 0;

  Label34.OwnerScreen = &AutomaticCtrlScr;
  Label34.Order       = 75;
  Label34.Visible     = 1;
  Label34.Opacity     = 255;
  Label34.Tag         = 255;
  Label34.Left        = 618;
  Label34.Top         = 178;
  Label34.Width       = 96;
  Label34.Height      = 21;
  Label34.Caption     = Label34_Caption;
  Label34.FontName    = Tahoma_19x19_Bold;
  Label34.Font_Color  = 0x0000;
  Label34.FontHandle  = 1;
  Label34.Source      = -1UL;
  Label34.Active      = 1;
  Label34.OnUp        = 0;
  Label34.OnDown      = 0;
  Label34.OnClick     = 0;
  Label34.OnPress     = 0;

  ManualCtrlBack.OwnerScreen   = &ManualCtrlScr;
  ManualCtrlBack.Order         = 0;
  ManualCtrlBack.Visible       = 1;
  ManualCtrlBack.Opacity       = 255;
  ManualCtrlBack.Tag           = 255;
  ManualCtrlBack.Left          = 20;
  ManualCtrlBack.Top           = 410;
  ManualCtrlBack.Width         = 50;
  ManualCtrlBack.Height        = 50;
  ManualCtrlBack.Picture_Name  = back1sm_bmp;
  ManualCtrlBack.Picture_Type  = 7;
  ManualCtrlBack.Picture_Ratio = 1;
  ManualCtrlBack.Blend_Color   = 0xFFFFFF;
  ManualCtrlBack.Source        = -1L;
  ManualCtrlBack.RotationAngle = 0;
  ManualCtrlBack.RotationCenterLeft = 51;
  ManualCtrlBack.RotationCenterTop = 435;
  ManualCtrlBack.ScaleX        = 1.0000;
  ManualCtrlBack.ScaleY        = 1.0000;
  ManualCtrlBack.Active        = 1;
  ManualCtrlBack.OnUp          = 0;
  ManualCtrlBack.OnDown        = 0;
  ManualCtrlBack.OnClick       = &ManualCtrlBack_OnClick;
  ManualCtrlBack.OnPress       = 0;

  ManualCtrlBack_OnClick.Action       = ManualCtrlBackOnClick;
  ManualCtrlBack_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
  ManualCtrlBack_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
  ManualCtrlBack_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
  ManualCtrlBack_OnClick.Sound.Volume = 255;

  ManualCtrlSet.OwnerScreen   = &ManualCtrlScr;
  ManualCtrlSet.Order         = 1;
  ManualCtrlSet.Visible       = 1;
  ManualCtrlSet.Opacity       = 255;
  ManualCtrlSet.Tag           = 255;
  ManualCtrlSet.Left          = 20;
  ManualCtrlSet.Top           = 340;
  ManualCtrlSet.Width         = 50;
  ManualCtrlSet.Height        = 50;
  ManualCtrlSet.Picture_Name  = settings2sm_bmp;
  ManualCtrlSet.Picture_Type  = 7;
  ManualCtrlSet.Picture_Ratio = 1;
  ManualCtrlSet.Blend_Color   = 0xFFFFFF;
  ManualCtrlSet.Source        = -1L;
  ManualCtrlSet.RotationAngle = 0;
  ManualCtrlSet.RotationCenterLeft = 51;
  ManualCtrlSet.RotationCenterTop = 365;
  ManualCtrlSet.ScaleX        = 1.0000;
  ManualCtrlSet.ScaleY        = 1.0000;
  ManualCtrlSet.Active        = 1;
  ManualCtrlSet.OnUp          = 0;
  ManualCtrlSet.OnDown        = 0;
  ManualCtrlSet.OnClick       = &ManualCtrlSet_OnClick;
  ManualCtrlSet.OnPress       = 0;

  ManualCtrlSet_OnClick.Action       = ManualCtrlSetOnClick;
  ManualCtrlSet_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
  ManualCtrlSet_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
  ManualCtrlSet_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
  ManualCtrlSet_OnClick.Sound.Volume = 255;

  ExTempNumMan.OwnerScreen   = &ManualCtrlScr;
  ExTempNumMan.Order         = 2;
  ExTempNumMan.Visible       = 1;
  ExTempNumMan.Opacity       = 255;
  ExTempNumMan.Tag           = 255;
  ExTempNumMan.Left          = 155;
  ExTempNumMan.Top           = 40;
  ExTempNumMan.Width         = 80;
  ExTempNumMan.Height        = 30;
  ExTempNumMan.Pen_Width     = 1;
  ExTempNumMan.Pen_Color     = 0x0000;
  ExTempNumMan.Color         = 0xFF00;
  ExTempNumMan.Press_Color   = 0xE2E2E2;
  ExTempNumMan.Caption       = ExTempNumMan_Caption;
  ExTempNumMan.TextAlign     = taCenter;
  ExTempNumMan.FontName      = Tahoma_19x19_Bold;
  ExTempNumMan.Font_Color    = 0x0000;
  ExTempNumMan.FontHandle    = 1;
  ExTempNumMan.Source        = -1UL;
  ExTempNumMan.Corner_Radius = 3;
  ExTempNumMan.Active        = 1;
  ExTempNumMan.OnUp          = 0;
  ExTempNumMan.OnDown        = 0;
  ExTempNumMan.OnClick       = 0;
  ExTempNumMan.OnPress       = 0;

  FirBearTempNumMan.OwnerScreen   = &ManualCtrlScr;
  FirBearTempNumMan.Order         = 3;
  FirBearTempNumMan.Visible       = 1;
  FirBearTempNumMan.Opacity       = 255;
  FirBearTempNumMan.Tag           = 255;
  FirBearTempNumMan.Left          = 155;
  FirBearTempNumMan.Top           = 75;
  FirBearTempNumMan.Width         = 80;
  FirBearTempNumMan.Height        = 30;
  FirBearTempNumMan.Pen_Width     = 1;
  FirBearTempNumMan.Pen_Color     = 0x0000;
  FirBearTempNumMan.Color         = 0xFF00;
  FirBearTempNumMan.Press_Color   = 0xE2E2E2;
  FirBearTempNumMan.Caption       = FirBearTempNumMan_Caption;
  FirBearTempNumMan.TextAlign     = taCenter;
  FirBearTempNumMan.FontName      = Tahoma_19x19_Bold;
  FirBearTempNumMan.Font_Color    = 0x0000;
  FirBearTempNumMan.FontHandle    = 1;
  FirBearTempNumMan.Source        = -1UL;
  FirBearTempNumMan.Corner_Radius = 3;
  FirBearTempNumMan.Active        = 1;
  FirBearTempNumMan.OnUp          = 0;
  FirBearTempNumMan.OnDown        = 0;
  FirBearTempNumMan.OnClick       = 0;
  FirBearTempNumMan.OnPress       = 0;

  SecBearTempNumMan.OwnerScreen   = &ManualCtrlScr;
  SecBearTempNumMan.Order         = 4;
  SecBearTempNumMan.Visible       = 1;
  SecBearTempNumMan.Opacity       = 255;
  SecBearTempNumMan.Tag           = 255;
  SecBearTempNumMan.Left          = 155;
  SecBearTempNumMan.Top           = 110;
  SecBearTempNumMan.Width         = 80;
  SecBearTempNumMan.Height        = 30;
  SecBearTempNumMan.Pen_Width     = 1;
  SecBearTempNumMan.Pen_Color     = 0x0000;
  SecBearTempNumMan.Color         = 0xFF00;
  SecBearTempNumMan.Press_Color   = 0xE2E2E2;
  SecBearTempNumMan.Caption       = SecBearTempNumMan_Caption;
  SecBearTempNumMan.TextAlign     = taCenter;
  SecBearTempNumMan.FontName      = Tahoma_19x19_Bold;
  SecBearTempNumMan.Font_Color    = 0x0000;
  SecBearTempNumMan.FontHandle    = 1;
  SecBearTempNumMan.Source        = -1UL;
  SecBearTempNumMan.Corner_Radius = 3;
  SecBearTempNumMan.Active        = 1;
  SecBearTempNumMan.OnUp          = 0;
  SecBearTempNumMan.OnDown        = 0;
  SecBearTempNumMan.OnClick       = 0;
  SecBearTempNumMan.OnPress       = 0;

  SourTempNumMan.OwnerScreen   = &ManualCtrlScr;
  SourTempNumMan.Order         = 5;
  SourTempNumMan.Visible       = 1;
  SourTempNumMan.Opacity       = 255;
  SourTempNumMan.Tag           = 255;
  SourTempNumMan.Left          = 155;
  SourTempNumMan.Top           = 145;
  SourTempNumMan.Width         = 80;
  SourTempNumMan.Height        = 30;
  SourTempNumMan.Pen_Width     = 1;
  SourTempNumMan.Pen_Color     = 0x0000;
  SourTempNumMan.Color         = 0xFF00;
  SourTempNumMan.Press_Color   = 0xE2E2E2;
  SourTempNumMan.Caption       = SourTempNumMan_Caption;
  SourTempNumMan.TextAlign     = taCenter;
  SourTempNumMan.FontName      = Tahoma_19x19_Bold;
  SourTempNumMan.Font_Color    = 0x0000;
  SourTempNumMan.FontHandle    = 1;
  SourTempNumMan.Source        = -1UL;
  SourTempNumMan.Corner_Radius = 3;
  SourTempNumMan.Active        = 1;
  SourTempNumMan.OnUp          = 0;
  SourTempNumMan.OnDown        = 0;
  SourTempNumMan.OnClick       = 0;
  SourTempNumMan.OnPress       = 0;

  TimeNumMan.OwnerScreen   = &ManualCtrlScr;
  TimeNumMan.Order         = 6;
  TimeNumMan.Visible       = 1;
  TimeNumMan.Opacity       = 255;
  TimeNumMan.Tag           = 255;
  TimeNumMan.Left          = 155;
  TimeNumMan.Top           = 195;
  TimeNumMan.Width         = 80;
  TimeNumMan.Height        = 30;
  TimeNumMan.Pen_Width     = 1;
  TimeNumMan.Pen_Color     = 0x0000;
  TimeNumMan.Color         = 0xFFFFFF;
  TimeNumMan.Press_Color   = 0xE2E2E2;
  TimeNumMan.Caption       = TimeNumMan_Caption;
  TimeNumMan.TextAlign     = taCenter;
  TimeNumMan.FontName      = Tahoma_19x19_Bold;
  TimeNumMan.Font_Color    = 0x0000;
  TimeNumMan.FontHandle    = 1;
  TimeNumMan.Source        = -1UL;
  TimeNumMan.Corner_Radius = 3;
  TimeNumMan.Active        = 1;
  TimeNumMan.OnUp          = 0;
  TimeNumMan.OnDown        = 0;
  TimeNumMan.OnClick       = 0;
  TimeNumMan.OnPress       = 0;

  FuelFlNumMan.OwnerScreen   = &ManualCtrlScr;
  FuelFlNumMan.Order         = 7;
  FuelFlNumMan.Visible       = 1;
  FuelFlNumMan.Opacity       = 255;
  FuelFlNumMan.Tag           = 255;
  FuelFlNumMan.Left          = 155;
  FuelFlNumMan.Top           = 230;
  FuelFlNumMan.Width         = 80;
  FuelFlNumMan.Height        = 30;
  FuelFlNumMan.Pen_Width     = 1;
  FuelFlNumMan.Pen_Color     = 0x0000;
  FuelFlNumMan.Color         = 0xFFFFFF;
  FuelFlNumMan.Press_Color   = 0xE2E2E2;
  FuelFlNumMan.Caption       = FuelFlNumMan_Caption;
  FuelFlNumMan.TextAlign     = taCenter;
  FuelFlNumMan.FontName      = Tahoma_19x19_Bold;
  FuelFlNumMan.Font_Color    = 0x0000;
  FuelFlNumMan.FontHandle    = 1;
  FuelFlNumMan.Source        = -1UL;
  FuelFlNumMan.Corner_Radius = 3;
  FuelFlNumMan.Active        = 1;
  FuelFlNumMan.OnUp          = 0;
  FuelFlNumMan.OnDown        = 0;
  FuelFlNumMan.OnClick       = 0;
  FuelFlNumMan.OnPress       = 0;

  BattVNumMan.OwnerScreen   = &ManualCtrlScr;
  BattVNumMan.Order         = 8;
  BattVNumMan.Visible       = 1;
  BattVNumMan.Opacity       = 255;
  BattVNumMan.Tag           = 255;
  BattVNumMan.Left          = 155;
  BattVNumMan.Top           = 265;
  BattVNumMan.Width         = 80;
  BattVNumMan.Height        = 30;
  BattVNumMan.Pen_Width     = 1;
  BattVNumMan.Pen_Color     = 0x0000;
  BattVNumMan.Color         = 0xFFFFFF;
  BattVNumMan.Press_Color   = 0xE2E2E2;
  BattVNumMan.Caption       = BattVNumMan_Caption;
  BattVNumMan.TextAlign     = taCenter;
  BattVNumMan.FontName      = Tahoma_19x19_Bold;
  BattVNumMan.Font_Color    = 0x0000;
  BattVNumMan.FontHandle    = 1;
  BattVNumMan.Source        = -1UL;
  BattVNumMan.Corner_Radius = 3;
  BattVNumMan.Active        = 1;
  BattVNumMan.OnUp          = 0;
  BattVNumMan.OnDown        = 0;
  BattVNumMan.OnClick       = 0;
  BattVNumMan.OnPress       = 0;

  Line7.OwnerScreen    = &ManualCtrlScr;
  Line7.Order          = 9;
  Line7.Visible        = 1;
  Line7.Opacity        = 255;
  Line7.Tag            = 255;
  Line7.First_Point_X  = 20;
  Line7.First_Point_Y  = 315;
  Line7.Second_Point_X = 240;
  Line7.Second_Point_Y = 315;
  Line7.Pen_Width      = 2;
  Line7.Pen_Color      = 0x0000;

  Line8.OwnerScreen    = &ManualCtrlScr;
  Line8.Order          = 10;
  Line8.Visible        = 1;
  Line8.Opacity        = 255;
  Line8.Tag            = 255;
  Line8.First_Point_X  = 20;
  Line8.First_Point_Y  = 184;
  Line8.Second_Point_X = 240;
  Line8.Second_Point_Y = 184;
  Line8.Pen_Width      = 2;
  Line8.Pen_Color      = 0x0000;

  Line9.OwnerScreen    = &ManualCtrlScr;
  Line9.Order          = 11;
  Line9.Visible        = 1;
  Line9.Opacity        = 255;
  Line9.Tag            = 255;
  Line9.First_Point_X  = 100;
  Line9.First_Point_Y  = 325;
  Line9.Second_Point_X = 100;
  Line9.Second_Point_Y = 470;
  Line9.Pen_Width      = 2;
  Line9.Pen_Color      = 0x0000;

  Label35.OwnerScreen = &ManualCtrlScr;
  Label35.Order       = 12;
  Label35.Visible     = 1;
  Label35.Opacity     = 255;
  Label35.Tag         = 255;
  Label35.Left        = 45;
  Label35.Top         = 10;
  Label35.Width       = 153;
  Label35.Height      = 25;
  Label35.Caption     = Label35_Caption;
  Label35.FontName    = Tahoma_19x23_Regular;
  Label35.Font_Color  = 0x0000;
  Label35.FontHandle  = 3;
  Label35.Source      = -1UL;
  Label35.Active      = 1;
  Label35.OnUp        = 0;
  Label35.OnDown      = 0;
  Label35.OnClick     = 0;
  Label35.OnPress     = 0;

  Label36.OwnerScreen = &ManualCtrlScr;
  Label36.Order       = 13;
  Label36.Visible     = 1;
  Label36.Opacity     = 255;
  Label36.Tag         = 255;
  Label36.Left        = 20;
  Label36.Top         = 45;
  Label36.Width       = 56;
  Label36.Height      = 21;
  Label36.Caption     = Label36_Caption;
  Label36.FontName    = Tahoma_19x19_Bold;
  Label36.Font_Color  = 0x0000;
  Label36.FontHandle  = 1;
  Label36.Source      = -1UL;
  Label36.Active      = 1;
  Label36.OnUp        = 0;
  Label36.OnDown      = 0;
  Label36.OnClick     = 0;
  Label36.OnPress     = 0;

  Label37.OwnerScreen = &ManualCtrlScr;
  Label37.Order       = 14;
  Label37.Visible     = 1;
  Label37.Opacity     = 255;
  Label37.Tag         = 255;
  Label37.Left        = 20;
  Label37.Top         = 80;
  Label37.Width       = 106;
  Label37.Height      = 21;
  Label37.Caption     = Label37_Caption;
  Label37.FontName    = Tahoma_19x19_Bold;
  Label37.Font_Color  = 0x0000;
  Label37.FontHandle  = 1;
  Label37.Source      = -1UL;
  Label37.Active      = 1;
  Label37.OnUp        = 0;
  Label37.OnDown      = 0;
  Label37.OnClick     = 0;
  Label37.OnPress     = 0;

  Label38.OwnerScreen = &ManualCtrlScr;
  Label38.Order       = 15;
  Label38.Visible     = 1;
  Label38.Opacity     = 255;
  Label38.Tag         = 255;
  Label38.Left        = 20;
  Label38.Top         = 115;
  Label38.Width       = 129;
  Label38.Height      = 21;
  Label38.Caption     = Label38_Caption;
  Label38.FontName    = Tahoma_19x19_Bold;
  Label38.Font_Color  = 0x0000;
  Label38.FontHandle  = 1;
  Label38.Source      = -1UL;
  Label38.Active      = 1;
  Label38.OnUp        = 0;
  Label38.OnDown      = 0;
  Label38.OnClick     = 0;
  Label38.OnPress     = 0;

  Label39.OwnerScreen = &ManualCtrlScr;
  Label39.Order       = 16;
  Label39.Visible     = 1;
  Label39.Opacity     = 255;
  Label39.Tag         = 255;
  Label39.Left        = 19;
  Label39.Top         = 150;
  Label39.Width       = 111;
  Label39.Height      = 21;
  Label39.Caption     = Label39_Caption;
  Label39.FontName    = Tahoma_19x19_Bold;
  Label39.Font_Color  = 0x0000;
  Label39.FontHandle  = 1;
  Label39.Source      = -1UL;
  Label39.Active      = 1;
  Label39.OnUp        = 0;
  Label39.OnDown      = 0;
  Label39.OnClick     = 0;
  Label39.OnPress     = 0;

  Label40.OwnerScreen = &ManualCtrlScr;
  Label40.Order       = 17;
  Label40.Visible     = 1;
  Label40.Opacity     = 255;
  Label40.Tag         = 255;
  Label40.Left        = 20;
  Label40.Top         = 200;
  Label40.Width       = 69;
  Label40.Height      = 21;
  Label40.Caption     = Label40_Caption;
  Label40.FontName    = Tahoma_19x19_Bold;
  Label40.Font_Color  = 0x0000;
  Label40.FontHandle  = 1;
  Label40.Source      = -1UL;
  Label40.Active      = 1;
  Label40.OnUp        = 0;
  Label40.OnDown      = 0;
  Label40.OnClick     = 0;
  Label40.OnPress     = 0;

  Label41.OwnerScreen = &ManualCtrlScr;
  Label41.Order       = 18;
  Label41.Visible     = 1;
  Label41.Opacity     = 255;
  Label41.Tag         = 255;
  Label41.Left        = 20;
  Label41.Top         = 235;
  Label41.Width       = 127;
  Label41.Height      = 21;
  Label41.Caption     = Label41_Caption;
  Label41.FontName    = Tahoma_19x19_Bold;
  Label41.Font_Color  = 0x0000;
  Label41.FontHandle  = 1;
  Label41.Source      = -1UL;
  Label41.Active      = 1;
  Label41.OnUp        = 0;
  Label41.OnDown      = 0;
  Label41.OnClick     = 0;
  Label41.OnPress     = 0;

  Label42.OwnerScreen = &ManualCtrlScr;
  Label42.Order       = 19;
  Label42.Visible     = 1;
  Label42.Opacity     = 255;
  Label42.Tag         = 255;
  Label42.Left        = 20;
  Label42.Top         = 270;
  Label42.Width       = 130;
  Label42.Height      = 17;
  Label42.Caption     = Label42_Caption;
  Label42.FontName    = Tahoma_14x16_Bold;
  Label42.Font_Color  = 0x0000;
  Label42.FontHandle  = 4;
  Label42.Source      = -1UL;
  Label42.Active      = 1;
  Label42.OnUp        = 0;
  Label42.OnDown      = 0;
  Label42.OnClick     = 0;
  Label42.OnPress     = 0;

  Image7.OwnerScreen   = &ManualCtrlScr;
  Image7.Order         = 20;
  Image7.Visible       = 1;
  Image7.Opacity       = 255;
  Image7.Tag           = 255;
  Image7.Left          = 735;
  Image7.Top           = 25;
  Image7.Width         = 36;
  Image7.Height        = 36;
  Image7.Picture_Name  = fuel_dispensersm_bmp;
  Image7.Picture_Type  = 7;
  Image7.Picture_Ratio = 1;
  Image7.Blend_Color   = 0xFFFFFF;
  Image7.Source        = -1L;
  Image7.RotationAngle = 0;
  Image7.RotationCenterLeft = 753;
  Image7.RotationCenterTop = 43;
  Image7.ScaleX        = 1.0000;
  Image7.ScaleY        = 1.0000;
  Image7.Active        = 1;
  Image7.OnUp          = 0;
  Image7.OnDown        = 0;
  Image7.OnClick       = 0;
  Image7.OnPress       = 0;

  Image8.OwnerScreen   = &ManualCtrlScr;
  Image8.Order         = 21;
  Image8.Visible       = 1;
  Image8.Opacity       = 255;
  Image8.Tag           = 255;
  Image8.Left          = 729;
  Image8.Top           = 64;
  Image8.Width         = 50;
  Image8.Height        = 50;
  Image8.Picture_Name  = CarOilsm_bmp;
  Image8.Picture_Type  = 7;
  Image8.Picture_Ratio = 1;
  Image8.Blend_Color   = 0xFFFFFF;
  Image8.Source        = -1L;
  Image8.RotationAngle = 0;
  Image8.RotationCenterLeft = 754;
  Image8.RotationCenterTop = 89;
  Image8.ScaleX        = 1.0000;
  Image8.ScaleY        = 1.0000;
  Image8.Active        = 1;
  Image8.OnUp          = 0;
  Image8.OnDown        = 0;
  Image8.OnClick       = 0;
  Image8.OnPress       = 0;

  FuelPrgMan.OwnerScreen      = &ManualCtrlScr;
  FuelPrgMan.Order            = 22;
  FuelPrgMan.Visible          = 1;
  FuelPrgMan.Opacity          = 255;
  FuelPrgMan.Tag              = 255;
  FuelPrgMan.Left             = 570;
  FuelPrgMan.Top              = 25;
  FuelPrgMan.Width            = 150;
  FuelPrgMan.Height           = 30;
  FuelPrgMan.Pen_Width        = 1;
  FuelPrgMan.Pen_Color        = 0x0000;
  FuelPrgMan.Background_Color = 0xC0C0C0;
  FuelPrgMan.Color            = 0x80FF;
  FuelPrgMan.Caption          = FuelPrgMan_Caption;
  FuelPrgMan.FontName         = Tahoma_25x25_Bold;
  FuelPrgMan.Font_Color       = 0x0000;
  FuelPrgMan.FontHandle       = 2;
  FuelPrgMan.Source           = -1UL;
  FuelPrgMan.Corner_Radius    = 1;
  FuelPrgMan.Min              = 0;
  FuelPrgMan.Max              = 100;
  FuelPrgMan.Position         = 50;
  FuelPrgMan.Show_Position    = 1;
  FuelPrgMan.Show_Percentage  = 1;
  FuelPrgMan.Smooth           = 1;

  OilPrgMan.OwnerScreen      = &ManualCtrlScr;
  OilPrgMan.Order            = 23;
  OilPrgMan.Visible          = 1;
  OilPrgMan.Opacity          = 255;
  OilPrgMan.Tag              = 255;
  OilPrgMan.Left             = 570;
  OilPrgMan.Top              = 75;
  OilPrgMan.Width            = 150;
  OilPrgMan.Height           = 30;
  OilPrgMan.Pen_Width        = 1;
  OilPrgMan.Pen_Color        = 0x0000;
  OilPrgMan.Background_Color = 0xC0C0C0;
  OilPrgMan.Color            = 0x80FF;
  OilPrgMan.Caption          = OilPrgMan_Caption;
  OilPrgMan.FontName         = Tahoma_25x25_Bold;
  OilPrgMan.Font_Color       = 0x0000;
  OilPrgMan.FontHandle       = 2;
  OilPrgMan.Source           = -1UL;
  OilPrgMan.Corner_Radius    = 1;
  OilPrgMan.Min              = 0;
  OilPrgMan.Max              = 100;
  OilPrgMan.Position         = 50;
  OilPrgMan.Show_Position    = 1;
  OilPrgMan.Show_Percentage  = 1;
  OilPrgMan.Smooth           = 1;

  ThrPrgMan.OwnerScreen      = &ManualCtrlScr;
  ThrPrgMan.Order            = 24;
  ThrPrgMan.Visible          = 1;
  ThrPrgMan.Opacity          = 255;
  ThrPrgMan.Tag              = 255;
  ThrPrgMan.Left             = 280;
  ThrPrgMan.Top              = 274;
  ThrPrgMan.Width            = 240;
  ThrPrgMan.Height           = 42;
  ThrPrgMan.Pen_Width        = 2;
  ThrPrgMan.Pen_Color        = 0x0000;
  ThrPrgMan.Background_Color = 0xC0C0C0;
  ThrPrgMan.Color            = 0x80FF;
  ThrPrgMan.Caption          = ThrPrgMan_Caption;
  ThrPrgMan.FontName         = Tahoma_25x25_Bold;
  ThrPrgMan.Font_Color       = 0x0000;
  ThrPrgMan.FontHandle       = 2;
  ThrPrgMan.Source           = -1UL;
  ThrPrgMan.Corner_Radius    = 1;
  ThrPrgMan.Min              = 0;
  ThrPrgMan.Max              = 100;
  ThrPrgMan.Position         = 50;
  ThrPrgMan.Show_Position    = 1;
  ThrPrgMan.Show_Percentage  = 1;
  ThrPrgMan.Smooth           = 1;

  FlPumButMan.OwnerScreen   = &ManualCtrlScr;
  FlPumButMan.Order         = 25;
  FlPumButMan.Visible       = 1;
  FlPumButMan.Opacity       = 255;
  FlPumButMan.Tag           = 255;
  FlPumButMan.Left          = 140;
  FlPumButMan.Top           = 355;
  FlPumButMan.Width         = 150;
  FlPumButMan.Height        = 45;
  FlPumButMan.Color         = 0x278D1;
  FlPumButMan.Press_Color   = 0x7AC6FE;
  FlPumButMan.ColorTo       = 0x7AC6FE;
  FlPumButMan.Press_ColorTo = 0x278D1;
  FlPumButMan.Caption       = FlPumButMan_Caption;
  FlPumButMan.FontName      = Tahoma_19x23_Bold;
  FlPumButMan.Font_Color    = 0xFFFFFF;
  FlPumButMan.FontHandle    = 7;
  FlPumButMan.Source        = -1UL;
  FlPumButMan.Flat          = 0;
  FlPumButMan.Active        = 1;
  FlPumButMan.OnUp          = 0;
  FlPumButMan.OnDown        = 0;
  FlPumButMan.OnClick       = &FlPumButMan_OnClick;
  FlPumButMan.OnPress       = 0;

  FlPumButMan_OnClick.Action       = FlPumButManOnClick;
  FlPumButMan_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
  FlPumButMan_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
  FlPumButMan_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
  FlPumButMan_OnClick.Sound.Volume = 255;

  FlValButtMan.OwnerScreen   = &ManualCtrlScr;
  FlValButtMan.Order         = 26;
  FlValButtMan.Visible       = 1;
  FlValButtMan.Opacity       = 255;
  FlValButtMan.Tag           = 255;
  FlValButtMan.Left          = 140;
  FlValButtMan.Top           = 410;
  FlValButtMan.Width         = 150;
  FlValButtMan.Height        = 45;
  FlValButtMan.Color         = 0x278D1;
  FlValButtMan.Press_Color   = 0x7AC6FE;
  FlValButtMan.ColorTo       = 0x7AC6FE;
  FlValButtMan.Press_ColorTo = 0x278D1;
  FlValButtMan.Caption       = FlValButtMan_Caption;
  FlValButtMan.FontName      = Tahoma_19x23_Bold;
  FlValButtMan.Font_Color    = 0xFFFFFF;
  FlValButtMan.FontHandle    = 7;
  FlValButtMan.Source        = -1UL;
  FlValButtMan.Flat          = 0;
  FlValButtMan.Active        = 1;
  FlValButtMan.OnUp          = 0;
  FlValButtMan.OnDown        = 0;
  FlValButtMan.OnClick       = &FlValButtMan_OnClick;
  FlValButtMan.OnPress       = 0;

  FlValButtMan_OnClick.Action       = FlValButtManOnClick;
  FlValButtMan_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
  FlValButtMan_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
  FlValButtMan_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
  FlValButtMan_OnClick.Sound.Volume = 255;

  IgButtMan.OwnerScreen   = &ManualCtrlScr;
  IgButtMan.Order         = 27;
  IgButtMan.Visible       = 1;
  IgButtMan.Opacity       = 255;
  IgButtMan.Tag           = 255;
  IgButtMan.Left          = 365;
  IgButtMan.Top           = 355;
  IgButtMan.Width         = 150;
  IgButtMan.Height        = 45;
  IgButtMan.Color         = 0x278D1;
  IgButtMan.Press_Color   = 0x7AC6FE;
  IgButtMan.ColorTo       = 0x7AC6FE;
  IgButtMan.Press_ColorTo = 0x278D1;
  IgButtMan.Caption       = IgButtMan_Caption;
  IgButtMan.FontName      = Tahoma_19x23_Bold;
  IgButtMan.Font_Color    = 0xFFFFFF;
  IgButtMan.FontHandle    = 7;
  IgButtMan.Source        = -1UL;
  IgButtMan.Flat          = 0;
  IgButtMan.Active        = 1;
  IgButtMan.OnUp          = 0;
  IgButtMan.OnDown        = 0;
  IgButtMan.OnClick       = &IgButtMan_OnClick;
  IgButtMan.OnPress       = 0;

  IgButtMan_OnClick.Action       = IgButtManOnClick;
  IgButtMan_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
  IgButtMan_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
  IgButtMan_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
  IgButtMan_OnClick.Sound.Volume = 255;

  IgValButtMan.OwnerScreen   = &ManualCtrlScr;
  IgValButtMan.Order         = 28;
  IgValButtMan.Visible       = 1;
  IgValButtMan.Opacity       = 255;
  IgValButtMan.Tag           = 255;
  IgValButtMan.Left          = 358;
  IgValButtMan.Top           = 410;
  IgValButtMan.Width         = 163;
  IgValButtMan.Height        = 45;
  IgValButtMan.Color         = 0x278D1;
  IgValButtMan.Press_Color   = 0x7AC6FE;
  IgValButtMan.ColorTo       = 0x7AC6FE;
  IgValButtMan.Press_ColorTo = 0x278D1;
  IgValButtMan.Caption       = IgValButtMan_Caption;
  IgValButtMan.FontName      = Tahoma_19x23_Bold;
  IgValButtMan.Font_Color    = 0xFFFFFF;
  IgValButtMan.FontHandle    = 7;
  IgValButtMan.Source        = -1UL;
  IgValButtMan.Flat          = 0;
  IgValButtMan.Active        = 1;
  IgValButtMan.OnUp          = 0;
  IgValButtMan.OnDown        = 0;
  IgValButtMan.OnClick       = &IgValButtMan_OnClick;
  IgValButtMan.OnPress       = 0;

  IgValButtMan_OnClick.Action       = IgValButtManOnClick;
  IgValButtMan_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
  IgValButtMan_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
  IgValButtMan_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
  IgValButtMan_OnClick.Sound.Volume = 255;

  StrStrButtMan.OwnerScreen   = &ManualCtrlScr;
  StrStrButtMan.Order         = 29;
  StrStrButtMan.Visible       = 1;
  StrStrButtMan.Opacity       = 255;
  StrStrButtMan.Tag           = 255;
  StrStrButtMan.Left          = 590;
  StrStrButtMan.Top           = 355;
  StrStrButtMan.Width         = 150;
  StrStrButtMan.Height        = 45;
  StrStrButtMan.Color         = 0x278D1;
  StrStrButtMan.Press_Color   = 0x7AC6FE;
  StrStrButtMan.ColorTo       = 0x7AC6FE;
  StrStrButtMan.Press_ColorTo = 0x278D1;
  StrStrButtMan.Caption       = StrStrButtMan_Caption;
  StrStrButtMan.FontName      = Tahoma_19x23_Bold;
  StrStrButtMan.Font_Color    = 0xFFFFFF;
  StrStrButtMan.FontHandle    = 7;
  StrStrButtMan.Source        = -1UL;
  StrStrButtMan.Flat          = 0;
  StrStrButtMan.Active        = 1;
  StrStrButtMan.OnUp          = 0;
  StrStrButtMan.OnDown        = 0;
  StrStrButtMan.OnClick       = &StrStrButtMan_OnClick;
  StrStrButtMan.OnPress       = 0;

  StrStrButtMan_OnClick.Action       = StrStrButtManOnClick;
  StrStrButtMan_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
  StrStrButtMan_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
  StrStrButtMan_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
  StrStrButtMan_OnClick.Sound.Volume = 255;

  OilCtrlButtMan_.OwnerScreen   = &ManualCtrlScr;
  OilCtrlButtMan_.Order         = 30;
  OilCtrlButtMan_.Visible       = 1;
  OilCtrlButtMan_.Opacity       = 255;
  OilCtrlButtMan_.Tag           = 255;
  OilCtrlButtMan_.Left          = 590;
  OilCtrlButtMan_.Top           = 410;
  OilCtrlButtMan_.Width         = 150;
  OilCtrlButtMan_.Height        = 45;
  OilCtrlButtMan_.Color         = 0x278D1;
  OilCtrlButtMan_.Press_Color   = 0x7AC6FE;
  OilCtrlButtMan_.ColorTo       = 0x7AC6FE;
  OilCtrlButtMan_.Press_ColorTo = 0x278D1;
  OilCtrlButtMan_.Caption       = OilCtrlButtMan__Caption;
  OilCtrlButtMan_.FontName      = Tahoma_19x23_Bold;
  OilCtrlButtMan_.Font_Color    = 0xFFFFFF;
  OilCtrlButtMan_.FontHandle    = 7;
  OilCtrlButtMan_.Source        = -1UL;
  OilCtrlButtMan_.Flat          = 0;
  OilCtrlButtMan_.Active        = 1;
  OilCtrlButtMan_.OnUp          = 0;
  OilCtrlButtMan_.OnDown        = 0;
  OilCtrlButtMan_.OnClick       = &OilCtrlButtMan__OnClick;
  OilCtrlButtMan_.OnPress       = 0;

  OilCtrlButtMan__OnClick.Action       = OilCtrlButtMan_OnClick;
  OilCtrlButtMan__OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
  OilCtrlButtMan__OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
  OilCtrlButtMan__OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
  OilCtrlButtMan__OnClick.Sound.Volume = 255;

  Line10.OwnerScreen    = &ManualCtrlScr;
  Line10.Order          = 31;
  Line10.Visible        = 1;
  Line10.Opacity        = 255;
  Line10.Tag            = 255;
  Line10.First_Point_X  = 550;
  Line10.First_Point_Y  = 315;
  Line10.Second_Point_X = 780;
  Line10.Second_Point_Y = 315;
  Line10.Pen_Width      = 2;
  Line10.Pen_Color      = 0x0000;

  Line11.OwnerScreen    = &ManualCtrlScr;
  Line11.Order          = 32;
  Line11.Visible        = 1;
  Line11.Opacity        = 255;
  Line11.Tag            = 255;
  Line11.First_Point_X  = 550;
  Line11.First_Point_Y  = 239;
  Line11.Second_Point_X = 780;
  Line11.Second_Point_Y = 240;
  Line11.Pen_Width      = 2;
  Line11.Pen_Color      = 0x0000;

  Line12.OwnerScreen    = &ManualCtrlScr;
  Line12.Order          = 33;
  Line12.Visible        = 1;
  Line12.Opacity        = 255;
  Line12.Tag            = 255;
  Line12.First_Point_X  = 550;
  Line12.First_Point_Y  = 117;
  Line12.Second_Point_X = 780;
  Line12.Second_Point_Y = 117;
  Line12.Pen_Width      = 2;
  Line12.Pen_Color      = 0x0000;

  PFiLightMan.OwnerScreen   = &ManualCtrlScr;
  PFiLightMan.Order         = 34;
  PFiLightMan.Visible       = 1;
  PFiLightMan.Opacity       = 255;
  PFiLightMan.Tag           = 255;
  PFiLightMan.Left          = 560;
  PFiLightMan.Top           = 125;
  PFiLightMan.Radius        = 15;
  PFiLightMan.Pen_Width     = 1;
  PFiLightMan.Pen_Color     = 0xFF0000;
  PFiLightMan.Color         = 0xFF0000;
  PFiLightMan.Press_Color   = 0xE2E2E2;
  PFiLightMan.Active        = 1;
  PFiLightMan.OnUp          = 0;
  PFiLightMan.OnDown        = 0;
  PFiLightMan.OnClick       = 0;
  PFiLightMan.OnPress       = 0;

  POILightMan.OwnerScreen   = &ManualCtrlScr;
  POILightMan.Order         = 35;
  POILightMan.Visible       = 1;
  POILightMan.Opacity       = 255;
  POILightMan.Tag           = 255;
  POILightMan.Left          = 560;
  POILightMan.Top           = 160;
  POILightMan.Radius        = 15;
  POILightMan.Pen_Width     = 1;
  POILightMan.Pen_Color     = 0xFF0000;
  POILightMan.Color         = 0xFF0000;
  POILightMan.Press_Color   = 0xE2E2E2;
  POILightMan.Active        = 1;
  POILightMan.OnUp          = 0;
  POILightMan.OnDown        = 0;
  POILightMan.OnClick       = 0;
  POILightMan.OnPress       = 0;

  IWLightMan.OwnerScreen   = &ManualCtrlScr;
  IWLightMan.Order         = 36;
  IWLightMan.Visible       = 1;
  IWLightMan.Opacity       = 255;
  IWLightMan.Tag           = 255;
  IWLightMan.Left          = 560;
  IWLightMan.Top           = 195;
  IWLightMan.Radius        = 15;
  IWLightMan.Pen_Width     = 1;
  IWLightMan.Pen_Color     = 0xFF0000;
  IWLightMan.Color         = 0xFF0000;
  IWLightMan.Press_Color   = 0xE2E2E2;
  IWLightMan.Active        = 1;
  IWLightMan.OnUp          = 0;
  IWLightMan.OnDown        = 0;
  IWLightMan.OnClick       = 0;
  IWLightMan.OnPress       = 0;

  LighOKMan.OwnerScreen   = &ManualCtrlScr;
  LighOKMan.Order         = 37;
  LighOKMan.Visible       = 1;
  LighOKMan.Opacity       = 255;
  LighOKMan.Tag           = 255;
  LighOKMan.Left          = 594;
  LighOKMan.Top           = 245;
  LighOKMan.Radius        = 30;
  LighOKMan.Pen_Width     = 2;
  LighOKMan.Pen_Color     = 0x0000;
  LighOKMan.Color         = 0xFFFFFF;
  LighOKMan.Press_Color   = 0xE2E2E2;
  LighOKMan.Caption       = LighOKMan_Caption;
  LighOKMan.TextAlign     = taCenter;
  LighOKMan.FontName      = Tahoma_29x29_Bold;
  LighOKMan.Font_Color    = 0x0000;
  LighOKMan.FontHandle    = 6;
  LighOKMan.Source        = -1UL;
  LighOKMan.Active        = 1;
  LighOKMan.OnUp          = 0;
  LighOKMan.OnDown        = 0;
  LighOKMan.OnClick       = &LighOKMan_OnClick;
  LighOKMan.OnPress       = 0;

  LighOKMan_OnClick.Action       = LighOKManOnClick;
  LighOKMan_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
  LighOKMan_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
  LighOKMan_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
  LighOKMan_OnClick.Sound.Volume = 255;

  LighErrMan.OwnerScreen   = &ManualCtrlScr;
  LighErrMan.Order         = 38;
  LighErrMan.Visible       = 1;
  LighErrMan.Opacity       = 255;
  LighErrMan.Tag           = 255;
  LighErrMan.Left          = 687;
  LighErrMan.Top           = 245;
  LighErrMan.Radius        = 30;
  LighErrMan.Pen_Width     = 2;
  LighErrMan.Pen_Color     = 0x0000;
  LighErrMan.Color         = 0xFFFFFF;
  LighErrMan.Press_Color   = 0xE2E2E2;
  LighErrMan.Caption       = LighErrMan_Caption;
  LighErrMan.TextAlign     = taCenter;
  LighErrMan.FontName      = Tahoma_25x25_Bold;
  LighErrMan.Font_Color    = 0x0000;
  LighErrMan.FontHandle    = 2;
  LighErrMan.Source        = -1UL;
  LighErrMan.Active        = 1;
  LighErrMan.OnUp          = 0;
  LighErrMan.OnDown        = 0;
  LighErrMan.OnClick       = &LighErrMan_OnClick;
  LighErrMan.OnPress       = 0;

  LighErrMan_OnClick.Action       = LighErrManOnClick;
  LighErrMan_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
  LighErrMan_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
  LighErrMan_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
  LighErrMan_OnClick.Sound.Volume = 255;

  RpmGagMan.OwnerScreen   = &ManualCtrlScr;
  RpmGagMan.Order         = 39;
  RpmGagMan.Visible       = 1;
  RpmGagMan.Opacity       = 255;
  RpmGagMan.Tag           = 255;
  RpmGagMan.Left          = 300;
  RpmGagMan.Top           = 20;
  RpmGagMan.Radius        = 100;
  RpmGagMan.Pen_Width     = 1;
  RpmGagMan.Pen_Color     = 0x0000;
  RpmGagMan.Color         = 0xC0C0C0;
  RpmGagMan.Press_Color   = 0x7AC6FE;
  RpmGagMan.Major         = 7;
  RpmGagMan.Minor         = 10;
  RpmGagMan.Value         = 0;
  RpmGagMan.Range         = 70;
  RpmGagMan.Flat          = 1;
  RpmGagMan.NoBackground  = 0;
  RpmGagMan.NoPointer     = 0;
  RpmGagMan.TicksVisible  = 1;
  RpmGagMan.Active        = 1;
  RpmGagMan.OnUp          = 0;
  RpmGagMan.OnDown        = 0;
  RpmGagMan.OnClick       = 0;
  RpmGagMan.OnPress       = 0;

  RpmNumMan.OwnerScreen   = &ManualCtrlScr;
  RpmNumMan.Order         = 40;
  RpmNumMan.Visible       = 1;
  RpmNumMan.Opacity       = 255;
  RpmNumMan.Tag           = 255;
  RpmNumMan.Left          = 300;
  RpmNumMan.Top           = 200;
  RpmNumMan.Width         = 195;
  RpmNumMan.Height        = 42;
  RpmNumMan.Pen_Width     = 2;
  RpmNumMan.Pen_Color     = 0x0000;
  RpmNumMan.Color         = 0xFFFFFF;
  RpmNumMan.Press_Color   = 0xE2E2E2;
  RpmNumMan.Caption       = RpmNumMan_Caption;
  RpmNumMan.TextAlign     = taCenter;
  RpmNumMan.FontName      = Tahoma_25x25_Bold;
  RpmNumMan.Font_Color    = 0x0000;
  RpmNumMan.FontHandle    = 2;
  RpmNumMan.Source        = -1UL;
  RpmNumMan.Corner_Radius = 3;
  RpmNumMan.Active        = 1;
  RpmNumMan.OnUp          = 0;
  RpmNumMan.OnDown        = 0;
  RpmNumMan.OnClick       = 0;
  RpmNumMan.OnPress       = 0;

  Label43.OwnerScreen = &ManualCtrlScr;
  Label43.Order       = 41;
  Label43.Visible     = 1;
  Label43.Opacity     = 255;
  Label43.Tag         = 255;
  Label43.Left        = 163;
  Label43.Top         = 325;
  Label43.Width       = 104;
  Label43.Height      = 25;
  Label43.Caption     = Label43_Caption;
  Label43.FontName    = Tahoma_19x23_Regular;
  Label43.Font_Color  = 0x0000;
  Label43.FontHandle  = 3;
  Label43.Source      = -1UL;
  Label43.Active      = 1;
  Label43.OnUp        = 0;
  Label43.OnDown      = 0;
  Label43.OnClick     = 0;
  Label43.OnPress     = 0;

  Label44.OwnerScreen = &ManualCtrlScr;
  Label44.Order       = 42;
  Label44.Visible     = 1;
  Label44.Opacity     = 255;
  Label44.Tag         = 255;
  Label44.Left        = 377;
  Label44.Top         = 325;
  Label44.Width       = 125;
  Label44.Height      = 25;
  Label44.Caption     = Label44_Caption;
  Label44.FontName    = Tahoma_19x23_Regular;
  Label44.Font_Color  = 0x0000;
  Label44.FontHandle  = 3;
  Label44.Source      = -1UL;
  Label44.Active      = 1;
  Label44.OnUp        = 0;
  Label44.OnDown      = 0;
  Label44.OnClick     = 0;
  Label44.OnPress     = 0;

  Label45.OwnerScreen = &ManualCtrlScr;
  Label45.Order       = 43;
  Label45.Visible     = 1;
  Label45.Opacity     = 255;
  Label45.Tag         = 255;
  Label45.Left        = 575;
  Label45.Top         = 325;
  Label45.Width       = 194;
  Label45.Height      = 25;
  Label45.Caption     = Label45_Caption;
  Label45.FontName    = Tahoma_19x23_Regular;
  Label45.Font_Color  = 0x0000;
  Label45.FontHandle  = 3;
  Label45.Source      = -1UL;
  Label45.Active      = 1;
  Label45.OnUp        = 0;
  Label45.OnDown      = 0;
  Label45.OnClick     = 0;
  Label45.OnPress     = 0;

  Line13.OwnerScreen    = &ManualCtrlScr;
  Line13.Order          = 44;
  Line13.Visible        = 1;
  Line13.Opacity        = 255;
  Line13.Tag            = 255;
  Line13.First_Point_X  = 325;
  Line13.First_Point_Y  = 325;
  Line13.Second_Point_X = 325;
  Line13.Second_Point_Y = 470;
  Line13.Pen_Width      = 2;
  Line13.Pen_Color      = 0x0000;

  Line14.OwnerScreen    = &ManualCtrlScr;
  Line14.Order          = 45;
  Line14.Visible        = 1;
  Line14.Opacity        = 255;
  Line14.Tag            = 255;
  Line14.First_Point_X  = 550;
  Line14.First_Point_Y  = 325;
  Line14.Second_Point_X = 550;
  Line14.Second_Point_Y = 470;
  Line14.Pen_Width      = 2;
  Line14.Pen_Color      = 0x0000;

  Label46.OwnerScreen = &ManualCtrlScr;
  Label46.Order       = 46;
  Label46.Visible     = 1;
  Label46.Opacity     = 255;
  Label46.Tag         = 255;
  Label46.Left        = 356;
  Label46.Top         = 245;
  Label46.Width       = 87;
  Label46.Height      = 28;
  Label46.Caption     = Label46_Caption;
  Label46.FontName    = Tahoma_25x25_Bold;
  Label46.Font_Color  = 0x0000;
  Label46.FontHandle  = 2;
  Label46.Source      = -1UL;
  Label46.Active      = 1;
  Label46.OnUp        = 0;
  Label46.OnDown      = 0;
  Label46.OnClick     = 0;
  Label46.OnPress     = 0;

  Label47.OwnerScreen = &ManualCtrlScr;
  Label47.Order       = 47;
  Label47.Visible     = 1;
  Label47.Opacity     = 255;
  Label47.Tag         = 255;
  Label47.Left        = 376;
  Label47.Top         = 147;
  Label47.Width       = 42;
  Label47.Height      = 28;
  Label47.Caption     = Label47_Caption;
  Label47.FontName    = Tahoma_21x25_Regular;
  Label47.Font_Color  = 0x0000;
  Label47.FontHandle  = 5;
  Label47.Source      = -1UL;
  Label47.Active      = 1;
  Label47.OnUp        = 0;
  Label47.OnDown      = 0;
  Label47.OnClick     = 0;
  Label47.OnPress     = 0;

  Label48.OwnerScreen = &ManualCtrlScr;
  Label48.Order       = 48;
  Label48.Visible     = 1;
  Label48.Opacity     = 255;
  Label48.Tag         = 255;
  Label48.Left        = 364;
  Label48.Top         = 170;
  Label48.Width       = 67;
  Label48.Height      = 28;
  Label48.Caption     = Label48_Caption;
  Label48.FontName    = Tahoma_21x25_Regular;
  Label48.Font_Color  = 0x0000;
  Label48.FontHandle  = 5;
  Label48.Source      = -1UL;
  Label48.Active      = 1;
  Label48.OnUp        = 0;
  Label48.OnDown      = 0;
  Label48.OnClick     = 0;
  Label48.OnPress     = 0;

  Label49.OwnerScreen = &ManualCtrlScr;
  Label49.Order       = 49;
  Label49.Visible     = 1;
  Label49.Opacity     = 255;
  Label49.Tag         = 255;
  Label49.Left        = 613;
  Label49.Top         = 122;
  Label49.Width       = 132;
  Label49.Height      = 21;
  Label49.Caption     = Label49_Caption;
  Label49.FontName    = Tahoma_19x19_Bold;
  Label49.Font_Color  = 0x0000;
  Label49.FontHandle  = 1;
  Label49.Source      = -1UL;
  Label49.Active      = 1;
  Label49.OnUp        = 0;
  Label49.OnDown      = 0;
  Label49.OnClick     = 0;
  Label49.OnPress     = 0;

  Label50.OwnerScreen = &ManualCtrlScr;
  Label50.Order       = 50;
  Label50.Visible     = 1;
  Label50.Opacity     = 255;
  Label50.Tag         = 255;
  Label50.Left        = 633;
  Label50.Top         = 140;
  Label50.Width       = 91;
  Label50.Height      = 21;
  Label50.Caption     = Label50_Caption;
  Label50.FontName    = Tahoma_19x19_Bold;
  Label50.Font_Color  = 0x0000;
  Label50.FontHandle  = 1;
  Label50.Source      = -1UL;
  Label50.Active      = 1;
  Label50.OnUp        = 0;
  Label50.OnDown      = 0;
  Label50.OnClick     = 0;
  Label50.OnPress     = 0;

  Label51.OwnerScreen = &ManualCtrlScr;
  Label51.Order       = 51;
  Label51.Visible     = 1;
  Label51.Opacity     = 255;
  Label51.Tag         = 255;
  Label51.Left        = 619;
  Label51.Top         = 161;
  Label51.Width       = 120;
  Label51.Height      = 21;
  Label51.Caption     = Label51_Caption;
  Label51.FontName    = Tahoma_19x19_Bold;
  Label51.Font_Color  = 0x0000;
  Label51.FontHandle  = 1;
  Label51.Source      = -1UL;
  Label51.Active      = 1;
  Label51.OnUp        = 0;
  Label51.OnDown      = 0;
  Label51.OnClick     = 0;
  Label51.OnPress     = 0;

  Label52.OwnerScreen = &ManualCtrlScr;
  Label52.Order       = 52;
  Label52.Visible     = 1;
  Label52.Opacity     = 255;
  Label52.Tag         = 255;
  Label52.Left        = 633;
  Label52.Top         = 176;
  Label52.Width       = 91;
  Label52.Height      = 21;
  Label52.Caption     = Label52_Caption;
  Label52.FontName    = Tahoma_19x19_Bold;
  Label52.Font_Color  = 0x0000;
  Label52.FontHandle  = 1;
  Label52.Source      = -1UL;
  Label52.Active      = 1;
  Label52.OnUp        = 0;
  Label52.OnDown      = 0;
  Label52.OnClick     = 0;
  Label52.OnPress     = 0;

  Label53.OwnerScreen = &ManualCtrlScr;
  Label53.Order       = 53;
  Label53.Visible     = 1;
  Label53.Opacity     = 255;
  Label53.Tag         = 255;
  Label53.Left        = 613;
  Label53.Top         = 201;
  Label53.Width       = 132;
  Label53.Height      = 21;
  Label53.Caption     = Label53_Caption;
  Label53.FontName    = Tahoma_19x19_Bold;
  Label53.Font_Color  = 0x0000;
  Label53.FontHandle  = 1;
  Label53.Source      = -1UL;
  Label53.Active      = 1;
  Label53.OnUp        = 0;
  Label53.OnDown      = 0;
  Label53.OnClick     = 0;
  Label53.OnPress     = 0;

  Label54.OwnerScreen = &ManualCtrlScr;
  Label54.Order       = 54;
  Label54.Visible     = 1;
  Label54.Opacity     = 255;
  Label54.Tag         = 255;
  Label54.Left        = 330;
  Label54.Top         = 173;
  Label54.Width       = 10;
  Label54.Height      = 21;
  Label54.Caption     = Label54_Caption;
  Label54.FontName    = Tahoma_19x19_Bold;
  Label54.Font_Color  = 0x0000;
  Label54.FontHandle  = 1;
  Label54.Source      = -1UL;
  Label54.Active      = 1;
  Label54.OnUp        = 0;
  Label54.OnDown      = 0;
  Label54.OnClick     = 0;
  Label54.OnPress     = 0;

  Label55.OwnerScreen = &ManualCtrlScr;
  Label55.Order       = 55;
  Label55.Visible     = 1;
  Label55.Opacity     = 255;
  Label55.Tag         = 255;
  Label55.Left        = 301;
  Label55.Top         = 120;
  Label55.Width       = 21;
  Label55.Height      = 21;
  Label55.Caption     = Label55_Caption;
  Label55.FontName    = Tahoma_19x19_Bold;
  Label55.Font_Color  = 0x0000;
  Label55.FontHandle  = 1;
  Label55.Source      = -1UL;
  Label55.Active      = 1;
  Label55.OnUp        = 0;
  Label55.OnDown      = 0;
  Label55.OnClick     = 0;
  Label55.OnPress     = 0;

  Label56.OwnerScreen = &ManualCtrlScr;
  Label56.Order       = 56;
  Label56.Visible     = 1;
  Label56.Opacity     = 255;
  Label56.Tag         = 255;
  Label56.Left        = 313;
  Label56.Top         = 65;
  Label56.Width       = 21;
  Label56.Height      = 21;
  Label56.Caption     = Label56_Caption;
  Label56.FontName    = Tahoma_19x19_Bold;
  Label56.Font_Color  = 0x0000;
  Label56.FontHandle  = 1;
  Label56.Source      = -1UL;
  Label56.Active      = 1;
  Label56.OnUp        = 0;
  Label56.OnDown      = 0;
  Label56.OnClick     = 0;
  Label56.OnPress     = 0;

  Label57.OwnerScreen = &ManualCtrlScr;
  Label57.Order       = 57;
  Label57.Visible     = 1;
  Label57.Opacity     = 255;
  Label57.Tag         = 255;
  Label57.Left        = 358;
  Label57.Top         = 28;
  Label57.Width       = 21;
  Label57.Height      = 21;
  Label57.Caption     = Label57_Caption;
  Label57.FontName    = Tahoma_19x19_Bold;
  Label57.Font_Color  = 0x0000;
  Label57.FontHandle  = 1;
  Label57.Source      = -1UL;
  Label57.Active      = 1;
  Label57.OnUp        = 0;
  Label57.OnDown      = 0;
  Label57.OnClick     = 0;
  Label57.OnPress     = 0;

  Label58.OwnerScreen = &ManualCtrlScr;
  Label58.Order       = 58;
  Label58.Visible     = 1;
  Label58.Opacity     = 255;
  Label58.Tag         = 255;
  Label58.Left        = 423;
  Label58.Top         = 28;
  Label58.Width       = 21;
  Label58.Height      = 21;
  Label58.Caption     = Label58_Caption;
  Label58.FontName    = Tahoma_19x19_Bold;
  Label58.Font_Color  = 0x0000;
  Label58.FontHandle  = 1;
  Label58.Source      = -1UL;
  Label58.Active      = 1;
  Label58.OnUp        = 0;
  Label58.OnDown      = 0;
  Label58.OnClick     = 0;
  Label58.OnPress     = 0;

  Label59.OwnerScreen = &ManualCtrlScr;
  Label59.Order       = 59;
  Label59.Visible     = 1;
  Label59.Opacity     = 255;
  Label59.Tag         = 255;
  Label59.Left        = 468;
  Label59.Top         = 65;
  Label59.Width       = 21;
  Label59.Height      = 21;
  Label59.Caption     = Label59_Caption;
  Label59.FontName    = Tahoma_19x19_Bold;
  Label59.Font_Color  = 0xFF8000;
  Label59.FontHandle  = 1;
  Label59.Source      = -1UL;
  Label59.Active      = 1;
  Label59.OnUp        = 0;
  Label59.OnDown      = 0;
  Label59.OnClick     = 0;
  Label59.OnPress     = 0;

  Label60.OwnerScreen = &ManualCtrlScr;
  Label60.Order       = 60;
  Label60.Visible     = 1;
  Label60.Opacity     = 255;
  Label60.Tag         = 255;
  Label60.Left        = 479;
  Label60.Top         = 120;
  Label60.Width       = 21;
  Label60.Height      = 21;
  Label60.Caption     = Label60_Caption;
  Label60.FontName    = Tahoma_19x19_Bold;
  Label60.Font_Color  = 0xFF8000;
  Label60.FontHandle  = 1;
  Label60.Source      = -1UL;
  Label60.Active      = 1;
  Label60.OnUp        = 0;
  Label60.OnDown      = 0;
  Label60.OnClick     = 0;
  Label60.OnPress     = 0;

  Label61.OwnerScreen = &ManualCtrlScr;
  Label61.Order       = 61;
  Label61.Visible     = 1;
  Label61.Opacity     = 255;
  Label61.Tag         = 255;
  Label61.Left        = 456;
  Label61.Top         = 173;
  Label61.Width       = 21;
  Label61.Height      = 21;
  Label61.Caption     = Label61_Caption;
  Label61.FontName    = Tahoma_19x19_Bold;
  Label61.Font_Color  = 0xFF0000;
  Label61.FontHandle  = 1;
  Label61.Source      = -1UL;
  Label61.Active      = 1;
  Label61.OnUp        = 0;
  Label61.OnDown      = 0;
  Label61.OnClick     = 0;
  Label61.OnPress     = 0;

  HomeAutomaticCtrl.OwnerScreen   = &HomeScr;
  HomeAutomaticCtrl.Order         = 0;
  HomeAutomaticCtrl.Visible       = 1;
  HomeAutomaticCtrl.Opacity       = 255;
  HomeAutomaticCtrl.Tag           = 255;
  HomeAutomaticCtrl.Left          = 600;
  HomeAutomaticCtrl.Top           = 50;
  HomeAutomaticCtrl.Width         = 100;
  HomeAutomaticCtrl.Height        = 100;
  HomeAutomaticCtrl.Picture_Name  = auto3sm_bmp;
  HomeAutomaticCtrl.Picture_Type  = 7;
  HomeAutomaticCtrl.Picture_Ratio = 1;
  HomeAutomaticCtrl.Blend_Color   = 0xFFFFFF;
  HomeAutomaticCtrl.Source        = -1L;
  HomeAutomaticCtrl.RotationAngle = 0;
  HomeAutomaticCtrl.RotationCenterLeft = 612;
  HomeAutomaticCtrl.RotationCenterTop = 100;
  HomeAutomaticCtrl.ScaleX        = 1.0000;
  HomeAutomaticCtrl.ScaleY        = 1.0000;
  HomeAutomaticCtrl.Active        = 1;
  HomeAutomaticCtrl.OnUp          = 0;
  HomeAutomaticCtrl.OnDown        = 0;
  HomeAutomaticCtrl.OnClick       = &HomeAutomaticCtrl_OnClick;
  HomeAutomaticCtrl.OnPress       = 0;

  HomeAutomaticCtrl_OnClick.Action       = HomeAutomaticCtrlOnClick;
  HomeAutomaticCtrl_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
  HomeAutomaticCtrl_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
  HomeAutomaticCtrl_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
  HomeAutomaticCtrl_OnClick.Sound.Volume = 255;

  HomeSaveData.OwnerScreen   = &HomeScr;
  HomeSaveData.Order         = 1;
  HomeSaveData.Visible       = 1;
  HomeSaveData.Opacity       = 255;
  HomeSaveData.Tag           = 255;
  HomeSaveData.Left          = 600;
  HomeSaveData.Top           = 300;
  HomeSaveData.Width         = 98;
  HomeSaveData.Height        = 83;
  HomeSaveData.Picture_Name  = folder2sm_bmp;
  HomeSaveData.Picture_Type  = 7;
  HomeSaveData.Picture_Ratio = 1;
  HomeSaveData.Blend_Color   = 0xFFFFFF;
  HomeSaveData.Source        = -1L;
  HomeSaveData.RotationAngle = 0;
  HomeSaveData.RotationCenterLeft = 614;
  HomeSaveData.RotationCenterTop = 282;
  HomeSaveData.ScaleX        = 1.0000;
  HomeSaveData.ScaleY        = 1.0000;
  HomeSaveData.Active        = 1;
  HomeSaveData.OnUp          = 0;
  HomeSaveData.OnDown        = 0;
  HomeSaveData.OnClick       = &HomeSaveData_OnClick;
  HomeSaveData.OnPress       = 0;

  HomeSaveData_OnClick.Action       = HomeSaveDataOnClick;
  HomeSaveData_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
  HomeSaveData_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
  HomeSaveData_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
  HomeSaveData_OnClick.Sound.Volume = 255;

  HomeEngineInfo.OwnerScreen   = &HomeScr;
  HomeEngineInfo.Order         = 2;
  HomeEngineInfo.Visible       = 1;
  HomeEngineInfo.Opacity       = 255;
  HomeEngineInfo.Tag           = 255;
  HomeEngineInfo.Left          = 95;
  HomeEngineInfo.Top           = 300;
  HomeEngineInfo.Width         = 100;
  HomeEngineInfo.Height        = 100;
  HomeEngineInfo.Picture_Name  = engine1sm_bmp;
  HomeEngineInfo.Picture_Type  = 7;
  HomeEngineInfo.Picture_Ratio = 1;
  HomeEngineInfo.Blend_Color   = 0xFFFFFF;
  HomeEngineInfo.Source        = -1L;
  HomeEngineInfo.RotationAngle = 0;
  HomeEngineInfo.RotationCenterLeft = 145;
  HomeEngineInfo.RotationCenterTop = 278;
  HomeEngineInfo.ScaleX        = 1.0000;
  HomeEngineInfo.ScaleY        = 1.0000;
  HomeEngineInfo.Active        = 1;
  HomeEngineInfo.OnUp          = 0;
  HomeEngineInfo.OnDown        = 0;
  HomeEngineInfo.OnClick       = &HomeEngineInfo_OnClick;
  HomeEngineInfo.OnPress       = 0;

  HomeEngineInfo_OnClick.Action       = HomeEngineInfoOnClick;
  HomeEngineInfo_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
  HomeEngineInfo_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
  HomeEngineInfo_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
  HomeEngineInfo_OnClick.Sound.Volume = 255;

  HomeAdjustments.OwnerScreen   = &HomeScr;
  HomeAdjustments.Order         = 3;
  HomeAdjustments.Visible       = 1;
  HomeAdjustments.Opacity       = 255;
  HomeAdjustments.Tag           = 255;
  HomeAdjustments.Left          = 257;
  HomeAdjustments.Top           = 50;
  HomeAdjustments.Width         = 102;
  HomeAdjustments.Height        = 102;
  HomeAdjustments.Picture_Name  = settings3sm_bmp;
  HomeAdjustments.Picture_Type  = 7;
  HomeAdjustments.Picture_Ratio = 1;
  HomeAdjustments.Blend_Color   = 0xFFFFFF;
  HomeAdjustments.Source        = -1L;
  HomeAdjustments.RotationAngle = 0;
  HomeAdjustments.RotationCenterLeft = 285;
  HomeAdjustments.RotationCenterTop = 38;
  HomeAdjustments.ScaleX        = 1.0000;
  HomeAdjustments.ScaleY        = 1.0000;
  HomeAdjustments.Active        = 1;
  HomeAdjustments.OnUp          = 0;
  HomeAdjustments.OnDown        = 0;
  HomeAdjustments.OnClick       = &HomeAdjustments_OnClick;
  HomeAdjustments.OnPress       = 0;

  HomeAdjustments_OnClick.Action       = HomeAdjustmentsOnClick;
  HomeAdjustments_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
  HomeAdjustments_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
  HomeAdjustments_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
  HomeAdjustments_OnClick.Sound.Volume = 255;

  HomeCtrlInfo.OwnerScreen   = &HomeScr;
  HomeCtrlInfo.Order         = 4;
  HomeCtrlInfo.Visible       = 1;
  HomeCtrlInfo.Opacity       = 255;
  HomeCtrlInfo.Tag           = 255;
  HomeCtrlInfo.Left          = 95;
  HomeCtrlInfo.Top           = 50;
  HomeCtrlInfo.Width         = 112;
  HomeCtrlInfo.Height        = 112;
  HomeCtrlInfo.Picture_Name  = info3sm_bmp;
  HomeCtrlInfo.Picture_Type  = 7;
  HomeCtrlInfo.Picture_Ratio = 1;
  HomeCtrlInfo.Blend_Color   = 0xFFFFFF;
  HomeCtrlInfo.Source        = -1L;
  HomeCtrlInfo.RotationAngle = 0;
  HomeCtrlInfo.RotationCenterLeft = 151;
  HomeCtrlInfo.RotationCenterTop = 38;
  HomeCtrlInfo.ScaleX        = 1.0000;
  HomeCtrlInfo.ScaleY        = 1.0000;
  HomeCtrlInfo.Active        = 1;
  HomeCtrlInfo.OnUp          = 0;
  HomeCtrlInfo.OnDown        = 0;
  HomeCtrlInfo.OnClick       = &HomeCtrlInfo_OnClick;
  HomeCtrlInfo.OnPress       = 0;

  HomeCtrlInfo_OnClick.Action       = HomeCtrlInfoOnClick;
  HomeCtrlInfo_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
  HomeCtrlInfo_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
  HomeCtrlInfo_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
  HomeCtrlInfo_OnClick.Sound.Volume = 255;

  HomeManualCtrl.OwnerScreen   = &HomeScr;
  HomeManualCtrl.Order         = 5;
  HomeManualCtrl.Visible       = 1;
  HomeManualCtrl.Opacity       = 255;
  HomeManualCtrl.Tag           = 255;
  HomeManualCtrl.Left          = 430;
  HomeManualCtrl.Top           = 50;
  HomeManualCtrl.Width         = 102;
  HomeManualCtrl.Height        = 102;
  HomeManualCtrl.Picture_Name  = manual1sm_bmp;
  HomeManualCtrl.Picture_Type  = 7;
  HomeManualCtrl.Picture_Ratio = 1;
  HomeManualCtrl.Blend_Color   = 0xFFFFFF;
  HomeManualCtrl.Source        = -1L;
  HomeManualCtrl.RotationAngle = 0;
  HomeManualCtrl.RotationCenterLeft = 436;
  HomeManualCtrl.RotationCenterTop = 101;
  HomeManualCtrl.ScaleX        = 1.0000;
  HomeManualCtrl.ScaleY        = 1.0000;
  HomeManualCtrl.Active        = 1;
  HomeManualCtrl.OnUp          = 0;
  HomeManualCtrl.OnDown        = 0;
  HomeManualCtrl.OnClick       = &HomeManualCtrl_OnClick;
  HomeManualCtrl.OnPress       = 0;

  HomeManualCtrl_OnClick.Action       = HomeManualCtrlOnClick;
  HomeManualCtrl_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
  HomeManualCtrl_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
  HomeManualCtrl_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
  HomeManualCtrl_OnClick.Sound.Volume = 255;

  Image11.OwnerScreen   = &HomeScr;
  Image11.Order         = 6;
  Image11.Visible       = 1;
  Image11.Opacity       = 255;
  Image11.Tag           = 255;
  Image11.Left          = 186;
  Image11.Top           = 173;
  Image11.Width         = 428;
  Image11.Height        = 112;
  Image11.Picture_Name  = EdeproLogoW_bmp;
  Image11.Picture_Type  = 7;
  Image11.Picture_Ratio = 1;
  Image11.Blend_Color   = 0xFFFFFF;
  Image11.Source        = -1L;
  Image11.RotationAngle = 0;
  Image11.RotationCenterLeft = 400;
  Image11.RotationCenterTop = 229;
  Image11.ScaleX        = 1.0000;
  Image11.ScaleY        = 1.0000;
  Image11.Active        = 1;
  Image11.OnUp          = 0;
  Image11.OnDown        = 0;
  Image11.OnClick       = 0;
  Image11.OnPress       = 0;

  HomeCheckList.OwnerScreen   = &HomeScr;
  HomeCheckList.Order         = 7;
  HomeCheckList.Visible       = 1;
  HomeCheckList.Opacity       = 255;
  HomeCheckList.Tag           = 255;
  HomeCheckList.Left          = 257;
  HomeCheckList.Top           = 300;
  HomeCheckList.Width         = 112;
  HomeCheckList.Height        = 112;
  HomeCheckList.Picture_Name  = check2sm_bmp;
  HomeCheckList.Picture_Type  = 7;
  HomeCheckList.Picture_Ratio = 1;
  HomeCheckList.Blend_Color   = 0xFFFFFF;
  HomeCheckList.Source        = -1L;
  HomeCheckList.RotationAngle = 0;
  HomeCheckList.RotationCenterLeft = 289;
  HomeCheckList.RotationCenterTop = 275;
  HomeCheckList.ScaleX        = 1.0000;
  HomeCheckList.ScaleY        = 1.0000;
  HomeCheckList.Active        = 1;
  HomeCheckList.OnUp          = 0;
  HomeCheckList.OnDown        = 0;
  HomeCheckList.OnClick       = &HomeCheckList_OnClick;
  HomeCheckList.OnPress       = 0;

  HomeCheckList_OnClick.Action       = HomeCheckListOnClick;
  HomeCheckList_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
  HomeCheckList_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
  HomeCheckList_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
  HomeCheckList_OnClick.Sound.Volume = 255;

  HomeAlertCtrl.OwnerScreen   = &HomeScr;
  HomeAlertCtrl.Order         = 8;
  HomeAlertCtrl.Visible       = 1;
  HomeAlertCtrl.Opacity       = 255;
  HomeAlertCtrl.Tag           = 255;
  HomeAlertCtrl.Left          = 430;
  HomeAlertCtrl.Top           = 300;
  HomeAlertCtrl.Width         = 102;
  HomeAlertCtrl.Height        = 102;
  HomeAlertCtrl.Picture_Name  = alertorange1sm_bmp;
  HomeAlertCtrl.Picture_Type  = 7;
  HomeAlertCtrl.Picture_Ratio = 1;
  HomeAlertCtrl.Blend_Color   = 0xFFFFFF;
  HomeAlertCtrl.Source        = -1L;
  HomeAlertCtrl.RotationAngle = 0;
  HomeAlertCtrl.RotationCenterLeft = 437;
  HomeAlertCtrl.RotationCenterTop = 278;
  HomeAlertCtrl.ScaleX        = 1.0000;
  HomeAlertCtrl.ScaleY        = 1.0000;
  HomeAlertCtrl.Active        = 1;
  HomeAlertCtrl.OnUp          = 0;
  HomeAlertCtrl.OnDown        = 0;
  HomeAlertCtrl.OnClick       = &HomeAlertCtrl_OnClick;
  HomeAlertCtrl.OnPress       = 0;

  HomeAlertCtrl_OnClick.Action       = HomeAlertCtrlOnClick;
  HomeAlertCtrl_OnClick.Sound.SndAct = VTFT_SNDACT_NONE;
  HomeAlertCtrl_OnClick.Sound.Effect = _FT812_SOUND_XYLOPHONE;
  HomeAlertCtrl_OnClick.Sound.Pitch  = _FT812_SOUND_PITCH_A5;
  HomeAlertCtrl_OnClick.Sound.Volume = 255;

  Label65.OwnerScreen = &HomeScr;
  Label65.Order       = 9;
  Label65.Visible     = 1;
  Label65.Opacity     = 255;
  Label65.Tag         = 255;
  Label65.Left        = 65;
  Label65.Top         = 475;
  Label65.Width       = 38;
  Label65.Height      = 25;
  Label65.Caption     = Label65_Caption;
  Label65.FontName    = Tahoma_19x23_Regular;
  Label65.Font_Color  = 0x0000;
  Label65.FontHandle  = 1;
  Label65.Source      = -1UL;
  Label65.Active      = 1;
  Label65.OnUp        = 0;
  Label65.OnDown      = 0;
  Label65.OnClick     = 0;
  Label65.OnPress     = 0;

  Label66.OwnerScreen = &HomeScr;
  Label66.Order       = 10;
  Label66.Visible     = 1;
  Label66.Opacity     = 255;
  Label66.Tag         = 255;
  Label66.Left        = 274;
  Label66.Top         = 475;
  Label66.Width       = 38;
  Label66.Height      = 25;
  Label66.Caption     = Label66_Caption;
  Label66.FontName    = Tahoma_19x23_Regular;
  Label66.Font_Color  = 0x0000;
  Label66.FontHandle  = 1;
  Label66.Source      = -1UL;
  Label66.Active      = 1;
  Label66.OnUp        = 0;
  Label66.OnDown      = 0;
  Label66.OnClick     = 0;
  Label66.OnPress     = 0;

  Label62.OwnerScreen = &HomeScr;
  Label62.Order       = 11;
  Label62.Visible     = 1;
  Label62.Opacity     = 255;
  Label62.Tag         = 255;
  Label62.Left        = 95;
  Label62.Top         = 155;
  Label62.Width       = 103;
  Label62.Height      = 25;
  Label62.Caption     = Label62_Caption;
  Label62.FontName    = Tahoma_19x23_Regular;
  Label62.Font_Color  = 0x0000;
  Label62.FontHandle  = 1;
  Label62.Source      = -1UL;
  Label62.Active      = 1;
  Label62.OnUp        = 0;
  Label62.OnDown      = 0;
  Label62.OnClick     = 0;
  Label62.OnPress     = 0;

  Label63.OwnerScreen = &HomeScr;
  Label63.Order       = 12;
  Label63.Visible     = 1;
  Label63.Opacity     = 255;
  Label63.Tag         = 255;
  Label63.Left        = 260;
  Label63.Top         = 155;
  Label63.Width       = 107;
  Label63.Height      = 25;
  Label63.Caption     = Label63_Caption;
  Label63.FontName    = Tahoma_19x23_Regular;
  Label63.Font_Color  = 0x0000;
  Label63.FontHandle  = 1;
  Label63.Source      = -1UL;
  Label63.Active      = 1;
  Label63.OnUp        = 0;
  Label63.OnDown      = 0;
  Label63.OnClick     = 0;
  Label63.OnPress     = 0;

  Label67.OwnerScreen = &HomeScr;
  Label67.Order       = 13;
  Label67.Visible     = 1;
  Label67.Opacity     = 255;
  Label67.Tag         = 255;
  Label67.Left        = 415;
  Label67.Top         = 155;
  Label67.Width       = 130;
  Label67.Height      = 25;
  Label67.Caption     = Label67_Caption;
  Label67.FontName    = Tahoma_19x23_Regular;
  Label67.Font_Color  = 0x0000;
  Label67.FontHandle  = 1;
  Label67.Source      = -1UL;
  Label67.Active      = 1;
  Label67.OnUp        = 0;
  Label67.OnDown      = 0;
  Label67.OnClick     = 0;
  Label67.OnPress     = 0;

  Label68.OwnerScreen = &HomeScr;
  Label68.Order       = 14;
  Label68.Visible     = 1;
  Label68.Opacity     = 255;
  Label68.Tag         = 255;
  Label68.Left        = 570;
  Label68.Top         = 155;
  Label68.Width       = 155;
  Label68.Height      = 25;
  Label68.Caption     = Label68_Caption;
  Label68.FontName    = Tahoma_19x23_Regular;
  Label68.Font_Color  = 0x0000;
  Label68.FontHandle  = 1;
  Label68.Source      = -1UL;
  Label68.Active      = 1;
  Label68.OnUp        = 0;
  Label68.OnDown      = 0;
  Label68.OnClick     = 0;
  Label68.OnPress     = 0;

  Label69.OwnerScreen = &HomeScr;
  Label69.Order       = 15;
  Label69.Visible     = 1;
  Label69.Opacity     = 255;
  Label69.Tag         = 255;
  Label69.Left        = 95;
  Label69.Top         = 410;
  Label69.Width       = 100;
  Label69.Height      = 25;
  Label69.Caption     = Label69_Caption;
  Label69.FontName    = Tahoma_19x23_Regular;
  Label69.Font_Color  = 0x0000;
  Label69.FontHandle  = 1;
  Label69.Source      = -1UL;
  Label69.Active      = 1;
  Label69.OnUp        = 0;
  Label69.OnDown      = 0;
  Label69.OnClick     = 0;
  Label69.OnPress     = 0;

  Check_List.OwnerScreen = &HomeScr;
  Check_List.Order       = 16;
  Check_List.Visible     = 1;
  Check_List.Opacity     = 255;
  Check_List.Tag         = 255;
  Check_List.Left        = 270;
  Check_List.Top         = 410;
  Check_List.Width       = 87;
  Check_List.Height      = 25;
  Check_List.Caption     = Check_List_Caption;
  Check_List.FontName    = Tahoma_19x23_Regular;
  Check_List.Font_Color  = 0x0000;
  Check_List.FontHandle  = 1;
  Check_List.Source      = -1UL;
  Check_List.Active      = 1;
  Check_List.OnUp        = 0;
  Check_List.OnDown      = 0;
  Check_List.OnClick     = 0;
  Check_List.OnPress     = 0;

  Alert_Control.OwnerScreen = &HomeScr;
  Alert_Control.Order       = 17;
  Alert_Control.Visible     = 1;
  Alert_Control.Opacity     = 255;
  Alert_Control.Tag         = 255;
  Alert_Control.Left        = 430;
  Alert_Control.Top         = 410;
  Alert_Control.Width       = 108;
  Alert_Control.Height      = 25;
  Alert_Control.Caption     = Alert_Control_Caption;
  Alert_Control.FontName    = Tahoma_19x23_Regular;
  Alert_Control.Font_Color  = 0x0000;
  Alert_Control.FontHandle  = 1;
  Alert_Control.Source      = -1UL;
  Alert_Control.Active      = 1;
  Alert_Control.OnUp        = 0;
  Alert_Control.OnDown      = 0;
  Alert_Control.OnClick     = 0;
  Alert_Control.OnPress     = 0;

  Save_Data.OwnerScreen = &HomeScr;
  Save_Data.Order       = 18;
  Save_Data.Visible     = 1;
  Save_Data.Opacity     = 255;
  Save_Data.Tag         = 255;
  Save_Data.Left        = 600;
  Save_Data.Top         = 410;
  Save_Data.Width       = 88;
  Save_Data.Height      = 25;
  Save_Data.Caption     = Save_Data_Caption;
  Save_Data.FontName    = Tahoma_19x23_Regular;
  Save_Data.Font_Color  = 0x0000;
  Save_Data.FontHandle  = 1;
  Save_Data.Source      = -1UL;
  Save_Data.Active      = 1;
  Save_Data.OnUp        = 0;
  Save_Data.OnDown      = 0;
  Save_Data.OnClick     = 0;
  Save_Data.OnPress     = 0;

  Image1.OwnerScreen   = &Intro;
  Image1.Order         = 0;
  Image1.Visible       = 1;
  Image1.Opacity       = 255;
  Image1.Tag           = 255;
  Image1.Left          = 186;
  Image1.Top           = 60;
  Image1.Width         = 428;
  Image1.Height        = 112;
  Image1.Picture_Name  = EdeproLogoW_bmp;
  Image1.Picture_Type  = 7;
  Image1.Picture_Ratio = 1;
  Image1.Blend_Color   = 0xFFFFFF;
  Image1.Source        = -1L;
  Image1.RotationAngle = 0;
  Image1.RotationCenterLeft = 400;
  Image1.RotationCenterTop = 116;
  Image1.ScaleX        = 1.0000;
  Image1.ScaleY        = 1.0000;
  Image1.Active        = 1;
  Image1.OnUp          = 0;
  Image1.OnDown        = 0;
  Image1.OnClick       = 0;
  Image1.OnPress       = 0;

  EveSpinner1.OwnerScreen   = &Intro;
  EveSpinner1.Tag           = 255;
  EveSpinner1.Left          = 400;
  EveSpinner1.Top           = 275;
  EveSpinner1.Color         = 0xFF00;
  EveSpinner1.Style         = 0;
  EveSpinner1.Scale         = 0;

  Label64.OwnerScreen = &Intro;
  Label64.Order       = 2;
  Label64.Visible     = 1;
  Label64.Opacity     = 255;
  Label64.Tag         = 255;
  Label64.Left        = 258;
  Label64.Top         = 380;
  Label64.Width       = 284;
  Label64.Height      = 28;
  Label64.Caption     = Label64_Caption;
  Label64.FontName    = Tahoma_21x25_Regular;
  Label64.Font_Color  = 0x0000;
  Label64.FontHandle  = 1;
  Label64.Source      = -1UL;
  Label64.Active      = 1;
  Label64.OnUp        = 0;
  Label64.OnDown      = 0;
  Label64.OnClick     = 0;
  Label64.OnPress     = 0;

}

void Init_MCU() {
//GPIO_Digital_Output(&GPIOD_ODR, _GPIO_PINMASK_3);

  SPI3_Init_Advanced(_SPI_FPCLK_DIV2, _SPI_MASTER | _SPI_8_BIT |
                _SPI_CLK_IDLE_LOW | _SPI_FIRST_CLK_EDGE_TRANSITION |
                 _SPI_MSB_FIRST | _SPI_SS_DISABLE | _SPI_SSM_ENABLE | _SPI_SSI_1,
                &_GPIO_MODULE_SPI3_PC10_11_12);
}


char* VTFT_GetExtData(unsigned long offset, unsigned long count, unsigned long *num) {
unsigned long start_sector;
unsigned int fpos;
  SPI_Set_Active(&SPI1_Read,&SPI1_Write);
  start_sector = Mmc_Get_File_Write_Sector() + offset/512;
  fpos = (unsigned long)offset%512;

  if(start_sector == currentSector+1) {
    Mmc_Multi_Read_Sector(Ext_Data_Buffer);
    currentSector = start_sector;
  } else if (start_sector != currentSector) {
    if(currentSector != -1)
      Mmc_Multi_Read_Stop();
    Mmc_Multi_Read_Start(start_sector);
    Mmc_Multi_Read_Sector(Ext_Data_Buffer);
    currentSector = start_sector;
  }

  if(count>512-fpos)
    *num = 512-fpos;
  else
    *num = count;
     SPI_Set_Active(&SPI3_Read,&SPI3_Write);
  return Ext_Data_Buffer+fpos;
}



void Init_Ext_Mem() {
  SPI1_Init_Advanced(_SPI_FPCLK_DIV64, _SPI_MASTER | _SPI_8_BIT |
                _SPI_CLK_IDLE_LOW | _SPI_FIRST_CLK_EDGE_TRANSITION |
                 _SPI_MSB_FIRST | _SPI_SS_DISABLE | _SPI_SSM_ENABLE | _SPI_SSI_1,
                 &_GPIO_MODULE_SPI1_PA567);
                 SPI_Set_Active(&SPI1_Read,&SPI1_Write);
  Delay_ms(10);
  Mmc_Set_Interface(_MMC_INTERFACE_SPI);
  //--- init the FAT library
  if (!Mmc_Fat_Init()) {
    SPI1_CR1 = 0;
    // reinitialize spi at higher speed
    SPI1_Init_Advanced(_SPI_FPCLK_DIV2, _SPI_MASTER | _SPI_8_BIT |
                                        _SPI_CLK_IDLE_LOW | _SPI_FIRST_CLK_EDGE_TRANSITION |
                                              _SPI_MSB_FIRST | _SPI_SS_DISABLE | _SPI_SSM_ENABLE | _SPI_SSI_1,
                                              &_GPIO_MODULE_SPI1_PA567);
    // Open resource file for read
    Mmc_Fat_Assign("TJ_GUI14.RES", 0);
    Mmc_Fat_Reset(&res_file_size);
  }
  SPI_Set_Active(&SPI3_Read,&SPI3_Write);
}

void InitVTFTStack() {
  Init_MCU();

  Init_Ext_Mem();

  SPI_Set_Active(SPI3_Read, SPI3_Write);

  // Init all dynamic objects
  InitObjects();

  // Init FT812 controller core and library stack
  FT812_Init();

  FT812_Core_ClockSource(_FT812_CLK_SOURCE_INTERNAL);
  FT812_Core_SetFrequency(VTFT_FT812_CONFIG_DISPLAY.Frequency);

  // Internal modules setup
  FT812_Display_SetConfig(&VTFT_FT812_CONFIG_DISPLAY);

  FT812_Audio_SetConfig(&VTFT_FT812_CONFIG_AUDIO);

  FT812_Sound_SetConfig(&VTFT_FT812_CONFIG_SOUND);

  FT812_Interrupt_SetConfig(&VTFT_FT812_CONFIG_INTERRUPT);

  FT812_PWM_SetConfig(&VTFT_FT812_CONFIG_PWM);

  FT812_GPIO_SetConfig(&VTFT_FT812_CONFIG_GPIO);

  FT812_Touch_Mode(_FT812_TOUCH_SMPL_MODE_CONTINUOUS, _FT812_TOUCH_OP_MODE_COMPATIBILITY);

  FT812_TouchTransform_SetConfig(&VTFT_FT812_CONFIG_TOUCHTRANSFORM);

  // External memory setup
  FT812_SPI_SharedWithExtMem();
  FT812_Register_GetExtData(VTFT_GetExtData);

  // Draw start screen
  DrawScreen(&HomeScr);
}