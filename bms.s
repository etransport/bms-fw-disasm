; ---------------------------------------------------------------------------

PACKET: macro
\1:
\1.len: ds.b 1
\1.dev: ds.b 1
\1.cmd: ds.b 1
\1.idx: ds.b 1
\1.payload: ds.b 24
	endm

PACKET.len: equ 0x0
PACKET.dev: equ 0x1
PACKET.cmd: equ 0x2
PACKET.idx: equ 0x3
PACKET.payload: equ 0x4


; ---------------------------------------------------------------------------

CONFIG: macro
\1:
\1.magic: ds.w 1
\1.field_2: ds.b 1
\1.field_3: ds.b 1
\1.field_4: ds.b 1
\1.field_5: ds.b 1
\1.field_6: ds.b 1
\1.field_7: ds.b 1
\1.field_8: ds.b 1
\1.field_9: ds.b 1
\1.field_A: ds.b 1
\1.field_B: ds.b 1
\1.field_C: ds.b 1
\1.field_D: ds.b 1
\1.field_E: ds.b 1
\1.field_F: ds.b 1
\1.field_10: ds.b 1
\1.field_11: ds.b 1
\1.field_12: ds.b 1
\1.field_13: ds.b 1
\1.field_14: ds.b 1
\1.field_15: ds.b 1
\1.field_16: ds.b 1
\1.field_17: ds.b 1
\1.field_18: ds.b 1
\1.field_19: ds.b 1
\1.field_1A: ds.b 1
\1.field_1B: ds.b 1
\1.field_1C: ds.b 1
\1.field_1D: ds.b 1
\1.field_1E: ds.b 1
\1.field_1F: ds.b 1
\1.SerialNumber: ds.b 14
; HandlePacket+1C0/o ...
\1.FirmwareVersion: ds.w 1
\1.FactoryCapacity: ds.w 1
\1.AgedCapacity: ds.w 1
\1.field_34: ds.b 1
\1.field_35: ds.b 1
\1.ChargeCycle: ds.w 1
\1.ChargeCount: ds.w 1
\1.field_3A: ds.b 1
\1.field_3B: ds.b 1
\1.field_3C: ds.b 1
\1.field_3D: ds.b 1
\1.field_3E: ds.b 1
\1.field_3F: ds.b 1
\1.ManufactureDate: ds.w 1
\1.field_42: ds.b 1
; HandlePacket+203/w
\1.field_43: ds.b 1
\1.field_44: ds.b 1
\1.field_45: ds.b 1
\1.sn1plus1: ds.w 1
; InitFactCapacityAndDate+46/w
\1.field_48: ds.b 1
\1.field_49: ds.b 1
\1.field_4A: ds.b 1
\1.field_4B: ds.b 1
\1.field_4C: ds.b 1
\1.field_4D: ds.b 1
\1.field_4E: ds.b 1
\1.field_4F: ds.b 1
\1.field_50: ds.b 1
\1.field_51: ds.b 1
\1.field_52: ds.b 1
\1.field_53: ds.b 1
\1.field_54: ds.b 1
\1.field_55: ds.b 1
\1.field_56: ds.b 1
\1.field_57: ds.b 1
\1.field_58: ds.b 1
\1.field_59: ds.b 1
\1.field_5A: ds.b 1
\1.field_5B: ds.b 1
\1.field_5C: ds.b 1
\1.field_5D: ds.b 1
\1.field_5E: ds.b 1
\1.field_5F: ds.b 1
\1.Status: ds.w 1
; HandlePacket+23F/o
\1.RemainingCapacity: ds.w 1
\1.RemainingPercentage: ds.w 1
\1.Current: ds.w 1
\1.Voltage: ds.w 1
\1.Temperature1: ds.b 1; -20 deg C
\1.Temperature2: ds.b 1; -20 deg C
\1.BalancingBitmap: ds.b 1
\1.field_6D: ds.b 1
\1.field_6E: ds.b 1
\1.field_6F: ds.b 1
\1.field_70: ds.b 1
\1.field_71: ds.b 1
\1.field_72: ds.w 1
\1.field_74: ds.w 1
\1.Health: ds.w 1
\1.field_78: ds.b 1
\1.field_79: ds.b 1
\1.field_7A: ds.b 1
\1.field_7B: ds.b 1
\1.field_7C: ds.b 1
\1.field_7D: ds.b 1
\1.field_7E: ds.b 1
\1.field_7F: ds.b 1
\1.VoltageCell1: ds.w 1
\1.VoltageCell2: ds.w 1
\1.VoltageCell3: ds.w 1
\1.VoltageCell4: ds.w 1
\1.VoltageCell5: ds.w 1
\1.VoltageCell6: ds.w 1
\1.VoltageCell7: ds.w 1
\1.VoltageCell8: ds.w 1
\1.VoltageCell9: ds.w 1
\1.VoltageCell10: ds.w 1
\1.field_94: ds.b 1
\1.field_95: ds.b 1
\1.field_96: ds.b 1
\1.field_97: ds.b 1
\1.field_98: ds.b 1
\1.field_99: ds.b 1
\1.field_9A: ds.b 1
\1.field_9B: ds.b 1
\1.field_9C: ds.b 1
\1.field_9D: ds.b 1
\1.field_9E: ds.b 1
\1.field_9F: ds.b 1
\1.field_A0: ds.b 1
; HandlePacket+1FD/w ... ; goes	to Status.2
\1.field_A1: ds.b 1
\1.field_A2: ds.b 1
\1.field_A3: ds.b 1
\1.field_A4: ds.b 1
\1.field_A5: ds.b 1
\1.field_A6: ds.b 1
\1.field_A7: ds.b 1
\1.field_A8: ds.b 1
\1.field_A9: ds.b 1
\1.field_AA: ds.b 1
\1.field_AB: ds.b 1
\1.field_AC: ds.b 1
\1.field_AD: ds.b 1
\1.field_AE: ds.b 1
\1.field_AF: ds.b 1
\1.field_B0: ds.b 1
\1.field_B1: ds.b 1
\1.field_B2: ds.b 1
\1.field_B3: ds.b 1
\1.field_B4: ds.b 1
\1.field_B5: ds.b 1
\1.field_B6: ds.b 1
\1.field_B7: ds.b 1
\1.field_B8: ds.b 1
\1.field_B9: ds.b 1
\1.field_BA: ds.b 1
\1.field_BB: ds.b 1
\1.field_BC: ds.b 1
\1.field_BD: ds.b 1
\1.field_BE: ds.b 1
\1.field_BF: ds.b 1
\1.field_C0: ds.b 1
\1.field_C1: ds.b 1
\1.field_C2: ds.b 1
\1.field_C3: ds.b 1
\1.field_C4: ds.b 1
\1.field_C5: ds.b 1
\1.field_C6: ds.b 1
\1.field_C7: ds.b 1
\1.field_C8: ds.b 1
\1.field_C9: ds.b 1
\1.field_CA: ds.b 1
\1.field_CB: ds.b 1
\1.field_CC: ds.b 1
\1.field_CD: ds.b 1
\1.field_CE: ds.b 1
\1.field_CF: ds.b 1
\1.field_D0: ds.b 1
\1.field_D1: ds.b 1
\1.field_D2: ds.b 1
\1.field_D3: ds.b 1
\1.field_D4: ds.b 1
\1.field_D5: ds.b 1
\1.field_D6: ds.b 1
\1.field_D7: ds.b 1
\1.field_D8: ds.b 1
\1.field_D9: ds.b 1
\1.field_DA: ds.b 1
\1.field_DB: ds.b 1
\1.field_DC: ds.b 1
\1.field_DD: ds.b 1
\1.field_DE: ds.b 1
\1.field_DF: ds.b 1
\1.uid: ds.w 6
; HandlePacket+135/r ...
\1.field_EC: ds.b 1
\1.field_ED: ds.b 1
\1.field_EE: ds.b 1
\1.field_EF: ds.b 1
\1.field_F0: ds.b 1
\1.field_F1: ds.b 1
\1.field_F2: ds.b 1
\1.field_F3: ds.b 1
\1.field_F4: ds.b 1
\1.field_F5: ds.b 1
\1.field_F6: ds.b 1
\1.field_F7: ds.b 1
\1.field_F8: ds.b 1
\1.field_F9: ds.b 1
\1.field_FA: ds.b 1
\1.field_FB: ds.b 1
\1.field_FC: ds.b 1
\1.field_FD: ds.b 1
\1.field_FE: ds.b 1
\1.field_FF: ds.b 1
	endm

CONFIG.magic: equ 0x0
CONFIG.field_2: equ 0x2
CONFIG.field_3: equ 0x3
CONFIG.field_4: equ 0x4
CONFIG.field_5: equ 0x5
CONFIG.field_6: equ 0x6
CONFIG.field_7: equ 0x7
CONFIG.field_8: equ 0x8
CONFIG.field_9: equ 0x9
CONFIG.field_A: equ 0xa
CONFIG.field_B: equ 0xb
CONFIG.field_C: equ 0xc
CONFIG.field_D: equ 0xd
CONFIG.field_E: equ 0xe
CONFIG.field_F: equ 0xf
CONFIG.field_10: equ 0x10
CONFIG.field_11: equ 0x11
CONFIG.field_12: equ 0x12
CONFIG.field_13: equ 0x13
CONFIG.field_14: equ 0x14
CONFIG.field_15: equ 0x15
CONFIG.field_16: equ 0x16
CONFIG.field_17: equ 0x17
CONFIG.field_18: equ 0x18
CONFIG.field_19: equ 0x19
CONFIG.field_1A: equ 0x1a
CONFIG.field_1B: equ 0x1b
CONFIG.field_1C: equ 0x1c
CONFIG.field_1D: equ 0x1d
CONFIG.field_1E: equ 0x1e
CONFIG.field_1F: equ 0x1f
CONFIG.SerialNumber: equ 0x20
CONFIG.FirmwareVersion: equ 0x2e
CONFIG.FactoryCapacity: equ 0x30
CONFIG.AgedCapacity: equ 0x32
CONFIG.field_34: equ 0x34
CONFIG.field_35: equ 0x35
CONFIG.ChargeCycle: equ 0x36
CONFIG.ChargeCount: equ 0x38
CONFIG.field_3A: equ 0x3a
CONFIG.field_3B: equ 0x3b
CONFIG.field_3C: equ 0x3c
CONFIG.field_3D: equ 0x3d
CONFIG.field_3E: equ 0x3e
CONFIG.field_3F: equ 0x3f
CONFIG.ManufactureDate: equ 0x40
CONFIG.field_42: equ 0x42
CONFIG.field_43: equ 0x43
CONFIG.field_44: equ 0x44
CONFIG.field_45: equ 0x45
CONFIG.sn1plus1: equ 0x46
CONFIG.field_48: equ 0x48
CONFIG.field_49: equ 0x49
CONFIG.field_4A: equ 0x4a
CONFIG.field_4B: equ 0x4b
CONFIG.field_4C: equ 0x4c
CONFIG.field_4D: equ 0x4d
CONFIG.field_4E: equ 0x4e
CONFIG.field_4F: equ 0x4f
CONFIG.field_50: equ 0x50
CONFIG.field_51: equ 0x51
CONFIG.field_52: equ 0x52
CONFIG.field_53: equ 0x53
CONFIG.field_54: equ 0x54
CONFIG.field_55: equ 0x55
CONFIG.field_56: equ 0x56
CONFIG.field_57: equ 0x57
CONFIG.field_58: equ 0x58
CONFIG.field_59: equ 0x59
CONFIG.field_5A: equ 0x5a
CONFIG.field_5B: equ 0x5b
CONFIG.field_5C: equ 0x5c
CONFIG.field_5D: equ 0x5d
CONFIG.field_5E: equ 0x5e
CONFIG.field_5F: equ 0x5f
CONFIG.Status: equ 0x60
CONFIG.RemainingCapacity: equ 0x62
CONFIG.RemainingPercentage: equ 0x64
CONFIG.Current: equ 0x66
CONFIG.Voltage: equ 0x68
CONFIG.Temperature1: equ 0x6a
CONFIG.Temperature2: equ 0x6b
CONFIG.BalancingBitmap: equ 0x6c
CONFIG.field_6D: equ 0x6d
CONFIG.field_6E: equ 0x6e
CONFIG.field_6F: equ 0x6f
CONFIG.field_70: equ 0x70
CONFIG.field_71: equ 0x71
CONFIG.field_72: equ 0x72
CONFIG.field_74: equ 0x74
CONFIG.Health: equ 0x76
CONFIG.field_78: equ 0x78
CONFIG.field_79: equ 0x79
CONFIG.field_7A: equ 0x7a
CONFIG.field_7B: equ 0x7b
CONFIG.field_7C: equ 0x7c
CONFIG.field_7D: equ 0x7d
CONFIG.field_7E: equ 0x7e
CONFIG.field_7F: equ 0x7f
CONFIG.VoltageCell1: equ 0x80
CONFIG.VoltageCell2: equ 0x82
CONFIG.VoltageCell3: equ 0x84
CONFIG.VoltageCell4: equ 0x86
CONFIG.VoltageCell5: equ 0x88
CONFIG.VoltageCell6: equ 0x8a
CONFIG.VoltageCell7: equ 0x8c
CONFIG.VoltageCell8: equ 0x8e
CONFIG.VoltageCell9: equ 0x90
CONFIG.VoltageCell10: equ 0x92
CONFIG.field_94: equ 0x94
CONFIG.field_95: equ 0x95
CONFIG.field_96: equ 0x96
CONFIG.field_97: equ 0x97
CONFIG.field_98: equ 0x98
CONFIG.field_99: equ 0x99
CONFIG.field_9A: equ 0x9a
CONFIG.field_9B: equ 0x9b
CONFIG.field_9C: equ 0x9c
CONFIG.field_9D: equ 0x9d
CONFIG.field_9E: equ 0x9e
CONFIG.field_9F: equ 0x9f
CONFIG.field_A0: equ 0xa0
CONFIG.field_A1: equ 0xa1
CONFIG.field_A2: equ 0xa2
CONFIG.field_A3: equ 0xa3
CONFIG.field_A4: equ 0xa4
CONFIG.field_A5: equ 0xa5
CONFIG.field_A6: equ 0xa6
CONFIG.field_A7: equ 0xa7
CONFIG.field_A8: equ 0xa8
CONFIG.field_A9: equ 0xa9
CONFIG.field_AA: equ 0xaa
CONFIG.field_AB: equ 0xab
CONFIG.field_AC: equ 0xac
CONFIG.field_AD: equ 0xad
CONFIG.field_AE: equ 0xae
CONFIG.field_AF: equ 0xaf
CONFIG.field_B0: equ 0xb0
CONFIG.field_B1: equ 0xb1
CONFIG.field_B2: equ 0xb2
CONFIG.field_B3: equ 0xb3
CONFIG.field_B4: equ 0xb4
CONFIG.field_B5: equ 0xb5
CONFIG.field_B6: equ 0xb6
CONFIG.field_B7: equ 0xb7
CONFIG.field_B8: equ 0xb8
CONFIG.field_B9: equ 0xb9
CONFIG.field_BA: equ 0xba
CONFIG.field_BB: equ 0xbb
CONFIG.field_BC: equ 0xbc
CONFIG.field_BD: equ 0xbd
CONFIG.field_BE: equ 0xbe
CONFIG.field_BF: equ 0xbf
CONFIG.field_C0: equ 0xc0
CONFIG.field_C1: equ 0xc1
CONFIG.field_C2: equ 0xc2
CONFIG.field_C3: equ 0xc3
CONFIG.field_C4: equ 0xc4
CONFIG.field_C5: equ 0xc5
CONFIG.field_C6: equ 0xc6
CONFIG.field_C7: equ 0xc7
CONFIG.field_C8: equ 0xc8
CONFIG.field_C9: equ 0xc9
CONFIG.field_CA: equ 0xca
CONFIG.field_CB: equ 0xcb
CONFIG.field_CC: equ 0xcc
CONFIG.field_CD: equ 0xcd
CONFIG.field_CE: equ 0xce
CONFIG.field_CF: equ 0xcf
CONFIG.field_D0: equ 0xd0
CONFIG.field_D1: equ 0xd1
CONFIG.field_D2: equ 0xd2
CONFIG.field_D3: equ 0xd3
CONFIG.field_D4: equ 0xd4
CONFIG.field_D5: equ 0xd5
CONFIG.field_D6: equ 0xd6
CONFIG.field_D7: equ 0xd7
CONFIG.field_D8: equ 0xd8
CONFIG.field_D9: equ 0xd9
CONFIG.field_DA: equ 0xda
CONFIG.field_DB: equ 0xdb
CONFIG.field_DC: equ 0xdc
CONFIG.field_DD: equ 0xdd
CONFIG.field_DE: equ 0xde
CONFIG.field_DF: equ 0xdf
CONFIG.uid: equ 0xe0
CONFIG.field_EC: equ 0xec
CONFIG.field_ED: equ 0xed
CONFIG.field_EE: equ 0xee
CONFIG.field_EF: equ 0xef
CONFIG.field_F0: equ 0xf0
CONFIG.field_F1: equ 0xf1
CONFIG.field_F2: equ 0xf2
CONFIG.field_F3: equ 0xf3
CONFIG.field_F4: equ 0xf4
CONFIG.field_F5: equ 0xf5
CONFIG.field_F6: equ 0xf6
CONFIG.field_F7: equ 0xf7
CONFIG.field_F8: equ 0xf8
CONFIG.field_F9: equ 0xf9
CONFIG.field_FA: equ 0xfa
CONFIG.field_FB: equ 0xfb
CONFIG.field_FC: equ 0xfc
CONFIG.field_FD: equ 0xfd
CONFIG.field_FE: equ 0xfe
CONFIG.field_FF: equ 0xff


; ---------------------------------------------------------------------------

UPDCONFIG: macro
\1:
\1.magic: ds.w 1
\1.flag: ds.b 1
\1.num_pages: ds.b 1
	endm

UPDCONFIG.magic: equ 0x0
UPDCONFIG.flag: equ 0x2
UPDCONFIG.num_pages: equ 0x3


; ---------------------------------------------------------------------------

MAINSTATE: macro
\1:
\1.DischargeError: ds.b 1
\1.field_1: ds.b 1
\1.GotPacket: ds.b 1
\1.LowPowerMode: ds.b 1
\1.got54: ds.b 1
\1.field_5: ds.b 1
\1.SCD: ds.b 1; short	circuit	in discharge
\1.IsCharging: ds.b 1
\1.EnableBalancing: ds.b 1
\1.OV: ds.b 1
\1.field_A: ds.b 1
\1.field_B: ds.b 1
\1.IsRunning: ds.b 1
\1.Overheat: ds.b 1
\1.got55: ds.b 1
\1.field_F: ds.b 1
\1.UV: ds.b 1
\1.field_11: ds.b 1
\1.field_12: ds.b 1
\1.IxFrom52: ds.b 1
\1.NeedSaveConfig: ds.b 1
\1.ConfigValid: ds.b 1
\1.ChargeOvercurrent: ds.b 1
\1.field_17: ds.b 1
\1.field_18: ds.b 1
\1.field_19: ds.b 1
\1.field_1A: ds.b 1
\1.OCD: ds.b 1
\1.Disbalanced: ds.b 1
; MeasureCells:loc_9D92/w ; (MaxCellVoltage-MinCellVoltage)>0.8V
	endm

MAINSTATE.DischargeError: equ 0x0
MAINSTATE.field_1: equ 0x1
MAINSTATE.GotPacket: equ 0x2
MAINSTATE.LowPowerMode: equ 0x3
MAINSTATE.got54: equ 0x4
MAINSTATE.field_5: equ 0x5
MAINSTATE.SCD: equ 0x6
MAINSTATE.IsCharging: equ 0x7
MAINSTATE.EnableBalancing: equ 0x8
MAINSTATE.OV: equ 0x9
MAINSTATE.field_A: equ 0xa
MAINSTATE.field_B: equ 0xb
MAINSTATE.IsRunning: equ 0xc
MAINSTATE.Overheat: equ 0xd
MAINSTATE.got55: equ 0xe
MAINSTATE.field_F: equ 0xf
MAINSTATE.UV: equ 0x10
MAINSTATE.field_11: equ 0x11
MAINSTATE.field_12: equ 0x12
MAINSTATE.IxFrom52: equ 0x13
MAINSTATE.NeedSaveConfig: equ 0x14
MAINSTATE.ConfigValid: equ 0x15
MAINSTATE.ChargeOvercurrent: equ 0x16
MAINSTATE.field_17: equ 0x17
MAINSTATE.field_18: equ 0x18
MAINSTATE.field_19: equ 0x19
MAINSTATE.field_1A: equ 0x1a
MAINSTATE.OCD: equ 0x1b
MAINSTATE.Disbalanced: equ 0x1c


; ---------------------------------------------------------------------------

; enum PBPINS
REDLED:          equ 1
BLUELED:      equ 2
SDA:          equ 0x40
SCL:          equ 0x80

; ---------------------------------------------------------------------------

; enum DEFS
NUM_CELLS:      equ 10
MAX_OCD_TIME:      equ 30
LOAD_DETECT_CURRENT:  equ 61
UART_BUF_SIZE:      equ 138
UV_CUTOFF:      equ 1801
MAX_CHARGE_CURRENT:  equ    2499
UV_THRESHOLD:      equ 2750
OV_THRESHOLD:      equ 4200
MAX_IDLE_CURRENT:  equ 20001
MAX_RUN_CURRENT:  equ 30001

; ---------------------------------------------------------------------------

; enum ERRCODE
ERR_OK:          equ 0
ERR_BAD_UID:      equ 6

; ---------------------------------------------------------------------------

; enum AFEREG
AFE_SYS_STAT:      equ 0
AFE_CELLBAL1:      equ 1
AFE_CELLBAL2:      equ 2
AFE_CELLBAL3:      equ 3
AFE_SYS_CTRL1:      equ 4
AFE_SYS_CTRL2:      equ 5
AFE_PROTECT1:      equ 6
AFE_PROTECT2:      equ 7
AFE_PROTECT3:      equ 8
AFE_OV_TRIP:      equ 9
AFE_UV_TRIP:      equ 0xA
AFE_CC_CFG:      equ 0xB
AFE_VC1_HI:      equ 0xC
AFE_VC1_LO:      equ 0xD
AFE_VC2_HI:      equ 0xE
AFE_VC2_LO:      equ 0xF
AFE_VC3_HI:      equ 0x10
AFE_VC3_LO:      equ 0x11
AFE_VC4_HI:      equ 0x12
AFE_VC4_LO:      equ 0x13
AFE_VC5_HI:      equ 0x14
AFE_VC5_LO:      equ 0x15
AFE_VC6_HI:      equ 0x16
AFE_VC6_LO:      equ 0x17
AFE_VC7_HI:      equ 0x18
AFE_VC7_LO:      equ 0x19
AFE_VC8_HI:      equ 0x1A
AFE_VC8_LO:      equ 0x1B
AFE_VC9_HI:      equ 0x1C
AFE_VC9_LO:      equ 0x1D
AFE_VC10_HI:      equ 0x1E
AFE_VC10_LO:      equ 0x1F
AFE_VC11_HI:      equ 0x20
AFE_VC11_LO:      equ 0x21
AFE_VC12_HI:      equ 0x22
AFE_VC12_LO:      equ 0x23
AFE_VC13_HI:      equ 0x24
AFE_VC13_LO:      equ 0x25
AFE_VC14_HI:      equ 0x26
AFE_VC14_LO:      equ 0x27
AFE_VC15_HI:      equ 0x28
AFE_VC15_LO:      equ 0x29
AFE_BAT_HI:      equ 0x2A
AFE_BAT_LO:      equ 0x2B
AFE_TS1_HI:      equ 0x2C
AFE_TS1_LO:      equ 0x2D
AFE_TS2_HI:      equ 0x2E
AFE_TS2_LO:      equ 0x2F
AFE_TS3_HI:      equ 0x30
AFE_TS3_LO:      equ 0x31
AFE_CC_HI:      equ 0x32
AFE_CC_LO:      equ 0x33
AFE_ADCGAIN1:      equ 0x50
AFE_ADCOFFSET:      equ 0x51
AFE_ADCGAIN2:      equ 0x59


; ===========================================================================

; Segment type:	Regular
REGS:  section .ubsct
R0:         ds.b 1
R1:         ds.b 1
R2:         ds.b 1
R3:         ds.b 1
R4:         ds.b 1
R5:         ds.b 1
R6:         ds.b 1
R7:         ds.b 1
R8:         ds.b 1
R9:         ds.b 1
R10:         ds.b 1
R11:         ds.b 1
R12:         ds.b 1
R13:         ds.b 1
R14:         ds.b 1
R15:         ds.b 1

;---------------------------------------
; !!! DON'T TOUCH !!!
    offset 0x10
MemProgram: 
    ds.b 1

; End of function MemProgram

;----------------------------------------
; !!! DON'T TOUCH !!!
    offset 0xA9
MemWait: 
    ds.b 1

; End of function MemWait

;----------------------------------------
; !!! DON'T TOUCH !!!
    offset 0xCF

UpdConfigMagic: 
    ds.b 4
    offset 0xD3
UartTxLen0:     ds.b 1
UartTxBuf0:     ds.b 0x8A
UartTxLen1:     ds.b 1
UartTxBuf1:     ds.b 0x8A
CONFIG Config
UartDmaBuf:     ds.b 0x8A
PacketBuf:     ds.b 0x8A
MAINSTATE MainState
BattEmfBuf:     ds.b 0x10;
uid:         ds.b 0xC
dword_436:     ds.b 4
AccumulatedCurrent: ds.b    4
dword_43E:     ds.b 4
TrackedCapacity: ds.b 4
word_446:     ds.b 2
word_448:     ds.b 2
RemainingCapacity: ds.b 4
Current:     ds.b 4; in mA
DesignCapacity:     ds.b 4
UPDCONFIG UpdCfg
UpdSize:     ds.b 4
word_45E:     ds.b 2
word_460:     ds.b 2
word_462:     ds.b 2
word_464:     ds.b 2
AvgCellVoltage:     ds.b 2
Voltage:     ds.b 2
CapacityVoltageParamH: ds.b 2
CapacityVoltageParamL: ds.b 2
DesignParam1:     ds.b 2; 5.2 -	4, 7.8 - 4, 10 - 10
DesignCellResistance: ds.b 2; mOhm,	5.2 - 24, 7.8 -	16, 10 - 21
word_472:     ds.b 2
word_474:     ds.b 2
word_476:     ds.b 2
MediumChargeTimer: ds.b 2
word_47A:     ds.b 2
word_47C:     ds.b 2
AfeAdcGain:     ds.b 2
MinCellVoltage:     ds.b 2; in mV
MaxCellVoltage:     ds.b 2; in mV
BattVoltage:     ds.b 2
SWI2C_IOBASE:     ds.b 2
ErrBlinkCnt:     ds.b 2
Status:         ds.b 2
word_48C:     ds.b 2
MinVoltageCellNumber: ds.b 1
MaxVoltageCellIndex: ds.b 1
byte_490:     ds.b 1
AfeSysStat:     ds.b 1
byte_492:     ds.b 1
byte_493:     ds.b 1
byte_494:     ds.b 1
byte_495:     ds.b 1
byte_496:     ds.b 1
ocd_timer:     ds.b 1
byte_498:     ds.b 1
byte_499:     ds.b 1
byte_49A:     ds.b 1
byte_49B:     ds.b 1
SlowChargeTimer: ds.b 1
ChargeOvercurrentTimer: ds.b 1
OVTime:         ds.b 1
byte_49F:     ds.b 1
UVTime:         ds.b 1
byte_4A1:     ds.b 1
AfeAdcOffset:     ds.b 1
byte_4A3:     ds.b 1
byte_4A4:     ds.b 1
byte_4A5:     ds.b 1
ErrCode:     ds.b 1
BattCapacityClass: ds.b 1; 0-5.2AH - default
; 1-10.05AH
; 2-7.8AH
RemainingPercentage: ds.b 1
byte_4A9:     ds.b 1
in_update:     ds.b 1
byte_4AB:     ds.b 1
byte_4AC:     ds.b 1
LedSeq:         ds.b 1
byte_4AE:     ds.b 1
byte_4AF:     ds.b 1
IdleTimer:     ds.b 1
UartTxBufSel:     ds.b 1
byte_4B2:     ds.b 1
byte_4B3:     ds.b 1
byte_4B4:     ds.b 1
FramerBusy:     ds.b 1
RxBusy:         ds.b 1
byte_4B7:     ds.b 1
got_55:         ds.b 1
got_55AA:     ds.b 1
PktLenActual:     ds.b 1
PktLenExpected:     ds.b 1
byte_4BC:     ds.b 1

;    offset 0x1000
; ===========================================================================

; Segment type:	Uninitialized
EEPROM:     section    abs
org 0x1000
ConfigBase:     ds.b 0x380
    offset 0x1380
EepUpdCfg:     ds.b 0x480

;    offset 0x4926
; ===========================================================================

; Segment type:	Uninitialized
UNIQUEID:  section abs
org 0x4926
UID:         ds.b 0xC

; ===========================================================================

; Segment type:	Uninitialized
GPIOS:  section abs
org 0x5000
PA_ODR:         ds.b 1; Port A data output latch register
PA_IDR:         ds.b 1; Port A input pin value register
PA_DDR:         ds.b 1; Port A data direction	register
PA_CR1:         ds.b 1; Port A control register 1
PA_CR2:         ds.b 1; Port A control register 2
PB_ODR:         ds.b 1; .1 - red LED (1-on)
; .2 - blue LED	(1-on)
PB_IDR:         ds.b 1; Port B input pin value register
PB_DDR:         ds.b 1; Port B data direction	register
PB_CR1:         ds.b 1; Port B control register 1
PB_CR2:         ds.b 1; Port B control register 2
PC_ODR:         ds.b 1; Port C data output latch register
PC_IDR:         ds.b 1; Port C input pin value register
PC_DDR:         ds.b 1; Port C data direction	register
PC_CR1:         ds.b 1; Port C control register 1
PC_CR2:         ds.b 1; Port C control register 2
PD_ODR:         ds.b 1; Port D data output latch register
PD_IDR:         ds.b 1; Port D input pin value register
PD_DDR:         ds.b 1; Port D data direction	register
PD_CR1:         ds.b 1; Port D control register 1
PD_CR2:         ds.b 1; Port D control register 2
PE_ODR:         ds.b 1; Port E data output latch register
PE_IDR:         ds.b 1; Port E input pin value register
PE_DDR:         ds.b 1; Port E data direction	register
PE_CR1:         ds.b 1; Port E control register 1
PE_CR2:         ds.b 1; Port E control register 2
PF_ODR:         ds.b 1; Port F data output latch register
PF_IDR:         ds.b 1; Port F input pin value register
PF_DDR:         ds.b 1; Port F data direction	register
PF_CR1:         ds.b 1; Port F control register 1
PF_CR2:         ds.b 1; Port F control register 2
PG_ODR:         ds.b 1; Port G data output latch register
PG_IDR:         ds.b 1; Port G input pin value register
PG_DDR:         ds.b 1; Port G data direction	register
PG_CR1:         ds.b 1; Port G control register 1
PG_CR2:         ds.b 2; Port G control register 2
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
FLASH_CR1:     ds.b 1; Flash	control	register 1
FLASH_CR2:     ds.b 1; Flash	control	register 2
FLASH_PUKR:     ds.b 1; Flash	Program	memory unprotection register
FLASH_DUKR:     ds.b 1; Data EEPROM unprotection register
FLASH_IAPSR:     ds.b 2; Flash	in-application programming status register
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
DMA1_GCSR:     ds.b 1; DMA1 global configuration & status register
DMA1_GIR1:     ds.b 2; DMA1 global interrupt	register 1
        ds.b 1
        ds.b 1
DMA1_C0CR:     ds.b 1; DMA1 channel 0 configuration register
DMA1_C0SPR:     ds.b 1; DMA1 channel 0 status	& priority register
DMA1_C0NDTR:     ds.b 1; DMA1 number of data to transfer register (channel 0)
DMA1_C0PAR:     ds.b 2; DMA1 peripheral address register (channel 0)
        ds.b 1
DMA1_C0M0AR:     ds.b 2; DMA1 memory 0	address	register (channel 0)
        ds.b 1
        ds.b 1
DMA1_C1CR:     ds.b 1; DMA1 channel 1 configuration register
DMA1_C1SPR:     ds.b 1; DMA1 channel 1 status	& priority register
DMA1_C1NDTR:     ds.b 1; DMA1 number of data to transfer register (channel 1)
DMA1_C1PAR:     ds.b 2; DMA1 peripheral address register (channel 1)
        ds.b 1
DMA1_C1M0AR:     ds.b 2; DMA1 memory 0	address	register (channel 1)
        ds.b 1
        ds.b 1
DMA1_C2CR:     ds.b 1; DMA1 channel 2 configuration register
DMA1_C2SPR:     ds.b 1; DMA1 channel 2 status	& priority register
DMA1_C2NDTR:     ds.b 1; DMA1 number of data to transfer register (channel 2)
DMA1_C2PAR:     ds.b 2; DMA1 peripheral address register (channel 2)
        ds.b 1
DMA1_C2M0AR:     ds.b 2; DMA1 memory 0	address	register (channel 2)
        ds.b 1
        ds.b 1
DMA1_C3CR:     ds.b 1; DMA1 channel 3 configuration register
DMA1_C3SPR:     ds.b 1; DMA1 channel 3 status	& priority register
DMA1_C3NDTR:     ds.b 1; DMA1 number of data to transfer register (channel 3)
DMA1_C3PAR_C3M1AR: ds.b 2; DMA1 peripheral address register (channel 3)
DMA_C3M0EAR:     ds.b 1; DMA channel 3	memory 0 extended address register
DMA1_C3M0AR:     ds.b 2; DMA1 memory 0	address	register (channel 3)
        ds.b 1
        ds.b 1
SYSCFG_RMPCR3:     ds.b 1; Remapping register 3
SYSCFG_RMPCR1:     ds.b 1; Remapping register 1
SYSCFG_RMPCR2:     ds.b 1; Remapping register 2
EXTI_CR1:     ds.b 1; External interrupt control register 1
EXTI_CR2:     ds.b 1; External interrupt control register 2
EXTI_CR3:     ds.b 1; External interrupt control register 3
EXTI_SR1:     ds.b 1; External interrupt status register 1
EXTI_SR2:     ds.b 1; External interrupt status register 2
EXTI_CONF1:     ds.b 1; External interrupt port select register 1
WFE_CR1:     ds.b 1; WFE control register 1
WFE_CR2:     ds.b 1; WFE control register 2
WFE_CR3:     ds.b 1; WFE control register 3
WFE_CR4:     ds.b 1; WFE control register 4
EXTI_CR4:     ds.b 1; External interrupt control register 4
EXTI_CONF2:     ds.b 2; External interrupt port select register 2
        ds.b 1
        ds.b 1
        ds.b 1
RST_CR:         ds.b 1; Reset	control	register
RST_SR:         ds.b 1; Reset	status register
PWR_CSR1:     ds.b 1; Power	control	and status register 1
PWR_CSR2:     ds.b 2; Power	control	and status register 2
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
CLK_CKDIVR:     ds.b 1; System clock divider register
CLK_CRTCR:     ds.b 1; Clock	RTC register
CLK_ICKCR:     ds.b 1; Internal clock control register
CLK_PCKENR1:     ds.b 1; Peripheral clock gating register 1
CLK_PCKENR2:     ds.b 1; Peripheral clock gating register 2
CLK_CCOR:     ds.b 1; Configurable clock control register
CLK_ECKCR:     ds.b 1; External clock control register
CLK_SCSR:     ds.b 1; System clock status register
CLK_SWR:     ds.b 1; System clock switch register
CLK_SWCR:     ds.b 1; Clock	switch control register
CLK_CSSR:     ds.b 1; Clock	security system	register
CLK_CBEEPR:     ds.b 1; Clock	BEEP register
CLK_HSICALR:     ds.b 1; HSI calibration register
CLK_HSITRIMR:     ds.b 1; HSI clock calibration	trimming register
CLK_HSIUNLCKR:     ds.b 1; HSI unlock register
CLK_REGCSR:     ds.b 1; Main regulator control status	register
CLK_PCKENR3:     ds.b 2; Peripheral clock gating register 3
        ds.b 1
WWDG_CR:     ds.b 1; WWDG Control Register
WWDG_WR:     ds.b 2; WWDR Window Register
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
IWDG_KR:     ds.b 1; IWDG Key Register
IWDG_PR:     ds.b 1; IWDG Prescaler Register
IWDG_RLR:     ds.b 2; IWDG Reload Register
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
BEEP_CSR1:     ds.b 2; BEEP Control/Status Register 1
        ds.b 1
BEEP_CSR2:     ds.b 2; BEEP Control/Status Register 2
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
RTC_TR1:     ds.b 1; Time Register	1
RTC_TR2:     ds.b 1; Time Register	2
RTC_TR3:     ds.b 2; Time Register	3
RTC_DR1:     ds.b 1; Date Register	1
RTC_DR2:     ds.b 1; Date Register	2
RTC_DR3:     ds.b 2; Date Register	3
RTC_CR1:     ds.b 1; Control Register 1
RTC_CR2:     ds.b 1; Control Register 2
RTC_CR3:     ds.b 2; Control Register 3
RTC_ISR1:     ds.b 1; Initialization and Status Register 1
RTC_ISR2:     ds.b 2; Initialization and Status Register 2
        ds.b 1
RTC_SPRER:     ds.b 2; Synchronous Prescaler	Register
RTC_APRER:     ds.b 2; Asynchronous Prescaler Register
RTC_WUTR:     ds.b 2; Wakeup Timer Register
        ds.b 1
RTC_SSR:     ds.b 2; Subsecond Register
RTC_WPR:     ds.b 1; Write	Protection Register
RTC_SHIFTR:     ds.b 2; Shift	Register
RTC_ALRMAR1:     ds.b 1; Alarm	A Register 1
RTC_ALRMAR2:     ds.b 1; Alarm	A Register 2
RTC_ALRMAR3:     ds.b 1; Alarm	A Register 3
RTC_ALRMAR4:     ds.b 2; Alarm	A Register 4
        ds.b 1
        ds.b 1
        ds.b 1
RTC_ALRMASSR:     ds.b 2; Alarm	A subsecond Register
RTC_ALRMASSMSKR: ds.b 2; Alarm	A masking Register
        ds.b 1
        ds.b 1
RTC_CALR:     ds.b 2; Calibration Register
RTC_TCR1:     ds.b 1; Tamper Control Register 1
RTC_TCR2:     ds.b 2; Tamper Control Register 2
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
CSS_LSE_CSR:     ds.b 2; CSS on LSE Control and Status	Register
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
SPI1_CR1:     ds.b 1; SPI1 Control Register	1
SPI1_CR2:     ds.b 1; SPI1 Control Register	2
SPI1_ICR:     ds.b 1; SPI1 Interrupt Control Register
SPI1_SR:     ds.b 1; SPI1 Status Register
SPI1_DR:     ds.b 1; SPI1 Data Register
SPI1_CRCPR:     ds.b 1; SPI1 CRC Polynomial Register
SPI1_RXCRCR:     ds.b 1; SPI1 Rx CRC Register
SPI1_TXCRCR:     ds.b 2; SPI1 Tx CRC Register
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
I2C1_CR1:     ds.b 1; I2C1 control register	1
I2C1_CR2:     ds.b 1; I2C1 control register	2
I2C1_FREQR:     ds.b 1; I2C1 frequency register
I2C1_OARL:     ds.b 1; I2C1 Own address register low
I2C1_OARH:     ds.b 1; I2C1 Own address register high
I2C1_OAR2:     ds.b 1; I2C1 Own address register for	dual mode
I2C1_DR:     ds.b 1; I2C1 data register
I2C1_SR1:     ds.b 1; I2C1 status register 1
I2C1_SR2:     ds.b 1; I2C1 status register 2
I2C1_SR3:     ds.b 1; I2C1 status register 3
I2C1_ITR:     ds.b 1; I2C1 interrupt control register
I2C1_CCRL:     ds.b 1; I2C1 Clock control register low
I2C1_CCRH:     ds.b 1; I2C1 Clock control register high
I2C1_TRISER:     ds.b 1; I2C1 TRISE register
I2C1_PECR:     ds.b 2; I2C1 packet error checking register
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
USART1_SR:     ds.b 1; USART1 Status	Register
USART1_DR:     ds.b 1; USART1 Data Register
USART1_BRR1:     ds.b 1; USART1 Baud Rate Register 1
USART1_BRR2:     ds.b 1; USART1 Baud Rate Register 2
USART1_CR1:     ds.b 1; USART1 Control Register 1
USART1_CR2:     ds.b 1; USART1 Control Register 2
USART1_CR3:     ds.b 1; USART1 Control Register 3
USART1_CR4:     ds.b 1; USART1 Control Register 4
USART1_CR5:     ds.b 1; USART1 Control Register 5
USART1_GTR:     ds.b 1; USART1 Guard time Register
USART1_PSCR:     ds.b 2; USART1 Prescaler Register
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
TIM2_CR1:     ds.b 1; TIM2 Control register	1
TIM2_CR2:     ds.b 1; TIM2 Control register	2
TIM2_SMCR:     ds.b 1; TIM2 Slave Mode Control register
TIM2_ETR:     ds.b 1; TIM2 External	trigger	register
TIM2_DER:     ds.b 1; TIM2 DMA request enable register
TIM2_IER:     ds.b 1; TIM2 Interrupt enable	register
TIM2_SR1:     ds.b 1; TIM2 Status register 1
TIM2_SR2:     ds.b 1; TIM2 Status register 2
TIM2_EGR:     ds.b 1; TIM2 Event Generation	register
TIM2_CCMR1:     ds.b 1; TIM2 Capture/Compare mode register 1
TIM2_CCMR2:     ds.b 1; TIM2 Capture/Compare mode register 2
TIM2_CCER1:     ds.b 1; TIM2 Capture/Compare enable register 1
TIM2_CNTR:     ds.b 2; TIM2 Counter
TIM2_PSCR:     ds.b 1; TIM2 Prescaler register
TIM2_ARR:     ds.b 2; TIM2 Auto-reload register
TIM2_CCR1:     ds.b 2; TIM2 Capture/Compare register	1
TIM2_CCR2:     ds.b 2; TIM2 Capture/Compare register	2
TIM2_BKR:     ds.b 1; TIM2 Break register
TIM2_OISR:     ds.b 2; TIM2 Output idle state register
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
TIM3_CR1:     ds.b 1; TIM3 Control register	1
TIM3_CR2:     ds.b 1; TIM3 Control register	2
TIM3_SMCR:     ds.b 1; TIM3 Slave Mode Control register
TIM3_ETR:     ds.b 1; TIM3 External	trigger	register
TIM3_DER:     ds.b 1; TIM3 DMA request enable register
TIM3_IER:     ds.b 1; TIM3 Interrupt enable	register
TIM3_SR1:     ds.b 1; TIM3 Status register 1
TIM3_SR2:     ds.b 1; TIM3 Status register 2
TIM3_EGR:     ds.b 1; TIM3 Event Generation	register
TIM3_CCMR1:     ds.b 1; TIM3 Capture/Compare mode register 1
TIM3_CCMR2:     ds.b 1; TIM3 Capture/Compare mode register 2
TIM3_CCER1:     ds.b 1; TIM3 Capture/Compare enable register 1
TIM3_CNTR:     ds.b 2; TIM3 Counter
TIM3_PSCR:     ds.b 1; TIM3 Prescaler register
TIM3_ARR:     ds.b 2; TIM3 Auto-reload register
TIM3_CCR1:     ds.b 2; TIM3 Capture/Compare register	1
TIM3_CCR2:     ds.b 2; TIM3 Capture/Compare register	2
TIM3_BKR:     ds.b 1; TIM3 Break register
TIM3_OISR:     ds.b 2; TIM3 Output idle state register
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
TIM1_CR1:     ds.b 1; TIM1 Control register	1
TIM1_CR2:     ds.b 1; TIM1 Control register	2
TIM1_SMCR:     ds.b 1; TIM1 Slave Mode Control register
TIM1_ETR:     ds.b 1; TIM1 external	trigger	register
TIM1_DER:     ds.b 1; TIM1 DMA request enable register
TIM1_IER:     ds.b 1; TIM1 Interrupt enable	register
TIM1_SR1:     ds.b 1; TIM1 Status register 1
TIM1_SR2:     ds.b 1; TIM1 Status register 2
TIM1_EGR:     ds.b 1; TIM1 Event Generation	register
TIM1_CCMR1:     ds.b 1; TIM1 Capture/Compare mode register 1
TIM1_CCMR2:     ds.b 1; TIM1 Capture/Compare mode register 2
TIM1_CCMR3:     ds.b 1; TIM1 Capture/Compare mode register 3
TIM1_CCMR4:     ds.b 1; TIM1 Capture/Compare mode register 4
TIM1_CCER1:     ds.b 1; TIM1 Capture/Compare enable register 1
TIM1_CCER2:     ds.b 1; TIM1 Capture/Compare enable register 2
TIM1_CNTR:     ds.b 2; TIM1 Counter
TIM1_PSCR:     ds.b 2; TIM1 Prescaler register
TIM1_ARR:     ds.b 2; TIM1 Auto-reload register
TIM1_RCR:     ds.b 1; TIM1 Repetition counter register
TIM1_CCR1:     ds.b 2; TIM1 Capture/Compare register	1
TIM1_CCR2:     ds.b 2; TIM1 Capture/Compare register	2
TIM1_CCR3:     ds.b 2; TIM1 Capture/Compare register	3
TIM1_CCR4:     ds.b 2; TIM1 Capture/Compare register	4
TIM1_BKR:     ds.b 1; TIM1 Break register
TIM1_DTR:     ds.b 1; TIM1 Dead-time register
TIM1_OISR:     ds.b 1; TIM1 Output idle state register
TIM1_DCR1:     ds.b 1; TIM1 DMA1 control register 1
TIM1_DCR2:     ds.b 1; TIM1 DMA1 control register 2
TIM1_DMA1R:     ds.b 2; TIM1 DMA1 address for	burst mode
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
TIM4_CR1:     ds.b 1; TIM4 Control Register	1
TIM4_CR2:     ds.b 1; TIM4 Control Register	2
TIM4_SMCR:     ds.b 1; TIM4 Slave Mode Control Register
TIM4_DER:     ds.b 1; TIM4 DMA request Enable Register
TIM4_IER:     ds.b 1; TIM4 Interrupt Enable	Register
TIM4_SR1:     ds.b 1; TIM4 Status Register 1
TIM4_EGR:     ds.b 1; TIM4 Event Generation	Register
TIM4_CNTR:     ds.b 1; TIM4 Counter
TIM4_PSCR:     ds.b 1; TIM4 Prescaler Register
TIM4_ARR:     ds.b 2; TIM4 Auto-Reload Register
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
IR_CR:         ds.b 1; Infra-red control register
TIM5_CR1:     ds.b 1; TIM5 Control register	1
TIM5_CR2:     ds.b 1; TIM5 Control register	2
TIM5_SMCR:     ds.b 1; TIM5 Slave Mode Control register
TIM5_ETR:     ds.b 1; TIM5 External	trigger	register
TIM5_DER:     ds.b 1; TIM5 DMA request enable register
TIM5_IER:     ds.b 1; TIM5 Interrupt enable	register
TIM5_SR1:     ds.b 1; TIM5 Status register 1
TIM5_SR2:     ds.b 1; TIM5 Status register 2
TIM5_EGR:     ds.b 1; TIM5 Event Generation	register
TIM5_CCMR1:     ds.b 1; TIM5 Capture/Compare mode register 1
TIM5_CCMR2:     ds.b 1; TIM5 Capture/Compare mode register 2
TIM5_CCER1:     ds.b 1; TIM5 Capture/Compare enable register 1
TIM5_CNTR:     ds.b 2; TIM5 Counter
TIM5_PSCR:     ds.b 1; TIM5 Prescaler register
TIM5_ARR:     ds.b 2; TIM5 Auto-reload register
TIM5_CCR1:     ds.b 2; TIM5 Capture/Compare register	1
TIM5_CCR2:     ds.b 2; TIM5 Capture/Compare register	2
TIM5_BKR:     ds.b 1; TIM5 Break register
TIM5_OISR:     ds.b 2; TIM5 Output idle state register
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
ADC1_CR1:     ds.b 1; ADC1 Configuration register 1
ADC1_CR2:     ds.b 1; ADC1 Configuration register 2
ADC1_CR3:     ds.b 1; ADC1 Configuration register 3
ADC1_SR:     ds.b 1; ADC1 status register
ADC1_DR:     ds.b 2; ADC1 Data register
ADC1_HTR:     ds.b 2; ADC1 high threshold register
ADC1_LTR:     ds.b 2; ADC1 low threshold register
ADC1_SQR1:     ds.b 1; ADC1 channel sequence	1 register
ADC1_SQR2:     ds.b 1; ADC1 channel sequence	2 register
ADC1_SQR3:     ds.b 1; ADC1 channel sequence	3 register
ADC1_SQR4:     ds.b 1; ADC1 channel sequence	4 register
ADC1_TRIGR1:     ds.b 1; ADC1 Trigger disable 1
ADC1_TRIGR2:     ds.b 1; ADC1 Trigger disable 2
ADC1_TRIGR3:     ds.b 1; ADC1 Trigger disable 3
ADC1_TRIGR4:     ds.b 2; ADC1 Trigger disable 4
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
DAC_CH1CR1:     ds.b 1; DAC channel 1	control	register 1
DAC_CH1CR2:     ds.b 1; DAC channel 1	control	register 2
DAC_CH2CR1:     ds.b 1; DAC channel 2	control	register 1
DAC_CH2CR2:     ds.b 1; DAC channel 2	control	register 2
DAC_SWTRIGR:     ds.b 1; DAC software trigger register
DAC_SR:         ds.b 2; DAC status register
        ds.b 1
DAC_CH1RDHR:     ds.b 2; DAC channel 1	right aligned data holding register
        ds.b 1
        ds.b 1
DAC_CH1LDHR:     ds.b 2; DAC channel 1	left aligned data holding register
        ds.b 1
        ds.b 1
DAC_CH1DHR8:     ds.b 2; DAC channel 1	8-bit data holding register
        ds.b 1
        ds.b 1
DAC_CH2RDHR:     ds.b 2; DAC channel 2	right aligned data holding register
        ds.b 1
        ds.b 1
DAC_CH2LDHR:     ds.b 2; DAC channel 2	left aligned data holding register
        ds.b 1
        ds.b 1
DAC_CH2DHR8:     ds.b 2; DAC channel 2	8-bit data holding register
        ds.b 1
        ds.b 1
DAC_DCH1RDHR:     ds.b 2; DAC channel 1	right aligned data holding register
DAC_DCH2RDHR:     ds.b 2; DAC channel 2	right aligned data holding register
DAC_DCH1LDHR:     ds.b 2; DAC channel 1	left aligned data holding register
DAC_DCH2LDHR:     ds.b 2; DAC channel 2	left aligned data holding register
DAC_DCH1DHR8:     ds.b 1; DAC channel 1	8-bit data holding register
DAC_DCH2DHR8:     ds.b 2; DAC channel 2	8-bit data holding register
        ds.b 1
DAC_CH1DOR:     ds.b 2; DAC channel 1	data output register
        ds.b 1
        ds.b 1
DAC_CH2DOR:     ds.b 2; DAC channel 2	data output register
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
SPI2_CR1:     ds.b 1; SPI2 Control Register	1
SPI2_CR2:     ds.b 1; SPI2 Control Register	2
SPI2_ICR:     ds.b 1; SPI2 Interrupt Control Register
SPI2_SR:     ds.b 1; SPI2 Status Register
SPI2_DR:     ds.b 1; SPI2 Data Register
SPI2_CRCPR:     ds.b 1; SPI2 CRC Polynomial Register
SPI2_RXCRCR:     ds.b 1; SPI2 Rx CRC Register
SPI2_TXCRCR:     ds.b 2; SPI2 Tx CRC Register
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
USART2_SR:     ds.b 1; USART2 Status	Register
USART2_DR:     ds.b 1; USART2 Data Register
USART2_BRR1:     ds.b 1; USART2 Baud Rate Register 1
USART2_BRR2:     ds.b 1; USART2 Baud Rate Register 2
USART2_CR1:     ds.b 1; USART2 Control Register 1
USART2_CR2:     ds.b 1; USART2 Control Register 2
USART2_CR3:     ds.b 1; USART2 Control Register 3
USART2_CR4:     ds.b 1; USART2 Control Register 4
USART2_CR5:     ds.b 1; USART2 Control Register 5
USART2_GTR:     ds.b 1; USART2 Guard time Register
USART2_PSCR:     ds.b 2; USART2 Prescaler Register
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
USART3_SR:     ds.b 1; USART3 Status	Register
USART3_DR:     ds.b 1; USART3 Data Register
USART3_BRR1:     ds.b 1; USART3 Baud Rate Register 1
USART3_BRR2:     ds.b 1; USART3 Baud Rate Register 2
USART3_CR1:     ds.b 1; USART3 Control Register 1
USART3_CR2:     ds.b 1; USART3 Control Register 2
USART3_CR3:     ds.b 1; USART3 Control Register 3
USART3_CR4:     ds.b 1; USART3 Control Register 4
USART3_CR5:     ds.b 1; USART3 Control Register 5
USART3_GTR:     ds.b 1; USART3 Guard time Register
USART3_PSCR:     ds.b 2; USART3 Prescaler Register
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
RI_ICR1:     ds.b 1; Timer	input capture routing register 1
RI_ICR2:     ds.b 1; Timer	input capture routing register 2
RI_IOIR1:     ds.b 1; I/O input register 1
RI_IOIR2:     ds.b 1; I/O input register 2
RI_IOIR3:     ds.b 1; I/O input register 3
RI_IOCMR1:     ds.b 1; I/O control mode register 1
RI_IOCMR2:     ds.b 1; I/O control mode register 2
RI_IOCMR3:     ds.b 1; I/O control mode register 3
RI_IOSR1:     ds.b 1; I/O switch register 1
RI_IOSR2:     ds.b 1; I/O switch register 2
RI_IOSR3:     ds.b 1; I/O switch register 3
RI_IOGCR:     ds.b 1; I/O group control register
RI_ASCR1:     ds.b 1; Analog switch	register 1
RI_ASCR2:     ds.b 1; Analog switch	register 2
RI_RCR:         ds.b 1; Resistor control register
COMP_CSR1:     ds.b 1; Comparator control and status	register 1
COMP_CSR2:     ds.b 1; Comparator control and status	register 2
COMP_CSR3:     ds.b 1; Comparator control and status	register 3
COMP_CSR4:     ds.b 1; Comparator control and status	register 4
COMP_CSR5:     ds.b 2; Comparator control and status	register 5
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1
        ds.b 1

; ===========================================================================

; Segment type:	Pure code
ROM:  section .text
        dc.w 0x8200
        dc.w _stext
        dc.w 0x8200
        dc.w TRAP
        dc.w 0x8200
        dc.w TLI_ISR
        dc.w 0x8200
        dc.w FLASH_ISR
        dc.w 0x8200
        dc.w DMA1_0_1_ISR
        dc.w 0x8200
        dc.w DMA1_2_3_ISR
        dc.w 0x8200
        dc.w RTC_LSE_CSS_ISR
        dc.w 0x8200
        dc.w EXTI_E_F_PVD_ISR
        dc.w 0x8200
        dc.w EXTI_B_G_ISR
        dc.w 0x8200
        dc.w EXTI_D_H_ISR
        dc.w 0x8200
        dc.w EXTI0_ISR
        dc.w 0x8200
        dc.w EXTI1_ISR
        dc.w 0x8200
        dc.w EXTI2_ISR
        dc.w 0x8200
        dc.w EXTI3_ISR
        dc.w 0x8200
        dc.w EXTI4_ISR
        dc.w 0x8200
        dc.w EXTI5_ISR
        dc.w 0x8200
        dc.w EXTI6_ISR
        dc.w 0x8200
        dc.w EXTI7_ISR
        dc.w 0x8200
        dc.w LCD_ISR
        dc.w 0x8200
        dc.w CLK_TIM1_DAC_ISR
        dc.w 0x8200
        dc.w COMP1_COMP2_ADC_ISR
        dc.w 0x8200
        dc.w TIM2_ISR
        dc.w 0x8200
        dc.w TIM2_CC_ISR
        dc.w 0x8200
        dc.w TIM3_ISR
        dc.w 0x8200
        dc.w TIM3_CC_ISR
        dc.w 0x8200
        dc.w TIM1_ISR
        dc.w 0x8200
        dc.w TIM1_CC_ISR
        dc.w 0x8200
        dc.w TIM4_ISR
        dc.w 0x8200
        dc.w SPI1_ISR
        dc.w 0x8200
        dc.w USART1_TX_ISR
        dc.w 0x8200
        dc.w USART1_RX_ISR
        dc.w 0x8200
        dc.w I2C1_ISR

; =============== S U B	R O U T	I N E =======================================


I2CWrite_0: 
        addw    x, #2
        jp    I2CWrite
; End of function I2CWrite_0


; =============== S U B	R O U T	I N E =======================================


AfeGetSysCtrl2: 
        incw    x
        ld    a, #AFE_SYS_CTRL2
        call    AfeReadRegB
        tnz    a
        ret
; End of function AfeGetSysCtrl2


; =============== S U B	R O U T	I N E =======================================


I2CPrepareAfeWrite: 
        addw    x, #2
        pushw    x
        ld    a, #4
        call    memcpy; (x=dst, y=src, a=size)
        popw    x
        ld    a, #0x10
        ret
; End of function I2CPrepareAfeWrite


; =============== S U B	R O U T	I N E =======================================

; (a=enable)

AfeControlDischarge: 

sysctrl2_val:  set -6
var_5:  set -5
var_4:  set -4
var_3:  set -3
wr_result:  set -2

        push    R8
        sub    sp, #5
        ld    R8, a
        clr    a
        ld    (7+sysctrl2_val,sp), a
        ldw    x, sp
        call    AfeGetSysCtrl2
        jrne    loc_90F3
        tnz    R8
        jreq    _AfeControlDischarge_disable_dischg
        ld    a, (7+sysctrl2_val,sp)
        or    a, #2
        jra    loc_90B9
; ---------------------------------------------------------------------------

_AfeControlDischarge_disable_dischg: 
        ld    a, (7+sysctrl2_val,sp)
        and    a, #0xFD; '¤'

loc_90B9: 
        ld    (7+sysctrl2_val,sp), a
        ldw    y, #unk_C36D
        ldw    x, sp
        call    I2CPrepareAfeWrite
        ld    (7+var_5,sp), a
        ld    a, #AFE_SYS_CTRL2
        ld    (7+var_4,sp), a
        ld    a, (7+sysctrl2_val,sp)
        ld    (7+var_3,sp), a
        call    sub_90FF
        ldw    x, sp
        call    I2CWrite_0
        ld    (7+wr_result,sp), a
        ldw    y, #2
        ldw    x, sp
        call    sub_BF66
        jrne    loc_90E8
        ld    a, byte_4A3
        jreq    loc_90F1
        dec    a
        jra    loc_90EE
; ---------------------------------------------------------------------------

loc_90E8: 
        call    sub_90F9
        jrnc    loc_90F1
        inc    a

loc_90EE: 
        ld    byte_4A3, a

loc_90F1: 
        ld    a, R0

loc_90F3: 
        addw    sp, #5
        pop    R8
        ret
; End of function AfeControlDischarge


; =============== S U B	R O U T	I N E =======================================


sub_90F9: 
        ld    a, byte_4A3
        cp    a, #30
        ret
; End of function sub_90F9


; =============== S U B	R O U T	I N E =======================================


sub_90FF: 
        mov    R0, #7
        ld    a, #3
        ret
; End of function sub_90FF


; =============== S U B	R O U T	I N E =======================================


AfeShutdown: 
        push    R8
        call    AfeSetSysCtrl1_00
        ldw    x, #100
        call    LongDelay
        call    AfeSetSysCtrl1_00
        ld    R8, a
        jrne    loc_9127
        mov    R0, #1
        call    AfeSetSysCtrl1
        mov    R0, #2
        call    AfeSetSysCtrl1

loc_9127: 
        ld    a, R8
        pop    R8
        ret
; End of function AfeShutdown


; =============== S U B	R O U T	I N E =======================================


AfeSetSysCtrl1_00: 
        clr    R0
; End of function AfeSetSysCtrl1_00


; =============== S U B	R O U T	I N E =======================================


AfeSetSysCtrl1: 
        ld    a, #AFE_SYS_CTRL1
        jp    AfeWriteRegB
; End of function AfeSetSysCtrl1


; =============== S U B	R O U T	I N E =======================================

; in mA

AfeGetCurrent_atX: 
        call    pro_0
        push    R10
        sub    sp, #2
        ldw    R8, x
        clrw    x
        ldw    (1,sp),    x
        ldw    x, sp
        incw    x
        ld    a, #AFE_CC_HI
        call    AfeReadRegW; (a=reg, x->val)
        ld    R10, a
        jrne    _AfeGetCurrent_atX_exit
        ldw    x, (1,sp); CC
        call    ABS32; R0-R3	= abs(x)
        call    MUL32_R0R3_IMM; R0:R3	*= IMM32
; ---------------------------------------------------------------------------
        dc.l 844; CC is	in 8.44uV steps
; ---------------------------------------------------------------------------
        call    SDIVMOD32_R0R3_IMM32; : R0R3 -	частное, R4R7 -	остаток
; ---------------------------------------------------------------------------
        dc.l -100
; ---------------------------------------------------------------------------
        ldw    x, R8; with Rsense=0.001 Ohm	this is	current	in mA
        call    STR32; *x = R0:R2

_AfeGetCurrent_atX_exit: 
        ld    a, R10
        addw    sp, #2
        pop    R10
        jp    epi_ret_4
; End of function AfeGetCurrent_@X


; =============== S U B	R O U T	I N E =======================================

; (a=cell, x->wVal)

GetCellVoltage: 
        call    sub_A0A9
        push    R8
        sub    sp, #2
        ldw    R10, x
        clrw    x
        ldw    (1,sp),    x
        cp    a, #0xF
        jrc    loc_9183
        ld    a, #0x16
        jra    _GetCellVoltage_exit
; ---------------------------------------------------------------------------

loc_9183: 
        ldw    x, sp
        incw    x
        sll    a
        add    a, #AFE_VC1_HI
        call    AfeReadRegW; (a=reg, x->val)
        ld    R8, a
        jrne    loc_91B6
        ldw    x, AfeAdcGain
        ldw    R6, x
        clrw    x
        ldw    R4, x
        ldw    x, (1,sp)
        ldw    R2, x
        clrw    x
        ldw    R0, x
        call    MUL32_R0R3_R4R7
        call    DIVMOD32_R0R3_IMM32; :	R0R3 - частное,	R4R7 - остаток
        neg    (0,sp)
        cpl    (0xE8,sp)
        call    AfeGetAdcOffset
        ldw    R0, x
        ldw    x, R2
        addw    x, R0
        ldw    [R10.w], x

loc_91B6: 
        ld    a, R8

_GetCellVoltage_exit: 
        addw    sp, #2
        pop    R8
        call    epi_ret_3
        ret
; End of function GetCellVoltage


; =============== S U B	R O U T	I N E =======================================


AfeWriteRegB: 
        push    R8
        sub    sp, #4
        ld    R8, a
        ldw    y, #unk_C36D
        ldw    x, sp
        call    sub_931A
        ld    a, #0x10
        ld    (1,sp),    a
        ld    a, R8
        ld    (2,sp),    a
        ld    a, R0
        ld    (3,sp),    a
        call    sub_90FF
        ldw    x, sp
        incw    x
        call    I2CWrite
        ld    (4,sp),    a
        ldw    y, #2
        ldw    x, sp
        addw    x, #3
        mov    R0, R8
        ld    a, #0x10
        call    sub_AF49
        ld    R0, a
        jrne    loc_9202
        ld    a, byte_4A3
        jreq    loc_920B
        dec    a
        jra    loc_9208
; ---------------------------------------------------------------------------

loc_9202: 
        call    sub_90F9
        jrnc    loc_920B
        inc    a

loc_9208: 
        ld    byte_4A3, a

loc_920B: 
        ld    a, R0
        addw    sp, #4
        pop    R8
        ret
; End of function AfeWriteRegB


; =============== S U B	R O U T	I N E =======================================


AfeReadRegB: 

var_1:  set -1
arg_1:  set  3

        call    pro_0
        push    R10
        sub    sp, #4
        ld    R0, a
        ldw    R8, x
        ldw    y, #unk_C3B2
        ldw    x, sp
        addw    x, #4+var_1
        call    cpy2; (x->dst, y=>src)
        ldw    y, #unk_C3B4
        ldw    x, sp
        incw    x
        call    cpy2; (x->dst, y=>src)
        ld    a, #0x11
        ld    (4+var_1,sp), a
        ldw    y, #2
        ldw    x, sp
        call    sub_9311
        jrne    loc_9266
        ld    a, (1,sp)
        ld    (4,sp),    a
        mov    R0, #7
        ld    a, #2
        ldw    x, sp
        call    sub_9308
        ld    a, (2,sp)
        cp    a, R0
        jreq    loc_9259
        ld    a, #0x15
        jra    loc_9271
; ---------------------------------------------------------------------------

loc_9259: 
        ld    a, (1,sp)
        ld    [R8.w],    a
        ld    a, byte_4A3
        jreq    loc_926F
        dec    a
        jra    loc_926C
; ---------------------------------------------------------------------------

loc_9266: 
        call    sub_90F9
        jrnc    loc_926F
        inc    a

loc_926C: 
        ld    byte_4A3, a

loc_926F: 
        ld    a, R10

loc_9271: 
        addw    sp, #4
        pop    R10
        jp    epi_ret_4
; End of function AfeReadRegB


; =============== S U B	R O U T	I N E =======================================


sub_9279: 
        ld    a, byte_4A3
        cp    a, #11
        jrnc    loc_9286
        clr    byte_4A4
        jra    _sub_9279_exit_result
; ---------------------------------------------------------------------------

loc_9286: 
        cp    a, #21
        jrc    _sub_9279_exit_result
        mov    byte_4A4, #1

_sub_9279_exit_result: 
        ld    a, byte_4A4
        ret
; End of function sub_9279


; =============== S U B	R O U T	I N E =======================================

; (a=reg, x->val)

AfeReadRegW: 
        call    pro_0
        push    R10
        sub    sp, #6
        ld    R0, a; reg
        ldw    R8, x
        ldw    y, #unk_C3B0
        ldw    x, sp
        addw    x, #5
        call    cpy2; (x->dst, y=>src)
        ldw    y, #unk_C369
        ldw    x, sp
        call    sub_931A
        ld    a, #0x11
        ld    (5,sp),    a
        ldw    y, #4
        ldw    x, sp
        call    sub_9311
        jrne    loc_92FE
        ld    a, (1,sp)
        ld    (6,sp),    a
        mov    R0, #7
        ld    a, #2
        ldw    x, sp
        addw    x, #5
        call    I2CWrite
        ld    R0, a
        ld    a, (2,sp)
        cp    a, R0
        jrne    loc_92E8
        mov    R0, #7
        ld    a, #1
        ldw    x, sp
        call    sub_9308
        ld    a, (4,sp)
        cp    a, R0
        jreq    loc_92EC

loc_92E8: 
        ld    a, #0x15
        jra    loc_9300
; ---------------------------------------------------------------------------

loc_92EC: 
        ld    a, (3,sp)
        clrw    x
        ld    xl, a
        ldw    R0, x
        ld    a, (1,sp)
        ld    xl, a
        clr    a
        rlwa    x, a
        addw    x, R0
        ldw    [R8.w],    x

loc_92FE: 
        ld    a, R10

loc_9300: 
        addw    sp, #6
        pop    R10
        jp    epi_ret_4
; End of function AfeReadRegW


; =============== S U B	R O U T	I N E =======================================


sub_9308: 
        addw    x, #3
        call    I2CWrite
        ld    R0, a
        ret
; End of function sub_9308


; =============== S U B	R O U T	I N E =======================================


sub_9311: 
        incw    x
        ld    a, #0x10
        call    I2CRead
        ld    R10, a
        ret
; End of function sub_9311


; =============== S U B	R O U T	I N E =======================================


sub_931A: 
        incw    x
        pushw    x
        ld    a, #4
        call    memcpy; (x=dst, y=src, a=size)
        popw    x
        ret
; End of function sub_931A


; =============== S U B	R O U T	I N E =======================================

; (x->dst, y=>src)

cpy2: 
        pushw    x
        ld    a, #2
        call    memcpy; (x=dst, y=src, a=size)
        popw    x
        ret
; End of function cpy2


; =============== S U B	R O U T	I N E =======================================


AfeInit: 

var_1:  set -1

        call    PUSH32_R8R11
        sub    sp, #2
        clr    a
        ld    (1,sp),    a
        ld    (2,sp),    a
        ldw    x, #AfeAdcOffset
        ld    a, #AFE_ADCOFFSET
        call    AfeReadRegB
        tnz    a
        jreq    loc_9343
        jp    _AfeInit_exit
; ---------------------------------------------------------------------------

loc_9343: 
        ldw    x, sp
        incw    x
        ld    a, #AFE_ADCGAIN1
        call    AfeReadRegB
        tnz    a
        jreq    loc_9350
        jp    _AfeInit_exit
; ---------------------------------------------------------------------------

loc_9350: 
        ldw    x, sp
        addw    x, #2
        ld    a, #AFE_ADCGAIN2
        call    AfeReadRegB
        tnz    a
        jreq    loc_935F
        jp    _AfeInit_exit
; ---------------------------------------------------------------------------

loc_935F: 
        ld    a, (1,sp)
        clrw    x
        ld    xl, a
        sllw    x
        rlwa    x, a
        clr    a
        rlwa    x, a
        and    a, #0x18
        rlwa    x, a
        ld    a, (2,sp)
        call    sub_C332
        clrw    y
        ld    yl, a
        ldw    R0, x
        addw    y, R0
        addw    y, #365
        ldw    AfeAdcGain, y
        mov    R0, #0x11
        ld    a, #AFE_PROTECT3
        call    AfeWriteRegB
        ldw    x, sp
        incw    x
        ld    a, #AFE_PROTECT3
        call    AfeReadRegB
        ld    a, (1,sp)
        cp    a, #0x11
        jreq    loc_939B
        ld    a, #0x13
        jra    _AfeInit_exit
; ---------------------------------------------------------------------------

loc_939B: 
        clr    R0
        ld    a, #AFE_CELLBAL1
        call    AfeWriteRegB
        clr    R0
        ld    a, #AFE_CELLBAL2
        call    AfeWriteRegB
        clr    R0
        ld    a, #AFE_CELLBAL3
        call    AfeWriteRegB
        mov    R0, #0x18
        ld    a, #AFE_SYS_CTRL1
        call    AfeWriteRegB
        mov    R0, #0x9A; 'Ъ'
        ld    a, #AFE_PROTECT1
        call    AfeWriteRegB
        mov    R0, #0x73; 's'
        ld    a, #AFE_PROTECT2
        call    AfeWriteRegB
        mov    R0, #0x60; '`'
        ld    a, #AFE_PROTECT3
        call    AfeWriteRegB_x
        clrw    x
        ldw    R8, x
        call    AfeGetAdcOffset
        ldw    y, #OV_THRESHOLD
        call    afe_mv2adc; (x=AdcOffset,	y=voltage_mv)
        ld    (1,sp),    a
        ld    R0, a
        ld    a, #AFE_OV_TRIP
        call    AfeWriteRegB_x
        call    AfeGetAdcOffset
        ldw    y, #UV_THRESHOLD
        call    afe_mv2adc; (x=AdcOffset,	y=voltage_mv)
        ld    (1,sp),    a
        ld    R0, a
        ld    a, #AFE_UV_TRIP
        call    AfeWriteRegB
        mov    R0, #0x19
        ld    a, #AFE_CC_CFG
        call    AfeWriteRegB
        clr    byte_4A3
        clr    a

_AfeInit_exit: 
        addw    sp, #2
        jp    epi_ret
; End of function AfeInit


; =============== S U B	R O U T	I N E =======================================


AfeWriteRegB_x: 
        call    AfeWriteRegB
        ldw    x, AfeAdcGain
        ldw    R10, x
        ret
; End of function AfeWriteRegB_x


; =============== S U B	R O U T	I N E =======================================


AfeGetAdcOffset: 
        ld    a, AfeAdcOffset
        jp    absx
; End of function AfeGetAdcOffset


; =============== S U B	R O U T	I N E =======================================

; (x=AdcOffset,	y=voltage_mv)

afe_mv2adc: 
        ldw    R0, x
        ldw    x, y
        subw    x, R0
        call    ABS32; R0-R3	= abs(x)
        call    sub_9439
        call    MOV32_R4R7_R8R11
        call    DIVMOD32_R0R3_R4R7; : R0R3 - частное, R4R7 - остаток
        ldw    x, R2
        call    lsr_x_4
        ld    a, xl
        ret
; End of function afe_mv2adc


; =============== S U B	R O U T	I N E =======================================


sub_9439: 
        call    MUL32_R0R3_IMM; R0:R3	*= IMM32
; ---------------------------------------------------------------------------
        dc.l 1000
; ---------------------------------------------------------------------------
        ret
; End of function sub_9439


; =============== S U B	R O U T	I N E =======================================


I2CWrite: 
        ld    R2, a
        clr    R4
        tnz    R2
        jreq    loc_947F

loc_9449: 
        mov    R1, #0x80; 'А'
        ld    a, R2
        dec    a
        ld    R2, a

loc_9452: 
        ld    a, R4
        sll    a
        ld    R3, a
        ld    a, R4
        bcp    a, #0x80; 'А'
        jreq    loc_9465
        ld    a, R0
        xor    a, R3
        ld    R4, a
        jra    loc_9468
; ---------------------------------------------------------------------------

loc_9465: 
        mov    R4, R3

loc_9468: 
        ld    a, R1
        bcp    a, (x)
        jreq    loc_9473
        ld    a, R0
        xor    a, R4
        ld    R4, a

loc_9473: 
        ld    a, R1
        srl    a
        ld    R1, a
        jrne    loc_9452
        incw    x
        tnz    R2
        jrne    loc_9449

loc_947F: 
        ld    a, R4
        ret
; End of function I2CWrite


; =============== S U B	R O U T	I N E =======================================


HandlePacket: 
        call    PUSH32_R8R11
        call    PUSH32_R12R15
        sub    sp, #1
        ldw    R8, x; ->packet.len
        addw    x, #PACKET.idx
        ld    a, (x)
        ld    R10, a; idx
        clr    a
        ld    (1,sp),    a
        clrw    x
        ldw    R6, x; sum_l	= 0
        ldw    R4, x; sum_h	= 0
        mov    MainState.GotPacket, #1
        ldw    x, R8
        incw    x
        ld    a, (x); packet.dev
        cp    a, #0x22; '"'
        jreq    _HandlePacket_dev_22
        cp    a, #0xFF
        jreq    _HandlePacket_dev_FF
        jp    _HandlePacket_exit
; ---------------------------------------------------------------------------

_HandlePacket_dev_FF: 
        call    PktGetCmd
        cp    a, #0x54; 'T'
        jreq    _HandlePacket_handle_bcast_54
        jp    _HandlePacket_exit
; ---------------------------------------------------------------------------

_HandlePacket_handle_bcast_54: 
        jp    _HandlePacket__54
; ---------------------------------------------------------------------------

_HandlePacket_dev_22: 
        call    PktGetCmd
        dec    a
        jreq    _HandlePacket__01; get	eep buf	data
        dec    a
        jreq    _HandlePacket__02_03; set eep buf data
        dec    a
        jreq    _HandlePacket__02_03; set eep buf data
        sub    a, #4; 7
        jrne    loc_94CD
        jp    _HandlePacket__07_08_09_0A; update cmds
; ---------------------------------------------------------------------------

loc_94CD: ; 8
        dec    a
        jrne    loc_94D3
        jp    _HandlePacket__07_08_09_0A; update cmds
; ---------------------------------------------------------------------------

loc_94D3: 
        dec    a
        jrne    loc_94D9
        jp    _HandlePacket__07_08_09_0A; update cmds
; ---------------------------------------------------------------------------

loc_94D9: 
        dec    a
        jrne    loc_94DF
        jp    _HandlePacket__07_08_09_0A; update cmds
; ---------------------------------------------------------------------------

loc_94DF: 
        sub    a, #0xE
        jreq    _HandlePacket__18
        sub    a, #0x3A; ':'
        jrne    loc_94EA
        jp    _HandlePacket__52
; ---------------------------------------------------------------------------

loc_94EA: 
        sub    a, #2
        jrne    loc_94F1
        jp    _HandlePacket__54
; ---------------------------------------------------------------------------

loc_94F1: 
        dec    a
        jrne    loc_94F7
        jp    _HandlePacket__55
; ---------------------------------------------------------------------------

loc_94F7: 
        sub    a, #2
        jrne    loc_94FE
        jp    _HandlePacket__57
; ---------------------------------------------------------------------------

loc_94FE: 
        dec    a
        jrne    _HP_l1
        jp    _HandlePacket__58
; ---------------------------------------------------------------------------
_HP_l1:
		sub a, #0x28
        jrne    _HandlePacket_ng
        jp    _HandlePacket__MY80
; ---------------------------------------------------------------------------

_HandlePacket_ng: 
        jp    _HandlePacket_exit
; ---------------------------------------------------------------------------
_HandlePacket__MY80:
		; custom ReadMem command. cmd=80, arg=len, payload = {wAddrLE}
		; data_p = w[Payload]
		ldw		x, R8
		addw	x, #PACKET.payload
		ldw		x, (x)
		swapw	x	; LE->BE
		; len=arg
		mov		R0, R10
		; cmd=80
		mov		R1, #0x80
		; arg=arg
		mov		R2, R10
        jp    	_HandlePacket_send_pkt25_exit
; ---------------------------------------------------------------------------

_HandlePacket__01: ; get eep buf data
        clrw    x
        call    PtrConfig_X_R10
        mov    R2, R10
        mov    R1, #1
        call    PtrPktDataY
        ld    a, (y)
        ld    R0, a
        jp    _HandlePacket_send_pkt25_exit
; ---------------------------------------------------------------------------

_HandlePacket__02_03: ; set eep buf data
        ld    a, [R8.w]
        add    a, #-2
        ld    R0, a
        ld    a, #1
        ld    (1,sp),    a
        ld    a, R10
        cp    a, #0x10
        jrnc    _HandlePacket_wr_ix_err; >=
        ld    a, MainState.IxFrom52
        jreq    _HandlePacket_wr_cfg_ram

_HandlePacket_wr_ix_err: 
        clr    a
        ld    (1,sp),    a
        jra    loc_9545
; ---------------------------------------------------------------------------

_HandlePacket_wr_cfg_ram: 
        clrw    x
        exg    a, xl
        ld    a, R0
        exg    a, xl
        call    PtrPktDataY_R0_X
        call    PtrConfig_X_R10
        call    memcpy_1; (x=dst, y=src, r0=size)

loc_9545: 
        call    PktGetCmd
        cp    a, #2
        jreq    loc_954F
        jp    _HandlePacket_exit
; ---------------------------------------------------------------------------

loc_954F: 
        ldw    x, sp
        incw    x
        mov    R2, R10
        mov    R1, #2
        jp    loc_969E
; ---------------------------------------------------------------------------

_HandlePacket__18: 
        ld    a, [R8.w]
        add    a, #-2
        cp    a, #0x12
        jreq    loc_9567
        jp    _HandlePacket_tx_rsp
; ---------------------------------------------------------------------------

loc_9567: 
        ld    a, R10
        cp    a, #0x10
        jreq    loc_9570
        jp    _HandlePacket_tx_rsp
; ---------------------------------------------------------------------------

loc_9570: 
        ldw    x, #Config.SerialNumber
        ldw    R10, x
        ldw    x, R8
        addw    x, #PACKET.payload
        ldw    y, x
        mov    R12, #0xE

_HandlePacket_auth_calc_loop: ; old_sn[i]
        ld    a, [R10.w]
        call    ZEXT32_R0R3_A
        call    PUSH32_R0R3
        call    MOV32_R0R3_R4R7; sum, initialized to 0	at beg
        call    POP32_R4R7
        call    ADD32_R0R3_R4R7; +=old_sn[i]
        ld    a, (y); new_sn[i]
        clrw    x
        ld    xl, a
        ldw    R6, x
        call    ADD32_R0R3_R4R7; +=new_sn[i]
        call    MOV32_R4R7_R0R3; to sum
        ldw    x, y
        incw    x
        ldw    y, x
        ldw    x, R10
        incw    x
        ldw    R10, x
        ld    a, R12
        dec    a
        ld    R12, a
        jrne    _HandlePacket_auth_calc_loop
        ld    a, Config.uid+8
        call    ZEXT32_R0R3_A; lsb
        call    PUSH32_R0R3; lsb
        ld    a, Config.uid+9
        call    ZEXT32_R0R3_A_LSL8; ml
        call    PUSH32_R0R3; ml
        ld    a, Config.uid+0xA
        call    ZEXT32_R0R3_A_LSL16; mh
        call    PUSH32_R0R3; mh
        ld    a, Config.uid+0xB
        call    ZEXT32_R0R3_A_LSL24; msb
        call    MOV32_R12R15_R0R3; msb
        call    MOV32_R0R3_R4R7
        call    MOV32_R4R7_R12R15
        call    ADD32_R0R3_R4R7; add msb
        call    POP32_R4R7; mh
        call    ADD32_R0R3_R4R7; add mh
        call    POP32_R4R7; ml
        call    ADD32_R0R3_R4R7; add ml
        call    POP32_R4R7; lsb
        call    ADD32_R0R3_R4R7; add lsb
        call    MOD32_R0R3_IMM32
; ---------------------------------------------------------------------------
        dc.l 1000000
; ---------------------------------------------------------------------------
        call    PUSH32_R4R7
        ldw    x, R8
        addw    x, #PACKET.payload+0xE
        ld    a, (x)
        call    ZEXT32_R0R3_A
        call    PUSH32_R0R3; lsb
        ldw    x, R8
        addw    x, #PACKET.payload+0xF
        ld    a, (x)
        clrw    x
        call    ZEXT32_R0R3_A_LSL8
        call    MOV32_R12R15_R0R3
        ldw    x, R8
        addw    x, #PACKET.payload+0x10
        ld    a, (x)
        call    ZEXT32_R0R3_A_LSL16
        call    MOV32_R4R7_R0R3
        ldw    x, R8
        addw    x, #PACKET.payload+0x11
        ld    a, (x)
        call    ZEXT32_R0R3_A_LSL24
        call    ADD32_R0R3_R4R7; msb |	mh
        call    MOV32_R4R7_R12R15; ml
        call    ADD32_R0R3_R4R7; msb |	mh | ml
        call    POP32_R4R7; lsb
        call    ADD32_R0R3_R4R7; msb |	mh | ml	| lsb
        call    POP32_R4R7
        call    CMP32_R0R3_R4R7
        jrne    _HandlePacket_tx_rsp
        ldw    x, #0xE
        call    PtrPktDataY_R0_X
        ldw    x, #Config.SerialNumber
        call    memcpy_1; (x=dst, y=src, r0=size)
        mov    MainState.NeedSaveConfig, #1
        call    InitFactCapacityAndDate
        ld    a, #1
        ld    (1,sp),    a; result

_HandlePacket_tx_rsp: 
        clrw    x
        ld    a, (1,sp)
        ld    R2, a
        call    PktGetCmd_r1
        clr    R0
        jra    _HandlePacket_send_pkt25_exit
; ---------------------------------------------------------------------------

_HandlePacket__57: 
        ld    a, [R8.w]
        add    a, #-2
        cp    a, #2
        jrne    loc_9696
        ld    a, #1
        ld    (1,sp),    a
        ldw    x, Config.field_A0
        jrne    loc_967D
        ldw    x, #2
        call    PtrPktDataY_R0_X
        ldw    x, #Config.field_42
        call    memcpy_1; (x=dst, y=src, r0=size)

loc_967D: 
        clrw    x
        incw    x
        ldw    Config.field_A0, x
        jra    loc_9696
; ---------------------------------------------------------------------------

_HandlePacket__58: 
        clrw    x
        ldw    Config.field_42, x
        ldw    Config.field_A0, x
        ld    a, #CONFIG.ChargeCycle-0x1B
        call    SetConfigReg
        clrw    x
        ld    a, #CONFIG.ChargeCount-0x1C
        call    SetConfigReg

loc_9696: 
        clrw    x
        mov    R2, #1
        call    PktGetCmd_r1

loc_969E: 
        mov    R0, #1
        jra    _HandlePacket_send_pkt25_exit
; ---------------------------------------------------------------------------

_HandlePacket__55: 
        mov    MainState.got55, #1
        ldw    x, #Config.Status
        mov    R2, #0x30; '0'
        mov    R1, #0x55; 'U'
        mov    R0, #0xC
        jra    _HandlePacket_send_pkt25_exit
; ---------------------------------------------------------------------------

_HandlePacket__52: ; sub
        ld    a, R10
        ld    MainState.IxFrom52, a
        call    RefreshStatus
        ldw    x, #Config.Status
        mov    R2, #0x30; '0'
        mov    R1, #1
        mov    R0, #2

_HandlePacket_send_pkt25_exit: 
        ld    a, #0x25; '%'
        call    _FramePacket; (a=dev, r0=len, r1=cmd, r2=sub, x->data)
        jra    _HandlePacket_exit
; ---------------------------------------------------------------------------

_HandlePacket__54: 
        mov    MainState.got54, #1
        jra    _HandlePacket_exit
; ---------------------------------------------------------------------------

_HandlePacket__07_08_09_0A: ; update cmds
        ldw    x, R8
        call    HandleUpdateCmd

_HandlePacket_exit: 
        addw    sp, #1
        jp    epi_ret_0
; End of function HandlePacket


; =============== S U B	R O U T	I N E =======================================


NEG32_R0R3: 
        ldw    x, R0
        negw    x
        pushw    x
        ldw    x, R2
        negw    x
        ldw    R2, x
        popw    x
        jreq    loc_96F4
        decw    x

loc_96F4: 
        ldw    R0, x
        ret
; End of function NEG32_R0R3


; =============== S U B	R O U T	I N E =======================================


INC32_R0R3: 
        ldw    x, #R0
        jra    loc_96FC
; ---------------------------------------------------------------------------

loc_96FC: 
        inc    (3,x)
        jrne    locret_9709
        inc    (2,x)
        jrne    locret_9709
        inc    (1,x)
        jrne    locret_9709
        inc    (x)

locret_9709: 
        ret
; End of function INC32_R0R3


; =============== S U B	R O U T	I N E =======================================


sub_970A: 
        ldw    x, #0
        jra    loc_970F
; ---------------------------------------------------------------------------

loc_970F: 
        tnz    (3,x)
        jrne    loc_9720
        tnz    (2,x)
        jrne    loc_971E
        tnz    (1,x)
        jrne    loc_971C
        dec    (x)

loc_971C: 
        dec    (1,x)

loc_971E: 
        dec    (2,x)

loc_9720: 
        dec    (3,x)
        ret
; End of function sub_970A


; =============== S U B	R O U T	I N E =======================================


ADD32_R0R3_IMM: 
        call    sub_BBAC
        jra    ADD32_R0R3_atX
; End of function ADD32_R0R3_IMM


; =============== S U B	R O U T	I N E =======================================


ADD32_R0R3_R4R7: 
        ldw    x, #R4
; End of function ADD32_R0R3_R4R7


; =============== S U B	R O U T	I N E =======================================


ADD32_R0R3_atX: 
        ld    a, R3
        add    a, (3,x)
        ld    R3, a
        ld    a, R2
        adc    a, (2,x)
        ld    R2, a
        ld    a, R1
        adc    a, (1,x)
        ld    R1, a
        ld    a, R0
        adc    a, (x)
        ld    R0, a
        ret
; End of function ADD32_R0R3_@X


; =============== S U B	R O U T	I N E =======================================


LDR32_R0R3_IMM: 
        call    sub_BB92
; End of function LDR32_R0R3_IMM


; =============== S U B	R O U T	I N E =======================================


SUB32_R0R3_R4R7: 
        ldw    x, #R4
; End of function SUB32_R0R3_R4R7


; =============== S U B	R O U T	I N E =======================================


SUB32_R0R3_atX: 
        ld    a, R3
        sub    a, (3,x)
        ld    R3, a
        ld    a, R2
        sbc    a, (2,x)
        ld    R2, a
        ld    a, R1
        sbc    a, (1,x)
        ld    R1, a
        ld    a, R0
        sbc    a, (x)
        ld    R0, a
        ret
; End of function SUB32_R0R3_@X


; =============== S U B	R O U T	I N E =======================================

; R0:R3	*= IMM32

MUL32_R0R3_IMM: 
        call    sub_BBAC
; End of function MUL32_R0R3_IMM


; =============== S U B	R O U T	I N E =======================================


MUL32_R0R3_atX: 
        pushw    x
        ldw    x, (x)
        ldw    R4, x
        popw    x
        ldw    x, (2,x)
        ldw    R6, x
; End of function MUL32_R0R3_@X


; =============== S U B	R O U T	I N E =======================================


MUL32_R0R3_R4R7: 
        ld    a, R0
        ldw    x, R6
        mul    x, a
        ld    a, xl
        ld    R0, a
        ld    a, R1
        ldw    x, R5
        mul    x, a
        ld    a, xl
        add    a, R0
        ld    R0, a
        ld    a, R2
        ldw    x, R4
        mul    x, a
        ld    a, xl
        add    a, R0
        ld    R0, a
        ld    a, R3
        ldw    x, R3
        mul    x, a
        ld    a, xl
        add    a, R0
        ld    R0, a
        ld    a, R1
        ldw    x, R6
        mul    x, a
        clr    R1
        addw    x, R0
        ldw    R0, x
        ld    a, R2
        ldw    x, R5
        mul    x, a
        addw    x, R0
        ldw    R0, x
        ld    a, R3
        ldw    x, R4
        mul    x, a
        addw    x, R0
        ldw    R0, x
        ld    a, R2
        ldw    x, R6
        mul    x, a
        clr    R2
        addw    x, R1
        ldw    R1, x
        jrnc    loc_97C7
        inc    R0

loc_97C7: 
        ld    a, R3
        ldw    x, R5
        mul    x, a
        addw    x, R1
        ldw    R1, x
        jrnc    loc_97D6
        inc    R0

loc_97D6: 
        ld    a, R3
        ldw    x, R6
        mul    x, a
        clr    R3
        addw    x, R2
        ldw    R2, x
        jrnc    locret_97EA
        ldw    x, R0
        incw    x
        ldw    R0, x

locret_97EA: 
        ret
; End of function MUL32_R0R3_R4R7


; =============== S U B	R O U T	I N E =======================================


MOD32_R0R3_IMM32: 
        call    LDR32_R4R7_IMM32
        jra    DIVMOD32_R0R3_R4R7; : R0R3 - частное, R4R7 - остаток
; End of function MOD32_R0R3_IMM32


; =============== S U B	R O U T	I N E =======================================

; : R0R3 - частное, R4R7 - остаток

DIVMOD32_R0R3_IMM32: 
        call    LDR32_R4R7_IMM32
; End of function DIVMOD32_R0R3_IMM32


; =============== S U B	R O U T	I N E =======================================

; : R0R3 - частное, R4R7 - остаток

DIVMOD32_R0R3_R4R7: 
        ldw    x, R0
        jrne    loc_9815
        ldw    y, R4
        jrne    loc_9808
        ldw    x, R2
        ldw    y, R6
        divw    x, y
        ldw    R2, x
        ldw    R6, y
        ret
; ---------------------------------------------------------------------------

loc_9808: 
        ldw    R4, x
        mov    R6, R2
        mov    R7, R3
        ldw    R0, x
        ldw    R2, x
        ret
; ---------------------------------------------------------------------------

loc_9815: 
        ld    a, #0x20; ' '
        tnz    R0
        jrne    loc_9828
        ldw    x, R1
        ldw    R0, x
        mov    R2, R3
        clr    R3
        dec    R3
        sub    a, #8

loc_9828: 
        clrw    x
        clrw    y
        scf
        jra    loc_9845
; ---------------------------------------------------------------------------

loc_982E: 
        rlcw    y
        rlcw    x
        cpw    x, R4
        jrne    loc_9838
        cpw    y, R6

loc_9838: 
        jrc    loc_9845
        subw    y, R6
        jrnc    loc_9841
        decw    x

loc_9841: 
        subw    x, R4

loc_9845: 
        rlc    R3
        rlc    R2
        rlc    R1
        rlc    R0
        dec    a
        jrpl    loc_982E
        ldw    R4, x
        ldw    R6, y
        ldw    x, R0
        cplw    x
        ldw    R0, x
        ldw    x, R2
        cplw    x
        ldw    R2, x
        ret
; End of function DIVMOD32_R0R3_R4R7


; =============== S U B	R O U T	I N E =======================================

; : R0R3 - частное, R4R7 - остаток

SDIVMOD32_R0R3_IMM32: 
        call    LDR32_R4R7_IMM32
; End of function SDIVMOD32_R0R3_IMM32


; =============== S U B	R O U T	I N E =======================================

; : R0R3 - частное, R4R7 - остаток

SDIVMOD32_R0R3_R4R7: 
        push    #0
        push    #0
        tnz    R0
        jrpl    loc_9875
        ldw    x, #R0
        call    NEG32_atX
        cpl    (1,sp)
        cpl    (2,sp)

loc_9875: 
        tnz    R4
        jrpl    loc_9881
        ldw    x, #4
        call    NEG32_atX
        cpl    (1,sp)

loc_9881: ; : R0R3 - частное, R4R7 - остаток
        call    DIVMOD32_R0R3_R4R7
        pop    a
        tnz    a
        jreq    loc_988E
        ldw    x, #R0
        call    NEG32_atX

loc_988E: 
        pop    a
        tnz    a
        jreq    locret_9898
        ldw    x, #R4
        call    NEG32_atX

locret_9898: 
        ret
; End of function SDIVMOD32_R0R3_R4R7


; =============== S U B	R O U T	I N E =======================================


NEG32_atX: 
        neg    (3,x)
        clr    a
        sbc    a, (2,x)
        ld    (2,x), a
        clr    a
        sbc    a, (1,x)
        ld    (1,x), a
        clr    a
        sbc    a, (x)
        ld    (x), a
        ret
; End of function NEG32_@X


; =============== S U B	R O U T	I N E =======================================


sub_98A9: 
        pushw    y
        ldw    y, R0
        cpw    y, (x)
        jrne    loc_98B6
        ldw    y, R2
        cpw    y, (2,x)

loc_98B6: 
        popw    y
        ret
; End of function sub_98A9


; =============== S U B	R O U T	I N E =======================================


CMP32_R0R3_R4R7: 
        ldw    x, R0
        cpw    x, R4
        jrne    locret_98C3
        ldw    x, R2
        cpw    x, R6

locret_98C3: 
        ret
; End of function CMP32_R0R3_R4R7


; =============== S U B	R O U T	I N E =======================================


CMP32_R0R3_atX: 
        pushw    x
        ldw    x, (x)
        ldw    R4, x
        popw    x
        ldw    x, (2,x)
        ldw    R6, x
; End of function CMP32_R0R3_@X


; =============== S U B	R O U T	I N E =======================================


CMP32_R0R3_R4R7_0: 
        ldw    x, R0
        cpw    x, R4
        jrne    locret_98E3
        ldw    x, R2
        cpw    x, R6
        push    cc
        pop    a
        and    a, #0x7B; '{'
        bcp    a, #1
        jreq    loc_98E1
        or    a, #4

loc_98E1: 
        push    a
        pop    cc

locret_98E3: 
        ret
; End of function CMP32_R0R3_R4R7_0


; =============== S U B	R O U T	I N E =======================================


NOT32_R0R3: 
        cpl    R0
        cpl    R1
        cpl    R2
        cpl    R3
        ret
; End of function NOT32_R0R3


; =============== S U B	R O U T	I N E =======================================


LSL32_R0R3_IMM8: 
        call    GetIncRA
        ld    a, (x)
        ldw    x, #0
        tnz    a
        jreq    locret_9901

loc_98F7: 
        sll    (R3,x)
        rlc    (R2,x)
        rlc    (R1,x)
        rlc    (x)
        dec    a
        jrne    loc_98F7

locret_9901: 
        ret
; End of function LSL32_R0R3_IMM8


; =============== S U B	R O U T	I N E =======================================


LSR32_R0R3_IMM8: 
        call    GetIncRA
        ld    a, (x)
        ldw    x, #R0
        tnz    a
        jreq    locret_9916

loc_990C: 
        srl    (x)
        rrc    (1,x)
        rrc    (2,x)
        rrc    (3,x)
        dec    a
        jrne    loc_990C

locret_9916: 
        ret
; End of function LSR32_R0R3_IMM8


; =============== S U B	R O U T	I N E =======================================

; R0-R3	= abs(x)

ABS32: 
        ldw    R2, x
        clrw    x
        tnz    R2
        jrpl    loc_991F
        cplw    x

loc_991F: 
        ldw    R0, x
        ret
; End of function ABS32


; =============== S U B	R O U T	I N E =======================================


HandleUpdateCmd: 
        call    PUSH32_R8R11
        call    PUSH32_R12R15
        sub    sp, #2
        ldw    R12, x
        addw    x, #PACKET.idx
        ld    a, (x)
        ld    R8, a; idx
        ld    a, [R12.w]
        ld    (1,sp),    a; len
        clr    a
        ld    (2,sp),    a
        ld    a, in_update
        jreq    loc_994C
        clrw    x
        mov    R2, #6
        call    PktGetCmd_r1_clrR0
        ld    a, #0x22; '"'
        jp    _HandleUpdateCmd_rsp_exit
; ---------------------------------------------------------------------------

loc_994C: 
        mov    in_update, #1
        ldw    x, R12
        addw    x, #PACKET.cmd
        ld    a, (x)
        sub    a, #7
        jreq    _HandleUpdateCmd__07
        dec    a
        jreq    _HandleUpdateCmd__08
        dec    a
        jrne    loc_9963
        jp    _HandleUpdateCmd__09
; ---------------------------------------------------------------------------

loc_9963: 
        dec    a
        jrne    loc_9969
        jp    _HandleUpdateCmd__0A
; ---------------------------------------------------------------------------

loc_9969: 
        jp    _HandleUpdateCmd_err_7
; ---------------------------------------------------------------------------

_HandleUpdateCmd__07: ; update size
        call    PktDataLdr32
        call    MOV32_R8R11_R0R3
        call    ClrUpdateVars
        ld    a, (1,sp); len
        cp    a, #6
        jreq    _HandleUpdateCmd__07_len_ok
        jp    _HandleUpdateCmd_err_7
; ---------------------------------------------------------------------------

_HandleUpdateCmd__07_len_ok: 
        ldw    x, R8
        cpw    x, #0
        jrne    loc_9987
        ldw    x, R10

loc_9987: 
        jrne    _HandleUpdateCmd_upd_len_ok
        jp    _HandleUpdateCmd_err_1
; ---------------------------------------------------------------------------

_HandleUpdateCmd_upd_len_ok: 
        ldw    x, R8
        jrne    loc_9995
        ldw    x, R10
        cpw    x, #0x3801

loc_9995: 
        jrc    loc_999A
        jp    _HandleUpdateCmd_err_1
; ---------------------------------------------------------------------------

loc_999A: 
        clr    UpdCfg.flag
        call    SaveUpdateConfig_0
        jrne    loc_99A6
        jp    _HandleUpdateCmd_err_3
; ---------------------------------------------------------------------------

loc_99A6: 
        ldw    x, #UpdSize
        call    STR32_X_R8R11
        jp    _HandleUpdateCmd_tx_result
; ---------------------------------------------------------------------------

_HandleUpdateCmd__08: 
        ld    a, (1,sp)
        add    a, #-2
        ld    (1,sp),    a
        ldw    x, #word_45E
        call    LDR32_R4R7_X
        call    LdrUpdSize
        ldw    x, R0
        jrne    loc_99C4
        ldw    x, R2

loc_99C4: 
        jrne    loc_99CB
        ld    a, #9
        jp    _HandleUpdateCmd_set_err
; ---------------------------------------------------------------------------

loc_99CB: 
        cp    a, #0x80; 'А'
        jreq    loc_99E6
        call    LdrUpdSize
        call    SUB32_R0R3_R4R7
        ldw    x, R0
        cpw    x, #0
        jrne    loc_99E1
        ldw    x, R2
        cpw    x, #0x81; 'Б'

loc_99E1: 
        jrc    loc_99E6
        jp    _HandleUpdateCmd_err_1
; ---------------------------------------------------------------------------

loc_99E6: 
        ld    a, R8
        cp    a, byte_4AB
        jreq    loc_99F0
        jp    loc_9A9C
; ---------------------------------------------------------------------------

loc_99F0: 
        ld    a, (1,sp)
        clrw    x
        ld    xl, a
        ldw    R10, x
        clrw    x
        ldw    R8, x
        call    MOV32_R0R3_R4R7
        call    MOV32_R4R7_R8R11
        call    ADD32_R0R3_R4R7
        call    MOV32_R4R7_R0R3
        ldw    x, #0x80; 'А'
        ldw    R2, x
        clrw    x
        ldw    R0, x
        ldw    x, #0x45A
        call    ADD32_R0R3_atX
        call    CMP32_R0R3_R4R7
        jrnc    loc_9A1B
        jp    _HandleUpdateCmd_err_1
; ---------------------------------------------------------------------------

loc_9A1B: 
        sim
        ld    a, (1,sp)
        cp    a, #0x80; 'А'
        jreq    loc_9A3D
        clrw    x
        ld    xl, a
        ldw    R2, x
        ldw    x, #0x80; 'А'
        subw    x, R2
        ldw    R0, x
        clrw    y
        ldw    x, R2
        addw    x, R12
        addw    x, #4
        call    memset; (x=dst, yl=val, R0=size)

loc_9A3D: 
        ldw    x, R12
        addw    x, #4
        ldw    R14, x
        ld    a, byte_4AB
        add    a, #0x90; 'Р'  ; update flash area
        ld    R0, a
        ld    a, #0xFD; '¤'
        call    _MemProgram
        cp    a, #0
        jreq    loc_9A96
        tnz    (1,sp)
        jreq    loc_9A78
        ldw    y, R14
        ld    a, (1,sp)
        ld    R4, a

loc_9A5F: 
        ld    a, (y)
        call    ZEXT32_R0R3_A_0
        ldw    x, #0x462
        call    ADD32_R0R3_atX
        call    STR32; *x = R0:R2
        ldw    x, y
        incw    x
        ldw    y, x
        ld    a, R4
        dec    a
        ld    R4, a
        jrne    loc_9A5F

loc_9A78: 
        ldw    x, #0x45E
        call    MOV32_R0R3_R8R11
        call    ADD32_R0R3_atX
        call    STR32; *x = R0:R2
        ld    a, byte_4AB
        inc    a
        ld    byte_4AB, a

loc_9A8B: 
        rim
        tnz    (2,sp)
        jreq    loc_9A93
        jp    loc_9B23
; ---------------------------------------------------------------------------

loc_9A93: 
        jp    _HandleUpdateCmd_tx_result
; ---------------------------------------------------------------------------

loc_9A96: 
        ld    a, #3
        ld    (2,sp),    a
        jra    loc_9A8B
; ---------------------------------------------------------------------------

loc_9A9C: 
        ld    a, byte_4AB
        clrw    x
        ld    xl, a
        decw    x
        ldw    y, x
        clrw    x
        exg    a, xl
        ld    a, R8
        exg    a, xl
        ldw    R0, x
        cpw    y, R0
        jreq    _HandleUpdateCmd_tx_result
        ld    a, #5
        jra    _HandleUpdateCmd_set_err
; ---------------------------------------------------------------------------

_HandleUpdateCmd__09: 
        ldw    x, #UpdSize
        call    LDR32_R4R7_X
        ld    a, (1,sp)
        cp    a, #6
        jrne    _HandleUpdateCmd_err_7
        ldw    x, #word_45E
        call    LDR32_R0R3_atX; R0:R2	= *x
        call    CMP32_R0R3_R4R7
        jrc    _HandleUpdateCmd_err_1
        ldw    x, R4
        jrne    loc_9AD1
        ldw    x, R6

loc_9AD1: 
        jrne    loc_9AD7

_HandleUpdateCmd_err_1: 
        ld    a, #1
        jra    _HandleUpdateCmd_set_err
; ---------------------------------------------------------------------------

loc_9AD7: 
        ldw    x, #word_462
        call    LDR32_R0R3_atX; R0:R2	= *x
        call    NOT32_R0R3
        call    STR32; *x = R0:R2
        call    PktDataLdr32
        ldw    x, #word_462
        call    sub_98A9
        jreq    loc_9AF2
        ld    a, #8
        jra    _HandleUpdateCmd_set_err
; ---------------------------------------------------------------------------

loc_9AF2: 
        call    LdrUpdSize
        ldw    x, R2
        sllw    x
        clr    a
        rlc    a
        rrwa    x, a
        ld    a, xl
        inc    a
        ld    UpdCfg.num_pages, a
        mov    UpdCfg.flag, #1
        call    SaveUpdateConfig_0
        jrne    loc_9B23

_HandleUpdateCmd_err_3: 
        ld    a, #3
        jra    _HandleUpdateCmd_set_err
; ---------------------------------------------------------------------------

_HandleUpdateCmd__0A: 
        ld    a, UpdCfg.flag
        jreq    _HandleUpdateCmd_tx_result
        call    SaveConfig
        bset    WWDG_CR, #7; reboot
        bres    WWDG_CR, #6; WWDG Control Register
        jra    _HandleUpdateCmd_tx_result
; ---------------------------------------------------------------------------

_HandleUpdateCmd_err_7: 
        ld    a, #7

_HandleUpdateCmd_set_err: 
        ld    (2,sp),    a

loc_9B23: 
        call    ClrUpdateVars

_HandleUpdateCmd_tx_result: 
        clrw    x
        ld    a, (2,sp)
        ld    R2, a
        call    PktGetCmd_r1_clrR0
        ld    a, #0x25; '%'

_HandleUpdateCmd_rsp_exit: ; (a=dev, r0=len, r1=cmd, r2=sub, x->data)
        call    j__FramePacket
        clr    in_update
        addw    sp, #2
        jp    epi_ret_0
; End of function HandleUpdateCmd


; =============== S U B	R O U T	I N E =======================================


ProcessChargingStates: 
        push    R8
        ld    R8, a
        ld    a, MainState.OV
        jreq    _ProcessChargingStates_no_ov
        ldw    x, MaxCellVoltage; in mV
        cpw    x, #4100
        jrnc    loc_9B73; X>=4100
        call    CmpUVCutoff
        jrc    loc_9B73; <
        ld    a, MainState.SCD
        jrne    loc_9B73
        ld    a, MainState.OCD
        jrne    loc_9B73
        ld    a, R8
        add    a, OVTime
        ld    OVTime,    a
        cp    a, #30
        jrslt    loc_9B85
        mov    OVTime,    #30
        clr    MainState.OV
        jra    loc_9B85
; ---------------------------------------------------------------------------

loc_9B73: 
        ld    a, OVTime
        cp    a, #1
        jrslt    loc_9B85
        sub    a, R8
        ld    OVTime,    a
        jra    loc_9B85
; ---------------------------------------------------------------------------

_ProcessChargingStates_no_ov: 
        clr    OVTime

loc_9B85: 
        ld    a, MainState.UV
        jreq    _ProcessChargingStates_no_uv
        ld    a, UVTime
        inc    a
        ld    UVTime,    a
        cp    a, #2
        jrnc    _ProcessChargingStates_chg_err
        call    CmpUVCutoff
        jrc    _ProcessChargingStates_chg_err
        ld    a, MainState.Overheat
        jrne    _ProcessChargingStates_chg_err
        ld    a, MainState.SCD
        jrne    _ProcessChargingStates_chg_err
        ld    a, MainState.OCD
        jrne    _ProcessChargingStates_chg_err
        ld    a, MainState.Disbalanced
        jrne    _ProcessChargingStates_chg_err
        ld    a, #1
        call    AfeControlCharge; (a=EnableCharge)
        jra    loc_9C2D
; ---------------------------------------------------------------------------

_ProcessChargingStates_chg_err: ; : R0R3 in mA
        call    GetCurrent
        ldw    x, #-200
        call    CMP32_R0R3_x_neg; extend x as negative
        jrsge    loc_9BCA
        mov    MainState.IsCharging, #1
        mov    SlowChargeTimer, #4
        jra    loc_9BDB
; ---------------------------------------------------------------------------

loc_9BCA: 
        ld    a, SlowChargeTimer
        cp    a, #1
        jrslt    loc_9BD7
        dec    a
        ld    SlowChargeTimer, a
        jra    loc_9BDB
; ---------------------------------------------------------------------------

loc_9BD7: 
        clr    MainState.IsCharging

loc_9BDB: 
        call    DisableCharge
        ld    a, UVTime
        cp    a, #4
        jrc    loc_9C2D
        clr    UVTime
        jra    loc_9C2D
; ---------------------------------------------------------------------------

_ProcessChargingStates_no_uv: 
        clr    UVTime
        call    GetCurrent; : R0R3 in mA
        ldw    x, #-50
        call    CMP32_R0R3_x_neg; extend x as negative
        jrsge    loc_9C10
        ld    a, R8
        add    a, SlowChargeTimer
        ld    SlowChargeTimer, a
        cp    a, #10
        jrslt    loc_9C2D
        mov    SlowChargeTimer, #10
        mov    MainState.IsCharging, #1
        jra    loc_9C2D
; ---------------------------------------------------------------------------

loc_9C10: ; : R0R3 in mA
        call    GetCurrent
        ldw    x, #-39
        call    CMP32_R0R3_R4X
        jrslt    loc_9C2D
        ld    a, SlowChargeTimer
        cp    a, #1
        jrslt    loc_9C29
        sub    a, R8
        ld    SlowChargeTimer, a
        jra    loc_9C2D
; ---------------------------------------------------------------------------

loc_9C29: 
        clr    MainState.IsCharging

loc_9C2D: ; : R0R3 in mA
        call    GetCurrent
        ldw    x, #-800
        call    CMP32_R0R3_x_neg; extend x as negative
        jrsge    loc_9C5F
        ld    a, byte_49F
        jreq    loc_9C7D
        clrw    x
        exg    a, xl
        ld    a, R8
        exg    a, xl
        addw    x, MediumChargeTimer
        ldw    MediumChargeTimer, x
        cpw    x, #600
        jrslt    loc_9C7D
        ld    a, #CONFIG.ChargeCount-0x1C
        call    GetConfigReg
        incw    x
        ld    a, #CONFIG.ChargeCount-0x1C
        call    SetConfigReg
        clr    byte_49F
        jra    loc_9C7D
; ---------------------------------------------------------------------------

loc_9C5F: 
        ldw    x, MediumChargeTimer
        cpw    x, #1
        jrslt    loc_9C79
        clrw    y
        exg    a, yl
        ld    a, R8
        exg    a, yl
        ldw    R0, y
        subw    x, R0
        ldw    MediumChargeTimer, x
        jra    loc_9C7D
; ---------------------------------------------------------------------------

loc_9C79: 
        mov    byte_49F, #1

loc_9C7D: 
        ld    a, MainState.Disbalanced
        jreq    loc_9C85
        call    DisableCharge

loc_9C85: ; : R0R3 in mA
        call    GetCurrent
        ldw    x, #-MAX_CHARGE_CURRENT
        call    CMP32_R0R3_x_neg; extend x as negative
        jrsge    loc_9CA9
        ld    a, ChargeOvercurrentTimer
        add    a, #2
        ld    ChargeOvercurrentTimer,    a
        cp    a, #40
        jrslt    _ProcessChargingStates_exit
        mov    ChargeOvercurrentTimer,    #40
        mov    MainState.ChargeOvercurrent, #1
        call    DisableCharge
        jra    _ProcessChargingStates_exit
; ---------------------------------------------------------------------------

loc_9CA9: 
        ld    a, ChargeOvercurrentTimer
        cp    a, #1
        jrslt    loc_9CB6
        dec    a
        ld    ChargeOvercurrentTimer,    a
        jra    _ProcessChargingStates_exit
; ---------------------------------------------------------------------------

loc_9CB6: 
        clr    MainState.ChargeOvercurrent

_ProcessChargingStates_exit: 
        pop    R8
        ret
; End of function ProcessChargingStates


; =============== S U B	R O U T	I N E =======================================


MeasureCells: 
        call    PUSH32_R8R11
        call    PUSH32_R12R15
        sub    sp, #2
        clrw    x
        ldw    (1,sp),    x
        ldw    R10, x
        ldw    R8, x
        call    sub_9279
        cp    a, #0
        jreq    _MeasureCells_no_err_2
        ldw    x, #20
        ldw    R0, x
        clrw    y
        ldw    x, #Config.VoltageCell1
        call    memset; (x=dst, yl=val, R0=size)
        clrw    x
        call    SetConfigVoltage
        clrw    x
        call    SetVoltageCopy
        clrw    x
        ldw    BattVoltage, x
        ld    a, #2
        call    SetErrorCode
        jra    _MeasureCells_exit_0
; ---------------------------------------------------------------------------

_MeasureCells_no_err_2: 
        ld    a, #2
        call    UnsetErrorCode
        clrw    x
        decw    x
        ldw    MinCellVoltage,    x; in mV
        clrw    x
        ldw    MaxCellVoltage,    x; in mV
        ldw    AvgCellVoltage,    x
        mov    R12, #9

_MeasureCells_cell_loop: 
        ldw    x, sp
        incw    x
        ld    a, R12
        call    GetCellVoltage; (a=cell, x->wVal)
        cp    a, #0
        jreq    loc_9D18

_MeasureCells_exit_0: 
        clr    a
        jp    _MeasureCells_exit
; ---------------------------------------------------------------------------

loc_9D18: 
        ldw    x, (1,sp)
        ld    a, R12
        add    a, #CONFIG.VoltageCell1-0x40
        call    SetConfigReg
        ldw    x, (1,sp)
        call    sub_C375; R4R7 = zext(x)
; R0R3 = R8R11
        call    sub_C2CB; R0R3 += R4R7
; R8R11	= R0R3
        ldw    x, (1,sp)
        cpw    x, MinCellVoltage; in mV
        jrnc    loc_9D38
        ldw    MinCellVoltage,    x; in mV
        ld    a, R12
        ld    MinVoltageCellNumber, a

loc_9D38: ; in mV
        ldw    x, MaxCellVoltage
        cpw    x, (1,sp)
        jrnc    loc_9D49
        ldw    x, (1,sp)
        ldw    MaxCellVoltage,    x; in mV
        ld    a, R12
        ld    MaxVoltageCellIndex, a

loc_9D49: 
        ld    a, R12
        dec    a
        ld    R12, a
        cp    a, #0
        jrsge    _MeasureCells_cell_loop
        call    DIVMOD32_R0R3_IMM32; :	R0R3 - частное,	R4R7 - остаток
; ---------------------------------------------------------------------------
        dc.l 10
; ---------------------------------------------------------------------------
        call    MOV32_R8R11_R0R3; average cell	voltage
        ldw    x, Voltage
        call    sub_C092
        call    LSR32_R0R3_IMM8
; ---------------------------------------------------------------------------
        dc.b 1
; ---------------------------------------------------------------------------
        ldw    x, R2
        call    SetVoltageCopy
        ldw    x, R10
        ldw    AvgCellVoltage,    x
        ldw    x, #4120
        subw    x, CapacityVoltageParamL
        ldw    R2, x
        ldw    x, MinCellVoltage; in mV
        ldw    R0, x
        ldw    x, MaxCellVoltage; in mV
        subw    x, R0
        ldw    R0, x
        cpw    x, #801
        jrc    loc_9D92
        mov    MainState.Disbalanced, #1
        jra    loc_9D96
; ---------------------------------------------------------------------------

loc_9D92: 
        clr    MainState.Disbalanced

loc_9D96: 
        cpw    x, R2
        jrnc    loc_9DCF
        ldw    x, CapacityVoltageParamL
        cpw    x, MinCellVoltage; in mV
        jrnc    loc_9DCF
        ldw    R14, x
        clrw    x
        ldw    R12, x
        ldw    x, R2
        subw    x, R0
        call    ZEXT32_R8R11_X
        ldw    x, MinCellVoltage; in mV
        subw    x, CapacityVoltageParamL
        ldw    R6, x
        clrw    x
        ldw    R4, x
        ldw    R0, x
        call    MUL32_R0R3_R4R7
        call    MOV32_R4R7_R8R11
        call    DIVMOD32_R0R3_R4R7; : R0R3 - частное, R4R7 - остаток
        call    MOV32_R4R7_R12R15
        call    sub_C2CB; R0R3 += R4R7
; R8R11	= R0R3
        jra    loc_9DD5
; ---------------------------------------------------------------------------

loc_9DCF: ; in mV
        ldw    x, MinCellVoltage
        call    ZEXT32_R8R11_X

loc_9DD5: 
        ld    a, byte_492
        jreq    loc_9DFE
        ld    a, MainState.LowPowerMode
        jrne    loc_9DFA
        ldw    y, BattVoltage
        ldw    x, #3
        ldw    R0, x
        ldw    x, y
        call    MUL16_X_R0R1
        call    sub_C092
        call    INC32_R0R3
        call    LSR32_R0R3_IMM8
; ---------------------------------------------------------------------------
        dc.b 2
; ---------------------------------------------------------------------------
        ldw    x, R2
        jra    loc_9E05
; ---------------------------------------------------------------------------

loc_9DFA: 
        ldw    x, R10
        jra    loc_9E05
; ---------------------------------------------------------------------------

loc_9DFE: 
        mov    byte_492, #1
        ldw    x, MinCellVoltage; in mV

loc_9E05: 
        ldw    BattVoltage, x
        ld    a, #1

_MeasureCells_exit: 
        addw    sp, #2
        jp    epi_ret_0
; End of function MeasureCells


; =============== S U B	R O U T	I N E =======================================


sub_9E0F: 
        call    PUSH32_R8R11
        push    R12
        call    sub_9279
        cp    a, #0
        jreq    loc_9E3C
        call    GetRemainingCapacity
        ldw    x, #6
        call    _CMP32_R0R3_X
        jrsge    loc_9E2A
        jp    loc_9F58
; ---------------------------------------------------------------------------

loc_9E2A: 
        ldw    x, #-5
        ldw    R2, x
        clrw    x
        decw    x
        ldw    R0, x
        ldw    x, #RemainingCapacity
        call    sub_C2EF
        jp    loc_9F58
; ---------------------------------------------------------------------------

loc_9E3C: ; : x->Current,	R0R3=Current, flags
        call    CheckCurrent
        jrpl    loc_9E46
        call    LDR32NEG_R0R3_atX
        jra    loc_9E49
; ---------------------------------------------------------------------------

loc_9E46: ; R0:R2	= *x
        call    LDR32_R0R3_atX

loc_9E49: 
        ldw    x, #3001
        call    _CMP32_R0R3_X
        jrslt    loc_9E5C
        ld    a, byte_4A1
        cp    a, #5
        jrnc    loc_9E5C
        inc    a
        ld    byte_4A1, a

loc_9E5C: 
        ldw    x, word_47A
        incw    x
        ldw    word_47A, x
        call    CheckCurrent; : x->Current,	R0R3=Current, flags
        jrpl    loc_9E6D
        call    LDR32NEG_R0R3_atX
        jra    loc_9E70
; ---------------------------------------------------------------------------

loc_9E6D: ; R0:R2	= *x
        call    LDR32_R0R3_atX

loc_9E70: 
        call    CMP32_R0R3_R4R7_0
        jrslt    loc_9E7D
        call    sub_C287
        jrsge    loc_9E7D
        jp    loc_9F58
; ---------------------------------------------------------------------------

loc_9E7D: 
        ld    a, byte_4A1
        jreq    loc_9E8E
        call    sub_C287
        jrsge    loc_9E8E
        dec    a
        ld    byte_4A1, a
        jp    loc_9F58
; ---------------------------------------------------------------------------

loc_9E8E: 
        call    GetBattVoltage_R8R11
        ld    a, RemainingPercentage
        cp    a, #51
        jrslt    loc_9E9E
        ldw    y, DesignCellResistance; mOhm,	5.2 - 24, 7.8 -	16, 10 - 21
        jra    loc_9EBE
; ---------------------------------------------------------------------------

loc_9E9E: 
        ld    a, RemainingPercentage
        call    absx
        ldw    y, #150
        ldw    R0, x
        subw    y, R0
        ldw    x, DesignCellResistance; mOhm,	5.2 - 24, 7.8 -	16, 10 - 21
        ldw    R0, x
        ldw    x, y
        call    MUL16_X_R0R1
        ldw    y, #100
        divw    x, y
        ldw    y, x

loc_9EBE: ; in mA
        ldw    x, #Current
        call    LDR32_R4R7_X
        ldw    R2, y
        clrw    x
        ldw    R0, x
        call    MUL32_R0R3_R4R7
        call    SDIV32_R0R3_1000_MOV32_R4R7_R8R11
        call    ADD32_R0R3_R4R7
        ldw    x, #word_446
        call    sub_C2EF
        ldw    x, word_474
        incw    x
        ldw    word_474, x
        ldw    x, word_474
        cpw    x, #0xA
        jrsge    loc_9EED
        call    sub_C287
        jrslt    loc_9F58

loc_9EED: 
        ldw    x, #word_446
        call    LDR32_R8R11_atX
        ldw    x, word_474
        call    sub_C15A
        call    SDIVMOD32_R0R3_R4R7; :	R0R3 - частное,	R4R7 - остаток
        ldw    y, R2
        ld    a, byte_490
        clrw    x
        ld    xl, a
        sllw    x
        ldw    (BattEmfBuf,x),    y; ЭДС
        ld    a, byte_490
        inc    a
        ld    byte_490, a
        ld    a, byte_490
        cp    a, #8
        jrc    loc_9F1A
        clr    byte_490

loc_9F1A: 
        clrw    x
        ldw    R10, x
        ldw    R8, x
        ldw    y, #BattEmfBuf; ЭДС
        mov    R12, #8

loc_9F27: 
        ldw    x, y
        ldw    x, (x)
        call    sub_C15A
        call    sub_C2CB; R0R3 += R4R7
; R8R11	= R0R3
        addw    y, #2
        ld    a, R12
        dec    a
        ld    R12, a
        jrne    loc_9F27
        call    ADD32_R0R3_IMM
; ---------------------------------------------------------------------------
        dc.l 3
; ---------------------------------------------------------------------------
        call    SDIVMOD32_R0R3_IMM32; : R0R3 -	частное, R4R7 -	остаток
; ---------------------------------------------------------------------------
        dc.l 8
; ---------------------------------------------------------------------------
        call    UpdateRemainingCapacity; (R0R3=emf) : x->RemainingCapacity
        clrw    x
        ldw    word_474, x
        ldw    word_446, x
        ldw    word_448, x
        ldw    word_47A, x

loc_9F58: 
        pop    R12
        jp    epi_ret
; End of function sub_9E0F


; =============== S U B	R O U T	I N E =======================================


BlinkLedsStep: 
        ld    a, MainState.ConfigValid
        jrne    loc_9F67
        mov    ErrCode, #ERR_BAD_UID

loc_9F67: 
        ld    a, ErrCode
        jreq    loc_9F6F
        jp    ErrBlinkStep
; ---------------------------------------------------------------------------

loc_9F6F: 
        ld    a, LedSeq
        inc    a
        ld    LedSeq,    a
        ld    a, MainState.SCD; short in discharge
        jreq    loc_9F81
        bres    PB_ODR,    #BLUELED; .1 -	red LED	(1-on)
; .2 - blue LED	(1-on)
        jra    _BlinkLedsStep_red_on_exit
; ---------------------------------------------------------------------------

loc_9F81: ; overcurrent in discharge
        ld    a, MainState.OCD
        jreq    loc_9F99
        call    BlueOffGetSeq
        cp    a, #1
        jreq    _BlinkLedsStep_red_on_exit
        cp    a, #2
        jrnc    _BlinkLedsStep_red_off_exit
        jp    _BlinkLedsStep_exit
; ---------------------------------------------------------------------------

_BlinkLedsStep_red_off_exit: 
        call    RedLedOff
        jra    _BlinkLedsStep_clr_seq_exit
; ---------------------------------------------------------------------------

loc_9F99: 
        ld    a, MainState.IsCharging
        jreq    loc_9FA7
        call    BlueOffGetSeq
        cp    a, #5
        jreq    _BlinkLedsStep_red_on_exit
        jra    loc_9FB8
; ---------------------------------------------------------------------------

loc_9FA7: ; undervoltage
        ld    a, MainState.UV
        jreq    loc_9FC2
        call    BlueOffGetSeq
        cp    a, #9
        jrne    loc_9FB8

_BlinkLedsStep_red_on_exit: ; .1 - red LED (1-on)
        bset    PB_ODR,    #REDLED; .2 - blue LED	(1-on)
        ret
; ---------------------------------------------------------------------------

loc_9FB8: 
        cp    a, #10
        jrc    _BlinkLedsStep_exit
        clr    LedSeq
        jra    loc_9FD0
; ---------------------------------------------------------------------------

loc_9FC2: ; overvoltage
        ld    a, MainState.OV
        jrne    loc_9FCC
        ld    a, MainState.ChargeOvercurrent
        jreq    loc_9FD4

loc_9FCC: ; .1 - red LED (1-on)
        bset    PB_ODR,    #BLUELED; .2 -	blue LED (1-on)

loc_9FD0: 
        call    RedLedOff
        ret
; ---------------------------------------------------------------------------

loc_9FD4: 
        ld    a, MainState.IsRunning
        jreq    loc_9FEF
        call    RedLedOff
        ld    a, LedSeq
        cp    a, #2
        jrc    _BlinkLedsStep_exit
        call    BlueLedOn5
        bres    PB_ODR,    #BLUELED; .1 -	red LED	(1-on)
; .2 - blue LED	(1-on)

_BlinkLedsStep_clr_seq_exit: 
        clr    LedSeq
        ret
; ---------------------------------------------------------------------------

loc_9FEF: ; in mA
        ldw    x, #Current
        call    LDR32_R0R3_atX; R0:R2	= *x
        ldw    x, #51
        ldw    R6, x
        clrw    x
        ldw    R4, x
        call    CMP32_R0R3_R4R7_0
        call    RedLedOff
        jrslt    loc_A01B
        ld    a, LedSeq
        cp    a, #5
        jrne    loc_A011
        bset    PB_ODR,    #BLUELED; .1 -	red LED	(1-on)
; .2 - blue LED	(1-on)
        ret
; ---------------------------------------------------------------------------

loc_A011: 
        cp    a, #10
        jrc    _BlinkLedsStep_exit
        clr    LedSeq
        jra    _BlinkLedsStep_blue_off
; ---------------------------------------------------------------------------

loc_A01B: 
        ld    a, LedSeq
        cp    a, #5
        jrc    _BlinkLedsStep_exit
        clr    LedSeq
        call    BlueLedOn5

_BlinkLedsStep_blue_off: ; .1 - red LED (1-on)
        bres    PB_ODR,    #BLUELED; .2 -	blue LED (1-on)

_BlinkLedsStep_exit: 
        ret
; End of function BlinkLedsStep


; =============== S U B	R O U T	I N E =======================================


BlueLedOn5: 
        bset    PB_ODR,    #BLUELED; .1 -	red LED	(1-on)
; .2 - blue LED	(1-on)
        ldw    x, #5
        jp    LongDelay
; End of function BlueLedOn5


; =============== S U B	R O U T	I N E =======================================


BlueOffGetSeq: 
        bres    PB_ODR,    #BLUELED; .1 -	red LED	(1-on)
; .2 - blue LED	(1-on)
        ld    a, LedSeq
        ret
; End of function BlueOffGetSeq


; =============== S U B	R O U T	I N E =======================================


ErrBlinkStep: 
        call    PUSH32_R8R11
        ld    a, ErrCode
        ldw    x, ErrBlinkCnt
        incw    x
        ldw    ErrBlinkCnt, x
        bres    PB_ODR,    #BLUELED; .1 -	red LED	(1-on)
; .2 - blue LED	(1-on)
        ldw    x, ErrBlinkCnt
        cpw    x, #16
        jrc    _ErrBlinkStep_red_off_exit
        ldw    x, ErrBlinkCnt
        addw    x, #-16
        ldw    R10, x
        clrw    x
        ldw    R8, x
        ld    xl, a; ErrCode
        ldw    R2, x
        clrw    x
        ldw    R0, x
        call    LSL32_R0R3_IMM8
; ---------------------------------------------------------------------------
        dc.b 2
; ---------------------------------------------------------------------------
        call    MOV32_R4R7_R0R3
        call    MOV32_R0R3_R8R11
        call    CMP32_R0R3_R4R7
        jrc    loc_A089
        call    RedLedOff
        ld    a, byte_4AC
        inc    a
        ld    byte_4AC, a
        clrw    x
        ldw    ErrBlinkCnt, x
        jra    _ErrBlinkStep_exit
; ---------------------------------------------------------------------------

loc_A089: 
        ld    a, R11
        bcp    a, #1
        jrne    _ErrBlinkStep_exit
        ld    a, R11
        bcp    a, #3
        jrne    _ErrBlinkStep_red_on_exit

_ErrBlinkStep_red_off_exit: 
        call    RedLedOff
        jra    _ErrBlinkStep_exit
; ---------------------------------------------------------------------------

_ErrBlinkStep_red_on_exit: ; .1 - red LED (1-on)
        bset    PB_ODR,    #REDLED; .2 - blue LED	(1-on)

_ErrBlinkStep_exit: 
        ld    a, byte_4AC
        jp    epi_ret
; End of function ErrBlinkStep


; =============== S U B	R O U T	I N E =======================================


pro_0: 
        push    a
        ld    a, #8
        jra    pro
; End of function pro_0


; =============== S U B	R O U T	I N E =======================================


sub_A0A9: 
        push    a
        ld    a, #0xA
        jra    pro
; End of function sub_A0A9


; =============== S U B	R O U T	I N E =======================================


sub_A0AE: 
        push    a
        ld    a, #0xC
        jra    pro
; ---------------------------------------------------------------------------

pro: 
        push    a
        ld    a, (2,sp)
        push    a
        ld    a, (2,sp)
        pushw    x
        ldw    x, (6,sp)
        ldw    (4,sp),    x
        clrw    x
        ld    xl, a
        ldw    x, (x)
        ldw    (6,sp),    x
        popw    x
        pop    a
        ret
; End of function sub_A0AE


; =============== S U B	R O U T	I N E =======================================


epi_ret_2: 
        pushw    x
        ldw    x, (5,sp)
        ldw    R8, x
        jra    epi_ret_1
; End of function epi_ret_2


; =============== S U B	R O U T	I N E =======================================


epi_ret_3: 
        pushw    x
        ldw    x, (5,sp)
        ldw    R10, x
        jra    epi_ret_1
; End of function epi_ret_3


; =============== S U B	R O U T	I N E =======================================


epi_1: 
        pushw    x
        ldw    x, (5,sp)
        ldw    R12, x
        jra    epi_ret_1
; ---------------------------------------------------------------------------

epi_ret_1: 
        ldw    x, (3,sp)
        ldw    (5,sp),    x
        popw    x
        addw    sp, #2
        ret
; End of function epi_1


; =============== S U B	R O U T	I N E =======================================


PUSH32_R0R3: 
        push    a
        ld    a, #R0
        jra    push_ata
; End of function PUSH32_R0R3


; =============== S U B	R O U T	I N E =======================================


PUSH32_R4R7: 
        push    a
        ld    a, #R4
        jra    push_ata
; End of function PUSH32_R4R7


; =============== S U B	R O U T	I N E =======================================


PUSH32_R8R11: 
        push    a
        ld    a, #R8
        jra    push_ata
; End of function PUSH32_R8R11


; =============== S U B	R O U T	I N E =======================================


PUSH32_R12R15: 
        push    a
        ld    a, #R12
        jra    push_ata
; End of function PUSH32_R12R15


; =============== S U B	R O U T	I N E =======================================


push_ata: 
        push    a
        pushw    x
        ld    a, (4,sp)
        push    a
        ld    a, (4,sp)
        pushw    x
        ldw    x, (8,sp)
        ldw    (4,sp),    x
        clrw    x
        ld    xl, a
        ldw    (8,sp),    x
        ldw    x, (x)
        ldw    (6,sp),    x
        ldw    x, (8,sp)
        incw    x
        incw    x
        ldw    x, (x)
        ldw    (8,sp),    x
        popw    x
        pop    a
        ret
; End of function push_@a


; =============== S U B	R O U T	I N E =======================================


POP32_R0R3: 
        pushw    x
        ldw    x, (5,sp)
        ldw    R0, x
        ldw    x, (7,sp)
        ldw    R2, x
        jra    loc_A140
; End of function POP32_R0R3


; =============== S U B	R O U T	I N E =======================================


POP32_R4R7: 
        pushw    x
        ldw    x, (5,sp)
        ldw    R4, x
        ldw    x, (7,sp)
        ldw    R6, x
        jra    loc_A140
; End of function POP32_R4R7


; =============== S U B	R O U T	I N E =======================================


epi_0: 
        pushw    x
        ldw    x, (5,sp)
        ldw    R8, x
        ldw    x, (7,sp)
        ldw    R10, x
        jra    loc_A140
; End of function epi_0


; =============== S U B	R O U T	I N E =======================================


epi: 
        pushw    x
        ldw    x, (5,sp)
        ldw    R12, x
        ldw    x, (7,sp)
        ldw    R14, x
        jra    loc_A140
; ---------------------------------------------------------------------------

loc_A140: 
        ldw    x, (3,sp)
        ldw    (7,sp),    x
        popw    x
        addw    sp, #4
        ret
; End of function epi

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR CalculateVoltageBasedCapacity

epi_ret_0: 
        call    epi
; END OF FUNCTION CHUNK	FOR CalculateVoltageBasedCapacity
; START	OF FUNCTION CHUNK FOR sub_A6EE

epi_ret: 
        call    epi_0
        ret
; END OF FUNCTION CHUNK	FOR sub_A6EE
; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_B1FA

_sub_B1FA_epi_ret: 
        call    epi_1
        call    epi_0
        ret
; END OF FUNCTION CHUNK	FOR sub_B1FA
; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_A769

epi_ret_4: 
        call    epi_ret_2
        ret
; END OF FUNCTION CHUNK	FOR sub_A769

; =============== S U B	R O U T	I N E =======================================


MOVH_R4R5_R2R3: 
        mov    R4, R2
        mov    R5, R3
        ret
; End of function MOVH_R4R5_R2R3


; =============== S U B	R O U T	I N E =======================================


MOV32_R0R3_R4R7: 
        mov    R0, R4
        mov    R1, R5
        mov    R2, R6
        mov    R3, R7
        ret
; End of function MOV32_R0R3_R4R7


; =============== S U B	R O U T	I N E =======================================


MOV32_R0R3_R8R11: 
        mov    R0, R8
        mov    R1, R9
        mov    R2, R10
        mov    R3, R11
        ret
; End of function MOV32_R0R3_R8R11


; =============== S U B	R O U T	I N E =======================================


MOV32_R0R3_R12R15: 
        mov    R0, R12
        mov    R1, R13
        mov    R2, R14
        mov    R3, R15
        ret
; End of function MOV32_R0R3_R12R15


; =============== S U B	R O U T	I N E =======================================


MOV32_R4R7_R0R3: 
        mov    R4, R0
        mov    R5, R1
        mov    R6, R2
        mov    R7, R3
        ret
; End of function MOV32_R4R7_R0R3


; =============== S U B	R O U T	I N E =======================================


MOV32_R4R7_R8R11: 
        mov    R4, R8
        mov    R5, R9
        mov    R6, R10
        mov    R7, R11
        ret
; End of function MOV32_R4R7_R8R11


; =============== S U B	R O U T	I N E =======================================


MOV32_R4R7_R12R15: 
        mov    R4, R12
        mov    R5, R13
        mov    R6, R14
        mov    R7, R15
        ret
; End of function MOV32_R4R7_R12R15


; =============== S U B	R O U T	I N E =======================================


MOV32_R8R11_R0R3: 
        mov    R8, R0
        mov    R9, R1
        mov    R10, R2
        mov    R11, R3
        ret
; End of function MOV32_R8R11_R0R3


; =============== S U B	R O U T	I N E =======================================


MOV16_R10R11_R14R15: 
        mov    R10, R14
        mov    R11, R15
        ret
; End of function MOV16_R10R11_R14R15


; =============== S U B	R O U T	I N E =======================================


MOV32_R12R15_R0R3: 
        mov    R12, R0
        mov    R13, R1
        mov    R14, R2
        mov    R15, R3
        ret
; End of function MOV32_R12R15_R0R3


; =============== S U B	R O U T	I N E =======================================


main: 
        call    LoadConfig
        call    InitMany
        ldw    x, #800
        call    LongDelay
        clr    a
        call    AfeControlCoulombCounter; (a=0-OneShot/1-continuous)
        ldw    x, #250
        call    LongDelay
        call    MeasureCells
        call    MeasureRemainingCapacity
        ldw    x, MinCellVoltage; in mV
        cpw    x, #UV_THRESHOLD
        jrnc    loc_A1FC
        mov    MainState.UV, #1
        mov    MainState.LowPowerMode,    #1

loc_A1FC: ; in mV
        ldw    x, MaxCellVoltage
        cpw    x, #(OV_THRESHOLD+1)
        jrc    _main_MainLoop
        mov    MainState.OV, #1
        jra    _main_MainLoop
; ---------------------------------------------------------------------------

loc_A20A: ; current
        call    LDR32_R0R3_atX

loc_A20D: 
        ldw    x, #LOAD_DETECT_CURRENT
        ldw    R6, x
        clrw    x
        ldw    R4, x
        call    CMP32_R0R3_R4R7_0
        jrsge    _main_have_load
        ld    a, MainState.DischargeError
        jrne    _main_have_load
        call    UartRxProcess
        cp    a, #0
        jrne    _main_have_load
        jp    loc_A2D1
; ---------------------------------------------------------------------------

_main_have_load: ; .1 - red LED (1-on)
        bres    PB_ODR,    #REDLED; .2 - blue LED	(1-on)
        clr    MainState.LowPowerMode
        clr    MainState.got54
        call    UartRxProcess
        cp    a, #0
        jreq    loc_A240
        mov    MainState.IsRunning, #1

loc_A240: 
        ld    a, #1
        call    AfeControlCoulombCounter; (a=0-OneShot/1-continuous)

_main_MainLoop: 
        ld    a, MainState.LowPowerMode
        jreq    _main_NormalMode
        ldw    x, #0x946
        call    SetRtcWakeupTimer
        ld    a, #1
        call    sub_BBE0
        call    Sleep
        call    InitMany
        clr    a
        call    sub_BBE0
        ld    a, MainState.UV
        jrne    _main_red_on
        ld    a, MainState.SCD
        jrne    _main_red_on
        ld    a, MainState.OCD
        jrne    _main_red_on
        ld    a, MainState.Overheat
        jrne    _main_red_on
        ld    a, MainState.Disbalanced
        jrne    _main_red_on
        ld    a, MainState.field_B
        jreq    _main_blue_on

_main_red_on: ; .1 - red LED (1-on)
        bset    PB_ODR,    #REDLED; .2 - blue LED	(1-on)
        ld    a, MainState.IsCharging
        jreq    loc_A28A

_main_blue_on: ; .1 - red LED (1-on)
        bset    PB_ODR,    #BLUELED; .2 -	blue LED (1-on)

loc_A28A: 
        ld    a, #10
        call    DoAllMeasurementsAndBalancing
        call    RefreshStatus
        ld    a, MainState.UV
        jrne    loc_A2D1
        ld    a, MainState.OV
        jrne    _main_have_load
        ld    a, MainState.IsCharging
        jrne    _main_have_load
        ldw    x, #Current; in mA
        call    LDR32_R0R3_atX; R0:R2	= *x
        tnz    R0
        jrmi    loc_A2AE
        jp    loc_A20A
; ---------------------------------------------------------------------------

loc_A2AE: ; R0:R2	= *x
        call    LDR32_R0R3_atX
        call    NEG32_R0R3
        jp    loc_A20D
; ---------------------------------------------------------------------------

_main_NormalMode: ; TIM2 Status register 1
        btjf    TIM2_SR1, #0, loc_A2D1
        bres    TIM2_SR1, #0; TIM2 Status register 1
        call    sub_B732
        call    ProcessIdle
        ld    a, #1
        call    DoAllMeasurementsAndBalancing
        call    RefreshStatus
        call    BlinkLedsStep

loc_A2D1: 
        ld    a, MainState.NeedSaveConfig
        jreq    loc_A2DD
        call    SaveConfig
        clr    MainState.NeedSaveConfig

loc_A2DD: 
        call    UartRxProcess
        call    UartTxProcess
        jp    _main_MainLoop
; End of function main


; =============== S U B	R O U T	I N E =======================================


ProcessTempSensors: 
        call    pro_0
        push    R10
        sub    sp, #2
        ld    R9, a
        clrw    x
        ldw    (1,sp),    x
        ldw    x, sp
        incw    x
        ld    a, #AFE_TS2_HI
        call    AfeReadRegW; (a=reg, x->val)
        cp    a, #0
        jreq    loc_A301
        jp    _ProcessTempSensors_exit
; ---------------------------------------------------------------------------

loc_A301: 
        ldw    x, (1,sp)
        call    sub_B96B
        call    ntc2deg
        ld    R8, a; TS2
        ldw    x, sp
        incw    x
        ld    a, #AFE_TS1_HI
        call    AfeReadRegW; (a=reg, x->val)
        cp    a, #0
        jreq    loc_A319
        jp    _ProcessTempSensors_exit
; ---------------------------------------------------------------------------

loc_A319: 
        ldw    x, (1,sp)
        call    sub_B96B
        call    ntc2deg
        ld    R10, a; TS1
        sub    a, R8
        call    abs_0
        cp    a, #5
        jrc    loc_A347
        ld    a, R10
        add    a, #211
        call    abs_0
        cp    a, #6
        jrnc    loc_A347
        ld    a, R8
        call    absx
        ldw    R0, x
        clr    a
        call    SetConfigTemperatures
        mov    R10, R8
        jra    loc_A35C
; ---------------------------------------------------------------------------

loc_A347: 
        ld    a, R8
        call    absx
        clr    a
        rlwa    x, a
        ldw    y, x
        ld    a, R10
        call    absx
        ldw    R0, x
        ldw    x, y
        rrwa    x, a
        call    SetConfigTemperatures

loc_A35C: 
        ld    a, R8
        add    a, #236
        ld    R8, a
        ld    a, R10
        add    a, #236
        ld    R10, a
        cp    a, R8
        jrsge    loc_A375
        mov    R0, R8
        mov    R8, R10
        mov    R10, R0

loc_A375: 
        ld    a, R8
        cp    a, #1
        jrslt    loc_A381
        ld    a, R10
        cp    a, #50
        jrslt    loc_A3AA

loc_A381: 
        mov    MainState.Overheat, #1
        call    DisableCharge
        ld    a, R8
        cp    a, #239
        jrslt    loc_A394
        ld    a, R10
        cp    a, #70
        jrslt    loc_A3BC

loc_A394: 
        ld    a, R9
        add    a, byte_493
        ld    byte_493, a
        cp    a, #30
        jrslt    loc_A3DA
        mov    byte_493, #30
        mov    MainState.field_B, #1
        jra    loc_A3DA
; ---------------------------------------------------------------------------

loc_A3AA: 
        ld    a, R8
        cp    a, #5
        jrslt    loc_A3C8
        ld    a, R10
        cp    a, #46
        jrsge    loc_A3C8
        clr    MainState.Overheat
        jra    loc_A3C8
; ---------------------------------------------------------------------------

loc_A3BC: 
        ld    a, R8
        cp    a, #241
        jrslt    loc_A3DA
        ld    a, R10
        cp    a, #66
        jrsge    loc_A3DA

loc_A3C8: 
        ld    a, byte_493
        cp    a, #1
        jrslt    loc_A3D6
        sub    a, R9
        ld    byte_493, a
        jra    loc_A3DA
; ---------------------------------------------------------------------------

loc_A3D6: 
        clr    MainState.field_B

loc_A3DA: 
        ld    a, MainState.field_B
        jreq    _ProcessTempSensors_exit
        clr    a
        call    AfeControlDischarge; (a=enable)

_ProcessTempSensors_exit: 
        addw    sp, #2
        pop    R10
        jp    epi_ret_4
; End of function ProcessTempSensors


; =============== S U B	R O U T	I N E =======================================


sub_A3EB: 
        push    R8
        ld    R8, a
        call    GetCurrent; : R0R3 in mA
        ldw    x, #MAX_IDLE_CURRENT
        call    _CMP32_R0R3_X
        jrslt    loc_A400
        ld    a, MainState.IsRunning
        jreq    _sub_A3EB_ocd

loc_A400: ; : R0R3 in mA
        call    GetCurrent
        ldw    x, #MAX_RUN_CURRENT
        call    CMP32_R0R3_R4X
        jrslt    _sub_A3EB_no_ocd
        ld    a, MainState.IsRunning
        jreq    _sub_A3EB_no_ocd

_sub_A3EB_ocd: 
        ld    a, R8
        add    a, ocd_timer
        ld    ocd_timer, a
        cp    a, #MAX_OCD_TIME
        jrslt    loc_A43A
        mov    ocd_timer, #MAX_OCD_TIME
        mov    MainState.OCD, #1
        jra    loc_A43A
; ---------------------------------------------------------------------------

_sub_A3EB_no_ocd: 
        ld    a, ocd_timer
        cp    a, #1
        jrslt    loc_A43A
        ld    a, R8
        sll    a
        ld    R0, a
        ld    a, ocd_timer
        sub    a, R0
        ld    ocd_timer, a

loc_A43A: 
        ld    a, MainState.SCD
        jrne    _sub_A3EB_dchg_error
        ld    a, MainState.OCD
        jreq    loc_A4A5

_sub_A3EB_dchg_error: 
        call    DisableCharge
        clr    a
        call    AfeControlDischarge; (a=enable)
        mov    MainState.DischargeError, #1
        ld    a, RemainingPercentage
        cp    a, #20
        jrsge    loc_A45A
        clr    MainState.DischargeError

loc_A45A: ; Port A input pin value register
        btjf    PA_IDR,    #5, loc_A474
        ld    a, R8
        add    a, byte_495
        ld    byte_495, a
        cp    a, #40
        jrslt    loc_A480
        mov    byte_495, #40
        call    ClrDischargeOverloads
        jra    loc_A480
; ---------------------------------------------------------------------------

loc_A474: 
        ld    a, byte_495
        cp    a, #1
        jrslt    loc_A480
        sub    a, R8
        ld    byte_495, a

loc_A480: 
        ld    a, byte_498
        jreq    _sub_A3EB_exit
        ld    a, R8
        add    a, byte_496
        ld    byte_496, a
        cp    a, #40
        jrslt    _sub_A3EB_exit
        clr    byte_498
        mov    byte_496, #40
        call    ClrDischargeOverloads
        ld    a, #40
        sub    a, R8
        ld    ocd_timer, a
        jra    _sub_A3EB_exit
; ---------------------------------------------------------------------------

loc_A4A5: 
        ld    a, byte_496
        cp    a, #1
        jrslt    loc_A4B3
        sub    a, R8
        ld    byte_496, a
        jra    loc_A4B7
; ---------------------------------------------------------------------------

loc_A4B3: 
        mov    byte_498, #1

loc_A4B7: 
        clr    byte_495
        clr    MainState.DischargeError
        ld    a, MainState.UV
        jrne    _sub_A3EB_exit
        ld    a, MainState.field_B
        jrne    loc_A4CE
        ld    a, #1
        call    AfeControlDischarge; (a=enable)

loc_A4CE: 
        ld    a, MainState.OV
        jrne    _sub_A3EB_exit
        ld    a, MainState.ChargeOvercurrent
        jrne    _sub_A3EB_exit
        call    CmpUVCutoff
        jrc    _sub_A3EB_exit
        ld    a, MainState.Overheat
        jrne    _sub_A3EB_exit
        ld    a, MainState.Disbalanced
        jrne    _sub_A3EB_exit
        ld    a, #1
        call    AfeControlCharge; (a=EnableCharge)

_sub_A3EB_exit: 
        pop    R8
        ret
; End of function sub_A3EB


; =============== S U B	R O U T	I N E =======================================


DoBalancing: 
        call    PUSH32_R8R11
        push    R12
        ld    R11, a
        clr    R8
        clr    R9
        clr    R10
        ld    a, MainState.LowPowerMode
        jrne    loc_A50D
        ld    a, MainState.OV
        jreq    _DoBalancing_disable_bal
        ld    a, MainState.IsRunning
        jrne    _DoBalancing_disable_bal

loc_A50D: 
        ldw    x, AvgCellVoltage
        cpw    x, #3701
        jrc    _DoBalancing_disable_bal
        ldw    x, MaxCellVoltage; in mV
        subw    x, MinCellVoltage; in mV
        cpw    x, #31
        jrc    _DoBalancing_disable_bal
        mov    MainState.EnableBalancing, #1
        jra    loc_A52B
; ---------------------------------------------------------------------------

_DoBalancing_disable_bal: 
        clr    MainState.EnableBalancing

loc_A52B: 
        ldw    x, AvgCellVoltage
        cpw    x, #3701
        jrc    loc_A586
        ld    a, MaxVoltageCellIndex
        mov    R0, #3
        clrw    x
        ld    xl, a
        ld    a, R0
        div    x, a
        ld    R12, a
        cp    a, #10
        jrsge    loc_A586

_DoBalancing_cell_loop: 
        ld    a, R12
        add    a, #CONFIG.VoltageCell1-0x40
        call    GetConfigReg
        subw    x, MinCellVoltage; in mV
        cpw    x, #31
        jrc    loc_A57C
        ld    a, R12
        cp    a, #5
        jrsge    loc_A564
        call    lsl_1_a; a = 1<<a
        or    a, R8
        ld    R8, a
        jra    loc_A57C
; ---------------------------------------------------------------------------

loc_A564: 
        cp    a, #10
        jrsge    loc_A573
        add    a, #-5
        call    lsl_1_a; a = 1<<a
        or    a, R9
        ld    R9, a
        jra    loc_A57C
; ---------------------------------------------------------------------------

loc_A573: 
        add    a, #-10
        call    lsl_1_a; a = 1<<a
        or    a, R10
        ld    R10, a

loc_A57C: 
        ld    a, R12
        add    a, #3
        ld    R12, a
        cp    a, #10
        jrslt    _DoBalancing_cell_loop

loc_A586: 
        clrw    x
        exg    a, xl
        ld    a, R11
        exg    a, xl
        addw    x, word_476
        ldw    word_476, x
        cpw    x, #10
        jrslt    _DoBalancing_exit
        clrw    x
        ldw    word_476, x
        exg    a, xl
        ld    a, R9
        exg    a, xl
        call    lsl_x_5
        clrw    y
        exg    a, yl
        ld    a, R8
        exg    a, yl
        ldw    R0, x
        exgw    x, y
        rrwa    x, a
        or    a, R1
        rrwa    x, a
        or    a, R0
        rrwa    x, a
        exgw    x, y
        clrw    x
        exg    a, xl
        ld    a, R10
        exg    a, xl
        call    lsl_x_10
        ldw    R0, x; R0 = R10<<10
        ldw    x, y
        rlwa    x, a
        or    a, R0
        rrwa    x, a
        ld    a, #CONFIG.BalancingBitmap-0x36
        call    SetConfigReg
        ld    a, MainState.EnableBalancing
        jrne    _DoBalancing_set_bal
        clr    R10
        clr    R9
        clr    R8

_DoBalancing_set_bal: 
        mov    R0, R8
        ld    a, #AFE_CELLBAL1
        call    AfeWriteRegB
        mov    R0, R9
        ld    a, #AFE_CELLBAL2
        call    AfeWriteRegB
        mov    R0, R10
        ld    a, #AFE_CELLBAL3
        call    AfeWriteRegB

_DoBalancing_exit: 
        pop    R12
        jp    epi_ret
; End of function DoBalancing

; ---------------------------------------------------------------------------
Ntc2DegTable:     dc.w 7752, 7349, 6970, 6613, 6277, 5960, 5662, 5381, 5115
        dc.w 4865, 4629, 4405, 4194, 3995, 3807, 3628, 3460, 3300
        dc.w 3149, 3006, 2870, 2741, 2619, 2503, 2393, 2289, 2190
        dc.w 2096, 2006, 1921, 1841, 1764, 1690, 1621, 1554, 1491
        dc.w 1431, 1373, 1319, 1266, 1217, 1169, 1124, 1080, 1039
        dc.w 1000, 962,    926, 891, 858, 826, 796, 767, 740, 713
        dc.w 688, 663, 640, 617, 596, 575, 556,    537, 518, 501
        dc.w 484, 468, 453, 438, 423, 410, 396,    384, 371, 360
        dc.w 348, 337, 327, 317, 307, 298, 289,    280, 271, 263
        dc.w 255, 248, 241, 234, 227, 220, 214,    208, 202, 196
        dc.w 191, 185, 180, 175, 170, 166, 161,    157, 153, 149
        dc.w 145, 141, 137, 134, 130, 127, 123,    120, 117, 114
        dc.w 111, 109, 106, 103, 101

; =============== S U B	R O U T	I N E =======================================


sub_A6E0: 
        ldw    R14, x
        ldw    R12, y
        clr    R1
        mov    R0, #1
        jp    sub_A769
; End of function sub_A6E0


; =============== S U B	R O U T	I N E =======================================


sub_A6EE: 

; FUNCTION CHUNK AT A14B SIZE 00000004 BYTES

        call    PUSH32_R8R11
        ld    R2, a
        mov    R10, R0
        ldw    R8, x
        clr    R11
        call    _SWI2C_SDA1
        mov    R1, #8

loc_A701: 
        ld    a, R11
        sll    a
        ld    R11, a
        call    sub_C0FD
        ldw    y, x

loc_A70B: 
        ldw    x, SWI2C_IOBASE
        incw    x
        ld    a, (x)
        bcp    a, #SCL
        jrne    loc_A71F
        ldw    x, y
        decw    x
        ldw    y, x
        jrne    loc_A70B
        ld    a, #0x13
        jp    epi_ret
; ---------------------------------------------------------------------------

loc_A71F: 
        ld    a, (x)
        bcp    a, #SDA
        jreq    loc_A72A
        mov    R0, #1
        jra    loc_A72C
; ---------------------------------------------------------------------------

loc_A72A: 
        clr    R0

loc_A72C: 
        call    sub_C319
        cp    a, #2
        jrnc    loc_A757
        or    a, R11
        ld    R11, a
        ld    a, R1
        dec    a
        ld    R1, a
        jrne    loc_A701
        ld    a, R2
        call    sub_BCF3
        ld    R0, a
        jreq    loc_A74A
        jp    epi_ret
; ---------------------------------------------------------------------------

loc_A74A: 
        ld    a, R10
        cp    a, #1
        jrne    loc_A760
        call    sub_BBB7
        ld    R0, a
        jreq    loc_A760

loc_A757: 
        ld    a, R0
        ld    [R8.w],    a
        clr    a
        jp    epi_ret
; ---------------------------------------------------------------------------

loc_A760: 
        clr    a
        ld    [R8.w],    a
        ld    a, R11
        jp    epi_ret
; End of function sub_A6EE


; =============== S U B	R O U T	I N E =======================================


sub_A769: 

; FUNCTION CHUNK AT A156 SIZE 00000004 BYTES

        call    pro_0
        ld    R8, a
        ld    a, R0
        mov    R9, R1
        cp    a, #1
        jrne    loc_A77D
        call    sub_B812
        tnz    a
        jrne    loc_A7C0

loc_A77D: 
        mov    R0, #8

loc_A781: 
        ld    a, R8
        bcp    a, #0x80; 'А'
        jreq    loc_A78C
        call    sub_C313
        jra    loc_A78F
; ---------------------------------------------------------------------------

loc_A78C: 
        call    sub_C307

loc_A78F: 
        call    sub_C295

loc_A792: 
        ld    a, (y)
        bcp    a, #0x80; 'А'
        jrne    loc_A7A0
        decw    x
        jrne    loc_A792
        ld    a, #0x13
        jp    epi_ret_4
; ---------------------------------------------------------------------------

loc_A7A0: 
        call    sub_C385
        ld    a, R8
        sll    a
        ld    R8, a
        ld    a, R0
        dec    a
        ld    R0, a
        jrne    loc_A781
        call    sub_BD13
        ld    R8, a
        ld    a, R9
        cp    a, #1
        jrne    loc_A7C3
        call    sub_BBB7
        tnz    a
        jreq    loc_A7C3

loc_A7C0: 
        jp    epi_ret_4
; ---------------------------------------------------------------------------

loc_A7C3: 
        ld    a, R8
        jp    epi_ret_4
; End of function sub_A769


; =============== S U B	R O U T	I N E =======================================

; (R0R3=emf)

CalculateVoltageBasedCapacity: 

; FUNCTION CHUNK AT A148 SIZE 00000003 BYTES

        call    PUSH32_R8R11
        call    PUSH32_R12R15
        call    MOV32_R8R11_R0R3
        ldw    x, #4120
        call    _CMP32_R0R3_X
        jrslt    loc_A7E9
        ldw    x, #DesignCapacity
        call    ADD32_R0R3_atX
        call    ADD32_R0R3_IMM
; ---------------------------------------------------------------------------
        dc.l -4120
; ---------------------------------------------------------------------------
        jp    epi_ret_0
; ---------------------------------------------------------------------------

loc_A7E9: 
        ldw    x, CapacityVoltageParamH
        call    CMP32_R0R3_R4X
        jrslt    loc_A82D
        call    LDR32_R0R3_IMM
; ---------------------------------------------------------------------------
        dc.l 4120
; ---------------------------------------------------------------------------
        call    MOV32_R12R15_R0R3_MUL32_R0R3_100
        call    PUSH32_R0R3
        ldw    x, DesignParam1; 5.2 -	4, 7.8 - 4, 10 - 10
        addw    x, #0x32; '2'
        call    sub_C087
        call    PUSH32_R0R3
        ldw    x, #0x32; '2'
        subw    x, DesignParam1; 5.2 -	4, 7.8 - 4, 10 - 10
        ldw    R14, x
        clrw    x
        ldw    R12, x
        ldw    x, CapacityVoltageParamH
        call    sub_C2C5
        call    MOV32_R4R7_R0R3
        call    MOV32_R0R3_R12R15
        call    MUL32_R0R3_R4R7
        call    MOV32_R4R7_R0R3
        call    POP32_R0R3
        jra    loc_A860
; ---------------------------------------------------------------------------

loc_A82D: 
        ldw    x, CapacityVoltageParamL
        call    CMP32_R0R3_R4X
        jrslt    loc_A86E
        ldw    x, CapacityVoltageParamH
        call    ZEXT32_R0R3_X
        call    SUB32_R0R3_R4R7
        call    MOV32_R12R15_R0R3_MUL32_R0R3_100
        call    PUSH32_R0R3
        ldw    x, DesignParam1; 5.2 -	4, 7.8 - 4, 10 - 10
        call    sub_C087
        call    MOV32_R12R15_R0R3
        ldw    x, CapacityVoltageParamL
        call    sub_C2C5
        call    MUL32_R0R3_IMM; R0:R3	*= IMM32
; ---------------------------------------------------------------------------
        dc.l 50
; ---------------------------------------------------------------------------
        call    MOV32_R4R7_R0R3
        call    MOV32_R0R3_R12R15

loc_A860: 
        call    ADD32_R0R3_R4R7
        ldw    x, #DesignCapacity
        call    MUL32_R0R3_atX
        call    POP32_R4R7
        jra    loc_A89A
; ---------------------------------------------------------------------------

loc_A86E: 
        ldw    x, #UV_THRESHOLD
        call    CMP32_R0R3_R4X
        jrslt    loc_A8A0
        ldw    x, CapacityVoltageParamL
        call    ZEXT32_R0R3_X
        call    sub_C203
        call    _MUL32_R0R3_100
        call    MOV32_R12R15_R0R3
        ldw    x, DesignParam1; 5.2 -	4, 7.8 - 4, 10 - 10
        call    sub_C375; R4R7 = zext(x)
; R0R3 = R8R11
        call    sub_C203
        call    MUL32_R0R3_R4R7
        ldw    x, #DesignCapacity
        call    MUL32_R0R3_atX
        call    MOV32_R4R7_R12R15

loc_A89A: ; : R0R3 - частное, R4R7 - остаток
        call    DIVMOD32_R0R3_R4R7
        jp    epi_ret_0
; ---------------------------------------------------------------------------

loc_A8A0: 
        clrw    x
        ldw    R2, x
        ldw    R0, x
        jp    epi_ret_0
; End of function CalculateVoltageBasedCapacity


; =============== S U B	R O U T	I N E =======================================


LoadConfig: 
        sub    sp, #0xF
        ldw    y, #DefaultSN; "3GA0016A1A0001"
        ldw    x, sp
        incw    x
        pushw    x
        ld    a, #0xF
        call    memcpy; (x=dst, y=src, a=size)
        popw    x
        ldw    x, #0x1D; sizeof(MAINSTATE)
        ldw    R0, x
        clrw    y
        ldw    x, #MainState.DischargeError
        call    memset; (x=dst, yl=val, R0=size)
        ldw    x, #0x100; sizeof(CONFIG)
        ldw    R0, x
        ldw    y, #Config.magic
        ldw    x, #ConfigBase
        call    memcpy_0; (y=dst, x=src, R0=size)
        call    GetUID
        call    STR32; *x = R0:R2
        mov    MainState.ConfigValid, #1
        ldw    x, Config.magic
        cpw    x, #0x5A5A; eep valid magic
        jrne    loc_A931
        ldw    x, uid
        cpw    x, Config.uid
        jrne    _LoadConfig_eep_invalid
        ldw    x, uid+2
        cpw    x, Config.uid+2
        jrne    _LoadConfig_eep_invalid
        ldw    x, uid+4
        cpw    x, Config.uid+4
        jrne    _LoadConfig_eep_invalid
        ldw    x, uid+6
        cpw    x, Config.uid+6
        jrne    _LoadConfig_eep_invalid
        ldw    x, uid+8
        cpw    x, Config.uid+8
        jrne    _LoadConfig_eep_invalid
        ldw    x, uid+0xA
        cpw    x, Config.uid+0xA
        jreq    loc_A919

_LoadConfig_eep_invalid: 
        clr    MainState.ConfigValid

loc_A919: 
        ldw    x, #0x420E
        ldw    Config.field_34, x
        ldw    x, #0x1501
        ldw    Config.FirmwareVersion,    x
        ldw    x, #0x6200
        ldw    Config.Health, x
        call    InitFactCapacityAndDate
        addw    sp, #0xF
        ret
; ---------------------------------------------------------------------------

loc_A931: ; eep init magic
        cpw    x, #0xAAAA
        jrne    _LoadConfig_eep_invalid
        ldw    x, #0x5A5A
        ldw    Config.magic, x
        ldw    x, uid
        ldw    Config.uid, x
        ldw    x, uid+2
        ldw    Config.uid+2, x
        ldw    x, uid+4
        ldw    Config.uid+4, x
        ldw    x, uid+6
        ldw    Config.uid+6, x
        ldw    x, uid+8
        ldw    Config.uid+8, x
        ldw    x, uid+0xA
        ldw    Config.uid+0xA,    x
        ld    a, (2,sp)
        clrw    x
        ld    xl, a
        ldw    Config.sn1plus1, x
        ldw    x, #0xE
        ldw    R0, x
        ldw    y, sp
        incw    y; BattModel
        ldw    x, #Config.SerialNumber
        call    memcpy_1; (x=dst, y=src, r0=size)
        clrw    x
        ldw    Config.ChargeCycle, x
        ldw    Config.ChargeCount, x
        mov    MainState.NeedSaveConfig, #1
        jra    loc_A919
; End of function LoadConfig


; =============== S U B	R O U T	I N E =======================================


sub_A983: 
        call    PUSH32_R8R11
        call    GetCurrent; : R0R3 in mA
        ldw    x, #AccumulatedCurrent
        call    ADD32_atX_R0R3; : R0R3
        tnz    R0
        jrpl    loc_A998
        call    LDR32NEG_R0R3_atX
        jra    loc_A99B
; ---------------------------------------------------------------------------

loc_A998: ; R0:R2	= *x
        call    LDR32_R0R3_atX

loc_A99B: 
        ldw    x, #10
        call    _CMP32_R0R3_X
        jrsge    loc_A9A6
        jp    _sub_A983_exit
; ---------------------------------------------------------------------------

loc_A9A6: 
        ldw    x, #AccumulatedCurrent
        call    LDR32_R0R3_atX; R0:R2	= *x
        call    SDIVMOD32_R0R3_10
        call    MOV32_R8R11_R0R3
        ldw    x, #dword_43E
        call    sub_C2EF
        call    MOV32_R0R3_R8R11
        call    MUL32_R0R3_IMM; R0:R3	*= IMM32
; ---------------------------------------------------------------------------
        dc.l 10
; ---------------------------------------------------------------------------
        call    MOV32_R4R7_R0R3
        ldw    x, #AccumulatedCurrent
        call    LDR32_R0R3_atX; R0:R2	= *x
        call    SUB32_R0R3_R4R7
        ldw    x, #AccumulatedCurrent
        call    STR32; *x = R0:R2
        call    sub_C2F5
        tnz    R0
        jrpl    loc_A9E0
        call    LDR32NEG_R0R3_atX
        jra    loc_A9E3
; ---------------------------------------------------------------------------

loc_A9E0: ; R0:R2	= *x
        call    LDR32_R0R3_atX

loc_A9E3: 
        ldw    x, #3600
        call    _CMP32_R0R3_X
        jrslt    _sub_A983_exit
        call    sub_C2F5
        call    SDIVMOD32_R0R3_IMM32; : R0R3 -	частное, R4R7 -	остаток
; ---------------------------------------------------------------------------
        dc.l 3600
; ---------------------------------------------------------------------------
        call    MOV32_R8R11_R0R3
        call    GetTrackedCapacity; : R0R3
        call    MOV32_R4R7_R8R11
        call    SUB32_R0R3_R4R7
        call    SetTrackedCapacity; (R0R3)
        call    MOV32_R0R3_R8R11
        call    MUL32_R0R3_IMM; R0:R3	*= IMM32
; ---------------------------------------------------------------------------
        dc.l 3600
; ---------------------------------------------------------------------------
        call    MOV32_R4R7_R0R3
        call    sub_C2F5
        call    SUB32_R0R3_R4R7
        ldw    x, #dword_43E
        call    STR32; *x = R0:R2
        call    GetCurrent; : R0R3 in mA
        ldw    x, #-100
        call    CMP32_R0R3_x_neg; extend x as negative
        jrsge    _sub_A983_exit
        ldw    x, word_472
        subw    x, R10
        ldw    word_472, x
        ldw    x, #DesignCapacity
        call    LDR32_R4R7_X
        ldw    x, word_472
        call    ABS32; R0-R3	= abs(x)
        call    CMP32_R0R3_R4R7_0
        jrslt    _sub_A983_exit
        ldw    x, word_472
        subw    x, R6
        ldw    word_472, x
        ld    a, #CONFIG.ChargeCycle-0x1B
        call    GetConfigReg
        incw    x
        ld    a, #CONFIG.ChargeCycle-0x1B
        call    SetConfigReg

_sub_A983_exit: 
        jp    epi_ret
; End of function sub_A983


; =============== S U B	R O U T	I N E =======================================


DoAllMeasurementsAndBalancing: 
        push    R8
        ld    R8, a
        call    ProcessTempSensors
        ld    a, R8
        call    AfeRefreshStatus
        ldw    x, #Current; in mA
        call    AfeGetCurrent_atX; in mA
        call    GetCurrent; : R0R3 in mA
        call    SDIVMOD32_R0R3_10
        ldw    x, R2
        ld    a, #CONFIG.Current-0x33; x10 mA
        call    SetConfigReg
        call    MeasureCells
        ld    a, R8
        call    DoBalancing
        ld    a, R8
        call    sub_A3EB
        ld    a, R8
        call    sub_AB27
        ld    a, R8
        call    ProcessChargingStates
        ld    a, MainState.LowPowerMode
        jreq    _DoAllMeasurementsAndBalancing_normal_mode
        call    CheckCurrent; : x->Current,	R0R3=Current, flags
        jrpl    loc_AAA1
        call    LDR32NEG_R0R3_atX; Current
        jra    loc_AAA4
; ---------------------------------------------------------------------------

loc_AAA1: ; Current
        call    LDR32_R0R3_atX

loc_AAA4: 
        ldw    x, #150
        call    _CMP32_R0R3_X
        jrsge    _DoAllMeasurementsAndBalancing_exit
        call    MeasureRemainingCapacity; в покое
        jra    _DoAllMeasurementsAndBalancing_exit
; ---------------------------------------------------------------------------

_DoAllMeasurementsAndBalancing_normal_mode: 
        call    sub_A983
        call    sub_9E0F
        call    sub_B0EF
        ldw    x, #80
        call    ZEXT32_R0R3_X
        ldw    x, #TrackedCapacity
        call    MUL32_R0R3_atX
        call    sub_C2D1
        call    GetRemainingCapacity
        call    MUL32_R0R3_IMM; R0:R3	*= IMM32
; ---------------------------------------------------------------------------
        dc.l 20
; ---------------------------------------------------------------------------
        ldw    x, #dword_436
        call    ADD32_atX_R0R3; : R0R3
        call    SDIVMOD32_R0R3_IMM32; : R0R3 -	частное, R4R7 -	остаток
; ---------------------------------------------------------------------------
        dc.l 100
; ---------------------------------------------------------------------------
        call    sub_C2D1
        call    CalcRemainingPercentage
        jrslt    loc_AAED
        ldw    x, #100
        jra    loc_AAF2
; ---------------------------------------------------------------------------

loc_AAED: 
        tnz    R0
        jrpl    loc_AAF4
        clrw    x

loc_AAF2: 
        ldw    R2, x

loc_AAF4: 
        ld    a, R3
        ld    RemainingPercentage, a
        ldw    x, #dword_436
        call    SetConfigRemainingCapacity
        call    GetTrackedCapacity; : R0R3
        ldw    x, R2
        ld    a, #CONFIG.field_72-0x39
        call    SetConfigReg
        call    GetRemainingCapacity
        ldw    x, R2
        ld    a, #CONFIG.field_74-0x3A
        call    SetConfigReg
        call    CopyRemainingPercentage
        ldw    x, #DesignCapacity
        call    LDR32_R0R3_atX; R0:R2	= *x
        ldw    x, R2
        ld    a, #CONFIG.AgedCapacity-0x19; врёт, копирует DesignCapacity
        call    SetConfigReg

_DoAllMeasurementsAndBalancing_exit: 
        pop    R8
        ret
; End of function DoAllMeasurementsAndBalancing


; =============== S U B	R O U T	I N E =======================================


sub_AB27: 
        push    R8
        ld    R8, a
        ldw    x, MinCellVoltage; in mV
        cpw    x, #0xAF0
        jrnc    loc_AB4F
        ld    a, MainState.IsRunning
        jrne    loc_AB4F
        ld    a, R8
        add    a, byte_49B
        ld    byte_49B, a
        cp    a, #0x1F
        jrslt    loc_AB5B
        mov    byte_49B, #0x1E
        mov    MainState.UV, #1
        jra    loc_AB5B
; ---------------------------------------------------------------------------

loc_AB4F: 
        ld    a, byte_49B
        cp    a, #1
        jrslt    loc_AB5B
        sub    a, R8
        ld    byte_49B, a

loc_AB5B: 
        ld    a, MainState.UV
        jreq    loc_ABD4
        clr    a
        call    AfeControlDischarge; (a=enable)
        ldw    x, MinCellVoltage; in mV
        cpw    x, #2700
        jrnc    loc_AB92
        ld    a, MainState.IsCharging
        jrne    loc_AB92
        ld    a, MainState.field_F
        jrne    loc_AB92
        ld    a, R8
        add    a, byte_499
        ld    byte_499, a
        cp    a, #31
        jrslt    loc_AB9E
        mov    byte_499, #30
        mov    MainState.field_19, #1
        call    SaveConfig
        call    AfeShutdown
        jra    loc_ABE0
; ---------------------------------------------------------------------------

loc_AB92: 
        ld    a, byte_499
        cp    a, #1
        jrslt    loc_AB9E
        sub    a, R8
        ld    byte_499, a

loc_AB9E: ; in mV
        ldw    x, MinCellVoltage
        cpw    x, #3001
        jrc    loc_ABC6
        ld    a, MainState.SCD
        jrne    loc_ABC6
        ld    a, MainState.OCD
        jrne    loc_ABC6
        ld    a, R8
        add    a, byte_49A
        ld    byte_49A, a
        cp    a, #30
        jrslt    loc_ABDC
        mov    byte_49A, #30
        clr    MainState.UV
        jra    loc_ABDC
; ---------------------------------------------------------------------------

loc_ABC6: 
        ld    a, byte_49A
        cp    a, #1
        jrslt    loc_ABDC
        sub    a, R8
        ld    byte_49A, a
        jra    loc_ABDC
; ---------------------------------------------------------------------------

loc_ABD4: 
        clr    byte_499
        clr    byte_49A

loc_ABDC: 
        clr    MainState.field_19

loc_ABE0: 
        pop    R8
        ret
; End of function sub_AB27


; =============== S U B	R O U T	I N E =======================================


UartHandleByte: 
        ld    R0, a
        ld    a, got_55AA
        jrne    _UartHandleByte_got_magic
        jp    _UartHandleByte_check_magic_exit
; ---------------------------------------------------------------------------

_UartHandleByte_got_magic: 
        ld    a, PktLenActual
        clrw    x
        ld    xl, a
        ld    a, R0
        ld    (PacketBuf,x), a
        ld    a, PktLenActual
        jrne    loc_AC0F
        ld    a, R0
        add    a, #4
        ld    PktLenExpected,    a
        cp    a, #0x87; 'З'
        jrc    loc_AC0F
        clr    got_55AA
        jp    loc_AC95
; ---------------------------------------------------------------------------

loc_AC0F: 
        ld    a, PktLenActual
        inc    a
        ld    PktLenActual, a
        ld    a, PktLenExpected
        cp    a, PktLenActual
        jrne    loc_AC6C
        ld    a, PktLenActual
        clrw    y
        ld    yl, a
        addw    y, #PacketBuf
        ldw    x, y
        addw    x, #0xFFFE
        ld    a, (x)
        ld    R2, a
        clrw    x
        exg    a, xl
        ldw    R0, x
        ldw    x, word_48C
        subw    x, R0
        cplw    x
        ldw    word_48C, x
        decw    y
        ld    a, (y)
        clrw    x
        ld    xl, a
        clr    a
        rlwa    x, a
        clrw    y
        ld    a, R2
        exg    a, yl
        ldw    R0, x
        addw    y, R0
        cpw    y, word_48C
        jrne    loc_AC5E
        ldw    x, #PacketBuf
        call    HandlePacket

loc_AC5E: 
        clr    got_55AA
        clr    got_55
        clr    PktLenActual
        jra    loc_AC99
; ---------------------------------------------------------------------------

loc_AC6C: 
        exg    a, xl
        ld    a, R0
        exg    a, xl
        addw    x, word_48C
        jra    loc_AC9A
; ---------------------------------------------------------------------------

_UartHandleByte_check_magic_exit: 
        ld    a, R0
        cp    a, #0x55; 'U'
        jrne    loc_AC86
        ld    a, got_55
        jrne    loc_AC95
        mov    got_55,    #1
        ret
; ---------------------------------------------------------------------------

loc_AC86: 
        cp    a, #0xAA; 'к'
        jrne    loc_AC95
        ld    a, got_55
        jreq    loc_AC95
        mov    got_55AA, #1
        jra    loc_AC99
; ---------------------------------------------------------------------------

loc_AC95: 
        clr    got_55

loc_AC99: 
        clrw    x

loc_AC9A: 
        ldw    word_48C, x
        ret
; End of function UartHandleByte


; =============== S U B	R O U T	I N E =======================================


InitFactCapacityAndDate: 
        ld    a, Config.SerialNumber+1
        cp    a, #'H'
        jrne    loc_ACB0
        ldw    x, #10050
        ldw    y, x
        mov    BattCapacityClass, #1;	0-5.2AH	- default
; 1-10.05AH
; 2-7.8AH
        jra    loc_ACC8
; ---------------------------------------------------------------------------

loc_ACB0: 
        cp    a, #'J'
        jrne    loc_ACBF
        ldw    x, #7800
        ldw    y, x
        mov    BattCapacityClass, #2;	0-5.2AH	- default
; 1-10.05AH
; 2-7.8AH
        jra    loc_ACC8
; ---------------------------------------------------------------------------

loc_ACBF: 
        ldw    x, #5200
        ldw    y, x
        clr    BattCapacityClass; 0-5.2AH - default
; 1-10.05AH
; 2-7.8AH

loc_ACC8: 
        ldw    x, y
        call    pack_x_xlyh
        ldw    Config.FactoryCapacity,    x
        ldw    Config.AgedCapacity, x
        ldw    R2, y
        clrw    x
        ldw    R0, x
        ldw    x, #DesignCapacity
        call    STR32; *x = R0:R2
        ld    a, Config.SerialNumber+1
        clrw    x
        ld    xl, a
        incw    x
        ldw    Config.sn1plus1, x
        mov    MainState.NeedSaveConfig, #1
        ld    a, Config.SerialNumber+5
        clrw    x
        ld    xl, a
        ldw    y, x
        ldw    x, #0xA
        ldw    R0, x
        ldw    x, y
        call    MUL16_X_R0R1
        ldw    y, x
        ld    a, Config.SerialNumber+6
        clrw    x
        ld    xl, a
        ldw    R0, x
        ldw    x, y
        addw    x, R0
        addw    x, #-0x210
        clr    a
        rlwa    x, a
        sllw    x
        ldw    y, x; year
        ld    a, Config.SerialNumber+7
        clrw    x
        ld    xl, a
        addw    x, #-0x40
        call    lsl_x_5; month
        ldw    R0, x
        addw    y, R0
        ld    a, Config.SerialNumber+8; day
        cp    a, #0x3A; ':'
        jrnc    loc_AD30
        clrw    x
        ld    xl, a
        addw    x, #-0x30; '1'-'9'
        jra    loc_AD49
; ---------------------------------------------------------------------------

loc_AD30: 
        cp    a, #'I'
        jrnc    loc_AD3B
        clrw    x
        ld    xl, a
        addw    x, #-0x37; 'A'-'H'
        jra    loc_AD49
; ---------------------------------------------------------------------------

loc_AD3B: 
        cp    a, #'O'
        clrw    x
        ld    xl, a
        jrnc    loc_AD46
        addw    x, #-0x38
        jra    loc_AD49
; ---------------------------------------------------------------------------

loc_AD46: 
        addw    x, #-0x39

loc_AD49: 
        ldw    R0, y
        addw    x, R0
        call    swapx
        ldw    Config.ManufactureDate,    x
        ret
; End of function InitFactCapacityAndDate


; =============== S U B	R O U T	I N E =======================================


_MemProgram: 
        call    PUSH32_R8R11
        call    PUSH32_R12R15
        pushw    x
        ld    R14, a
        mov    R15, R0
        clr    R12
        clr    R11
        clr    R10
        clrw    x
        decw    x
        ldw    R8, x
        clr    R13
        call    sub_BE15
        ld    a, R14
        cp    a, #0xFD; '¤'
        jrne    loc_AD7E
        mov    R13, #2
        jra    loc_AD8F
; ---------------------------------------------------------------------------

loc_AD7E: 
        cp    a, #0xF7; 'ў'
        jrne    loc_AD8F
        mov    R13, #8
        jra    loc_AD8F
; ---------------------------------------------------------------------------

loc_AD88: 
        ldw    x, R8
        jreq    loc_ADEE
        decw    x
        ldw    R8, x

loc_AD8F: 
        ld    a, R13
        bcp    a, FLASH_IAPSR; Flash	in-application programming status register
        jreq    loc_AD88
        ldw    x, R8
        jreq    loc_ADEE
        ldw    y, (1,sp)
        clr    R0
        ld    a, R14
        clrw    x
        exg    a, xl
        ld    a, R15
        exg    a, xl
        call    MemProgram
        ld    a, R14
        call    MemWait
        cp    a, #2
        jrne    loc_ADB8
        ld    a, R14
        call    sub_C2B1
        jra    loc_ADEE
; ---------------------------------------------------------------------------

loc_ADB8: 
        ld    a, R14
        call    sub_C2B1
        ld    a, R14
        cp    a, #0xFD; '¤'
        jrne    loc_ADCB
        call    sub_C0DC
        addw    x, #0x8000
        jra    loc_ADD5
; ---------------------------------------------------------------------------

loc_ADCB: 
        cp    a, #0xF7; 'ў'
        jrne    loc_ADD7
        call    sub_C0DC
        addw    x, #0x1000

loc_ADD5: 
        ldw    R10, x

loc_ADD7: 
        clrw    x
        exg    a, xl
        ld    a, R12
        exg    a, xl
        ldw    y, x
        addw    x, R10
        ldw    R0, x
        ldw    x, y
        addw    x, (1,sp)
        ld    a, (x)
        cp    a, [R0.w]
        jreq    loc_ADF1

loc_ADEE: 
        clr    a
        jra    loc_ADFC
; ---------------------------------------------------------------------------

loc_ADF1: 
        ld    a, R12
        inc    a
        ld    R12, a
        cp    a, #0x80; 'А'
        jrc    loc_ADD7
        ld    a, #1

loc_ADFC: 
        addw    sp, #2
        jp    epi_ret_0
; End of function _MemProgram


; =============== S U B	R O U T	I N E =======================================


FramePacket: 
        push    R8
        ldw    R4, x
        ld    R6, a
        mov    R8, R0
        mov    R7, R1
        ld    a, #0x55; 'U'
        ld    [R2.w],    a
        ldw    x, R2
        incw    x
        ld    a, #0xAA; 'к'
        ld    (x), a
        ldw    x, R2
        addw    x, #2
        ldw    R0, x
        ld    a, R6
        add    a, #2
        ld    [R0.w],    a
        ldw    x, R2
        addw    x, #3
        ld    a, R5
        ld    (x), a
        ldw    x, R2
        addw    x, #4
        ld    a, R8
        ld    (x), a
        ldw    x, R2
        addw    x, #5
        ld    a, R7
        ld    (x), a
        mov    R4, #6
        tnz    R6
        jreq    loc_AE5D

loc_AE47: 
        call    sub_C104
        ld    a, (y)
        ld    (x), a
        ld    a, R4
        inc    a
        ld    R4, a
        ldw    x, y
        incw    x
        ldw    y, x
        ld    a, R6
        dec    a
        ld    R6, a
        jrne    loc_AE47

loc_AE5D: 
        ld    a, R4
        add    a, #0xFE; '■'
        ld    R5, a
        clr    R7
        clr    R6
        tnz    R5
        jreq    loc_AE83
        ldw    y, R0

loc_AE6E: 
        ld    a, (y)
        clrw    x
        ld    xl, a
        addw    x, R6
        ldw    R6, x
        ldw    x, y
        incw    x
        ldw    y, x
        ld    a, R5
        dec    a
        ld    R5, a
        jrne    loc_AE6E

loc_AE83: 
        ldw    x, R6
        cplw    x
        ldw    y, x
        call    sub_C104
        ld    a, yl
        ld    (x), a
        ld    a, R4
        inc    a
        ld    R4, a
        clrw    x
        exg    a, xl
        addw    x, R2
        ldw    R0, x
        ldw    x, y
        rrwa    x, a
        ld    a, xl
        ld    [R0.w],    a
        ld    a, R4
        inc    a
        pop    R8
        ret
; End of function FramePacket


; =============== S U B	R O U T	I N E =======================================


UartTxProcess: 
        ld    a, FramerBusy
        jreq    loc_AEB0
        jp    locret_AF48
; ---------------------------------------------------------------------------

loc_AEB0: 
        ld    a, byte_4B7
        jreq    loc_AEB8
        jp    locret_AF48
; ---------------------------------------------------------------------------

loc_AEB8: 
        mov    byte_4B7, #1
        btjf    DMA1_C1CR, #0, loc_AECE; DMA1 channel 1 configuration register
        btjf    DMA1_C1SPR, #1,    loc_AF44; DMA1	channel	1 status & priority register
        bres    DMA1_C1SPR, #1; DMA1 channel 1 status	& priority register
        bres    DMA1_C1CR, #0; DMA1 channel 1 configuration register

loc_AECE: 
        ld    a, byte_4B2
        ld    R0, a
        ld    a, UartTxBufSel
        cp    a, R0
        jrne    loc_AEEA
        ld    a, byte_4BC
        jreq    loc_AF44
        btjf    USART1_SR, #6, loc_AF44; USART1 Status	Register
        clr    byte_4BC
        jra    loc_AF44
; ---------------------------------------------------------------------------

loc_AEEA: 
        ld    a, byte_4BC
        jrne    loc_AEFA
        mov    byte_4BC, #1
        mov    R0, #0xE0; 'р'
        call    sub_C263

loc_AEFA: 
        ld    a, UartTxBufSel
        clrw    y
        ld    yl, a
        call    sub_C1E1
        addw    x, #UartTxBuf0
        clr    a
        rrwa    x, a
        ld    a, xl
        ld    DMA1_C1M0AR, a; DMA1 memory 0	address	register (channel 1)
        call    sub_C1EA
        addw    x, #UartTxBuf0
        ld    a, xl
        ld    DMA1_C1M0AR+1, a; DMA1	memory 0 address register (channel 1)
        call    sub_C1EA
        ld    a, (UartTxLen0,x)
        ld    DMA1_C1NDTR, a; DMA1 number of data to transfer register (channel 1)
        bset    DMA1_C1CR, #0; DMA1 channel 1 configuration register
        ld    a, UartTxBufSel
        inc    a
        ld    UartTxBufSel, a
        ld    a, UartTxBufSel
        cp    a, #2
        jrne    loc_AF36
        clr    UartTxBufSel

loc_AF36: 
        ld    a, byte_4B3
        cp    a, #2
        jrsge    loc_AF44
        ld    a, byte_4B3
        inc    a
        ld    byte_4B3, a

loc_AF44: 
        clr    byte_4B7

locret_AF48: 
        ret
; End of function UartTxProcess


; =============== S U B	R O U T	I N E =======================================


sub_AF49: 
        call    PUSH32_R8R11
        call    PUSH32_R12R15
        mov    R8, R0
        call    sub_A6E0
        ld    R9, a
        jrne    loc_AF66
        clr    R1
        clr    R0
        ld    a, R8
        call    sub_A769
        ld    R9, a
        jreq    loc_AF6E

loc_AF66: 
        call    sub_BBB7
        ld    a, R9
        jp    epi_ret_0
; ---------------------------------------------------------------------------

loc_AF6E: 
        ldw    x, R12
        decw    x
        cpw    x, #1
        jrslt    loc_AFC2
        call    MOV16_R10R11_R14R15
        ldw    R8, x

loc_AF7B: 
        ld    a, [R10.w]
        ld    R3, a
        mov    R2, #8

loc_AF84: 
        ld    a, R3
        bcp    a, #0x80; 'А'
        jreq    loc_AF8F
        call    sub_C313
        jra    loc_AF92
; ---------------------------------------------------------------------------

loc_AF8F: 
        call    sub_C307

loc_AF92: 
        call    sub_C389
        ldw    y, x
        ldw    x, SWI2C_IOBASE
        incw    x
        ldw    R0, x

loc_AF9D: 
        ld    a, [R0.w]
        bcp    a, #SCL
        jreq    loc_AFD6
        call    sub_C385
        ld    a, R3
        sll    a
        ld    R3, a
        ld    a, R2
        dec    a
        ld    R2, a
        jrne    loc_AF84
        call    sub_BD13

loc_AFB6: 
        ldw    x, R10
        incw    x
        ldw    R10, x
        ldw    x, R8
        decw    x
        ldw    R8, x
        jrne    loc_AF7B

loc_AFC2: 
        mov    R1, #1
        clr    R0
        ldw    x, R12
        addw    x, R14
        decw    x
        ld    a, (x)
        call    sub_A769
        jp    epi_ret_0
; ---------------------------------------------------------------------------

loc_AFD6: 
        ldw    x, y
        decw    x
        ldw    y, x
        jreq    loc_AFB6
        jra    loc_AF9D
; End of function sub_AF49


; =============== S U B	R O U T	I N E =======================================


sub_AFDE: 
        call    PUSH32_R8R11
        call    PUSH32_R12R15
        push    R6
        ldw    R8, x
        call    MOV32_R12R15_R0R3
        ld    R0, a
        addw    x, #4
        ld    a, (x)
        and    a, #0xE9; 'щ'
        ld    (x), a
        ld    a, R5
        or    a, R0
        or    a, (x)
        ld    (x), a
        ldw    x, R8
        addw    x, #6
        ld    a, (x)
        and    a, #0xCF; '╧'
        ld    (x), a
        ld    a, R4
        or    a, (x)
        ld    (x), a
        ldw    x, R8
        addw    x, #2
        ld    a, (x)
        ldw    x, R8
        addw    x, #2
        clr    a
        ld    (x), a
        ldw    x, R8
        addw    x, #3
        ldw    R10, x
        ld    a, [R10.w]
        and    a, #0xF
        ld    [R10.w], a
        ld    a, [R10.w]
        and    a, #0xF0; 'Ё'
        ld    [R10.w], a
        call    sub_BA59
        call    MOV32_R4R7_R12R15
        call    DIVMOD32_R0R3_R4R7; : R0R3 - частное, R4R7 - остаток
        ldw    x, R2
        clr    a
        rrwa    x, a
        ld    a, xl
        and    a, #0xF0; 'Ё'
        ld    [R10.w], a
        ld    a, R3
        and    a, #0xF
        or    a, [R10.w]
        ld    [R10.w], a
        ldw    x, R2
        call    lsr_x_4
        ld    a, xl
        ldw    x, R8
        addw    x, #2
        ld    (x), a
        ldw    x, R8
        addw    x, #5
        ld    a, (x)
        and    a, #0xF3; 'є'
        ld    (x), a
        ld    a, (1,sp)
        or    a, (x)
        ld    (x), a
        addw    sp, #1
        jp    epi_ret_0
; End of function sub_AFDE


; =============== S U B	R O U T	I N E =======================================


I2CRead: 
        call    PUSH32_R8R11
        call    PUSH32_R12R15
        sub    sp, #1
        ld    R8, a; I2C SA
        mov    R9, R0; reg
        call    sub_A6E0
        ld    (1,sp),    a
        jrne    loc_B0DE
        clr    R1
        clr    R0
        ld    a, R9
        call    sub_A769
        ld    (1,sp),    a
        jrne    loc_B0DE
        clr    R1
        mov    R0, #1
        ld    a, R8
        or    a, #1; I2C read
        call    sub_A769
        ld    (1,sp),    a
        jrne    loc_B0DE
        clr    R9
        clr    R8
        call    MOV16_R10R11_R14R15
        jra    loc_B0AC
; ---------------------------------------------------------------------------

loc_B0A2: 
        ldw    x, R8
        incw    x
        ldw    R8, x
        ldw    x, R10
        incw    x
        ldw    R10, x

loc_B0AC: 
        ldw    x, R12
        decw    x
        ldw    R0, x
        ldw    x, R8
        cpw    x, R0
        ldw    x, sp
        jrsge    loc_B0C8
        incw    x
        clr    R0
        clr    a
        call    sub_A6EE
        ld    [R10.w], a
        tnz    (1,sp)
        jreq    loc_B0A2
        jra    loc_B0DE
; ---------------------------------------------------------------------------

loc_B0C8: 
        incw    x
        mov    R0, #1
        ld    a, #1
        call    sub_A6EE
        ldw    x, R12
        addw    x, R14
        decw    x
        ld    (x), a
        tnz    (1,sp)
        jreq    loc_B0E9

loc_B0DE: 
        ld    a, (1,sp)
        ld    R8, a
        call    sub_BBB7
        ld    a, R8
        jra    loc_B0EA
; ---------------------------------------------------------------------------

loc_B0E9: 
        clr    a

loc_B0EA: 
        addw    sp, #1
        jp    epi_ret_0
; End of function I2CRead


; =============== S U B	R O U T	I N E =======================================


sub_B0EF: 
        call    PUSH32_R8R11
        call    sub_9279
        cp    a, #0
        jreq    loc_B102
        ldw    x, #RemainingCapacity
        call    _SetTrackedCapacity; (@X)
        jp    epi_ret
; ---------------------------------------------------------------------------

loc_B102: 
        ldw    x, #RemainingCapacity
        call    LDR32_R8R11_atX
        ldw    x, #TrackedCapacity
        call    MOV32_R0R3_R8R11
        call    SUB32_R0R3_atX
        call    ABS32_R0R3
        call    LSR32_R0R3_IMM8
; ---------------------------------------------------------------------------
        dc.b 4
; ---------------------------------------------------------------------------
        ldw    y, R2
        cpw    y, #5
        jrnc    loc_B126
        ldw    x, #5
        ldw    y, x

loc_B126: ; : R0R3
        call    GetTrackedCapacity
        call    MOV32_R4R7_R8R11
        call    CMP32_R0R3_R4R7
        jreq    loc_B148
        ldw    x, #TrackedCapacity
        call    MOV32_R0R3_R8R11
        call    CMP32_R0R3_atX
        jrsge    loc_B140
        ldw    x, y
        negw    x
        ldw    y, x

loc_B140: 
        ldw    x, y
        addw    x, word_47C
        ldw    word_47C, x

loc_B148: 
        ldw    x, word_47C
        cpw    x, #0x81; 'Б'
        jrslt    loc_B15E
        call    GetTrackedCapacity; : R0R3
        call    INC32_R0R3
        call    sub_C28E
        addw    x, #0xFF80
        jra    loc_B16F
; ---------------------------------------------------------------------------

loc_B15E: 
        cpw    x, #0xFF80
        jrsge    loc_B172
        call    GetTrackedCapacity; : R0R3
        call    sub_970A
        call    sub_C28E
        addw    x, #0x80; 'А'

loc_B16F: 
        ldw    word_47C, x

loc_B172: 
        jp    epi_ret
; End of function sub_B0EF


; =============== S U B	R O U T	I N E =======================================


RefreshStatus: 
        ldw    x, Config.field_A0
        cpw    x, #1
        jrne    loc_B185
        ldw    x, Status
        rrwa    x, a
        or    a, #2; status.2
        jra    loc_B18B
; ---------------------------------------------------------------------------

loc_B185: 
        ldw    x, Status
        rrwa    x, a
        and    a, #0xFD; '¤'

loc_B18B: 
        rlwa    x, a
        ldw    Status,    x
        ld    a, MainState.IsCharging
        jreq    loc_B199
        rrwa    x, a
        or    a, #0x40; '@'  ; status.6
        jra    loc_B19C
; ---------------------------------------------------------------------------

loc_B199: 
        rrwa    x, a
        and    a, #0xBF; '┐'

loc_B19C: 
        rlwa    x, a
        ldw    Status,    x
        ld    a, MainState.field_A
        jreq    loc_B1AA
        rrwa    x, a
        or    a, #0x80; 'А'
        jra    loc_B1AD
; ---------------------------------------------------------------------------

loc_B1AA: 
        rrwa    x, a
        and    a, #0x7F; ''

loc_B1AD: 
        rlwa    x, a
        ldw    Status,    x
        ld    a, MainState.OV
        jreq    loc_B1BB
        rlwa    x, a
        or    a, #2
        jra    loc_B1BE
; ---------------------------------------------------------------------------

loc_B1BB: 
        rlwa    x, a
        and    a, #0xFD; '¤'

loc_B1BE: 
        rrwa    x, a
        ldw    Status,    x
        ld    a, MainState.Overheat
        jreq    loc_B1CC
        rlwa    x, a
        or    a, #4
        jra    loc_B1CF
; ---------------------------------------------------------------------------

loc_B1CC: 
        rlwa    x, a
        and    a, #0xFB; '√'

loc_B1CF: 
        rrwa    x, a
        ldw    Status,    x
        ld    a, MainState.IxFrom52
        jreq    loc_B1DD
        rrwa    x, a
        or    a, #0x10
        jra    loc_B1E0
; ---------------------------------------------------------------------------

loc_B1DD: 
        rrwa    x, a
        and    a, #0xEF; 'я'

loc_B1E0: 
        rlwa    x, a
        ldw    Status,    x
        ld    a, MainState.ConfigValid
        jreq    loc_B1EE
        rrwa    x, a
        or    a, #1
        jra    loc_B1F1
; ---------------------------------------------------------------------------

loc_B1EE: 
        rrwa    x, a
        and    a, #0xFE; '■'

loc_B1F1: 
        rlwa    x, a
        ldw    Status,    x
        ld    a, #CONFIG.Status-0x30
        jp    SetConfigReg
; End of function RefreshStatus


; =============== S U B	R O U T	I N E =======================================


sub_B1FA: 

; FUNCTION CHUNK AT A14F SIZE 00000007 BYTES

        call    PUSH32_R8R11
        call    sub_A0AE
        ldw    R12, x
        call    MOV32_R8R11_R0R3
        ld    R0, a
        ld    a, [R12.w]
        and    a, #0xFE; '■'
        ld    [R12.w], a
        clr    a
        ld    [R12.w], a
        ld    a, R5
        or    a, R4
        or    a, R6
        or    a, [R12.w]
        ld    [R12.w], a
        incw    x
        ld    a, (x)
        and    a, #0xC7; '╟'
        ld    (x), a
        ld    a, (9,sp)
        or    a, R7
        or    a, (x)
        ld    (x), a
        ldw    x, R12
        addw    x, #2
        ld    a, R0
        ld    (x), a
        ldw    x, y
        clr    a
        rrwa    x, a
        ld    a, xl
        ldw    x, R12
        addw    x, #3
        ld    (x), a
        ldw    x, R12
        addw    x, #4
        ld    a, yl
        ld    (x), a
        ldw    x, R12
        cpw    x, #DMA1_C3CR; DMA1 channel 3 configuration register
        jrne    loc_B257
        call    MOV32_R0R3_R8R11
        call    LSR32_R0R3_IMM8
; ---------------------------------------------------------------------------
        dc.b 16
; ---------------------------------------------------------------------------
        ld    a, R3
        ld    DMA_C3M0EAR, a; DMA channel 3	memory 0 extended address register

loc_B257: 
        ldw    x, R10
        clr    a
        rrwa    x, a
        ld    a, xl
        ldw    x, R12
        addw    x, #6
        ld    (x), a
        ld    a, R11
        ldw    x, R12
        addw    x, #7
        ld    (x), a
        jp    _sub_B1FA_epi_ret
; End of function sub_B1FA


; =============== S U B	R O U T	I N E =======================================

; (a=dev, r0=len, r1=cmd, r2=sub, x->data)

_FramePacket: 
        call    PUSH32_R8R11
        ld    R5, a
        mov    R10, R0
        mov    R11, R1
        mov    R4, R2
        ldw    R6, x
        ld    a, FramerBusy
        jrne    __FramePacket_exit
        mov    FramerBusy, #1
        ld    a, R10
        cp    a, #0x83; 'Г'
        jrnc    loc_B2D4
        ld    a, byte_4B3
        cp    a, #1
        jrslt    loc_B2D4
        ld    a, byte_4B2
        clrw    x
        ld    xl, a
        ldw    y, x
        call    sub_C1E1
        addw    x, #UartTxLen0
        ldw    R8, x
        incw    x
        ldw    R2, x
        ldw    y, R6
        mov    R1, R4
        mov    R0, R11
        ld    a, R10
        clrw    x
        exg    a, xl
        ld    a, R5
        exg    a, xl
        call    FramePacket
        ld    [R8.w],    a
        ld    a, byte_4B2
        inc    a
        ld    byte_4B2, a
        ld    a, byte_4B2
        cp    a, #2
        jrne    loc_B2CD
        clr    byte_4B2

loc_B2CD: 
        ld    a, byte_4B3
        dec    a
        ld    byte_4B3, a

loc_B2D4: 
        clr    FramerBusy

__FramePacket_exit: 
        jp    epi_ret
; End of function _FramePacket


; =============== S U B	R O U T	I N E =======================================


AfeRefreshStatus: 
        push    R8
        ld    R8, a
        ldw    x, #AfeSysStat
        clr    a
        call    AfeReadRegB
        cp    a, #0
        jrne    loc_B30F
        btjf    AfeSysStat, #1,    loc_B2F4
        mov    MainState.SCD, #1

loc_B2F4: 
        btjf    AfeSysStat, #0,    loc_B2FD
        mov    MainState.OCD, #1

loc_B2FD: 
        btjf    AfeSysStat, #3,    loc_B306
        mov    MainState.UV, #1

loc_B306: 
        btjf    AfeSysStat, #2,    loc_B30F
        mov    MainState.OV, #1

loc_B30F: ; refresh all bits
        mov    R0, #0xFF
        clr    a; SYS_STAT
        call    AfeWriteRegB
        btjf    AfeSysStat, #7,    loc_B327
        clr    byte_494
        ld    a, MainState.LowPowerMode
        jrne    loc_B33C
        jra    _AfeRefreshStatus_exit
; ---------------------------------------------------------------------------

loc_B327: 
        ld    a, R8
        add    a, byte_494
        ld    byte_494, a
        cp    a, #20
        jrc    _AfeRefreshStatus_exit
        mov    byte_494, #20
        ld    a, MainState.LowPowerMode
        jreq    loc_B33F

loc_B33C: 
        clr    a
        jra    loc_B341
; ---------------------------------------------------------------------------

loc_B33F: 
        ld    a, #1

loc_B341: ; (a=0-OneShot/1-continuous)
        call    AfeControlCoulombCounter

_AfeRefreshStatus_exit: 
        pop    R8
        ret
; End of function AfeRefreshStatus


; =============== S U B	R O U T	I N E =======================================


ProcessIdle: 
        ld    a, MainState.UV
        jreq    loc_B353
        mov    MainState.LowPowerMode,    #1
        jra    loc_B3B0
; ---------------------------------------------------------------------------

loc_B353: 
        ld    a, MainState.IsCharging
        jrne    loc_B3B0
        ldw    x, #Current; in mA
        call    LDR32_R0R3_atX; R0:R2	= *x
        tnz    R0
        jrpl    loc_B36A
        call    LDR32_R0R3_atX; R0:R2	= *x
        call    NEG32_R0R3
        jra    loc_B36D
; ---------------------------------------------------------------------------

loc_B36A: ; R0:R2	= *x
        call    LDR32_R0R3_atX

loc_B36D: 
        ldw    x, #50
        ldw    R6, x
        clrw    x
        ldw    R4, x
        call    CMP32_R0R3_R4R7_0
        jrsge    loc_B3B0; have current - reset idle
        ld    a, MainState.OV
        jrne    loc_B3B0
        ld    a, MainState.ChargeOvercurrent
        jrne    loc_B3B0
        ld    a, MainState.DischargeError
        jrne    loc_B3B0
        ld    a, MainState.got54
        jrne    loc_B393
        ld    a, MainState.IsRunning
        jrne    loc_B3B0

loc_B393: 
        ld    a, IdleTimer
        inc    a
        ld    IdleTimer, a
        cp    a, #0xA
        jrc    _ProcessIdle_exit
        clr    IdleTimer
        mov    MainState.LowPowerMode,    #1
        ld    a, MainState.got54
        jreq    _ProcessIdle_exit
        mov    MainState.NeedSaveConfig, #1
        ret
; ---------------------------------------------------------------------------

loc_B3B0: 
        clr    IdleTimer

_ProcessIdle_exit: 
        ret
; End of function ProcessIdle


; =============== S U B	R O U T	I N E =======================================


InitMany: 
        push    R8
        call    ClkInit
        call    LoadUpdConfig
        call    sub_BAFA; gpio
        call    sub_B9E5; gpio
        call    SWI2C_Init; gpio
        call    Usart1Init
        call    AfeInit
        cp    a, #0
        jreq    _InitMany_good
        ld    a, #2
        call    SetErrorCode
        clrw    x
        ldw    Config.RemainingCapacity, x
        ldw    Config.RemainingPercentage, x
        ldw    Config.Current,    x
        ldw    Config.Voltage,    x
        ldw    Config.field_72, x
        ldw    Config.field_74, x
        ld    a, #CONFIG.Health-0x3B; %
        call    SetConfigReg
        ldw    x, #20
        ldw    R0, x
        clrw    y
        ldw    x, #Config.VoltageCell1
        call    memset; (x=dst, yl=val, R0=size)

loc_B3FB: 
        call    ErrBlinkStep
        cp    a, #3
        jrc    loc_B405
        call    reboot

loc_B405: 
        mov    R8, #120

loc_B409: 
        call    UartProcessForTime
        jreq    loc_B3FB
        jra    loc_B409
; ---------------------------------------------------------------------------

_InitMany_good: 
        call    InitDesignParams
        call    InitTimer
        call    InitRtc
        call    StartRtc
        sim
        pop    R8
        ret
; End of function InitMany


; =============== S U B	R O U T	I N E =======================================


GpioConfig: 
        ldw    y, x
        ld    R4, a
        mov    R1, R4
        cpl    R1
        addw    x, #PA_CR2 - PA_ODR; Port A control register 2
        ldw    R2, x
        ld    a, R1
        and    a, [R2.w]
        ld    [R2.w],    a
        ld    a, R0
        bcp    a, #0x80; 'А'
        jreq    loc_B458
        ld    a, R0
        bcp    a, #0x10
        jreq    loc_B449
        ld    a, R4
        or    a, (y)
        jra    loc_B44D
; ---------------------------------------------------------------------------

loc_B449: 
        ld    a, R1
        and    a, (y)

loc_B44D: 
        ld    (y), a
        ldw    x, y
        addw    x, #2
        ld    a, R4
        or    a, (x)
        jra    loc_B45F
; ---------------------------------------------------------------------------

loc_B458: 
        ldw    x, y
        addw    x, #2
        ld    a, R1
        and    a, (x)

loc_B45F: 
        ld    (x), a
        addw    y, #3
        ld    a, R0
        bcp    a, #0x40; '@'
        jreq    loc_B470
        ld    a, R4
        or    a, (y)
        jra    loc_B474
; ---------------------------------------------------------------------------

loc_B470: 
        ld    a, R1
        and    a, (y)

loc_B474: 
        ld    (y), a
        ld    a, R0
        bcp    a, #0x20; ' '
        jreq    loc_B483
        ld    a, R4
        or    a, [R2.w]
        jra    loc_B488
; ---------------------------------------------------------------------------

loc_B483: 
        ld    a, R1
        and    a, [R2.w]

loc_B488: 
        ld    [R2.w],    a
        ret
; End of function GpioConfig


; =============== S U B	R O U T	I N E =======================================


UartRxProcess: 
        push    R8
        mov    R8, #0x8A; 'К'
        ld    a, FramerBusy
        jrne    _UartRxProcess_exit_0
        ld    a, RxBusy
        jrne    _UartRxProcess_exit_0
        mov    RxBusy,    #1
        ld    a, DMA1_C2NDTR; DMA1 number of data to transfer register (channel 2)
        jrne    loc_B4AD
        clr    RxBusy

_UartRxProcess_exit_0: 
        clr    a
        jra    _UartRxProcess_exit
; ---------------------------------------------------------------------------

loc_B4AD: 
        ld    a, #0x8A; 'К'
        sub    a, DMA1_C2NDTR; DMA1 number of data to transfer register (channel 2)
        ld    R0, a
        jra    loc_B4DF
; ---------------------------------------------------------------------------

loc_B4B6: 
        ld    a, byte_4B4
        clrw    x
        ld    xl, a
        ld    a, (UartDmaBuf,x)
        call    UartHandleByte
        ld    a, byte_4B4
        inc    a
        ld    byte_4B4, a
        ld    a, byte_4B4
        cp    a, #0x8A; 'К'
        jrc    loc_B4D3
        clr    byte_4B4

loc_B4D3: 
        ld    a, #0x8A; 'К'
        sub    a, DMA1_C2NDTR; DMA1 number of data to transfer register (channel 2)
        ld    R0, a
        ld    a, R8
        dec    a
        ld    R8, a

loc_B4DF: 
        ld    a, R0
        cp    a, byte_4B4
        jreq    loc_B4EA
        tnz    R8
        jrne    loc_B4B6

loc_B4EA: 
        clr    RxBusy
        ld    a, #0x8A; 'К'
        sub    a, R8

_UartRxProcess_exit: 
        pop    R8
        ret
; End of function UartRxProcess


; =============== S U B	R O U T	I N E =======================================


sub_B4F6: 
        call    sub_C1C6
        ld    a, #0xFF
        call    sub_C12C
        ldw    x, #DMA1_C2CR; DMA1 channel 2 configuration register
        call    sub_B8E8
        push    #0
        mov    R7, #0x30; '0'
        mov    R6, #0x20; ' '
        mov    R5, #0x10
        clr    R4
        ld    a, #0x8A; 'К'
        ldw    y, #USART1_DR; USART1 Data Register
        ldw    x, #UartDmaBuf
        ldw    R2, x
        clrw    x
        ldw    R0, x
        ldw    x, #DMA1_C2CR; DMA1 channel 2 configuration register
        call    sub_B1FA
        addw    sp, #1
        ld    a, #1
        ldw    x, #DMA1_C2CR; DMA1 channel 2 configuration register
        call    DmaOnOff
        ldw    x, #DMA1_C1CR; DMA1 channel 1 configuration register
        call    sub_B8E8
        push    #0
        mov    R7, #0x20; ' '
        mov    R6, #0x20; ' '
        clr    R5
        mov    R4, #8
        clr    a
        ldw    y, #USART1_DR; USART1 Data Register
        clrw    x
        ldw    R2, x
        ldw    R0, x
        ldw    x, #DMA1_C1CR; DMA1 channel 1 configuration register
        call    sub_B1FA
        addw    sp, #1
        ld    a, #1
        jp    sub_BFF0
; End of function sub_B4F6


; =============== S U B	R O U T	I N E =======================================

; (a=0-OneShot/1-continuous)

AfeControlCoulombCounter: 
        push    R8
        sub    sp, #5
        ld    R8, a
        clr    a
        ld    (1,sp),    a
        ldw    x, sp
        call    AfeGetSysCtrl2
        jrne    loc_B5BF
        tnz    R8
        jreq    _AfeControlCoulombCounter_cc_oneshot
        ld    a, (1,sp)
        and    a, #0x5F; '_'
        ld    (1,sp),    a
        or    a, #0x40; '@'
        jra    loc_B585
; ---------------------------------------------------------------------------

_AfeControlCoulombCounter_cc_oneshot: 
        ld    a, (1,sp)
        and    a, #0x3F; '?'
        ld    (1,sp),    a
        or    a, #0x20; ' '

loc_B585: 
        ld    (1,sp),    a
        ldw    y, #unk_C36D
        ldw    x, sp
        call    I2CPrepareAfeWrite
        ld    (2,sp),    a
        ld    a, #AFE_SYS_CTRL2
        ld    (3,sp),    a
        ld    a, (1,sp)
        ld    (4,sp),    a
        call    sub_90FF
        ldw    x, sp
        call    I2CWrite_0
        ld    (5,sp),    a
        ldw    y, #2
        ldw    x, sp
        call    sub_BF66
        jrne    loc_B5B4
        ld    a, byte_4A3
        jreq    loc_B5BD
        dec    a
        jra    loc_B5BA
; ---------------------------------------------------------------------------

loc_B5B4: 
        call    sub_90F9
        jrnc    loc_B5BD
        inc    a

loc_B5BA: 
        ld    byte_4A3, a

loc_B5BD: 
        ld    a, R0

loc_B5BF: 
        addw    sp, #5
        pop    R8
        ret
; End of function AfeControlCoulombCounter


; =============== S U B	R O U T	I N E =======================================

; (a=EnableCharge)

AfeControlCharge: 
        push    R8
        sub    sp, #5
        ld    R8, a
        clr    a
        ld    (1,sp),    a
        ldw    x, sp
        call    AfeGetSysCtrl2
        jrne    loc_B61D
        tnz    R8
        jreq    _AfeControlCharge_chg_off
        ld    a, (1,sp)
        or    a, #1
        jra    loc_B5E3
; ---------------------------------------------------------------------------

_AfeControlCharge_chg_off: 
        ld    a, (1,sp)
        and    a, #0xFE; '■'

loc_B5E3: 
        ld    (1,sp),    a
        ldw    y, #unk_C36D
        ldw    x, sp
        call    I2CPrepareAfeWrite
        ld    (2,sp),    a
        ld    a, #AFE_SYS_CTRL2
        ld    (3,sp),    a
        ld    a, (1,sp); val
        ld    (4,sp),    a
        call    sub_90FF
        ldw    x, sp
        call    I2CWrite_0
        ld    (5,sp),    a
        ldw    y, #2
        ldw    x, sp
        call    sub_BF66
        jrne    loc_B612
        ld    a, byte_4A3
        jreq    loc_B61B
        dec    a
        jra    loc_B618
; ---------------------------------------------------------------------------

loc_B612: 
        call    sub_90F9
        jrnc    loc_B61B
        inc    a

loc_B618: 
        ld    byte_4A3, a

loc_B61B: 
        ld    a, R0

loc_B61D: 
        addw    sp, #5
        pop    R8
        ret
; End of function AfeControlCharge


; =============== S U B	R O U T	I N E =======================================


InitDesignParams: 
        clrw    x
        decw    x
        ldw    MinCellVoltage,    x; in mV
        clrw    x
        ldw    MinCellVoltage,    x; in mV
        ldw    x, #3625
        ldw    CapacityVoltageParamH, x
        ldw    x, #3375
        ldw    CapacityVoltageParamL, x
        ldw    x, #4
        ldw    DesignParam1, x; 5.2 -	4, 7.8 - 4, 10 - 10
        ld    a, BattCapacityClass; 0-5.2AH - default
; 1-10.05AH
; 2-7.8AH
        jrne    loc_B64E
        ldw    x, #24
        call    sub_C1F3
        ldw    x, #5200
        jra    loc_B67B
; ---------------------------------------------------------------------------

loc_B64E: ; 0-5.2AH - default
        ld    a, BattCapacityClass; 1-10.05AH
; 2-7.8AH
        cp    a, #2
        jrne    _InitDesignParams__1_10050

_InitDesignParams__2_7800: 
        ldw    x, #16
        call    sub_C1F3
        ldw    x, #7800
        jra    loc_B67B
; ---------------------------------------------------------------------------

_InitDesignParams__1_10050: 
        ldw    x, #3716
        ldw    CapacityVoltageParamH, x
        ldw    x, #3333
        ldw    CapacityVoltageParamL, x
        ldw    x, #10
        ldw    DesignParam1, x; 5.2 -	4, 7.8 - 4, 10 - 10
        ldw    x, #21
        call    sub_C1F3
        ldw    x, #10050

loc_B67B: 
        ldw    DesignCapacity+2, x
        ret
; End of function InitDesignParams


; =============== S U B	R O U T	I N E =======================================


MeasureRemainingCapacity: 
        call    PUSH32_R8R11
        ldw    x, #Current; in mA
        call    AfeGetCurrent_atX; in mA
        call    GetBattVoltage_R8R11
        ldw    x, DesignCellResistance; mOhm,	5.2 - 24, 7.8 -	16, 10 - 21
        call    ZEXT32_R0R3_X
        ldw    x, #Current; in mA
        call    MUL32_R0R3_atX; Current * DesignCellResistance = CellVoltageDrop
        call    SDIV32_R0R3_1000_MOV32_R4R7_R8R11; CellVoltageDrop / 1000 - compensate	mOhm->Ohm
; result is in mV
        call    ADD32_R0R3_R4R7; BattEmf = CellVoltageDrop+BattVoltage
        ldw    x, #BattEmfBuf; ЭДС
        ld    a, #8

loc_B6A2: 
        ldw    y, R2
        ldw    (x), y
        addw    x, #2
        dec    a
        jrne    loc_B6A2
        call    UpdateRemainingCapacity; (R0R3=emf) : x->RemainingCapacity
        call    _SetTrackedCapacity; (@X)
        call    sub_C2D1
        ldw    x, #RemainingCapacity
        call    SetConfigRemainingCapacity
        ldw    x, #RemainingCapacity
        call    CalcRemainingPercentage
        jrslt    loc_B6C7
        ld    a, #100
        jra    loc_B6D0
; ---------------------------------------------------------------------------

loc_B6C7: 
        tnz    R0
        jrpl    loc_B6CE
        clr    a
        jra    loc_B6D0
; ---------------------------------------------------------------------------

loc_B6CE: 
        ld    a, R3

loc_B6D0: 
        ld    RemainingPercentage, a
        call    CopyRemainingPercentage
        ld    a, #1
        jp    epi_ret
; End of function MeasureRemainingCapacity


; =============== S U B	R O U T	I N E =======================================


sub_B6DB: 
        ld    R1, a
        call    sub_C1BD
        clrw    x
        incw    x
        call    lsl_x_a
        exg    a, xl
        ld    R1, a
        tnz    R2
        jrne    loc_B700
        tnz    R0
        jreq    loc_B6F5
        or    a, CLK_PCKENR1; Peripheral clock gating register 1
        jra    loc_B6FC
; ---------------------------------------------------------------------------

loc_B6F5: 
        cpl    R1
        ld    a, R1
        and    a, CLK_PCKENR1; Peripheral clock gating register 1

loc_B6FC: ; Peripheral clock gating register 1
        ld    CLK_PCKENR1, a
        ret
; ---------------------------------------------------------------------------

loc_B700: 
        ld    a, R2
        cp    a, #0x10
        jrne    loc_B71C
        tnz    R0
        jreq    loc_B711
        ld    a, R1
        or    a, CLK_PCKENR2; Peripheral clock gating register 2
        jra    loc_B718
; ---------------------------------------------------------------------------

loc_B711: 
        cpl    R1
        ld    a, R1
        and    a, CLK_PCKENR2; Peripheral clock gating register 2

loc_B718: ; Peripheral clock gating register 2
        ld    CLK_PCKENR2, a
        ret
; ---------------------------------------------------------------------------

loc_B71C: 
        tnz    R0
        jreq    loc_B727
        ld    a, R1
        or    a, CLK_PCKENR3; Peripheral clock gating register 3
        jra    loc_B72E
; ---------------------------------------------------------------------------

loc_B727: 
        cpl    R1
        ld    a, R1
        and    a, CLK_PCKENR3; Peripheral clock gating register 3

loc_B72E: ; Peripheral clock gating register 3
        ld    CLK_PCKENR3, a
        ret
; End of function sub_B6DB


; =============== S U B	R O U T	I N E =======================================


sub_B732: 
        ld    a, MainState.got55
        jreq    loc_B745
        mov    MainState.field_F, #1
        clr    MainState.got55
        clr    byte_4AF
        jra    loc_B758
; ---------------------------------------------------------------------------

loc_B745: 
        ld    a, byte_4AF
        inc    a
        ld    byte_4AF, a
        cp    a, #0xF
        jrc    loc_B758
        clr    byte_4AF
        clr    MainState.field_F

loc_B758: 
        ld    a, MainState.GotPacket
        jreq    loc_B76A
        mov    MainState.IsRunning, #1
        clr    MainState.GotPacket
        clr    byte_4AE
        ret
; ---------------------------------------------------------------------------

loc_B76A: 
        ld    a, byte_4AE
        inc    a
        ld    byte_4AE, a
        cp    a, #0xF
        jrc    locret_B77D
        clr    byte_4AE
        clr    MainState.IsRunning

locret_B77D: 
        ret
; End of function sub_B732


; =============== S U B	R O U T	I N E =======================================


Usart1Init: 
        call    UartClrVars
        mov    R0, #0x40; '@'
        ld    a, #4
        call    GPIOC_Configure
        mov    R0, #0xF0; 'Ё'
        call    sub_C263
        ldw    x, #USART1_SR; USART1 Status	Register
        call    sub_BA91
        mov    R6, #0xC
        clr    R5
        clr    R4
        clr    a
        ldw    x, #0xC200
        ldw    R2, x
        clrw    x
        incw    x
        ldw    R0, x
        ldw    x, #USART1_SR; USART1 Status	Register
        call    sub_AFDE
        call    sub_B4F6
        bres    USART1_CR1, #5; USART1 Control Register 1
        mov    R0, #1
        call    Usart1DmaOnOff
        mov    R0, #1
        ld    a, #0x80; 'А'
        ldw    x, #USART1_SR; USART1 Status	Register
        jp    UsartCr5SetClr
; End of function Usart1Init


; =============== S U B	R O U T	I N E =======================================


Sleep: 
        call    sub_BAC6
        clr    R0
        ld    a, #0x40; '@'
        ldw    x, #PA_ODR; Port A data output latch register
        call    GpioConfig
        clr    R0
        ld    a, #0xC0; '└'
        ldw    x, #PB_ODR; .1 - red LED (1-on)
; .2 - blue LED	(1-on)
        call    GpioConfig
        clr    R0
        ld    a, #0xA
        ldw    x, #PC_ODR; Port C data output latch register
        call    GpioConfig
        clr    R0
        ld    a, #0xC
        ldw    x, #PD_ODR; Port D data output latch register
        call    GpioConfig
        call    sub_BA1F
        clr    a
        call    sub_C399
        ld    a, #2
        call    sub_C391
        ld    a, #1
        call    sub_BFE3

loc_B805: 
        call    sub_C395
        cp    a, #2
        jrne    loc_B805
        clr    a
        call    sub_BFD6
        halt
        ret
; End of function Sleep


; =============== S U B	R O U T	I N E =======================================


sub_B812: 
        ld    a, byte_4A9
        jreq    loc_B83C
        call    sub_C307
        call    sub_C389

loc_B81D: 
        call    sub_C30D
        bcp    a, #0x80; 'А'
        jrne    loc_B829
        decw    x
        jreq    loc_B848
        jra    loc_B81D
; ---------------------------------------------------------------------------

loc_B829: 
        call    sub_C2A3

loc_B82C: 
        call    sub_C30D
        bcp    a, #0x40; '@'
        jrne    loc_B838
        decw    x
        jreq    loc_B848
        jra    loc_B82C
; ---------------------------------------------------------------------------

loc_B838: 
        clr    byte_4A9

loc_B83C: 
        call    _SWI2C_SDA1
        ldw    x, SWI2C_IOBASE
        incw    x
        ld    a, (x)
        bcp    a, #0x40; '@'
        jrne    loc_B84B

loc_B848: 
        ld    a, #0x11
        ret
; ---------------------------------------------------------------------------

loc_B84B: 
        call    sub_C307
        call    SWI2C_GPIO_Set
        call    sub_C385
        mov    byte_4A9, #1
        clr    a
        ret
; End of function sub_B812


; =============== S U B	R O U T	I N E =======================================


ClkInit: 
        ld    a, #1
        call    sub_C399
        ld    a, #1
        call    sub_BFD6

loc_B864: ; Internal clock control register
        btjf    CLK_ICKCR, #1, loc_B864
        ld    a, #1
        call    sub_C391
        ld    a, #1
        call    sub_BFE3

loc_B873: 
        call    sub_C395
        cp    a, #1
        jrne    loc_B873
        clr    R0
        ld    a, #4
        call    sub_C122
        mov    R0, #1
        clr    a
        call    sub_C253
        ld    a, #4
        call    sub_C253
        ld    a, #5
        call    sub_C253
        ld    a, #0x14
        call    sub_C253
        ld    a, #0x10
        call    sub_C253
        ld    a, #0x12
        jp    sub_B6DB
; End of function ClkInit


; =============== S U B	R O U T	I N E =======================================


PktDataLdr32: 
        ldw    x, R12
        addw    x, #PACKET.payload+3; update size msb
        call    ZEXT32_R0R3_memX
        call    LSL32_R0R3_IMM8
; ---------------------------------------------------------------------------
        dc.b 24
; ---------------------------------------------------------------------------
        call    PUSH32_R0R3
        ldw    x, R12
        addw    x, #PACKET.payload+2; mh
        call    ZEXT32_R0R3_memX
        call    LSL32_R0R3_IMM8
; ---------------------------------------------------------------------------
        dc.b 0x10
; ---------------------------------------------------------------------------
        call    MOV32_R8R11_R0R3
        ldw    x, R12
        addw    x, #PACKET.payload+1; ml
        call    ZEXT32_R0R3_memX
        call    LSL32_R0R3_IMM8
; ---------------------------------------------------------------------------
        dc.b 8
; ---------------------------------------------------------------------------
        ldw    x, R12
        addw    x, #PACKET.payload; lsb
        ld    a, (x)
        clrw    x
        ld    xl, a
        ldw    R6, x
        clrw    x
        ldw    R4, x
        call    ADD32_R0R3_R4R7
        call    MOV32_R4R7_R8R11
        call    ADD32_R0R3_R4R7
        call    POP32_R4R7
        jp    ADD32_R0R3_R4R7
; End of function PktDataLdr32


; =============== S U B	R O U T	I N E =======================================


sub_B8E8: 
        ld    a, (x)
        and    a, #0xFE; '■'
        ld    (x), a
        clr    a
        ld    (x), a
        ldw    y, x
        addw    y, #2
        ld    (y), a
        cpw    x, #0x5093
        jrne    loc_B905
        mov    DMA1_C3PAR_C3M1AR, #0x40; '@' ; DMA1 peripheral address register (channel 3)
        clr    DMA_C3M0EAR; DMA channel 3	memory 0 extended address register
        jra    loc_B90F
; ---------------------------------------------------------------------------

loc_B905: 
        ldw    y, x
        addw    y, #3
        ld    a, #0x52; 'R'
        ld    (y), a

loc_B90F: 
        ldw    y, x
        addw    y, #4
        clr    a
        ld    (y), a
        ldw    y, x
        addw    y, #6
        ld    (y), a
        ldw    y, x
        addw    y, #7
        ld    (y), a
        incw    x
        ld    (x), a
        ret
; End of function sub_B8E8


; =============== S U B	R O U T	I N E =======================================

; R0:R2	= *x

LDR32_R0R3_atX: 
        pushw    x
        ldw    x, (x)
        ldw    R0, x
        ldw    x, (1,sp)
        ldw    x, (2,x)
        ldw    R2, x
        popw    x
        ret
; End of function LDR32_R0R3_@X


; =============== S U B	R O U T	I N E =======================================


LDR32_R4R7_X: 
        pushw    x
        ldw    x, (x)
        ldw    R4, x
        ldw    x, (1,sp)
        ldw    x, (2,x)
        ldw    R6, x
        popw    x
        ret
; End of function LDR32_R4R7_X


; =============== S U B	R O U T	I N E =======================================


LDR32_R8R11_atX: 
        pushw    x
        ldw    x, (x)
        ldw    R8, x
        ldw    x, (1,sp)
        ldw    x, (2,x)
        ldw    R10, x
        popw    x
        ret
; End of function LDR32_R8R11_@X


; =============== S U B	R O U T	I N E =======================================

; *x = R0:R2

STR32: 
        pushw    y
        ldw    y, R0
        ldw    (x), y
        ldw    y, R2
        ldw    (2,x), y
        popw    y
        ret
; End of function STR32


; =============== S U B	R O U T	I N E =======================================


STR32_X_R8R11: 
        pushw    y
        ldw    y, R8
        ldw    (x), y
        ldw    y, R10
        ldw    (2,x), y
        popw    y
        ret
; End of function STR32_X_R8R11


; =============== S U B	R O U T	I N E =======================================


sub_B96B: 
        call    PUSH32_R8R11
        call    PUSH32_R12R15
        call    sub_BF36
        call    MOV32_R8R11_R0R3
        ldw    x, #3000
        ldw    R6, x
        clrw    x
        ldw    R4, x
        call    CMP32_R0R3_R4R7_0
        jrsge    loc_B9A2
        call    MOV32_R4R7_R8R11
        call    LDR32_R0R3_IMM
        neg    (0,sp)
        inc    (0xE4,sp)
        call    MOV32_R12R15_R0R3
        call    MOV32_R0R3_R8R11
        call    sub_9439
        call    MOV32_R4R7_R12R15
        call    SDIVMOD32_R0R3_R4R7; :	R0R3 - частное,	R4R7 - остаток
        ldw    x, R2
        jp    epi_ret_0
; ---------------------------------------------------------------------------

loc_B9A2: 
        ldw    x, #10000
        jp    epi_ret_0
; End of function sub_B96B


; =============== S U B	R O U T	I N E =======================================


MUL16_X_R0R1: 
        push    a
        pushw    x
        swapw    x
        ld    a, R1
        mul    x, a
        pushw    x
        ldw    x, (3,sp)
        ld    a, R0
        mul    x, a
        addw    x, (1,sp)
        clr    a
        rlwa    x, a
        pushw    x
        ldw    x, (5,sp)
        ld    a, R1
        mul    x, a
        addw    x, (1,sp)
        addw    sp, #6
        pop    a
        ret
; End of function MUL16_X_R0R1


; =============== S U B	R O U T	I N E =======================================


lsl_x_a: 
        tnz    a
        jreq    _lsl_x_a_exit

loc_B9C9: 
        sllw    x
        dec    a
        jrne    loc_B9C9

_lsl_x_a_exit: 
        ret
; End of function lsl_x_a


; =============== S U B	R O U T	I N E =======================================


lsl_x_10: 
        sllw    x
        sllw    x
        sllw    x
        sllw    x
        sllw    x
; End of function lsl_x_10


; =============== S U B	R O U T	I N E =======================================


lsl_x_5: 
        sllw    x
        sllw    x
        sllw    x
        sllw    x
        sllw    x
        ret
; End of function lsl_x_5


; =============== S U B	R O U T	I N E =======================================


lsr_x_4: 
        srlw    x
        srlw    x
        srlw    x
        srlw    x
        ret
; End of function lsr_x_4


; =============== S U B	R O U T	I N E =======================================


absx: 
        clrw    x
        tnz    a
        jrpl    loc_B9E3
        cplw    x

loc_B9E3: 
        ld    xl, a
        ret
; End of function absx


; =============== S U B	R O U T	I N E =======================================

; gpio

sub_B9E5: 
        mov    R0, #0xE0; 'р'
        ld    a, #0x3E; '>'
        ldw    x, #PB_ODR; .1 - red LED (1-on)
; .2 - blue LED	(1-on)
        call    GpioConfig
        mov    R0, #0x40; '@'
        ld    a, #1
        ldw    x, #PB_ODR; .1 - red LED (1-on)
; .2 - blue LED	(1-on)
        call    GpioConfig
        mov    R0, #0xE0; 'р'
        ld    a, #0x36; '6'
        ldw    x, #PD_ODR; Port D data output latch register
        call    GpioConfig
        mov    R0, #0x40; '@'
        ld    a, #0x20; ' '
        ldw    x, #PA_ODR; Port A data output latch register
        call    GpioConfig
        clr    R0
        ld    a, #0x40; '@'
        ldw    x, #PA_ODR; Port A data output latch register
        jp    GpioConfig
; End of function sub_B9E5


; =============== S U B	R O U T	I N E =======================================


sub_BA1F: 
        clr    a
        ldw    x, #ADC1_CR1; ADC1 Configuration register 1
        call    AdcOnOff
        clr    a
        ldw    x, #SPI1_CR1; SPI1 Control Register	1
        call    SpiOnOff
        clr    a
        ldw    x, #USART1_SR; USART1 Status	Register
        call    UsartOnOff
        clr    a
        call    Tim2OnOff
        call    Uasrt1DmaOff
        clr    a
        call    sub_BFF0
        clr    R0
        ld    a, #4
        call    sub_C325
        ld    a, #5
        call    sub_C325
        ld    a, #0x14
        call    sub_C325
        clr    a
        call    sub_C325
        ld    a, #0x10
        jp    sub_B6DB
; End of function sub_BA1F


; =============== S U B	R O U T	I N E =======================================


sub_BA59: 
        clrw    x
        ldw    R2, x
        ldw    R0, x
        ld    a, CLK_SCSR; System clock status register
        cp    a, #1
        jreq    loc_BA74
        cp    a, #2
        jrne    loc_BA70
        ldw    x, #0x9470
        ldw    R2, x
        jra    loc_BA7E
; ---------------------------------------------------------------------------

loc_BA70: 
        cp    a, #4
        jrne    loc_BA7E

loc_BA74: 
        ldw    x, #0x2400
        ldw    R2, x
        ldw    x, #0xF4; 'Ї'
        ldw    R0, x

loc_BA7E: ; System clock divider register
        ld    a, CLK_CKDIVR
        and    a, #7
        clrw    x
        ld    xl, a
        ld    a, (unk_C337,x)
        ld    xl, a
        ldw    R6, x
        clrw    x
        ldw    R4, x
        jp    DIVMOD32_R0R3_R4R7; : R0R3 - частное, R4R7 - остаток
; End of function sub_BA59


; =============== S U B	R O U T	I N E =======================================


sub_BA91: 
        ld    a, (x)
        ldw    y, x
        incw    y
        ld    a, (y)
        ldw    y, x
        addw    y, #3
        clr    a
        ld    (y), a
        ldw    y, x
        addw    y, #2
        ld    (y), a
        ldw    y, x
        addw    y, #4
        ld    (y), a
        ldw    y, x
        addw    y, #5
        ld    (y), a
        ldw    y, x
        addw    y, #6
        ld    (y), a
        addw    x, #7
        ld    (x), a
        ret
; End of function sub_BA91


; =============== S U B	R O U T	I N E =======================================


sub_BAC6: 
        mov    R0, #0xC0; '└'
        ld    a, #0xBC; '╝'
        ldw    x, #PA_ODR; Port A data output latch register
        call    sub_C243
        ld    a, #0x3F; '?'
        ldw    x, #PB_ODR; .1 - red LED (1-on)
; .2 - blue LED	(1-on)
        call    sub_C243
        ld    a, #0xF5; 'ї'
        ldw    x, #PC_ODR; Port C data output latch register
        call    sub_C243
        ld    a, #0xF3; 'є'
        ldw    x, #PD_ODR; Port D data output latch register
        call    sub_C243
        ld    a, #0xFF
        ldw    x, #PE_ODR; Port E data output latch register
        call    sub_C243
        ld    a, #1
        ldw    x, #PF_ODR; Port F data output latch register
        jp    GpioConfig
; End of function sub_BAC6


; =============== S U B	R O U T	I N E =======================================

; gpio

sub_BAFA: 
        mov    R0, #0x40; '@'
        call    sub_C24B
        clrw    x
        incw    x
        call    ShortDelay
        clr    byte_4A5
        btjt    PC_IDR,    #5, loc_BB13; Port C input pin	value register
        bset    byte_4A5, #0

loc_BB13: ; Port C input pin value register
        btjt    PC_IDR,    #6, loc_BB1C
        bset    byte_4A5, #1

loc_BB1C: 
        mov    R0, #0xC0; '└'
        call    sub_C24B
        ld    a, byte_4A5
        clrw    x
        ld    xl, a
        ld    a, #CONFIG.field_A2-0x51
        jp    SetConfigReg
; End of function sub_BAFA


; =============== S U B	R O U T	I N E =======================================


StartRtc: 
        call    sub_C32B
        ld    a, xl
        and    a, #1
        ld    R0, a
        ld    a, xl
        and    a, #0xF0; 'Ё'
        tnz    R1
        jreq    loc_BB49
        or    a, RTC_CR2; Control Register 2
        ld    RTC_CR2, a; Control Register 2
        ld    a, R0
        or    a, RTC_TCR1; Tamper Control Register 1
        jra    loc_BB57
; ---------------------------------------------------------------------------

loc_BB49: 
        cpl    a
        and    a, RTC_CR2; Control Register 2
        ld    RTC_CR2, a; Control Register 2
        cpl    R0
        ld    a, R0
        and    a, RTC_TCR1; Tamper Control Register 1

loc_BB57: ; Tamper Control Register 1
        ld    RTC_TCR1, a
        call    sub_C35A
        ret
; End of function StartRtc


; =============== S U B	R O U T	I N E =======================================


LoadUpdConfig: 
        call    ClrUpdateVars
        ldw    x, #4
        ldw    R0, x
        ldw    y, #UpdCfg.magic
        ldw    x, #EepUpdCfg
        call    memcpy_0; (y=dst, x=src, R0=size)
        ld    a, UpdConfigMagic
        cp    a, UpdCfg.magic
        jreq    locret_BB8A
        ldw    x, #4
        ldw    R0, x
        ldw    y, #UpdConfigMagic
        ldw    x, #UpdCfg.magic
        call    memcpy_1; (x=dst, y=src, r0=size)
        call    j_SaveUpdateConfig

locret_BB8A: 
        ret
; End of function LoadUpdConfig


; =============== S U B	R O U T	I N E =======================================


GetIncRA: 
        ldw    x, (3,sp)
        incw    x
        ldw    (3,sp),    x
        decw    x
        ret
; End of function GetIncRA


; =============== S U B	R O U T	I N E =======================================


sub_BB92: 
        ldw    y, (3,sp)
        ldw    x, y
        addw    x, #4
        exgw    x, y
        ldw    (3,sp),    y
        call    LDR32_R0R3_atX; R0:R2	= *x
        ret
; End of function sub_BB92


; =============== S U B	R O U T	I N E =======================================


LDR32_R4R7_IMM32: 
        ldw    y, (3,sp)
        ldw    x, y
        addw    x, #4
        exgw    x, y
        ldw    (3,sp),    y
        call    LDR32_R4R7_X
        ret
; End of function LDR32_R4R7_IMM32


; =============== S U B	R O U T	I N E =======================================


sub_BBAC: 
        ldw    x, (3,sp)
        addw    x, #4
        ldw    (3,sp),    x
        subw    x, #4
        ret
; End of function sub_BBAC


; =============== S U B	R O U T	I N E =======================================


sub_BBB7: 
        call    sub_C307
        call    sub_C295

loc_BBBD: 
        ld    a, (y)
        bcp    a, #0x80; 'А'
        jrne    loc_BBC8
        decw    x
        jreq    loc_BBD7
        jra    loc_BBBD
; ---------------------------------------------------------------------------

loc_BBC8: 
        call    sub_C2A3
        call    sub_C29C

loc_BBCE: 
        ld    a, (y)
        bcp    a, #0x40; '@'
        jrne    loc_BBDA
        decw    x
        jrne    loc_BBCE

loc_BBD7: 
        ld    a, #0x13
        ret
; ---------------------------------------------------------------------------

loc_BBDA: 
        clr    byte_4A9
        clr    a
        ret
; End of function sub_BBB7


; =============== S U B	R O U T	I N E =======================================


sub_BBE0: 
        call    sub_C35F
        jreq    loc_BBEB
        bset    RTC_CR2, #2; Control Register 2
        jra    loc_BBFF
; ---------------------------------------------------------------------------

loc_BBEB: ; Control Register 2
        bres    RTC_CR2, #2
        clrw    x

loc_BBF0: 
        decw    x
        btjt    RTC_ISR1, #2, loc_BBF8; Initialization	and Status Register 1
        jrne    loc_BBF0

loc_BBF8: ; Initialization and Status Register 1
        ld    a, RTC_ISR1
        bcp    a, #4
        jreq    loc_BC03

loc_BBFF: 
        ld    a, #1
        jra    loc_BC04
; ---------------------------------------------------------------------------

loc_BC03: 
        clr    a

loc_BC04: 
        call    sub_C35A
        ret
; End of function sub_BBE0


; =============== S U B	R O U T	I N E =======================================


ramcpy: 
        pushw    x
        ldw    x, (x)
        ldw    y, x
        popw    x
        incw    x
        incw    x
        tnzw    y
        jreq    locret_BC2F
        pushw    x
        ldw    x, (x)
        ldw    R0, x
        popw    x
        incw    x
        incw    x
        pushw    x
        ldw    x, (x)
        ldw    R2, x
        popw    x
        incw    x
        incw    x
        exgw    x, y
        decw    x

loc_BC23: 
        ld    a, ([R0.w],x)
        ld    ([R2.w],x), a
        decw    x
        jrpl    loc_BC23
        exgw    x, y
        jra    ramcpy
; ---------------------------------------------------------------------------

locret_BC2F: 
        ret
; End of function ramcpy


; =============== S U B	R O U T	I N E =======================================


LongDelay: 
        bset    CLK_PCKENR1, #2; Peripheral clock gating register 1
        mov    TIM4_PSCR, #5; TIM4 Prescaler Register
        mov    TIM4_ARR, #250; TIM4 Auto-Reload Register
        mov    TIM4_CNTR, #2; TIM4 Counter
        call    StartTimer
        jreq    _LongDelay_done

loc_BC45: 
        decw    x

loc_BC46: ; TIM4 Status Register 1
        btjf    TIM4_SR1, #0, loc_BC46
        bres    TIM4_SR1, #0; TIM4 Status Register 1
        jrne    loc_BC45

_LongDelay_done: 
        call    StopTimer
        ret
; End of function LongDelay


; =============== S U B	R O U T	I N E =======================================


ShortDelay: 
        bset    CLK_PCKENR1, #2; Peripheral clock gating register 1
        clr    TIM4_PSCR; TIM4 Prescaler Register
        mov    TIM4_ARR, #80; TIM4 Auto-Reload Register
        mov    TIM4_CNTR, #8; TIM4 Counter
        call    StartTimer
        jreq    loc_BC76

loc_BC6A: 
        decw    x

loc_BC6B: ; TIM4 Status Register 1
        btjf    TIM4_SR1, #0, loc_BC6B
        bres    TIM4_SR1, #0; TIM4 Status Register 1
        jrne    loc_BC6A

loc_BC76: 
        call    StopTimer
        ret
; End of function ShortDelay


; =============== S U B	R O U T	I N E =======================================

; (x=dst, y=src, r0=size)

memcpy_1: 
        ldw    R2, x
        ldw    x, y
        call    MOVH_R4R5_R2R3
        jra    loc_BC97
; ---------------------------------------------------------------------------

loc_BC82: 
        ld    a, (x)
        ld    [R4.w],    a
        ldw    y, R4
        incw    y
        ldw    R4, y
        incw    x
        ldw    y, R0
        decw    y
        ldw    R0, y

loc_BC97: 
        ldw    y, R0
        jrne    loc_BC82
        ldw    x, R2
        ret
; End of function memcpy_1


; =============== S U B	R O U T	I N E =======================================


GetUID: 
        ldw    x, #UID
        call    LDR32_R0R3_atX; R0:R2	= *x
        ldw    x, #uid
        call    STR32; *x = R0:R2
        ldw    x, #UID+4
        call    LDR32_R0R3_atX; R0:R2	= *x
        ldw    x, #uid+4
        call    STR32; *x = R0:R2
        ldw    x, #UID+8
        call    LDR32_R0R3_atX; R0:R2	= *x
        ldw    x, #uid+8
        ret
; End of function GetUID

; ---------------------------------------------------------------------------
off_BCC1:     dc.w ramclr
        dc.w 0x3EA; size
        dc.w UartTxLen0; dst
        dc.w 0; dummy
        dc.w ramcpy
        dc.w 0xC3; size
        dc.w sub_C3D2; src
        dc.w MemProgram; dst
        dc.w 0

; =============== S U B	R O U T	I N E =======================================

; (y=dst, x=src, R0=size)

memcpy_0: 
        ldw    R2, y
        ldw    y, R0
        jreq    locret_BCF2

loc_BCDB: 
        ld    a, (x)
        ld    [R2.w],    a
        incw    x
        ldw    y, R2
        incw    y
        ldw    R2, y
        ldw    y, R0
        decw    y
        ldw    R0, y
        jrne    loc_BCDB

locret_BCF2: 
        ret
; End of function memcpy_0


; =============== S U B	R O U T	I N E =======================================


sub_BCF3: 
        cp    a, #1
        jrne    loc_BCFC
        call    sub_C313
        jra    loc_BCFF
; ---------------------------------------------------------------------------

loc_BCFC: 
        call    sub_C307

loc_BCFF: 
        call    sub_C295

loc_BD02: 
        ld    a, (y)
        bcp    a, #0x80; 'А'
        jrne    loc_BD0E
        decw    x
        jrne    loc_BD02
        ld    a, #0x13
        ret
; ---------------------------------------------------------------------------

loc_BD0E: 
        call    sub_C385
        clr    a
        ret
; End of function sub_BCF3


; =============== S U B	R O U T	I N E =======================================


sub_BD13: 
        call    sub_C313
        call    sub_C295

loc_BD19: 
        ld    a, (y)
        bcp    a, #0x80; 'А'
        jrne    loc_BD25
        decw    x
        jrne    loc_BD19
        ld    a, #0x13
        ret
; ---------------------------------------------------------------------------

loc_BD25: 
        ld    a, (y)
        ld    R0, a
        call    sub_C319
        call    sub_C331
        and    a, #1
        ret
; End of function sub_BD13


; =============== S U B	R O U T	I N E =======================================


sub_BD32: 
        ld    R1, a
        call    sub_BFA0
        ld    a, R1
        ld    TIM2_PSCR, a; TIM2 Prescaler register
        ld    a, TIM2_CR1; TIM2 Control register	1
        and    a, #0x8F; 'П'
        ld    TIM2_CR1, a; TIM2 Control register	1
        ld    a, R0
        or    a, TIM2_CR1; TIM2 Control register	1
        ld    TIM2_CR1, a; TIM2 Control register	1
        mov    TIM2_EGR, #1; TIM2 Event Generation	register
        ret
; End of function sub_BD32


; =============== S U B	R O U T	I N E =======================================


ramclr: 
        pushw    x
        ldw    x, (x)
        ldw    y, x
        popw    x
        incw    x
        incw    x
        tnzw    y
        jreq    locret_BD6E
        pushw    x
        ldw    x, (x)
        ldw    R0, x
        popw    x
        incw    x
        incw    x
        exgw    x, y
        decw    x

loc_BD65: 
        clr    ([R0.w],x)
        decw    x
        jrpl    loc_BD65
        exgw    x, y
        jra    ramclr
; ---------------------------------------------------------------------------

locret_BD6E: 
        ret
; End of function ramclr


; =============== S U B	R O U T	I N E =======================================


sub_BD6F: 
        ld    R0, a
        call    sub_C39D
        bres    RTC_CR2, #2; Control Register 2
        ld    a, RTC_CR1; Control Register 1
        and    a, #0xF8; '°'
        ld    RTC_CR1, a; Control Register 1
        ld    a, R0
        or    a, RTC_CR1; Control Register 1
        ld    RTC_CR1, a; Control Register 1
        call    sub_C35A
        ret
; End of function sub_BD6F


; =============== S U B	R O U T	I N E =======================================


UartClrVars: 
        clr    UartTxBufSel
        clr    byte_4B2
        clr    byte_4B4
        clr    FramerBusy
        clr    RxBusy
        clr    byte_4B7
        mov    byte_4B3, #1
        ret
; End of function UartClrVars


; =============== S U B	R O U T	I N E =======================================


ClrUpdateVars: 
        clr    in_update
        clrw    x
        ldw    UpdSize, x
        ldw    UpdSize+2, x
        clr    byte_4AB
        ldw    word_462, x
        ldw    word_464, x
        ldw    word_45E, x
        ldw    word_460, x
        ret
; End of function ClrUpdateVars


; =============== S U B	R O U T	I N E =======================================


SetConfigReg: 
        ld    R0, a
        ldw    y, x
        clr    a
        rlwa    x, a
        ldw    R2, x
        ldw    x, y
        clr    a
        rrwa    x, a
        addw    x, R2
        ldw    y, x
        clrw    x
        exg    a, xl
        ld    a, R0
        exg    a, xl
        sllw    x
        ldw    (Config,x), y
        ret
; End of function SetConfigReg


; =============== S U B	R O U T	I N E =======================================

; gpio

SWI2C_Init: 
        ldw    x, #PB_ODR; .1 - red LED (1-on)
; .2 - blue LED	(1-on)
        ldw    SWI2C_IOBASE, x
        mov    R0, #0xB0; '░'
        ld    a, #0xC0; '└'
        call    GpioConfig
        call    SWI2C_SDA0_for10

loc_BDF2: 
        call    SWI2C_SCL01
        jrne    loc_BDF2
        call    _SWI2C_SDA1
        ret
; End of function SWI2C_Init


; =============== S U B	R O U T	I N E =======================================


SaveConfig: 
        sim
        ldw    x, #Config.magic
        clr    R0
        ld    a, #0xF7; 'ў'
        call    _MemProgram
        ldw    x, #Config.VoltageCell1
        mov    R0, #1
        ld    a, #0xF7; 'ў'
        call    _MemProgram
        rim
        clr    a
        ret
; End of function SaveConfig


; =============== S U B	R O U T	I N E =======================================


sub_BE15: 
        cp    a, #0xFD; '¤'
        jrne    loc_BE22
        mov    FLASH_PUKR, #0x56; 'V' ; Flash Program memory unprotection register
        mov    FLASH_PUKR, #0xAE; 'о' ; Flash Program memory unprotection register
        ret
; ---------------------------------------------------------------------------

loc_BE22: 
        cp    a, #0xF7; 'ў'
        jrne    locret_BE2E
        mov    FLASH_DUKR, #0xAE; 'о' ; Data EEPROM unprotection register
        mov    FLASH_DUKR, #0x56; 'V' ; Data EEPROM unprotection register

locret_BE2E: 
        ret
; End of function sub_BE15


; =============== S U B	R O U T	I N E =======================================


        xdef EXTI1_ISR
EXTI1_ISR: 
        call    ClrCCReserved
        call    PUSH32_R0R3
        call    PUSH32_R4R7
        call    nullsub_1
        ldw    x, #2; P1F
        call    ExtiClrFlag
        call    POP32_R4R7
        call    POP32_R0R3
        iret
; End of function EXTI1_ISR


; =============== S U B	R O U T	I N E =======================================


        xdef EXTI2_ISR
EXTI2_ISR: 
        call    ClrCCReserved
        call    PUSH32_R0R3
        call    PUSH32_R4R7
        call    nullsub_1
        ldw    x, #4; P2F
        call    ExtiClrFlag
        call    POP32_R4R7
        call    POP32_R0R3
        iret
; End of function EXTI2_ISR


; =============== S U B	R O U T	I N E =======================================


        xdef EXTI6_ISR
EXTI6_ISR: 
        call    ClrCCReserved
        call    PUSH32_R0R3
        call    PUSH32_R4R7
        call    nullsub_1
        ldw    x, #0x40; '@'  ; P6F
        call    ExtiClrFlag
        call    POP32_R4R7
        call    POP32_R0R3
        iret
; End of function EXTI6_ISR


; =============== S U B	R O U T	I N E =======================================


MemInit: 
        ldw    y, #off_BCC1
        jra    loc_BE8A
; ---------------------------------------------------------------------------

loc_BE80: 
        ldw    x, y
        addw    x, #2
        ldw    y, (y)
        call    (y)
        ldw    y, x

loc_BE8A: ; (y=dst, x=src, R0=size)
        cpw    y, #memcpy_0
        jrne    loc_BE80
        ret
; End of function MemInit


; =============== S U B	R O U T	I N E =======================================


CalcRemainingPercentage: 
        call    LDR32_R0R3_atX; R0:R2	= *x
        call    MUL32_R0R3_100
        ldw    x, #DesignCapacity
        call    LDR32_R4R7_X
        call    SDIVMOD32_R0R3_R4R7; :	R0R3 - частное,	R4R7 - остаток
        ldw    x, #101
        call    CMP32_R0R3_X
        ret
; End of function CalcRemainingPercentage


; =============== S U B	R O U T	I N E =======================================


        xdef RTC_LSE_CSS_ISR
RTC_LSE_CSS_ISR: 
        call    ClrCCReserved
        call    PUSH32_R0R3
        call    PUSH32_R4R7
        ldw    x, #0x40; '@'  ; WUTF Periodic wakeup flag
        call    RtcClrIntFlag
        call    POP32_R4R7
        call    POP32_R0R3
        iret
; End of function RTC_LSE_CSS_ISR


; =============== S U B	R O U T	I N E =======================================


Uasrt1DmaOff: 
        clr    R0
        call    Usart1DmaOnOff
        clr    a
        ldw    x, #DMA1_C2CR; DMA1 channel 2 configuration register
        call    DmaOnOff
        clr    R0
        ld    a, #0x80; 'А'
        ldw    x, #USART1_SR; USART1 Status	Register
        jp    UsartCr5SetClr
; End of function Uasrt1DmaOff


; =============== S U B	R O U T	I N E =======================================

; (x=dst, yl=val, R0=size)

memset: 
        ldw    R2, x
        ld    a, yl
        jra    loc_BEE0
; ---------------------------------------------------------------------------

loc_BED9: 
        ld    (x), a
        incw    x
        decw    y
        ldw    R0, y

loc_BEE0: 
        ldw    y, R0
        jrne    loc_BED9
        ldw    x, R2
        ret
; End of function memset


; =============== S U B	R O U T	I N E =======================================


SetRtcWakeupTimer: 
        ldw    y, x
        call    sub_C39D
        clr    a
        rrwa    x, a
        ld    a, xl
        ld    RTC_WUTR, a; Wakeup Timer Register
        ld    a, yl
        ld    RTC_WUTR+1, a; Wakeup Timer Register
        call    sub_C35A
        ret
; End of function SetRtcWakeupTimer


; =============== S U B	R O U T	I N E =======================================


InitTimer: 
        ldw    x, #25000
        clr    R0
        ld    a, #5
        call    sub_BD32
        clrw    x
        incw    x
        call    sub_C031
        bset    TIM2_CR1, #0; TIM2 Control register	1
        ret
; End of function InitTimer


; =============== S U B	R O U T	I N E =======================================


ntc2deg: 
        clr    a
        ldw    y, #Ntc2DegTable

loc_BF15: 
        cpw    x, (y)
        jrnc    locret_BF22
        inc    a
        addw    y, #2
        cp    a, #0x78; 'x'
        jrc    loc_BF15

locret_BF22: 
        ret
; End of function ntc2deg


; =============== S U B	R O U T	I N E =======================================


        xdef _stext
_stext: 
        ldw    x, #0x7FF
        ldw    sp, x
        call    ret1_0
        tnzw    x
        jreq    loc_BF30
        call    MemInit

loc_BF30: 
        call    main
        jp    j_exit
; End of function _stext


; =============== S U B	R O U T	I N E =======================================


sub_BF36: 
        ldw    R2, x
        clrw    x
        ldw    R0, x
        call    MUL32_R0R3_IMM; R0:R3	*= IMM32
; ---------------------------------------------------------------------------
        dc.l 391
; ---------------------------------------------------------------------------
        call    LSR32_R0R3_IMM8
; ---------------------------------------------------------------------------
        dc.b 10
; ---------------------------------------------------------------------------
        ret
; End of function sub_BF36


; =============== S U B	R O U T	I N E =======================================


UsartOnOff: 
        addw    x, #4
        tnz    a
        jreq    loc_BF52
        ld    a, (x)
        and    a, #0xDF; '▀'
        jra    loc_BF55
; ---------------------------------------------------------------------------

loc_BF52: 
        ld    a, (x)
        or    a, #0x20; ' '

loc_BF55: 
        ld    (x), a
        ret
; End of function UsartOnOff

; ---------------------------------------------------------------------------
DefaultSN:     dc.b "3GA0016A1A0001",0

; =============== S U B	R O U T	I N E =======================================


sub_BF66: 
        addw    x, #4
        mov    R0, #AFE_SYS_CTRL2
        ld    a, #0x10
        call    sub_AF49
        ld    R0, a
        ret
; End of function sub_BF66


; =============== S U B	R O U T	I N E =======================================


SaveUpdateConfig: 
        sim
        ldw    x, #UpdCfg.magic
        mov    R0, #7
        ld    a, #0xF7; 'ў'
        call    _MemProgram
        rim
        ret
; End of function SaveUpdateConfig


; =============== S U B	R O U T	I N E =======================================


swapx: 
        ldw    y, x
; End of function swapx


; =============== S U B	R O U T	I N E =======================================


pack_x_xlyh: 
        clr    a
        rlwa    x, a; xh=xl, xl=0
        ldw    R0, x
        ldw    x, y
        clr    a
        rrwa    x, a; xh=0,	xl=xh
        addw    x, R0
        ret
; End of function pack_x_xlyh


; =============== S U B	R O U T	I N E =======================================


PktGetCmd_r1_clrR0: 
        ldw    y, R12
        addw    y, #PACKET.cmd
        ld    a, (y)
        ld    R1, a
        clr    R0
        ret
; End of function PktGetCmd_r1_clrR0


; =============== S U B	R O U T	I N E =======================================


sub_BFA0: 
        ldw    y, x
        clr    a
        rrwa    x, a
        ld    a, xl
        ld    TIM2_ARR, a; TIM2 Auto-reload register
        ld    a, yl
        ld    TIM2_ARR+1, a; TIM2 Auto-reload register
        ret
; End of function sub_BFA0


; =============== S U B	R O U T	I N E =======================================


UsartCr5SetClr: 
        addw    x, #8
        tnz    R0
        jreq    loc_BFB8
        or    a, (x)
        jra    loc_BFBA
; ---------------------------------------------------------------------------

loc_BFB8: 
        cpl    a
        and    a, (x)

loc_BFBA: 
        ld    (x), a
        ret
; End of function UsartCr5SetClr


; =============== S U B	R O U T	I N E =======================================


SWI2C_SDA0_for10: 
        call    SWI2C_GPIO_Get
        and    a, #0xBF; '┐'
        call    SWI2C_GPIO_Set
        mov    R0, #10
        ret
; End of function SWI2C_SDA0_for10


; =============== S U B	R O U T	I N E =======================================


AdcOnOff: 
        tnz    a
        jreq    loc_BFD1
        ld    a, (x)
        or    a, #1
        jra    loc_BFD4
; ---------------------------------------------------------------------------

loc_BFD1: 
        ld    a, (x)
        and    a, #0xFE; '■'

loc_BFD4: 
        ld    (x), a
        ret
; End of function AdcOnOff


; =============== S U B	R O U T	I N E =======================================


sub_BFD6: 
        tnz    a
        jreq    loc_BFDE
        bset    CLK_ICKCR, #0; Internal clock control register
        ret
; ---------------------------------------------------------------------------

loc_BFDE: ; Internal clock control register
        bres    CLK_ICKCR, #0
        ret
; End of function sub_BFD6


; =============== S U B	R O U T	I N E =======================================


sub_BFE3: 
        tnz    a
        jreq    loc_BFEB
        bset    CLK_SWCR, #1; Clock	switch control register
        ret
; ---------------------------------------------------------------------------

loc_BFEB: ; Clock	switch control register
        bres    CLK_SWCR, #1
        ret
; End of function sub_BFE3


; =============== S U B	R O U T	I N E =======================================


sub_BFF0: 
        tnz    a
        jreq    loc_BFF8
        bset    DMA1_GCSR, #0; DMA1 global configuration & status register
        ret
; ---------------------------------------------------------------------------

loc_BFF8: ; DMA1 global configuration & status register
        bres    DMA1_GCSR, #0
        ret
; End of function sub_BFF0


; =============== S U B	R O U T	I N E =======================================


DmaOnOff: 
        tnz    a
        jreq    loc_C005
        ld    a, (x)
        or    a, #1
        jra    loc_C008
; ---------------------------------------------------------------------------

loc_C005: 
        ld    a, (x)
        and    a, #0xFE; '■'

loc_C008: 
        ld    (x), a
        ret
; End of function DmaOnOff


; =============== S U B	R O U T	I N E =======================================


ExtiClrFlag: 
        call    sub_C07B
        jrne    loc_C013
        ld    EXTI_SR2, a; External interrupt status register 2
        ret
; ---------------------------------------------------------------------------

loc_C013: ; External interrupt status register 1
        ld    EXTI_SR1, a
        ret
; End of function ExtiClrFlag


; =============== S U B	R O U T	I N E =======================================


SpiOnOff: 
        tnz    a
        jreq    loc_C01F
        ld    a, (x)
        or    a, #0x40; '@'
        jra    loc_C022
; ---------------------------------------------------------------------------

loc_C01F: 
        ld    a, (x)
        and    a, #0xBF; '┐'

loc_C022: 
        ld    (x), a
        ret
; End of function SpiOnOff


; =============== S U B	R O U T	I N E =======================================


Tim2OnOff: 
        tnz    a
        jreq    loc_C02C
        bset    TIM2_CR1, #0; TIM2 Control register	1
        ret
; ---------------------------------------------------------------------------

loc_C02C: ; TIM2 Control register	1
        bres    TIM2_CR1, #0
        ret
; End of function Tim2OnOff


; =============== S U B	R O U T	I N E =======================================


sub_C031: 
        ld    a, xl
        cpl    a
        ld    TIM2_SR1, a; TIM2 Status register 1
        clr    a
        rrwa    x, a
        ld    a, xl
        cpl    a
        ld    TIM2_SR2, a; TIM2 Status register 2
        ret
; End of function sub_C031


; =============== S U B	R O U T	I N E =======================================

; (x=dst, y=src, a=size)

memcpy: 
        push    a

loc_C03F: 
        ld    a, (y)
        ld    (x), a
        incw    x
        incw    y
        dec    (1,sp)
        jrne    loc_C03F
        pop    a
        ret
; End of function memcpy


; =============== S U B	R O U T	I N E =======================================


SWI2C_SCL01: 
        call    SWI2C_SCL0
        call    SWI2C_SCL1
        ld    a, R0
        dec    a
        ld    R0, a
        ret
; End of function SWI2C_SCL01


; =============== S U B	R O U T	I N E =======================================


PktGetCmd_r1: 
        ldw    y, R8
        addw    y, #PACKET.cmd
        ld    a, (y)
        ld    R1, a
        ret
; End of function PktGetCmd_r1


; =============== S U B	R O U T	I N E =======================================


ZEXT32_R0R3_A_LSL24: 
        clrw    x
        ld    xl, a
        ldw    R2, x
        clrw    x
        ldw    R0, x
        call    LSL32_R0R3_IMM8
; ---------------------------------------------------------------------------
        dc.b 24
; ---------------------------------------------------------------------------
        ret
; End of function ZEXT32_R0R3_A_LSL24


; =============== S U B	R O U T	I N E =======================================


UartProcess: 
        ldw    x, #12
        call    ShortDelay
        call    UartRxProcess
        jp    UartTxProcess
; End of function UartProcess


; =============== S U B	R O U T	I N E =======================================


sub_C07B: 
        ldw    y, x
        rrwa    x, a
        clr    a
        rlwa    x, a
        exgw    x, y
        cpw    y, #0x100
        ld    a, xl
        ret
; End of function sub_C07B


; =============== S U B	R O U T	I N E =======================================


sub_C087: 
        ldw    R2, x
        clrw    x
        ldw    R0, x
        call    MOV32_R4R7_R12R15
        jp    MUL32_R0R3_R4R7
; End of function sub_C087


; =============== S U B	R O U T	I N E =======================================


sub_C092: 
        ldw    R2, x
        clrw    x
        ldw    R0, x
        call    MOV32_R4R7_R8R11
        jp    ADD32_R0R3_R4R7
; End of function sub_C092


; =============== S U B	R O U T	I N E =======================================


SetVoltageCopy: 
        ldw    Voltage, x
        ldw    x, Voltage
; End of function SetVoltageCopy


; =============== S U B	R O U T	I N E =======================================


SetConfigVoltage: 
        ld    a, #CONFIG.Voltage-0x34; x100 mV
        jp    SetConfigReg
; End of function SetConfigVoltage


; =============== S U B	R O U T	I N E =======================================


CopyRemainingPercentage: 
        ld    a, RemainingPercentage
        call    absx
        ld    a, #CONFIG.RemainingPercentage-0x32; %
        jp    SetConfigReg
; End of function CopyRemainingPercentage


; =============== S U B	R O U T	I N E =======================================


SetConfigTemperatures: 
        or    a, R1
        rrwa    x, a
        or    a, R0
        rrwa    x, a
        ld    a, #CONFIG.Temperature1-0x35; -20 deg C
        jp    SetConfigReg
; End of function SetConfigTemperatures


; =============== S U B	R O U T	I N E =======================================


SDIV32_R0R3_1000_MOV32_R4R7_R8R11: 
        call    SDIVMOD32_R0R3_IMM32; : R0R3 -	частное, R4R7 -	остаток
; ---------------------------------------------------------------------------
        dc.l 1000
; ---------------------------------------------------------------------------
        jp    MOV32_R4R7_R8R11
; End of function SDIV32_R0R3_1000_MOV32_R4R7_R8R11


; =============== S U B	R O U T	I N E =======================================


SetConfigRemainingCapacity: 
        call    LDR32_R0R3_atX; R0:R2	= *x
        ldw    x, R2
        ld    a, #CONFIG.RemainingCapacity-0x31; mAh
        jp    SetConfigReg
; End of function SetConfigRemainingCapacity


; =============== S U B	R O U T	I N E =======================================


StartTimer: 
        bres    TIM4_SR1, #0; TIM4 Status Register 1
        bset    TIM4_CR1, #0; TIM4 Control Register	1
        tnzw    x
        ret
; End of function StartTimer


; =============== S U B	R O U T	I N E =======================================


sub_C0DC: 
        clrw    x
        exg    a, xl
        ld    a, R15
        exg    a, xl
        srlw    x
        clr    a
        rrc    a
        rlwa    x, a
        ret
; End of function sub_C0DC


; =============== S U B	R O U T	I N E =======================================


UnsetErrorCode: 
        cp    a, ErrCode
        jrne    locret_C0EF
        clr    ErrCode

locret_C0EF: 
        ret
; End of function UnsetErrorCode


; =============== S U B	R O U T	I N E =======================================


GetConfigReg: 
        clrw    x
        ld    xl, a
        sllw    x
        ldw    x, (Config,x)
        call    swapx
        ret
; End of function GetConfigReg


; =============== S U B	R O U T	I N E =======================================


sub_C0FA: 
        call    SWI2C_GPIO_Set
; End of function sub_C0FA


; =============== S U B	R O U T	I N E =======================================


sub_C0FD: 
        call    SWI2C_SCL1
        ldw    x, #0x3E9
        ret
; End of function sub_C0FD


; =============== S U B	R O U T	I N E =======================================


sub_C104: 
        clrw    x
        exg    a, xl
        ld    a, R4
        exg    a, xl
        addw    x, R2
        ret
; End of function sub_C104


; =============== S U B	R O U T	I N E =======================================


PtrPktDataY_R0_X: 
        ldw    R0, x
; End of function PtrPktDataY_R0_X


; =============== S U B	R O U T	I N E =======================================


PtrPktDataY: 
        ldw    y, R8
        addw    y, #PACKET.payload
        ret
; End of function PtrPktDataY


; =============== S U B	R O U T	I N E =======================================


InitRtc: 
        clr    a
        call    sub_BD6F
        ld    a, #1
        ldw    x, #0x40; '@'
        ret
; End of function InitRtc


; =============== S U B	R O U T	I N E =======================================


sub_C122: 
        ld    R1, a
        ld    a, R0
        or    a, R1
        ld    CLK_CRTCR, a; Clock	RTC register
        ret
; End of function sub_C122


; =============== S U B	R O U T	I N E =======================================


sub_C12C: 
        clr    DMA1_GCSR; DMA1 global configuration & status register
        sll    a
        sll    a
        ld    DMA1_GCSR, a; DMA1 global configuration & status register
        ret
; End of function sub_C12C


; =============== S U B	R O U T	I N E =======================================


GetBattVoltage_R8R11: 
        ldw    x, BattVoltage
; End of function GetBattVoltage_R8R11


; =============== S U B	R O U T	I N E =======================================


ZEXT32_R8R11_X: 
        ldw    R10, x
        clrw    x
        ldw    R8, x
        ret
; End of function ZEXT32_R8R11_X


; =============== S U B	R O U T	I N E =======================================

; (R0R3=emf) : x->RemainingCapacity

UpdateRemainingCapacity: 
        call    CalculateVoltageBasedCapacity;	(R0R3=emf)
        ldw    x, #RemainingCapacity
        jp    STR32; *x = R0:R2
; End of function UpdateRemainingCapacity


; =============== S U B	R O U T	I N E =======================================


ClrDischargeOverloads: 
        clr    MainState.SCD
        clr    MainState.OCD
        ret
; End of function ClrDischargeOverloads


; =============== S U B	R O U T	I N E =======================================

; : R0R3

ADD32_atX_R0R3: 
        call    ADD32_R0R3_atX
        call    STR32; *x = R0:R2
        jp    LDR32_R0R3_atX; R0:R2	= *x
; End of function ADD32_@X_R0R3


; =============== S U B	R O U T	I N E =======================================


sub_C15A: 
        call    ABS32; R0-R3	= abs(x)
        call    MOV32_R4R7_R0R3
        jp    MOV32_R0R3_R8R11
; End of function sub_C15A


; =============== S U B	R O U T	I N E =======================================

; : x->Current,	R0R3=Current, flags

CheckCurrent: 
        ldw    x, #Current; in mA
        call    LDR32_R0R3_atX; R0:R2	= *x
        tnz    R0
        ret
; End of function CheckCurrent


; =============== S U B	R O U T	I N E =======================================


StopTimer: 
        bres    TIM4_CR1, #0; TIM4 Control Register	1
        bres    CLK_PCKENR1, #2; Peripheral clock gating register 1
        ret
; End of function StopTimer


; =============== S U B	R O U T	I N E =======================================


SWI2C_SDA1: 
        call    SWI2C_GPIO_Get
        or    a, #SDA
        call    SWI2C_GPIO_Set
        ret
; End of function SWI2C_SDA1


; =============== S U B	R O U T	I N E =======================================


SWI2C_SCL1: 
        call    SWI2C_GPIO_Get
        or    a, #0x80; 'А'
        call    SWI2C_GPIO_Set
        ret
; End of function SWI2C_SCL1


; =============== S U B	R O U T	I N E =======================================


SWI2C_SCL0: 
        call    SWI2C_GPIO_Get
        and    a, #0x7F; ''
        call    SWI2C_GPIO_Set
        ret
; End of function SWI2C_SCL0


; =============== S U B	R O U T	I N E =======================================


ZEXT32_R0R3_memX: 
        ld    a, (x)
; End of function ZEXT32_R0R3_memX


; =============== S U B	R O U T	I N E =======================================


ZEXT32_R0R3_A_0: 
        clrw    x
        ld    xl, a
        ldw    R2, x
        clrw    x
        ldw    R0, x
        ret
; End of function ZEXT32_R0R3_A_0


; =============== S U B	R O U T	I N E =======================================


PtrConfig_X_R10: 
        exg    a, xl
        ld    a, R10
        exg    a, xl
        sllw    x
        addw    x, #Config.magic
        ret
; End of function PtrConfig_X_R10


; =============== S U B	R O U T	I N E =======================================


ZEXT32_R0R3_A_LSL16: 
        clrw    x
        ld    xl, a
        ldw    R2, x
        call    LSL32_R0R3_IMM8
; ---------------------------------------------------------------------------
        dc.b 0x10
; ---------------------------------------------------------------------------
        ret
; End of function ZEXT32_R0R3_A_LSL16


; =============== S U B	R O U T	I N E =======================================


reboot: 
        bset    WWDG_CR, #7; WWDG Control Register
        bres    WWDG_CR, #6; WWDG Control Register
        ret
; End of function reboot


; =============== S U B	R O U T	I N E =======================================


UartProcessForTime: 
        call    UartProcess
        ld    a, R8
        dec    a
        ld    R8, a
        ret
; End of function UartProcessForTime


; =============== S U B	R O U T	I N E =======================================


sub_C1BD: 
        and    a, #0xF0; 'Ё'
        ld    R2, a
        ld    a, R1
        and    a, #0xF
        ret
; End of function sub_C1BD


; =============== S U B	R O U T	I N E =======================================


sub_C1C6: 
        bres    DMA1_GCSR, #0; DMA1 global configuration & status register
        mov    DMA1_GCSR, #0xFC; '№' ; DMA1 global configuration & status register
        ret
; End of function sub_C1C6


; =============== S U B	R O U T	I N E =======================================


sub_C1CF: 
        mov    RTC_WPR, #0xCA; '╩' ; Write Protection Register
        mov    RTC_WPR, #0x53; 'S' ; Write Protection Register
        ret
; End of function sub_C1CF


; =============== S U B	R O U T	I N E =======================================


RtcClrIntFlag: 
        call    lsr_x_4
        ld    a, xl
        cpl    a
        ld    RTC_ISR2, a; Initialization and Status Register 2
        ret
; End of function RtcClrIntFlag


; =============== S U B	R O U T	I N E =======================================


sub_C1E1: 
        ldw    x, #0x8B; 'Л'
        ldw    R0, x
        ldw    x, y
        jp    MUL16_X_R0R1
; End of function sub_C1E1


; =============== S U B	R O U T	I N E =======================================


sub_C1EA: 
        ld    a, UartTxBufSel
        ld    yl, a
        ldw    x, y
        jp    MUL16_X_R0R1
; End of function sub_C1EA


; =============== S U B	R O U T	I N E =======================================


sub_C1F3: 
        ldw    DesignCellResistance, x; mOhm,	5.2 - 24, 7.8 -	16, 10 - 21
        clrw    x
        ldw    DesignCapacity,    x
        ret
; End of function sub_C1F3


; =============== S U B	R O U T	I N E =======================================


CMP32_R0R3_X: 
        ldw    R6, x
        clrw    x
; End of function CMP32_R0R3_X


; =============== S U B	R O U T	I N E =======================================


sub_C1FE: 
        ldw    R4, x
        jp    CMP32_R0R3_R4R7_0
; End of function sub_C1FE


; =============== S U B	R O U T	I N E =======================================


sub_C203: 
        call    ADD32_R0R3_IMM
        ldw    (x), y
        ldw    (x), y
        bcp    a, (x)
        mul    x, a
        ret
; End of function sub_C203


; =============== S U B	R O U T	I N E =======================================


MUL32_R0R3_100: 
        call    MUL32_R0R3_IMM; R0:R3	*= IMM32
; ---------------------------------------------------------------------------
        dc.l 100
; ---------------------------------------------------------------------------
        ret
; End of function MUL32_R0R3_100


; =============== S U B	R O U T	I N E =======================================

; R4R7 = zext(x)
; R0R3 = R8R11

sub_C213: 
        ldw    R6, x
        clrw    x
        ldw    R4, x
        jp    MOV32_R0R3_R8R11
; End of function sub_C213


; =============== S U B	R O U T	I N E =======================================

; extend x as negative

CMP32_R0R3_x_neg: 
        ldw    R6, x
        clrw    x
        decw    x
        call    sub_C1FE
        ret
; End of function CMP32_R0R3_x_neg


; =============== S U B	R O U T	I N E =======================================


SDIVMOD32_R0R3_10: 
        call    SDIVMOD32_R0R3_IMM32; : R0R3 -	частное, R4R7 -	остаток
; ---------------------------------------------------------------------------
        dc.l 10
; ---------------------------------------------------------------------------
        ret
; End of function SDIVMOD32_R0R3_10


; =============== S U B	R O U T	I N E =======================================


ABS32_R0R3: 
        tnz    R0
        jrpl    locret_C232
        call    NEG32_R0R3

locret_C232: 
        ret
; End of function ABS32_R0R3


; =============== S U B	R O U T	I N E =======================================


ZEXT32_R0R3_A_LSL8: 
        ld    xl, a
        ldw    R2, x
        call    LSL32_R0R3_IMM8
; ---------------------------------------------------------------------------
        dc.b 8
; ---------------------------------------------------------------------------
        ret
; End of function ZEXT32_R0R3_A_LSL8


; =============== S U B	R O U T	I N E =======================================


ZEXT32_R0R3_A: 
        clrw    x
        ld    xl, a
        ldw    R2, x
        clrw    x
        ldw    R0, x
        ret
; End of function ZEXT32_R0R3_A


; =============== S U B	R O U T	I N E =======================================


sub_C243: 
        call    GpioConfig
        mov    R0, #0xC0; '└'
        ret
; End of function sub_C243


; =============== S U B	R O U T	I N E =======================================


sub_C24B: 
        ld    a, #0x60; '`'
        ldw    x, #PC_ODR; Port C data output latch register
        jp    GpioConfig
; End of function sub_C24B


; =============== S U B	R O U T	I N E =======================================


sub_C253: 
        call    sub_B6DB
        mov    R0, #1
        ret
; End of function sub_C253


; =============== S U B	R O U T	I N E =======================================


Usart1DmaOnOff: 
        ld    a, #0x40; '@'
        ldw    x, #USART1_SR; USART1 Status	Register
        jp    UsartCr5SetClr
; End of function Usart1DmaOnOff


; =============== S U B	R O U T	I N E =======================================


sub_C263: 
        ld    a, #8
; End of function sub_C263


; =============== S U B	R O U T	I N E =======================================


GPIOC_Configure: 
        ldw    x, #PC_ODR; Port C data output latch register
        jp    GpioConfig
; End of function GPIOC_Configure


; =============== S U B	R O U T	I N E =======================================


MOV32_R12R15_R0R3_MUL32_R0R3_100: 
        call    MOV32_R12R15_R0R3
; End of function MOV32_R12R15_R0R3_MUL32_R0R3_100


; =============== S U B	R O U T	I N E =======================================


_MUL32_R0R3_100: 
        call    MUL32_R0R3_100
        ret
; End of function _MUL32_R0R3_100


; =============== S U B	R O U T	I N E =======================================

; a = 1<<a

lsl_1_a: 
        clrw    x
        incw    x
        call    lsl_x_a
        ld    a, xl
        ret
; End of function lsl_1_a


; =============== S U B	R O U T	I N E =======================================

; (@X)

_SetTrackedCapacity: 
        call    LDR32_R0R3_atX; R0:R2	= *x
        call    SetTrackedCapacity; (R0R3)
        ret
; End of function _SetTrackedCapacity


; =============== S U B	R O U T	I N E =======================================


CmpUVCutoff: 
        ldw    x, MinCellVoltage; in mV
        cpw    x, #UV_CUTOFF
        ret
; End of function CmpUVCutoff


; =============== S U B	R O U T	I N E =======================================


sub_C287: 
        ldw    x, word_47A
        cpw    x, #100
        ret
; End of function sub_C287


; =============== S U B	R O U T	I N E =======================================


sub_C28E: 
        call    SetTrackedCapacity; (R0R3)
        ldw    x, word_47C
        ret
; End of function sub_C28E


; =============== S U B	R O U T	I N E =======================================


sub_C295: 
        call    sub_C0FA
        call    sub_C29C
        ret
; End of function sub_C295


; =============== S U B	R O U T	I N E =======================================


sub_C29C: 
        ldw    y, SWI2C_IOBASE
        incw    y
        ret
; End of function sub_C29C


; =============== S U B	R O U T	I N E =======================================


sub_C2A3: 
        call    SWI2C_SDA1
        ldw    x, #1001
        ret
; End of function sub_C2A3


; =============== S U B	R O U T	I N E =======================================


PktGetCmd: 
        ldw    x, R8
        addw    x, #PACKET.cmd
        ld    a, (x)
        ret
; End of function PktGetCmd


; =============== S U B	R O U T	I N E =======================================


sub_C2B1: 
        and    a, FLASH_IAPSR; Flash	in-application programming status register
        ld    FLASH_IAPSR, a; Flash	in-application programming status register
        ret
; End of function sub_C2B1


; =============== S U B	R O U T	I N E =======================================


ClrCCReserved: 
        push    cc
        pop    a
        and    a, #0xBF; '┐'
        push    a
        pop    cc
        ret
; End of function ClrCCReserved


; =============== S U B	R O U T	I N E =======================================


ZEXT32_R0R3_X: 
        ldw    R2, x
        clrw    x
        ldw    R0, x
        ret
; End of function ZEXT32_R0R3_X


; =============== S U B	R O U T	I N E =======================================


sub_C2C5: 
        call    sub_C213; R4R7 = zext(x)
; R0R3 = R8R11
        jp    SUB32_R0R3_R4R7
; End of function sub_C2C5


; =============== S U B	R O U T	I N E =======================================

; R0R3 += R4R7
; R8R11	= R0R3

sub_C2CB: 
        call    ADD32_R0R3_R4R7
        jp    MOV32_R8R11_R0R3
; End of function sub_C2CB


; =============== S U B	R O U T	I N E =======================================


sub_C2D1: 
        ldw    x, #dword_436
        jp    STR32; *x = R0:R2
; End of function sub_C2D1


; =============== S U B	R O U T	I N E =======================================

; (R0R3)

SetTrackedCapacity: 
        ldw    x, #TrackedCapacity
        jp    STR32; *x = R0:R2
; End of function SetTrackedCapacity


; =============== S U B	R O U T	I N E =======================================

; : R0R3 in mA

GetCurrent: 
        ldw    x, #Current; in mA
        jp    LDR32_R0R3_atX; R0:R2	= *x
; End of function GetCurrent


; =============== S U B	R O U T	I N E =======================================

; : R0R3

GetTrackedCapacity: 
        ldw    x, #TrackedCapacity
        jp    LDR32_R0R3_atX; R0:R2	= *x
; End of function GetTrackedCapacity


; =============== S U B	R O U T	I N E =======================================


LDR32NEG_R0R3_atX: 
        call    LDR32_R0R3_atX; R0:R2	= *x
        jp    NEG32_R0R3
; End of function LDR32NEG_R0R3_@X


; =============== S U B	R O U T	I N E =======================================


sub_C2EF: 
        call    ADD32_R0R3_atX
        jp    STR32; *x = R0:R2
; End of function sub_C2EF


; =============== S U B	R O U T	I N E =======================================


sub_C2F5: 
        ldw    x, #dword_43E
        jp    LDR32_R0R3_atX; R0:R2	= *x
; End of function sub_C2F5


; =============== S U B	R O U T	I N E =======================================


GetRemainingCapacity: 
        ldw    x, #RemainingCapacity
        jp    LDR32_R0R3_atX; R0:R2	= *x
; End of function GetRemainingCapacity


; =============== S U B	R O U T	I N E =======================================


abs_0: 
        cp    a, #0
        jrsge    locret_C306
        neg    a

locret_C306: 
        ret
; End of function abs_0


; =============== S U B	R O U T	I N E =======================================


sub_C307: 
        call    SWI2C_GPIO_Get
        and    a, #0xBF; '┐'
        ret
; End of function sub_C307


; =============== S U B	R O U T	I N E =======================================


sub_C30D: 
        call    sub_C29C
        ld    a, (y)
        ret
; End of function sub_C30D


; =============== S U B	R O U T	I N E =======================================


sub_C313: 
        call    SWI2C_GPIO_Get
        or    a, #0x40; '@'
        ret
; End of function sub_C313


; =============== S U B	R O U T	I N E =======================================


sub_C319: 
        call    SWI2C_SCL0
        ld    a, R0
        ret
; End of function sub_C319


; =============== S U B	R O U T	I N E =======================================


LdrUpdSize: 
        ldw    x, #UpdSize
        jp    LDR32_R0R3_atX; R0:R2	= *x
; End of function LdrUpdSize


; =============== S U B	R O U T	I N E =======================================


sub_C325: 
        call    sub_B6DB
        clr    R0
        ret
; End of function sub_C325


; =============== S U B	R O U T	I N E =======================================


sub_C32B: 
        ld    R1, a
        call    sub_C1CF
        ret
; End of function sub_C32B


; =============== S U B	R O U T	I N E =======================================


sub_C331: 
        srl    a
; End of function sub_C331


; =============== S U B	R O U T	I N E =======================================


sub_C332: 
        srl    a
        swap    a
        and    a, #0xF
        ret
; End of function sub_C332

; ---------------------------------------------------------------------------
unk_C337:     dc.b    1
        dc.b 2,    4, 8, 0x10

; =============== S U B	R O U T	I N E =======================================


CMP32_R0R3_R4X: 
        ldw    R6, x
        jp    CMP32_R0R3_R4R7_0
; End of function CMP32_R0R3_R4X


; =============== S U B	R O U T	I N E =======================================


SWI2C_GPIO_Set: 
        ld    [SWI2C_IOBASE.w], a
        ret
; End of function SWI2C_GPIO_Set


; =============== S U B	R O U T	I N E =======================================


SWI2C_GPIO_Get: 
        ld    a, [SWI2C_IOBASE.w]
        ret
; End of function SWI2C_GPIO_Get


; =============== S U B	R O U T	I N E =======================================


SaveUpdateConfig_0: 
        call    SaveUpdateConfig
        tnz    a
        ret
; End of function SaveUpdateConfig_0


; =============== S U B	R O U T	I N E =======================================


RedLedOff: 
        bres    PB_ODR,    #REDLED; .1 - red LED (1-on)
; .2 - blue LED	(1-on)
        ret
; End of function RedLedOff


; =============== S U B	R O U T	I N E =======================================


        xdef TIM2_CC_ISR
TIM2_CC_ISR: 
        bres    TIM2_SR1, #0; TIM2 Status register 1
        iret
; End of function TIM2_CC_ISR


; =============== S U B	R O U T	I N E =======================================


sub_C35A: 
        mov    RTC_WPR, #0xFF; Write	Protection Register
        ret
; End of function sub_C35A


; =============== S U B	R O U T	I N E =======================================


sub_C35F: 
        call    sub_C1CF
        tnz    a
        ret
; End of function sub_C35F


; =============== S U B	R O U T	I N E =======================================

; Attributes: noreturn

exit: 
        pushw    x
        popw    x
        call    hang
; End of function exit

; ---------------------------------------------------------------------------
unk_C369:     dc.b    0
        dc.b    0
        dc.b    0
        dc.b    0
unk_C36D:     dc.b    0
        dc.b    0
        dc.b    0
        dc.b    0

; =============== S U B	R O U T	I N E =======================================


_CMP32_R0R3_X: 
        call    CMP32_R0R3_X
        ret
; End of function _CMP32_R0R3_X


; =============== S U B	R O U T	I N E =======================================

; R4R7 = zext(x)
; R0R3 = R8R11

sub_C375: 
        call    sub_C213; R4R7 = zext(x)
; R0R3 = R8R11
        ret
; End of function sub_C375


; =============== S U B	R O U T	I N E =======================================


DisableCharge: 
        clr    a
        jp    AfeControlCharge; (a=EnableCharge)
; End of function DisableCharge


; =============== S U B	R O U T	I N E =======================================


SetErrorCode: 
        ld    ErrCode, a
        ret
; End of function SetErrorCode


; =============== S U B	R O U T	I N E =======================================


_SWI2C_SDA1: 
        call    SWI2C_SDA1
        ret
; End of function _SWI2C_SDA1


; =============== S U B	R O U T	I N E =======================================


sub_C385: 
        call    SWI2C_SCL0
        ret
; End of function sub_C385


; =============== S U B	R O U T	I N E =======================================


sub_C389: 
        call    sub_C0FA
        ret
; End of function sub_C389


; =============== S U B	R O U T	I N E =======================================


j_SaveUpdateConfig: 
        call    SaveUpdateConfig
        ret
; End of function j_SaveUpdateConfig


; =============== S U B	R O U T	I N E =======================================


sub_C391: 
        ld    CLK_SWR, a; System clock switch register
        ret
; End of function sub_C391


; =============== S U B	R O U T	I N E =======================================


sub_C395: 
        ld    a, CLK_SCSR; System clock status register
        ret
; End of function sub_C395


; =============== S U B	R O U T	I N E =======================================


sub_C399: 
        ld    CLK_CKDIVR, a; System clock divider register
        ret
; End of function sub_C399


; =============== S U B	R O U T	I N E =======================================


sub_C39D: 
        call    sub_C1CF
        ret
; End of function sub_C39D


; =============== S U B	R O U T	I N E =======================================

; (a=dev, r0=len, r1=cmd, r2=sub, x->data)
; Attributes: thunk

j__FramePacket: 
        jp    _FramePacket; (a=dev, r0=len, r1=cmd, r2=sub, x->data)
; End of function j__FramePacket


; =============== S U B	R O U T	I N E =======================================

; Attributes: thunk

        xdef TLI_ISR
TLI_ISR: 
        jp    hang_0
; End of function TLI_ISR


; =============== S U B	R O U T	I N E =======================================


ret1_0: 
        clrw    x
        incw    x
        ret
; End of function ret1_0


; =============== S U B	R O U T	I N E =======================================

; Attributes: noreturn thunk

j_exit: 
        jp    exit
; End of function j_exit


; =============== S U B	R O U T	I N E =======================================


hang_0: 
        nop
        jra    hang_0
; End of function hang_0

; ---------------------------------------------------------------------------
unk_C3B0:     dc.b    0
        dc.b    0
unk_C3B2:     dc.b    0
        dc.b    0
unk_C3B4:     dc.b    0
        dc.b    0

; =============== S U B	R O U T	I N E =======================================

; Attributes: noreturn

hang: 
        jra    hang
; End of function hang


; =============== S U B	R O U T	I N E =======================================


nullsub_1: 
        ret
; End of function nullsub_1


; =============== S U B	R O U T	I N E =======================================


        xdef TRAP
TRAP: 
        iret
; End of function TRAP


; =============== S U B	R O U T	I N E =======================================


        xdef FLASH_ISR
FLASH_ISR: 
        iret
; End of function FLASH_ISR


; =============== S U B	R O U T	I N E =======================================


        xdef DMA1_0_1_ISR
DMA1_0_1_ISR: 
        iret
; End of function DMA1_0_1_ISR


; =============== S U B	R O U T	I N E =======================================


        xdef DMA1_2_3_ISR
DMA1_2_3_ISR: 
        iret
; End of function DMA1_2_3_ISR


; =============== S U B	R O U T	I N E =======================================


        xdef EXTI_E_F_PVD_ISR
EXTI_E_F_PVD_ISR: 
        iret
; End of function EXTI_E_F_PVD_ISR


; =============== S U B	R O U T	I N E =======================================


        xdef EXTI_B_G_ISR
EXTI_B_G_ISR: 
        iret
; End of function EXTI_B_G_ISR


; =============== S U B	R O U T	I N E =======================================


        xdef EXTI_D_H_ISR
EXTI_D_H_ISR: 
        iret
; End of function EXTI_D_H_ISR


; =============== S U B	R O U T	I N E =======================================


        xdef EXTI0_ISR
EXTI0_ISR: 
        iret
; End of function EXTI0_ISR


; =============== S U B	R O U T	I N E =======================================


        xdef EXTI3_ISR
EXTI3_ISR: 
        iret
; End of function EXTI3_ISR


; =============== S U B	R O U T	I N E =======================================


        xdef EXTI4_ISR
EXTI4_ISR: 
        iret
; End of function EXTI4_ISR


; =============== S U B	R O U T	I N E =======================================


        xdef EXTI5_ISR
EXTI5_ISR: 
        iret
; End of function EXTI5_ISR


; =============== S U B	R O U T	I N E =======================================


        xdef EXTI7_ISR
EXTI7_ISR: 
        iret
; End of function EXTI7_ISR


; =============== S U B	R O U T	I N E =======================================


        xdef LCD_ISR
LCD_ISR: 
        iret
; End of function LCD_ISR


; =============== S U B	R O U T	I N E =======================================


        xdef CLK_TIM1_DAC_ISR
CLK_TIM1_DAC_ISR: 
        iret
; End of function CLK_TIM1_DAC_ISR


; =============== S U B	R O U T	I N E =======================================


        xdef COMP1_COMP2_ADC_ISR
COMP1_COMP2_ADC_ISR: 
        iret
; End of function COMP1_COMP2_ADC_ISR


; =============== S U B	R O U T	I N E =======================================


        xdef TIM2_ISR
TIM2_ISR: 
        iret
; End of function TIM2_ISR


; =============== S U B	R O U T	I N E =======================================


        xdef TIM3_ISR
TIM3_ISR: 
        iret
; End of function TIM3_ISR


; =============== S U B	R O U T	I N E =======================================


        xdef TIM3_CC_ISR
TIM3_CC_ISR: 
        iret
; End of function TIM3_CC_ISR


; =============== S U B	R O U T	I N E =======================================


        xdef TIM1_ISR
TIM1_ISR: 
        iret
; End of function TIM1_ISR


; =============== S U B	R O U T	I N E =======================================


        xdef TIM1_CC_ISR
TIM1_CC_ISR: 
        iret
; End of function TIM1_CC_ISR


; =============== S U B	R O U T	I N E =======================================


        xdef TIM4_ISR
TIM4_ISR: 
        iret
; End of function TIM4_ISR


; =============== S U B	R O U T	I N E =======================================


        xdef SPI1_ISR
SPI1_ISR: 
        iret
; End of function SPI1_ISR


; =============== S U B	R O U T	I N E =======================================


        xdef USART1_TX_ISR
USART1_TX_ISR: 
        iret
; End of function USART1_TX_ISR


; =============== S U B	R O U T	I N E =======================================


        xdef USART1_RX_ISR
USART1_RX_ISR: 
        iret
; End of function USART1_RX_ISR


; =============== S U B	R O U T	I N E =======================================


        xdef I2C1_ISR
I2C1_ISR: 
        iret
; End of function I2C1_ISR


; =============== S U B	R O U T	I N E =======================================


sub_C3D2: 
        push    R15
        push    R14
        push    R13
        push    R12
        push    R11
        push    R10
        push    R8
        ldw    R2, x
        mov    R8, R0
        ldw    R10, y
        clrw    y
        cp    a, #0xFD; '¤'
        jrne    loc_C3FD
        ldw    x, #0x8000
        ldw    R6, x
        sllw    x
        jra    loc_C403
; ---------------------------------------------------------------------------

loc_C3FD: 
        ldw    x, #0x1000
        ldw    R6, x
        clrw    x

loc_C403: 
        ldw    R4, x
        ldw    R0, x
        call    LSL32_R0R3_IMM8
        sra    (0x45,sp)
        cpl    (0xF,sp)
        mov    R14, R2
        mov    R13, R1
        mov    R3, R7
        mov    R2, R6
        mov    R1, R5
        mov    R7, R15
        mov    R6, R14
        mov    R5, R13
        call    ADD32_R0R3_R4R7
        tnz    R8
        jrne    loc_C433
        bset    FLASH_CR2, #0; Flash	control	register 2
        jra    loc_C437
; ---------------------------------------------------------------------------

loc_C433: ; Flash	control	register 2
        bset    FLASH_CR2, #4

loc_C437: 
        ldw    x, R2
        ldw    R4, y
        addw    x, R4
        ldw    R4, x
        ldw    x, y
        addw    x, R10
        ld    a, (x)
        ld    [R4.w],    a
        ldw    x, y
        incw    x
        ldw    y, x
        cpw    y, #0x80; 'А'
        jrc    loc_C437
        pop    R8
        pop    R10
        pop    R11
        pop    R12
        pop    R13
        pop    R14
        pop    R15
        ret
; End of function sub_C3D2


; =============== S U B	R O U T	I N E =======================================


sub_C46B: 
        clrw    x
        decw    x
        cp    a, #0xFD; '¤'
        jrne    loc_C482

loc_C471: ; Flash	in-application programming status register
        ld    a, FLASH_IAPSR
        and    a, #5
        decw    x
        tnz    a
        jrne    loc_C48B
        tnzw    x
        jrne    loc_C471
        jra    loc_C48E
; ---------------------------------------------------------------------------

loc_C47F: 
        tnzw    x
        jreq    loc_C48E

loc_C482: ; Flash	in-application programming status register
        ld    a, FLASH_IAPSR
        and    a, #0x41; 'A'
        decw    x
        tnz    a
        jreq    loc_C47F

loc_C48B: 
        tnzw    x
        jrne    locret_C490

loc_C48E: 
        ld    a, #2

locret_C490: 
        ret
; End of function sub_C46B

; ---------------------------------------------------------------------------
        dc.b 0x55; U
        dc.b 0xAA; к
        dc.b 0
        dc.b 0

        end;
