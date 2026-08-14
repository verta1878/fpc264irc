{ ===========================================================================
  cd1400_regs — Cirrus Logic CD1400 UART Register Definitions (Pascal)
  GPLv3 — Copyright (C) 2026 wrench (netmodem2irc)
  ---------------------------------------------------------------------------
  Ported from cd1400.h (evga, derived from Linux cyclades.h GPL v2).

  The CD1400 is a 4-port UART on Cyclom-Y multiport serial cards.
  Memory-mapped, NOT port-mapped. Registers at (offset * 2) from
  chip base within the shared memory window.
  =========================================================================== }

{$MODE OBJFPC}{$H+}

unit cd1400_regs;

interface

const
  { Card Geometry }
  CY_MAX_CHIPS       = 8;
  CY_PORTS_PER_CHIP  = 4;
  CY_MAX_CHAR_FIFO   = 12;
  CD1400_MAX_SPEED   = 115200;
  CY_MAX_PORTS       = CY_MAX_CHIPS * CY_PORTS_PER_CHIP;  { 32 }

  { Memory window sizes }
  CY_ISA_WINDOW      = $2000;   { ISA: 8K }
  CY_PCI_WINDOW      = $4000;   { PCI: 16K }

  { Card control offsets }
  CY_REG_SIZE        = $0400;   { Register space per chip }
  CY_HW_RESET        = $1400;
  CY_CLR_INTR        = $1800;
  CY_EPLD_REV        = $1E00;

  { CD1400 revision IDs }
  CD1400_REV_G       = $46;     { 25 MHz clock }
  CD1400_REV_J       = $48;     { 60 MHz clock }

  { Default shared memory base (ISA) }
  CY_DEFAULT_MEMBASE = $D4000;

  { --------------------------------------------------------------- }
  { Global Registers (per chip, not per channel)                     }
  { --------------------------------------------------------------- }

  CyGFRCR  = $40 * 2;   { Global Firmware Revision Code Register }
  CyCAR    = $68 * 2;   { Channel Access Register }
  CyGCR    = $4B * 2;   { Global Configuration Register }
  CySVRR   = $67 * 2;   { Service Request Register }
  CyRICR   = $44 * 2;   { Receive Interrupt Channel Register }
  CyTICR   = $45 * 2;   { Transmit Interrupt Channel Register }
  CyMICR   = $46 * 2;   { Modem Interrupt Channel Register }
  CyRIR    = $6B * 2;   { Receive Interrupt Register }
  CyTIR    = $6A * 2;   { Transmit Interrupt Register }
  CyMIR    = $69 * 2;   { Modem Interrupt Register }
  CyPPR    = $7E * 2;   { Prescaler Period Register }

  { CAR channel selection }
  CyCHAN_0 = $00;
  CyCHAN_1 = $01;
  CyCHAN_2 = $02;
  CyCHAN_3 = $03;

  { GCR modes }
  CyCH0_SERIAL   = $00;
  CyCH0_PARALLEL = $80;

  { SVRR bits }
  CySRModem    = $04;
  CySRTransmit = $02;
  CySRReceive  = $01;

  { IR bits }
  CyIRDirEq    = $80;
  CyIRBusy     = $40;
  CyIRUnfair   = $20;
  CyIRContext  = $1C;
  CyIRChannel  = $03;

  { PPR clock values }
  CyCLOCK_20_1MS = $27;
  CyCLOCK_25_1MS = $31;
  CyCLOCK_25_5MS = $F4;
  CyCLOCK_60_1MS = $75;
  CyCLOCK_60_2MS = $EA;

  { --------------------------------------------------------------- }
  { Virtual Registers (interrupt vectors)                            }
  { --------------------------------------------------------------- }

  CyRIVR    = $43 * 2;   { Receive Interrupt Vector Register }
  CyTIVR    = $42 * 2;   { Transmit Interrupt Vector Register }
  CyMIVR    = $41 * 2;   { Modem Interrupt Vector Register }

  CyIVRMask  = $07;
  CyIVRRxEx  = $07;      { Receive exception }
  CyIVRRxOK  = $03;      { Receive OK }
  CyIVRTxOK  = $02;      { Transmit OK }
  CyIVRMdmOK = $01;      { Modem OK }

  { --------------------------------------------------------------- }
  { Data Registers                                                   }
  { --------------------------------------------------------------- }

  CyTDR     = $63 * 2;   { Transmit Data Register }
  CyRDSR    = $62 * 2;   { Receive Data/Status Register }

  { RDSR status bits }
  CyTIMEOUT = $80;        { Receive timeout }
  CySPECHAR = $70;        { Special character detected }
  CyBREAK   = $08;        { Break received }
  CyPARITY_ERR = $04;     { Parity error }
  CyFRAME_ERR  = $02;     { Framing error }
  CyOVERRUN_ERR = $01;    { Overrun error }

  { End of service }
  CyEOSRR   = $60 * 2;   { End Of Service Request Register }
  CyMISR    = $4C * 2;   { Modem Interrupt Status Register }

  { --------------------------------------------------------------- }
  { Channel Registers (selected via CAR)                             }
  { --------------------------------------------------------------- }

  CyLIVR    = $18 * 2;   { Local Interrupt Vector Register }
  CyCCR     = $05 * 2;   { Channel Command Register }

  { CCR commands — Format 1 }
  CyCHAN_RESET       = $80;
  CyCHIP_RESET       = $81;
  CyFlushTransFIFO   = $82;

  { CCR commands — Format 2 }
  CyCOR_CHANGE       = $40;
  CyCOR1ch           = $02;
  CyCOR2ch           = $04;
  CyCOR3ch           = $08;

  { CCR commands — Format 3 (send special chars) }
  CySEND_SPEC_1      = $21;
  CySEND_SPEC_2      = $22;
  CySEND_SPEC_3      = $23;
  CySEND_SPEC_4      = $24;

  { CCR commands — Format 4 (channel control) }
  CyCHAN_CTL         = $10;
  CyDIS_RCVR         = $01;
  CyENB_RCVR         = $02;
  CyDIS_XMTR         = $04;
  CyENB_XMTR         = $08;

  { Service Request Enable Register }
  CySRER    = $06 * 2;
  CyMdmCh   = $80;        { Modem change }
  CyRxData  = $10;        { Receive data }
  CyTxRdy   = $04;        { Transmitter ready }
  CyTxMpty  = $02;        { Transmitter empty }
  CyNNDT    = $01;        { No new data timeout }

  { Channel Option Registers }
  CyCOR1    = $08 * 2;

  { COR1 parity }
  CyPARITY_NONE  = $00;
  CyPARITY_0     = $20;
  CyPARITY_1     = $A0;
  CyPARITY_E     = $40;
  CyPARITY_O     = $C0;

  { COR1 stop bits }
  Cy_1_STOP      = $00;
  Cy_1_5_STOP    = $04;
  Cy_2_STOP      = $08;

  { COR1 data bits }
  Cy_5_BITS      = $00;
  Cy_6_BITS      = $01;
  Cy_7_BITS      = $02;
  Cy_8_BITS      = $03;

  CyCOR2    = $09 * 2;
  CyIXM     = $80;        { Implied XON mode }
  CyTxIBE   = $40;        { Tx in-band flow control enable }
  CyETC     = $20;        { Embedded Tx command enable }
  CyAUTO_TXFL = $60;      { Auto Tx flow control }
  CyLLM     = $10;        { Local loopback mode }
  CyRLM     = $08;        { Remote loopback mode }
  CyRtsAO   = $04;        { RTS automatic output }
  CyCtsAE   = $02;        { CTS automatic enable }
  CyDsrAE   = $01;        { DSR automatic enable }

  CyCOR3    = $0A * 2;
  CySPL_CH_DRANGE = $80;
  CySPL_CH_DET1   = $40;
  CyFL_CTRL_TRNSP = $20;
  CySPL_CH_DET2   = $10;
  CyREC_FIFO      = $0F;

  CyCOR4    = $1E * 2;
  CyCOR5    = $1F * 2;

  { Channel Control Status Register }
  CyCCSR    = $0B * 2;
  CyRxEN    = $80;
  CyRxFloff = $40;
  CyRxFlon  = $20;
  CyTxEN    = $08;
  CyTxFloff = $04;
  CyTxFlon  = $02;

  { Receive Data Count Register }
  CyRDCR    = $0E * 2;

  { Special Character Registers }
  CySCHR1   = $1A * 2;
  CySCHR2   = $1B * 2;
  CySCHR3   = $1C * 2;
  CySCHR4   = $1D * 2;

  { Special Character Range }
  CySCRL    = $22 * 2;
  CySCRH    = $23 * 2;

  { Line Control }
  CyLNC     = $24 * 2;

  { Modem Change Option Registers }
  CyMCOR1   = $15 * 2;
  CyMCOR2   = $16 * 2;

  { Receive Timeout Period Register }
  CyRTPR    = $21 * 2;

  { Modem Signal Value Registers }
  CyMSVR1   = $6C * 2;
  CyMSVR2   = $6D * 2;

  { Modem signal bits }
  CyANY_DELTA = $F0;
  CyDSR     = $80;
  CyCTS     = $40;
  CyRI      = $20;
  CyDCD     = $10;
  CyDTR     = $02;
  CyRTS     = $01;

  { Prescaler Value Status Register }
  CyPVSR    = $6F * 2;

  { Baud Rate Registers }
  CyRBPR    = $78 * 2;   { Receive Baud Prescaler }
  CyRCOR    = $7C * 2;   { Receive Clock Option Register }
  CyTBPR    = $72 * 2;   { Transmit Baud Prescaler }
  CyTCOR    = $76 * 2;   { Transmit Clock Option Register }

  { Baud rate indices }
  CY_BAUD_50     = 0;
  CY_BAUD_75     = 1;
  CY_BAUD_110    = 2;
  CY_BAUD_134    = 3;
  CY_BAUD_150    = 4;
  CY_BAUD_200    = 5;
  CY_BAUD_300    = 6;
  CY_BAUD_600    = 7;
  CY_BAUD_1200   = 8;
  CY_BAUD_1800   = 9;
  CY_BAUD_2400   = 10;
  CY_BAUD_4800   = 11;
  CY_BAUD_9600   = 12;
  CY_BAUD_19200  = 13;
  CY_BAUD_38400  = 14;
  CY_BAUD_57600  = 15;
  CY_BAUD_76800  = 16;
  CY_BAUD_115200 = 17;
  CY_BAUD_150000 = 18;
  CY_BAUD_230400 = 19;
  CY_BAUD_COUNT  = 20;

implementation

end.
