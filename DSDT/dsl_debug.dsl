/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20141107-64 [Jan  2 2015]
 * Copyright (c) 2000 - 2014 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLm48CQb.aml, Sun Jul 12 23:43:07 2015
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x0000ADC7 (44487)
 *     Revision         0x02
 *     Checksum         0x71
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "CB-01   "
 *     OEM Revision     0x06040000 (100925440)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20141107 (538185991)
 */
DefinitionBlock ("iASLm48CQb.aml", "DSDT", 2, "LENOVO", "CB-01   ", 0x06040000)
{
    /*
     * iASL Warning: There were 1 external control methods found during
     * disassembly, but additional ACPI tables to resolve these externals
     * were not specified. This resulting disassembler output file may not
     * compile because the disassembler did not know how many arguments
     * to assign to these methods. To specify the tables needed to resolve
     * external control method references, the -e option can be used to
     * specify the filenames. Example iASL invocations:
     *     iasl -e ssdt1.aml ssdt2.aml ssdt3.aml -d dsdt.aml
     *     iasl -e dsdt.aml ssdt2.aml -d ssdt1.aml
     *     iasl -e ssdt*.aml -d dsdt.aml
     *
     * In addition, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     * Invocation:
     *     iasl -fe refs.txt -d dsdt.aml
     *
     * The following methods were unresolved and many not compile properly
     * because the disassembler had to guess at the number of arguments
     * required for each:
     */
    External (_SB_.PCI0.TMEM.GPEH, MethodObj)    // Warning: Unresolved method, guessing 0 arguments

    External (_PR_.CPU0._PPC, UnknownObj)
    External (_PR_.CPU1._PPC, UnknownObj)
    External (CFGD, UnknownObj)
    External (PDC0, UnknownObj)
    External (PDC1, UnknownObj)

    Name (SP2O, 0x4E)
    Name (SP1O, 0x164E)
    Name (IO1B, 0x0600)
    Name (IO1L, 0x70)
    Name (IO2B, 0x06B0)
    Name (IO2L, 0x20)
    Name (IO3B, 0x0290)
    Name (IO3L, 0x10)
    Name (MCHB, 0xFED10000)
    Name (MCHL, 0x4000)
    Name (EGPB, 0xFED19000)
    Name (EGPL, 0x1000)
    Name (DMIB, 0xFED18000)
    Name (DMIL, 0x1000)
    Name (IFPB, 0xFED13000)
    Name (IFPL, 0x1000)
    Name (PEBS, 0xE0000000)
    Name (PELN, 0x10000000)
    Name (TTTB, 0xFED20000)
    Name (TTTL, 0x00020000)
    Name (SMBS, 0x18C0)
    Name (PBLK, 0x0410)
    Name (PMBS, 0x0400)
    Name (PMLN, 0x80)
    Name (LVL2, 0x0414)
    Name (LVL3, 0x0415)
    Name (LVL4, 0x0416)
    Name (SMIP, 0xB2)
    Name (GPBS, 0x1180)
    Name (GPLN, 0x80)
    Name (APCB, 0xFEC00000)
    Name (APCL, 0x1000)
    Name (PM30, 0x0430)
    Name (SRCB, 0xFED1C000)
    Name (SRCL, 0x4000)
    Name (SUSW, 0xFF)
    Name (ACPH, 0xDE)
    Name (ASSB, Zero)
    Name (AOTB, Zero)
    Name (AAXB, Zero)
    Name (PEHP, One)
    Name (SHPC, One)
    Name (PEPM, One)
    Name (PEER, One)
    Name (PECS, One)
    Name (ITKE, Zero)
    Name (TRTP, One)
    Name (TRTD, 0x02)
    Name (TRTI, 0x03)
    Name (GCDD, One)
    Name (DSTA, 0x0A)
    Name (DSLO, 0x0C)
    Name (DSLC, 0x0E)
    Name (PITS, 0x10)
    Name (SBCS, 0x12)
    Name (SALS, 0x13)
    Name (LSSS, 0x2A)
    Name (PSSS, 0x2B)
    Name (SOOT, 0x35)
    Name (ESCS, 0x48)
    Name (PDBR, 0x4D)
    Name (SMBL, 0x10)
    OperationRegion (GNVS, SystemMemory, 0xBDF9EDBC, 0x0100)
    Field (GNVS, AnyAcc, Lock, Preserve)
    {
        OSYS,   16, 
        SMIF,   8, 
        PRM0,   8, 
        PRM1,   8, 
        SCIF,   8, 
        PRM2,   8, 
        PRM3,   8, 
        LCKF,   8, 
        PRM4,   8, 
        PRM5,   8, 
        P8D0,   8, 
        P8D1,   8, 
        P8D2,   8, 
        P8D3,   8, 
        LIDS,   8, 
        PWRS,   8, 
        DBGS,   8, 
        THOF,   8, 
        ACT1,   8, 
        ACTT,   8, 
        PSVT,   8, 
        TC1V,   8, 
        TC2V,   8, 
        TSPV,   8, 
        CRTT,   8, 
        DTSE,   8, 
        DTS1,   8, 
        DTS2,   8, 
        DTSF,   8, 
        Offset (0x28), 
        APIC,   8, 
        MPEN,   8, 
        PCP0,   8, 
        PCP1,   8, 
        PPCM,   8, 
        PPMF,   32, 
        Offset (0x32), 
        NATP,   8, 
        Offset (0x3C), 
        IGDS,   8, 
        TLST,   8, 
        CADL,   8, 
        PADL,   8, 
        CSTE,   16, 
        NSTE,   16, 
        SSTE,   16, 
        NDID,   8, 
        DID1,   32, 
        DID2,   32, 
        DID3,   32, 
        DID4,   32, 
        DID5,   32, 
        KSV0,   32, 
        KSV1,   8, 
        BDSP,   8, 
        PTY1,   8, 
        PTY2,   8, 
        PSCL,   8, 
        TVF1,   8, 
        TVF2,   8, 
        GETM,   8, 
        BLCS,   8, 
        BRTL,   8, 
        ALSE,   8, 
        ALAF,   8, 
        LLOW,   8, 
        LHIH,   8, 
        Offset (0x6E), 
        EMAE,   8, 
        EMAP,   16, 
        EMAL,   16, 
        Offset (0x74), 
        MEFE,   8, 
        DSTS,   8, 
        Offset (0x78), 
        TPMP,   8, 
        TPME,   8, 
        Offset (0x82), 
        GTF0,   56, 
        GTF2,   56, 
        IDEM,   8, 
        GTF1,   56, 
        BID,    8, 
        Offset (0xA0), 
        F0DA,   8, 
        F0DB,   8, 
        F0DC,   8, 
        F0DD,   8, 
        F0DE,   8, 
        F0DF,   8, 
        F0E0,   8, 
        F0E1,   8, 
        Offset (0xAA), 
        ASLB,   32, 
        IBTT,   8, 
        IPAT,   8, 
        ITVF,   8, 
        ITVM,   8, 
        IPSC,   8, 
        IBLC,   8, 
        IBIA,   8, 
        ISSC,   8, 
        I409,   8, 
        I509,   8, 
        I609,   8, 
        I709,   8, 
        IDMM,   8, 
        IDMS,   8, 
        IF1E,   8, 
        HVCO,   8, 
        NXD1,   32, 
        NXD2,   32, 
        NXD3,   32, 
        NXD4,   32, 
        NXD5,   32, 
        NXD6,   32, 
        NXD7,   32, 
        NXD8,   32, 
        GSMI,   8, 
        PAVP,   8, 
        Offset (0xEB), 
        DSEN,   8, 
        ECON,   8, 
        GPIC,   8, 
        CTYP,   8, 
        L01C,   8, 
        VFN0,   8, 
        VFN1,   8, 
        Offset (0xF8), 
        DB00,   8, 
        DB01,   8, 
        DB02,   8, 
        DB03,   8, 
        DB04,   8, 
        DB05,   8, 
        DB06,   8, 
        DB07,   8
    }

    Method (DTGP, 5, NotSerialized)
    {
        If (LEqual (Arg0, ToUUID ("a0b5b7c6-1318-441c-b0c9-fe695eaf949b")))
        {
            If (LEqual (Arg1, One))
            {
                If (LEqual (Arg2, Zero))
                {
                    Store (Buffer (One)
                        {
                             0x03                                           
                        }, Arg4)
                    Return (One)
                }

                If (LEqual (Arg2, One))
                {
                    Return (One)
                }
            }
        }

        Store (Buffer (One)
            {
                 0x00                                           
            }, Arg4)
        Return (Zero)
    }

    Method (B1B4, 4, NotSerialized)
    {
        Or (ShiftLeft (Arg1, 0x08), Arg0, Local0)
        Or (ShiftLeft (Arg2, 0x10), Local0, Local0)
        Or (ShiftLeft (Arg3, 0x18), Local0, Local0)
        Return (Local0)
    }

    Method (L1L4, 4, NotSerialized)
    {
        Or (ShiftLeft (Arg1, 0x20), Arg0, Local0)
        Or (ShiftLeft (Arg2, 0x40), Local0, Local0)
        Or (ShiftLeft (Arg3, 0x60), Local0, Local0)
        Return (Local0)
    }

    Method (L1L6, 6, NotSerialized)
    {
        Or (ShiftLeft (Arg1, 0x20), Arg0, Local0)
        Or (ShiftLeft (Arg2, 0x40), Local0, Local0)
        Or (ShiftLeft (Arg3, 0x60), Local0, Local0)
        Or (ShiftLeft (Arg4, 0x80), Local0, Local0)
        Or (ShiftLeft (Arg5, 0xA0), Local0, Local0)
        Return (Local0)
    }

    Method (D2D4, 2, NotSerialized)
    {
        Or (ShiftLeft (Arg1, 0x80), Arg0, Local0)
        Return (Local0)
    }

    Method (P8H4, 1, NotSerialized)
    {
        Store (Arg0, P8H0)
        Store (Zero, P8H1)
        Store (Zero, P8H2)
        Store (Zero, P8H3)
    }

    Scope (_SB)
    {
        Name (PR00, Package (0x16)
        {
            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                Zero, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x03, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                Zero, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x03, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                0x03, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR00, Package (0x16)
        {
            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                Zero, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x02, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x03, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                Zero, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x03, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                One, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                0x02, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                0x03, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                Zero, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR02, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR02, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR04, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR04, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR05, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKA, 
                Zero
            }
        })
        Name (AR05, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x10
            }
        })
        Name (PR06, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                Zero
            }
        })
        Name (AR06, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x11
            }
        })
        Name (PR07, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKC, 
                Zero
            }
        })
        Name (AR07, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x12
            }
        })
        Name (PR08, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR08, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR01, Package (0x03)
        {
            Package (0x04)
            {
                0x0005FFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x02, 
                LNKG, 
                Zero
            }
        })
        Name (AR01, Package (0x03)
        {
            Package (0x04)
            {
                0x0005FFFF, 
                Zero, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                One, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x02, 
                Zero, 
                0x16
            }
        })
        Name (PRSA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {3,4,5,6,7,10,11,12,14,15}
        })
        Alias (PRSA, PRSB)
        Alias (PRSA, PRSC)
        Alias (PRSA, PRSD)
        Alias (PRSA, PRSE)
        Alias (PRSA, PRSF)
        Alias (PRSA, PRSG)
        Alias (PRSA, PRSH)
        Device (PCI0)
        {
            Device (PEGP)
            {
                Name (_ADR, 0x00010000)  // _ADR: Address
                Device (GFX0)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        Store (Package (0x30)
                            {
                                "@0,connector-type", 
                                Buffer (0x04)
                                {
                                     0x00, 0x08, 0x00, 0x00                         
                                }, 

                                "@1,connector-type", 
                                Buffer (0x04)
                                {
                                     0x00, 0x08, 0x00, 0x00                         
                                }, 

                                "@0,compatible", 
                                Buffer (0x0B)
                                {
                                    "NVDA,NVMac"
                                }, 

                                "@0,device_type", 
                                Buffer (0x08)
                                {
                                    "display"
                                }, 

                                "@0,display-type", 
                                Buffer (0x04)
                                {
                                    "LCD"
                                }, 

                                "@0,name", 
                                Buffer (0x0F)
                                {
                                    "NVDA,Display-A"
                                }, 

                                "@1,compatible", 
                                Buffer (0x0B)
                                {
                                    "NVDA,NVMac"
                                }, 

                                "@1,device_type", 
                                Buffer (0x08)
                                {
                                    "display"
                                }, 

                                "@1,name", 
                                Buffer (0x0F)
                                {
                                    "NVDA,Display-B"
                                }, 

                                "NVCAP", 
                                Buffer (0x18)
                                {
                                    /* 0000 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00,
                                    /* 0008 */  0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07,
                                    /* 0010 */  0x00, 0x00, 0x00, 0x00                         
                                }, 

                                "VRAM,totalsize", 
                                Buffer (0x04)
                                {
                                     0x00, 0x00, 0x00, 0x20                         
                                }, 

                                "device_type", 
                                Buffer (0x0C)
                                {
                                    "NVDA,Parent"
                                }, 

                                "model", 
                                Buffer (0x17)
                                {
                                    "NVIDIA GeForce GT 240M"
                                }, 

                                "@0,built-in", 
                                Unicode ("\x01"), 
                                "AAPL,aux-power-connected", 
                                Unicode ("\x01"), 
                                "AAPL,backlight-control", 
                                Unicode ("\x01"), 
                                "@0,use-backlight-blanking", 
                                Buffer (Zero) {}, 
                                "@0,AAPL,boot-display", 
                                Buffer (Zero) {}, 
                                "@0,NVMT", 
                                Buffer (0x60)
                                {
                                    /* 0000 */  0x0B, 0x03, 0xFF, 0x20, 0x06, 0x10, 0x90, 0x9C,
                                    /* 0008 */  0x00, 0x05, 0x20, 0x03, 0x8F, 0x05, 0x30, 0x05,
                                    /* 0010 */  0x50, 0x05, 0x00, 0x00, 0x4E, 0x03, 0x23, 0x03,
                                    /* 0018 */  0x29, 0x03, 0x00, 0x00, 0x20, 0x43, 0x52, 0x04,
                                    /* 0020 */  0x00, 0x00, 0x01, 0x01, 0xE0, 0x00, 0x00, 0x00,
                                    /* 0028 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    /* 0030 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    /* 0038 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    /* 0040 */  0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
                                    /* 0048 */  0x00, 0x00, 0x00, 0x00, 0x40, 0xFF, 0x10, 0x05,
                                    /* 0050 */  0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    /* 0058 */  0x00, 0x08, 0x00, 0x00, 0x30, 0x02, 0x03, 0x03 
                                }, 

                                "@0,backlight-control", 
                                Unicode ("\x01"), 
                                "@0,display-cfg", 
                                Buffer (0x04)
                                {
                                     0x03, 0x01, 0x00, 0x00                         
                                }, 

                                "@0,pwm-info", 
                                Buffer (0x14)
                                {
                                    /* 0000 */  0x01, 0x14, 0x00, 0x64, 0xA8, 0x61, 0x00, 0x00,
                                    /* 0008 */  0x08, 0x52, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00,
                                    /* 0010 */  0x00, 0x04, 0x00, 0x00                         
                                }, 

                                "rom-revision", 
                                Buffer (0x0F)
                                {
                                    "70.16.4e.00.07"
                                }, 

                                "hda-gfx", 
                                Buffer (0x0A)
                                {
                                    "onboard-2"
                                }
                            }, Local0)
                        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                        Return (Local0)
                    }
                }

                Device (HDAU)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        Store (Package (0x02)
                            {
                                "hda-gfx", 
                                Buffer (0x0A)
                                {
                                    "onboard-2"
                                }
                            }, Local0)
                        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                        Return (Local0)
                    }
                }
            }

            Name (_HID, EisaId ("PNP0A08"))  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03"))  // _CID: Compatible ID
            Name (_ADR, Zero)  // _ADR: Address
            Method (^BN00, 0, NotSerialized)
            {
                Return (Zero)
            }

            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
            {
                Return (BN00 ())
            }

            Name (_UID, Zero)  // _UID: Unique ID
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR00)
                }

                Return (PR00)
            }

            OperationRegion (HBUS, PCI_Config, 0x40, 0xC0)
            Field (HBUS, DWordAcc, NoLock, Preserve)
            {
                EPEN,   1, 
                    ,   11, 
                EPBR,   20, 
                Offset (0x08), 
                MHEN,   1, 
                    ,   13, 
                MHBR,   18, 
                Offset (0x20), 
                PXEN,   1, 
                PXSZ,   2, 
                    ,   23, 
                PXBR,   6, 
                Offset (0x28), 
                DIEN,   1, 
                    ,   11, 
                DIBR,   20, 
                Offset (0x30), 
                IPEN,   1, 
                    ,   11, 
                IPBR,   20, 
                Offset (0x50), 
                    ,   4, 
                PM0H,   2, 
                Offset (0x51), 
                PM1L,   2, 
                    ,   2, 
                PM1H,   2, 
                Offset (0x52), 
                PM2L,   2, 
                    ,   2, 
                PM2H,   2, 
                Offset (0x53), 
                PM3L,   2, 
                    ,   2, 
                PM3H,   2, 
                Offset (0x54), 
                PM4L,   2, 
                    ,   2, 
                PM4H,   2, 
                Offset (0x55), 
                PM5L,   2, 
                    ,   2, 
                PM5H,   2, 
                Offset (0x56), 
                PM6L,   2, 
                    ,   2, 
                PM6H,   2, 
                Offset (0x57), 
                    ,   7, 
                HENA,   1, 
                Offset (0x62), 
                TUUD,   16, 
                Offset (0x70), 
                    ,   4, 
                TLUD,   12, 
                Offset (0x89), 
                    ,   3, 
                GTSE,   1, 
                Offset (0x8A)
            }

            OperationRegion (MCHT, SystemMemory, 0xFED11000, 0xFF)
            Field (MCHT, ByteAcc, NoLock, Preserve)
            {
                Offset (0x1E), 
                T0IS,   16, 
                Offset (0x5E), 
                T1IS,   16, 
                Offset (0xEF), 
                ESCS,   8
            }

            Name (BUF0, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0100,             // Length
                    ,, )
                DWordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000CF7,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000CF8,         // Length
                    ,, , TypeStatic)
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                DWordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x00000000,         // Granularity
                    0x00000D00,         // Range Minimum
                    0x0000FFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x0000F300,         // Length
                    ,, , TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000A0000,         // Range Minimum
                    0x000BFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000C3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y00, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C4000,         // Range Minimum
                    0x000C7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y01, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C8000,         // Range Minimum
                    0x000CBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y02, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000CC000,         // Range Minimum
                    0x000CFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y03, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D0000,         // Range Minimum
                    0x000D3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y04, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D4000,         // Range Minimum
                    0x000D7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y05, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D8000,         // Range Minimum
                    0x000DBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y06, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000DC000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y07, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E0000,         // Range Minimum
                    0x000E3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y08, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E4000,         // Range Minimum
                    0x000E7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y09, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E8000,         // Range Minimum
                    0x000EBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y0A, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000EC000,         // Range Minimum
                    0x000EFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y0B, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000F0000,         // Range Minimum
                    0x000FFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00010000,         // Length
                    ,, _Y0C, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0xFEBFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0xFEC00000,         // Length
                    ,, _Y0D, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0xFED40000,         // Range Minimum
                    0xFED44FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00005000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                If (PM1L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y00._LEN, C0LN)  // _LEN: Length
                    Store (Zero, C0LN)
                }

                If (LEqual (PM1L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y00._RW, C0RW)  // _RW_: Read-Write Status
                    Store (Zero, C0RW)
                }

                If (PM1H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y01._LEN, C4LN)  // _LEN: Length
                    Store (Zero, C4LN)
                }

                If (LEqual (PM1H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y01._RW, C4RW)  // _RW_: Read-Write Status
                    Store (Zero, C4RW)
                }

                If (PM2L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y02._LEN, C8LN)  // _LEN: Length
                    Store (Zero, C8LN)
                }

                If (LEqual (PM2L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y02._RW, C8RW)  // _RW_: Read-Write Status
                    Store (Zero, C8RW)
                }

                If (PM2H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y03._LEN, CCLN)  // _LEN: Length
                    Store (Zero, CCLN)
                }

                If (LEqual (PM2H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y03._RW, CCRW)  // _RW_: Read-Write Status
                    Store (Zero, CCRW)
                }

                If (PM3L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y04._LEN, D0LN)  // _LEN: Length
                    Store (Zero, D0LN)
                }

                If (LEqual (PM3L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y04._RW, D0RW)  // _RW_: Read-Write Status
                    Store (Zero, D0RW)
                }

                If (PM3H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y05._LEN, D4LN)  // _LEN: Length
                    Store (Zero, D4LN)
                }

                If (LEqual (PM3H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y05._RW, D4RW)  // _RW_: Read-Write Status
                    Store (Zero, D4RW)
                }

                If (PM4L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y06._LEN, D8LN)  // _LEN: Length
                    Store (Zero, D8LN)
                }

                If (LEqual (PM4L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y06._RW, D8RW)  // _RW_: Read-Write Status
                    Store (Zero, D8RW)
                }

                If (PM4H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y07._LEN, DCLN)  // _LEN: Length
                    Store (Zero, DCLN)
                }

                If (LEqual (PM4H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y07._RW, DCRW)  // _RW_: Read-Write Status
                    Store (Zero, DCRW)
                }

                If (PM5L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y08._LEN, E0LN)  // _LEN: Length
                    Store (Zero, E0LN)
                }

                If (LEqual (PM5L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y08._RW, E0RW)  // _RW_: Read-Write Status
                    Store (Zero, E0RW)
                }

                If (PM5H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y09._LEN, E4LN)  // _LEN: Length
                    Store (Zero, E4LN)
                }

                If (LEqual (PM5H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y09._RW, E4RW)  // _RW_: Read-Write Status
                    Store (Zero, E4RW)
                }

                If (PM6L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0A._LEN, E8LN)  // _LEN: Length
                    Store (Zero, E8LN)
                }

                If (LEqual (PM6L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0A._RW, E8RW)  // _RW_: Read-Write Status
                    Store (Zero, E8RW)
                }

                If (PM6H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0B._LEN, ECLN)  // _LEN: Length
                    Store (Zero, ECLN)
                }

                If (LEqual (PM6H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0B._RW, ECRW)  // _RW_: Read-Write Status
                    Store (Zero, ECRW)
                }

                If (PM0H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0C._LEN, F0LN)  // _LEN: Length
                    Store (Zero, F0LN)
                }

                If (LEqual (PM0H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0C._RW, F0RW)  // _RW_: Read-Write Status
                    Store (Zero, F0RW)
                }

                CreateDWordField (BUF0, \_SB.PCI0._Y0D._MIN, M1MN)  // _MIN: Minimum Base Address
                CreateDWordField (BUF0, \_SB.PCI0._Y0D._MAX, M1MX)  // _MAX: Maximum Base Address
                CreateDWordField (BUF0, \_SB.PCI0._Y0D._LEN, M1LN)  // _LEN: Length
                ShiftLeft (TLUD, 0x14, M1MN)
                Add (Subtract (M1MX, M1MN), One, M1LN)
                Return (BUF0)
            }

            Device (P0P2)
            {
                Name (_ADR, 0x00010000)  // _ADR: Address
            }

            Device (GFX0)
            {
                Name (_ADR, 0x00020000)  // _ADR: Address
                Name (_SUN, One)  // _SUN: Slot User Number
                Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
                {
                    Store (And (Arg0, 0x07), DSEN)
                }

                Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
                {
                    If (SCIP ())
                    {
                        Store (Zero, NDID)
                        If (LNotEqual (DIDL, Zero))
                        {
                            Store (SDDL (DID1), DID1)
                        }

                        If (LNotEqual (DDL2, Zero))
                        {
                            Store (SDDL (DID2), DID2)
                        }

                        If (LNotEqual (DDL3, Zero))
                        {
                            Store (SDDL (DID3), DID3)
                        }

                        If (LNotEqual (DDL4, Zero))
                        {
                            Store (SDDL (DID4), DID4)
                        }

                        If (LNotEqual (DDL5, Zero))
                        {
                            Store (SDDL (DID5), DID5)
                        }
                    }

                    If (LEqual (NDID, One))
                    {
                        Name (TMP1, Package (0x01)
                        {
                            0xFFFFFFFF
                        })
                        Store (Or (0x00010000, DID1), Index (TMP1, Zero))
                        Return (TMP1)
                    }

                    If (LEqual (NDID, 0x02))
                    {
                        Name (TMP2, Package (0x02)
                        {
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                        Store (Or (0x00010000, DID1), Index (TMP2, Zero))
                        Store (Or (0x00010000, DID2), Index (TMP2, One))
                        Return (TMP2)
                    }

                    If (LEqual (NDID, 0x03))
                    {
                        Name (TMP3, Package (0x03)
                        {
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                        Store (Or (0x00010000, DID1), Index (TMP3, Zero))
                        Store (Or (0x00010000, DID2), Index (TMP3, One))
                        Store (Or (0x00010000, DID3), Index (TMP3, 0x02))
                        Return (TMP3)
                    }

                    If (LEqual (NDID, 0x04))
                    {
                        Name (TMP4, Package (0x04)
                        {
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                        Store (Or (0x00010000, DID1), Index (TMP4, Zero))
                        Store (Or (0x00010000, DID2), Index (TMP4, One))
                        Store (Or (0x00010000, DID3), Index (TMP4, 0x02))
                        Store (Or (0x00010000, DID4), Index (TMP4, 0x03))
                        Return (TMP4)
                    }

                    If (LGreater (NDID, 0x04))
                    {
                        Name (TMP5, Package (0x05)
                        {
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                        Store (Or (0x00010000, DID1), Index (TMP5, Zero))
                        Store (Or (0x00010000, DID2), Index (TMP5, One))
                        Store (Or (0x00010000, DID3), Index (TMP5, 0x02))
                        Store (Or (0x00010000, DID4), Index (TMP5, 0x03))
                        Store (Or (0x00010000, DID4), Index (TMP5, 0x04))
                        Return (TMP5)
                    }

                    Return (Package (0x01)
                    {
                        0x0400
                    })
                }

                Device (DD01)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If (LEqual (DID1, Zero))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (And (0xFFFF, DID1))
                        }
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        If (SCIP ())
                        {
                            Return (CDDS (DID1))
                        }
                        Else
                        {
                            TRAP (TRTI, GCDD)
                            If (And (CSTE, One))
                            {
                                Return (0x1F)
                            }

                            Return (0x1D)
                        }
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        If (SCIP ())
                        {
                            Return (NDDS (DID1))
                        }
                        Else
                        {
                            If (And (NSTE, One))
                            {
                                Return (One)
                            }

                            Return (Zero)
                        }
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                        {
                            Store (NSTE, CSTE)
                        }
                    }
                }

                Device (DD02)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If (LEqual (DID2, Zero))
                        {
                            Return (0x02)
                        }
                        Else
                        {
                            Return (And (0xFFFF, DID2))
                        }
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        If (SCIP ())
                        {
                            Return (CDDS (DID2))
                        }
                        Else
                        {
                            TRAP (TRTI, GCDD)
                            If (And (CSTE, 0x02))
                            {
                                Return (0x1F)
                            }

                            Return (0x1D)
                        }
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        If (SCIP ())
                        {
                            Return (NDDS (DID2))
                        }
                        Else
                        {
                            If (And (NSTE, 0x02))
                            {
                                Return (One)
                            }

                            Return (Zero)
                        }
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                        {
                            Store (NSTE, CSTE)
                        }
                    }
                }

                Device (DD03)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If (LEqual (DID3, Zero))
                        {
                            Return (0x03)
                        }
                        Else
                        {
                            Return (And (0xFFFF, DID3))
                        }
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        If (LEqual (DID3, Zero))
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            If (SCIP ())
                            {
                                Return (CDDS (DID3))
                            }
                            Else
                            {
                                TRAP (TRTI, GCDD)
                                If (And (CSTE, 0x04))
                                {
                                    Return (0x1F)
                                }

                                Return (0x1D)
                            }
                        }
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        If (SCIP ())
                        {
                            Return (NDDS (DID3))
                        }
                        Else
                        {
                            If (And (NSTE, 0x04))
                            {
                                Return (One)
                            }

                            Return (Zero)
                        }
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                        {
                            Store (NSTE, CSTE)
                        }
                    }

                    Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                    {
                        Return (IBCL)
                    }

                    Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                    {
                        IBCM (Arg0)
                    }

                    Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
                    {
                        Return (EBRL)
                    }
                }

                Device (DD04)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If (LEqual (DID4, Zero))
                        {
                            Return (0x04)
                        }
                        Else
                        {
                            Return (And (0xFFFF, DID4))
                        }
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        If (LEqual (DID4, Zero))
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            If (SCIP ())
                            {
                                Return (CDDS (DID4))
                            }
                            Else
                            {
                                TRAP (TRTI, GCDD)
                                If (And (CSTE, 0x08))
                                {
                                    Return (0x1F)
                                }

                                Return (0x1D)
                            }
                        }
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        If (SCIP ())
                        {
                            Return (NDDS (DID4))
                        }
                        Else
                        {
                            If (And (NSTE, 0x08))
                            {
                                Return (One)
                            }

                            Return (Zero)
                        }
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                        {
                            Store (NSTE, CSTE)
                        }
                    }
                }

                Device (DD05)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If (LEqual (DID5, Zero))
                        {
                            Return (0x05)
                        }
                        Else
                        {
                            Return (And (0xFFFF, DID5))
                        }
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        If (LEqual (DID5, Zero))
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            If (SCIP ())
                            {
                                Return (CDDS (DID5))
                            }
                            Else
                            {
                                TRAP (TRTI, GCDD)
                                If (And (CSTE, 0x10))
                                {
                                    Return (0x1F)
                                }

                                Return (0x1D)
                            }
                        }
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        If (SCIP ())
                        {
                            Return (NDDS (DID5))
                        }
                        Else
                        {
                            If (And (NSTE, 0x10))
                            {
                                Return (One)
                            }

                            Return (Zero)
                        }
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                        {
                            Store (NSTE, CSTE)
                        }
                    }
                }

                Method (SDDL, 1, NotSerialized)
                {
                    Increment (NDID)
                    Store (And (Arg0, 0x0F0F), Local0)
                    Or (0x80000000, Local0, Local1)
                    If (LEqual (DIDL, Local0))
                    {
                        Return (Local1)
                    }

                    If (LEqual (DDL2, Local0))
                    {
                        Return (Local1)
                    }

                    If (LEqual (DDL3, Local0))
                    {
                        Return (Local1)
                    }

                    If (LEqual (DDL4, Local0))
                    {
                        Return (Local1)
                    }

                    If (LEqual (DDL5, Local0))
                    {
                        Return (Local1)
                    }

                    If (LEqual (DDL6, Local0))
                    {
                        Return (Local1)
                    }

                    If (LEqual (DDL7, Local0))
                    {
                        Return (Local1)
                    }

                    If (LEqual (DDL8, Local0))
                    {
                        Return (Local1)
                    }

                    Return (Zero)
                }

                Method (CDDS, 1, NotSerialized)
                {
                    Store (And (Arg0, 0x0F0F), Local0)
                    If (LEqual (Zero, Local0))
                    {
                        Return (0x1D)
                    }

                    If (LEqual (CADL, Local0))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (CAL2, Local0))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (CAL3, Local0))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (CAL4, Local0))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (CAL5, Local0))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (CAL6, Local0))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (CAL7, Local0))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (CAL8, Local0))
                    {
                        Return (0x1F)
                    }

                    Return (0x1D)
                }

                Method (NDDS, 1, NotSerialized)
                {
                    Store (And (Arg0, 0x0F0F), Local0)
                    If (LEqual (Zero, Local0))
                    {
                        Return (Zero)
                    }

                    If (LEqual (NADL, Local0))
                    {
                        Return (One)
                    }

                    If (LEqual (NDL2, Local0))
                    {
                        Return (One)
                    }

                    If (LEqual (NDL3, Local0))
                    {
                        Return (One)
                    }

                    If (LEqual (NDL4, Local0))
                    {
                        Return (One)
                    }

                    If (LEqual (NDL5, Local0))
                    {
                        Return (One)
                    }

                    If (LEqual (NDL6, Local0))
                    {
                        Return (One)
                    }

                    If (LEqual (NDL7, Local0))
                    {
                        Return (One)
                    }

                    If (LEqual (NDL8, Local0))
                    {
                        Return (One)
                    }

                    Return (Zero)
                }

                Scope (^^PCI0)
                {
                    OperationRegion (MCHP, PCI_Config, 0x40, 0xC0)
                    Field (MCHP, AnyAcc, NoLock, Preserve)
                    {
                        Offset (0x60), 
                        TASM,   10, 
                        Offset (0x62)
                    }
                }

                OperationRegion (IGDP, PCI_Config, 0x40, 0xC0)
                Field (IGDP, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x12), 
                        ,   1, 
                    GIVD,   1, 
                        ,   2, 
                    GUMA,   3, 
                    Offset (0x14), 
                        ,   4, 
                    GMFN,   1, 
                    Offset (0x18), 
                    Offset (0xA4), 
                    ASLE,   8, 
                    Offset (0xA8), 
                    GSSE,   1, 
                    GSSB,   14, 
                    GSES,   1, 
                    Offset (0xB0), 
                        ,   12, 
                    CDVL,   1, 
                    Offset (0xB2), 
                    Offset (0xB4), 
                    PWMC,   8, 
                    LBPC,   8, 
                    Offset (0xBC), 
                    ASLS,   32
                }

                OperationRegion (IGDM, SystemMemory, ASLB, 0x2000)
                Field (IGDM, AnyAcc, NoLock, Preserve)
                {
                    SIGN,   128, 
                    SIZE,   32, 
                    OVER,   32, 
                    SVER,   256, 
                    VVER,   128, 
                    GVER,   128, 
                    MBOX,   32, 
                    DMOD,   32, 
                    Offset (0x100), 
                    DRDY,   32, 
                    CSTS,   32, 
                    CEVT,   32, 
                    Offset (0x120), 
                    DIDL,   32, 
                    DDL2,   32, 
                    DDL3,   32, 
                    DDL4,   32, 
                    DDL5,   32, 
                    DDL6,   32, 
                    DDL7,   32, 
                    DDL8,   32, 
                    CPDL,   32, 
                    CPL2,   32, 
                    CPL3,   32, 
                    CPL4,   32, 
                    CPL5,   32, 
                    CPL6,   32, 
                    CPL7,   32, 
                    CPL8,   32, 
                    CADL,   32, 
                    CAL2,   32, 
                    CAL3,   32, 
                    CAL4,   32, 
                    CAL5,   32, 
                    CAL6,   32, 
                    CAL7,   32, 
                    CAL8,   32, 
                    NADL,   32, 
                    NDL2,   32, 
                    NDL3,   32, 
                    NDL4,   32, 
                    NDL5,   32, 
                    NDL6,   32, 
                    NDL7,   32, 
                    NDL8,   32, 
                    ASLP,   32, 
                    TIDX,   32, 
                    CHPD,   32, 
                    CLID,   32, 
                    CDCK,   32, 
                    SXSW,   32, 
                    EVTS,   32, 
                    CNOT,   32, 
                    NRDY,   32, 
                    Offset (0x200), 
                    SCIE,   1, 
                    GEFC,   4, 
                    GXFC,   3, 
                    GESF,   8, 
                    Offset (0x204), 
                    PARM,   32, 
                    DSLP,   32, 
                    Offset (0x300), 
                    ARDY,   32, 
                    ASLC,   32, 
                    TCHE,   32, 
                    ALSI,   32, 
                    BCLP,   32, 
                    PFIT,   32, 
                    CBLV,   32, 
                    BC00,   8, 
                    Offset (0x31E), 
                    BC01,   8, 
                    Offset (0x320), 
                    BC02,   8, 
                    Offset (0x322), 
                    BC03,   8, 
                    Offset (0x324), 
                    BC04,   8, 
                    Offset (0x326), 
                    BC05,   8, 
                    Offset (0x328), 
                    BC06,   8, 
                    Offset (0x32A), 
                    BC07,   8, 
                    Offset (0x32C), 
                    BC08,   8, 
                    Offset (0x32E), 
                    BC09,   8, 
                    Offset (0x330), 
                    BC0A,   8, 
                    Offset (0x332), 
                    Offset (0x344), 
                    CPFM,   32, 
                    EPFM,   32, 
                    PLUT,   592, 
                    PFMB,   32, 
                    CCDV,   32, 
                    PCFT,   32, 
                    Offset (0x400), 
                    GVD1,   49152, 
                    PHED,   32, 
                    BDDC,   2048
                }

                Name (DBTB, Package (0x15)
                {
                    Zero, 
                    0x07, 
                    0x38, 
                    0x01C0, 
                    0x0E00, 
                    0x3F, 
                    0x01C7, 
                    0x0E07, 
                    0x01F8, 
                    0x0E38, 
                    0x0FC0, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    0x7000, 
                    0x7007, 
                    0x7038, 
                    0x71C0, 
                    0x7E00
                })
                Name (CDCT, Package (0x05)
                {
                    Package (0x02)
                    {
                        0xE4, 
                        0x0140
                    }, 

                    Package (0x02)
                    {
                        0xDE, 
                        0x014D
                    }, 

                    Package (0x02)
                    {
                        0xDE, 
                        0x014D
                    }, 

                    Package (0x02)
                    {
                        Zero, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        0xDE, 
                        0x014D
                    }
                })
                Name (SUCC, One)
                Name (NVLD, 0x02)
                Name (CRIT, 0x04)
                Name (NCRT, 0x06)
                Method (GSCI, 0, Serialized)
                {
                    Method (GBDA, 0, Serialized)
                    {
                        If (LEqual (GESF, Zero))
                        {
                            Store (0x0679, PARM)
                            Store (Zero, GESF)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, One))
                        {
                            Store (0x0240, PARM)
                            Store (Zero, GESF)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x04))
                        {
                            And (PARM, 0xEFFF0000, PARM)
                            And (PARM, ShiftLeft (DerefOf (Index (DBTB, IBTT)), 0x10), PARM)
                            Or (IBTT, PARM, PARM)
                            Store (Zero, GESF)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x05))
                        {
                            Store (IPSC, PARM)
                            Or (PARM, ShiftLeft (IPAT, 0x08), PARM)
                            Add (PARM, 0x0100, PARM)
                            Or (PARM, ShiftLeft (LIDS, 0x10), PARM)
                            Add (PARM, 0x00010000, PARM)
                            Or (PARM, ShiftLeft (IBIA, 0x14), PARM)
                            Store (Zero, GESF)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x06))
                        {
                            Store (ITVF, PARM)
                            Or (PARM, ShiftLeft (ITVM, 0x04), PARM)
                            Store (Zero, GESF)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x07))
                        {
                            Store (GIVD, PARM)
                            XOr (PARM, One, PARM)
                            Or (PARM, ShiftLeft (GMFN, One), PARM)
                            Or (PARM, 0x1800, PARM)
                            Or (PARM, ShiftLeft (IDMS, 0x11), PARM)
                            Or (ShiftLeft (DerefOf (Index (DerefOf (Index (CDCT, HVCO)), CDVL)), 0x15
                                ), PARM, PARM)
                            Store (One, GESF)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x0A))
                        {
                            Store (Zero, PARM)
                            If (ISSC)
                            {
                                Or (PARM, 0x03, PARM)
                            }

                            Store (Zero, GESF)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x0B))
                        {
                            Store (KSV0, PARM)
                            Store (KSV1, GESF)
                            Return (SUCC)
                        }

                        Store (Zero, GESF)
                        Return (CRIT)
                    }

                    Method (SBCB, 0, Serialized)
                    {
                        If (LEqual (GESF, Zero))
                        {
                            Store (Zero, PARM)
                            Store (Zero, GESF)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, One))
                        {
                            Store (Zero, GESF)
                            Store (Zero, PARM)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x03))
                        {
                            Store (Zero, GESF)
                            Store (Zero, PARM)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x04))
                        {
                            Store (Zero, GESF)
                            Store (Zero, PARM)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x05))
                        {
                            Store (Zero, GESF)
                            Store (Zero, PARM)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x06))
                        {
                            Store (And (PARM, 0x0F), ITVF)
                            Store (ShiftRight (And (PARM, 0xF0), 0x04), ITVM)
                            Store (Zero, GESF)
                            Store (Zero, PARM)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x07))
                        {
                            If (LEqual (PARM, Zero))
                            {
                                Store (CLID, Local0)
                                If (And (0x80000000, Local0))
                                {
                                    And (CLID, 0x0F, CLID)
                                    GLID (CLID)
                                }
                            }

                            Store (Zero, GESF)
                            Store (Zero, PARM)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x08))
                        {
                            Store (Zero, GESF)
                            Store (Zero, PARM)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x09))
                        {
                            And (PARM, 0xFF, IBTT)
                            Store (Zero, GESF)
                            Store (Zero, PARM)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x0A))
                        {
                            And (PARM, 0xFF, IPSC)
                            If (And (ShiftRight (PARM, 0x08), 0xFF))
                            {
                                And (ShiftRight (PARM, 0x08), 0xFF, IPAT)
                                Decrement (IPAT)
                            }

                            And (ShiftRight (PARM, 0x14), 0x07, IBIA)
                            Store (Zero, GESF)
                            Store (Zero, PARM)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x0B))
                        {
                            And (ShiftRight (PARM, One), One, IF1E)
                            If (And (PARM, 0x0001E000))
                            {
                                And (ShiftRight (PARM, 0x0D), 0x0F, IDMS)
                            }
                            Else
                            {
                                And (ShiftRight (PARM, 0x11), 0x0F, IDMS)
                            }

                            Store (Zero, GESF)
                            Store (Zero, PARM)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x10))
                        {
                            Store (Zero, GESF)
                            Store (Zero, PARM)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x11))
                        {
                            Store (ShiftLeft (LIDS, 0x08), PARM)
                            Add (PARM, 0x0100, PARM)
                            Store (Zero, GESF)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x12))
                        {
                            If (And (PARM, One))
                            {
                                If (LEqual (ShiftRight (PARM, One), One))
                                {
                                    Store (One, ISSC)
                                }
                                Else
                                {
                                    Store (Zero, GESF)
                                    Return (CRIT)
                                }
                            }
                            Else
                            {
                                Store (Zero, ISSC)
                            }

                            Store (Zero, GESF)
                            Store (Zero, PARM)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x13))
                        {
                            Store (Zero, GESF)
                            Store (Zero, PARM)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x14))
                        {
                            And (PARM, 0x0F, PAVP)
                            Store (Zero, GESF)
                            Store (Zero, PARM)
                            Return (SUCC)
                        }

                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GEFC, 0x04))
                    {
                        Store (GBDA (), GXFC)
                    }

                    If (LEqual (GEFC, 0x06))
                    {
                        Store (SBCB (), GXFC)
                    }

                    Store (Zero, GEFC)
                    Store (One, SCIS)
                    Store (Zero, GSSE)
                    Store (Zero, SCIE)
                    Return (Zero)
                }

                Method (PDRD, 0, NotSerialized)
                {
                    If (LNot (DRDY))
                    {
                        Sleep (ASLP)
                    }

                    Return (LNot (DRDY))
                }

                Method (PSTS, 0, NotSerialized)
                {
                    If (LGreater (CSTS, 0x02))
                    {
                        Sleep (ASLP)
                    }

                    Return (LEqual (CSTS, 0x03))
                }

                Method (GNOT, 2, NotSerialized)
                {
                    If (PDRD ())
                    {
                        Return (One)
                    }

                    Store (Arg0, CEVT)
                    Store (0x03, CSTS)
                    If (LAnd (LEqual (CHPD, Zero), LEqual (Arg1, Zero)))
                    {
                        If (LAnd (LGreater (OSYS, 0x07D0), LLess (OSYS, 0x07D6)))
                        {
                            Notify (PCI0, Arg1)
                        }
                        Else
                        {
                            Notify (GFX0, Arg1)
                        }
                    }

                    Notify (GFX0, 0x80)
                    Return (Zero)
                }

                Method (GHDS, 1, NotSerialized)
                {
                    Store (Arg0, TIDX)
                    Return (GNOT (One, Zero))
                }

                Method (GLID, 1, NotSerialized)
                {
                    Store (Arg0, CLID)
                    Return (GNOT (0x02, Zero))
                }

                Method (GDCK, 1, NotSerialized)
                {
                    Store (Arg0, CDCK)
                    Return (GNOT (0x04, Zero))
                }

                Method (PARD, 0, NotSerialized)
                {
                    If (LNot (ARDY))
                    {
                        Sleep (ASLP)
                    }

                    Return (LNot (ARDY))
                }

                Method (AINT, 2, NotSerialized)
                {
                    If (LNot (And (TCHE, ShiftLeft (One, Arg0))))
                    {
                        Return (One)
                    }

                    If (PARD ())
                    {
                        Return (One)
                    }

                    If (LEqual (Arg0, 0x02))
                    {
                        If (CPFM)
                        {
                            And (CPFM, 0x0F, Local0)
                            And (EPFM, 0x0F, Local1)
                            If (LEqual (Local0, One))
                            {
                                If (And (Local1, 0x06))
                                {
                                    Store (0x06, PFIT)
                                }
                                Else
                                {
                                    If (And (Local1, 0x08))
                                    {
                                        Store (0x08, PFIT)
                                    }
                                    Else
                                    {
                                        Store (One, PFIT)
                                    }
                                }
                            }

                            If (LEqual (Local0, 0x06))
                            {
                                If (And (Local1, 0x08))
                                {
                                    Store (0x08, PFIT)
                                }
                                Else
                                {
                                    If (And (Local1, One))
                                    {
                                        Store (One, PFIT)
                                    }
                                    Else
                                    {
                                        Store (0x06, PFIT)
                                    }
                                }
                            }

                            If (LEqual (Local0, 0x08))
                            {
                                If (And (Local1, One))
                                {
                                    Store (One, PFIT)
                                }
                                Else
                                {
                                    If (And (Local1, 0x06))
                                    {
                                        Store (0x06, PFIT)
                                    }
                                    Else
                                    {
                                        Store (0x08, PFIT)
                                    }
                                }
                            }
                        }
                        Else
                        {
                            XOr (PFIT, 0x07, PFIT)
                        }

                        Or (PFIT, 0x80000000, PFIT)
                        Store (0x04, ASLC)
                    }
                    Else
                    {
                        If (LEqual (Arg0, One))
                        {
                            Store (Divide (Multiply (Arg1, 0xFF), 0x64, ), BCLP)
                            Or (BCLP, 0x80000000, BCLP)
                            Store (0x02, ASLC)
                        }
                        Else
                        {
                            If (LEqual (Arg0, Zero))
                            {
                                Store (Arg1, ALSI)
                                Store (One, ASLC)
                            }
                            Else
                            {
                                Return (One)
                            }
                        }
                    }

                    Store (Zero, LBPC)
                    Return (Zero)
                }

                Method (SCIP, 0, NotSerialized)
                {
                    If (LNotEqual (OVER, Zero))
                    {
                        Return (LNot (GSMI))
                    }

                    Return (Zero)
                }
            }

            Device (P0P1)
            {
                Name (_ADR, 0x001E0000)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x0B, 
                    0x04
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR01)
                    }

                    Return (PR01)
                }
            }

            Device (LPCB)
            {
                Name (_ADR, 0x001F0000)  // _ADR: Address
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    Store (Package (0x08)
                        {
                            "device-id", 
                            Buffer (0x04)
                            {
                                 0x16, 0x29, 0x00, 0x00                         
                            }, 

                            "compatible", 
                            Buffer (0x0D)
                            {
                                "pci8086,2916"
                            }, 

                            "IOName", 
                            Buffer (0x0D)
                            {
                                "pci8086,2916"
                            }, 

                            "name", 
                            Buffer (0x0D)
                            {
                                "pci8086,2916"
                            }
                        }, Local0)
                    DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                    Return (Local0)
                }

                Scope (\_SB)
                {
                    Device (DBTN)
                    {
                        Name (_HID, EisaId ("PNP0C32"))  // _HID: Hardware ID
                        Name (_UID, One)  // _UID: Unique ID
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            If (LGreaterEqual (OSYS, 0x07D6))
                            {
                                Return (0x0F)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Method (GHID, 0, NotSerialized)
                        {
                            Return (Buffer (One)
                            {
                                 0x01                                           
                            })
                        }
                    }

                    Device (TPM)
                    {
                        Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
                        {
                            Return (0x310CD041)
                        }

                        Name (_CID, EisaId ("PNP0C31"))  // _CID: Compatible ID
                        Name (_UID, One)  // _UID: Unique ID
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (Zero)
                        }

                        Name (BUF1, ResourceTemplate ()
                        {
                            Memory32Fixed (ReadWrite,
                                0xFED40000,         // Address Base
                                0x00005000,         // Address Length
                                )
                        })
                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Return (BUF1)
                        }
                    }

                    Scope (\_SB)
                    {
                        OperationRegion (TCG1, SystemMemory, 0xBDF9EDB5, 0x07)
                        Field (TCG1, AnyAcc, NoLock, Preserve)
                        {
                            SSS1,   8, 
                            SSS2,   8, 
                            SSS3,   8, 
                            SSS4,   8, 
                            SSS5,   8, 
                            TPMV,   8, 
                            MOR,    8
                        }

                        Name (TCGP, Buffer (0x08)
                        {
                             0x1F, 0xE0, 0x1F, 0x01, 0x02, 0x04, 0x08, 0xF0 
                        })
                        CreateByteField (TCGP, Zero, PPRQ)
                        CreateByteField (TCGP, One, PPL1)
                        CreateByteField (TCGP, 0x02, PPRP)
                        CreateByteField (TCGP, 0x03, TPRS)
                        CreateByteField (TCGP, 0x04, PPOR)
                        CreateByteField (TCGP, 0x06, TMOR)
                        OperationRegion (TCGC, SystemIO, 0x72, 0x02)
                        Field (TCGC, ByteAcc, Lock, Preserve)
                        {
                            TIDX,   8, 
                            TPDA,   8
                        }

                        IndexField (TIDX, TPDA, ByteAcc, Lock, Preserve)
                        {
                            Offset (0x70), 
                            TPP1,   8, 
                            PPLO,   8, 
                            TPP3,   8
                        }

                        Method (PHSR, 1, Serialized)
                        {
                            Store (Arg0, BCMD)
                            Store (Zero, DID)
                            Store (Zero, SMIC)
                            If (LEqual (BCMD, Arg0)) {}
                            Store (Zero, BCMD)
                            Store (Zero, DID)
                            Return (Zero)
                        }

                        OperationRegion (SMI0, SystemIO, 0xFE00, 0x02)
                        Field (SMI0, AnyAcc, NoLock, Preserve)
                        {
                            SMIC,   8
                        }

                        OperationRegion (SMI1, SystemMemory, 0xBDF9EEBD, 0x90)
                        Field (SMI1, AnyAcc, NoLock, Preserve)
                        {
                            BCMD,   8, 
                            DID,    32, 
                            INFO,   1024
                        }

                        Field (SMI1, AnyAcc, NoLock, Preserve)
                        {
                            AccessAs (ByteAcc, 0x00), 
                            Offset (0x05), 
                            INF,    8
                        }
                    }

                    OperationRegion (PCI0.LPCB.LPC1, PCI_Config, 0x40, 0xC0)
                    Field (PCI0.LPCB.LPC1, AnyAcc, NoLock, Preserve)
                    {
                        Offset (0x20), 
                        PARC,   8, 
                        PBRC,   8, 
                        PCRC,   8, 
                        PDRC,   8, 
                        Offset (0x28), 
                        PERC,   8, 
                        PFRC,   8, 
                        PGRC,   8, 
                        PHRC,   8
                    }

                    Device (LNKA)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, One)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Store (0x80, PARC)
                        }

                        Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {1,3,4,5,6,7,10,12,14,15}
                        })
                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLA, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLA, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PARC, 0x0F), IRQ0)
                            Return (RTLA)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PARC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PARC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKB)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x02)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Store (0x80, PBRC)
                        }

                        Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {1,3,4,5,6,7,11,12,14,15}
                        })
                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLB, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLB, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PBRC, 0x0F), IRQ0)
                            Return (RTLB)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PBRC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PBRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKC)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x03)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Store (0x80, PCRC)
                        }

                        Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {1,3,4,5,6,7,10,12,14,15}
                        })
                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLC, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLC, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PCRC, 0x0F), IRQ0)
                            Return (RTLC)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PCRC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PCRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKD)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x04)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Store (0x80, PDRC)
                        }

                        Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {1,3,4,5,6,7,11,12,14,15}
                        })
                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLD, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLD, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PDRC, 0x0F), IRQ0)
                            Return (RTLD)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PDRC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PDRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKE)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x05)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Store (0x80, PERC)
                        }

                        Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {1,3,4,5,6,7,10,12,14,15}
                        })
                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLE, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLE, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PERC, 0x0F), IRQ0)
                            Return (RTLE)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PERC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PERC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKF)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x06)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Store (0x80, PFRC)
                        }

                        Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {1,3,4,5,6,7,11,12,14,15}
                        })
                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLF, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLF, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PFRC, 0x0F), IRQ0)
                            Return (RTLF)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PFRC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PFRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKG)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x07)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Store (0x80, PGRC)
                        }

                        Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {1,3,4,5,6,7,10,12,14,15}
                        })
                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLG, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLG, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PGRC, 0x0F), IRQ0)
                            Return (RTLG)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PGRC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PGRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKH)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x08)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Store (0x80, PHRC)
                        }

                        Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {1,3,4,5,6,7,11,12,14,15}
                        })
                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLH, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLH, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PHRC, 0x0F), IRQ0)
                            Return (RTLH)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PHRC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PHRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }
                }

                OperationRegion (LPC0, PCI_Config, 0x40, 0xC0)
                Field (LPC0, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x40), 
                    IOD0,   8, 
                    IOD1,   8, 
                    Offset (0xB0), 
                    RAEN,   1, 
                        ,   13, 
                    RCBA,   18
                }

                Device (DMAC)
                {
                    Name (_HID, EisaId ("PNP0200"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0x0081,             // Range Minimum
                            0x0081,             // Range Maximum
                            0x01,               // Alignment
                            0x11,               // Length
                            )
                        IO (Decode16,
                            0x0093,             // Range Minimum
                            0x0093,             // Range Maximum
                            0x01,               // Alignment
                            0x0D,               // Length
                            )
                        IO (Decode16,
                            0x00C0,             // Range Minimum
                            0x00C0,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        DMA (Compatibility, NotBusMaster, Transfer8_16, )
                            {4}
                    })
                }

                Device (FWHD)
                {
                    Name (_HID, EisaId ("INT0800"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        Memory32Fixed (ReadOnly,
                            0xFF000000,         // Address Base
                            0x01000000,         // Address Length
                            )
                    })
                }

                Device (HPET)
                {
                    Name (_HID, EisaId ("PNP0103"))  // _HID: Hardware ID
                    Name (ATT3, ResourceTemplate ()
                    {
                        IRQNoFlags ()
                            {0}
                        IRQNoFlags ()
                            {8}
                        Memory32Fixed (ReadWrite,
                            0xFED00000,         // Address Base
                            0x00000400,         // Address Length
                            )
                    })
                    Name (ATT4, ResourceTemplate ()
                    {
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Return (ATT3)
                    }
                }

                Device (IPIC)
                {
                    Name (_HID, EisaId ("PNP0000"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0020,             // Range Minimum
                            0x0020,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0024,             // Range Minimum
                            0x0024,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0028,             // Range Minimum
                            0x0028,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x002C,             // Range Minimum
                            0x002C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0030,             // Range Minimum
                            0x0030,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0034,             // Range Minimum
                            0x0034,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0038,             // Range Minimum
                            0x0038,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x003C,             // Range Minimum
                            0x003C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A4,             // Range Minimum
                            0x00A4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A8,             // Range Minimum
                            0x00A8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00AC,             // Range Minimum
                            0x00AC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B0,             // Range Minimum
                            0x00B0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B4,             // Range Minimum
                            0x00B4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B8,             // Range Minimum
                            0x00B8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00BC,             // Range Minimum
                            0x00BC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {2}
                    })
                }

                Device (MATH)
                {
                    Name (_HID, EisaId ("PNP0C04"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x00F0,             // Range Minimum
                            0x00F0,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {13}
                    })
                }

                Device (LDRC)
                {
                    Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                    Name (_UID, 0x02)  // _UID: Unique ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x002E,             // Range Minimum
                            0x002E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x004E,             // Range Minimum
                            0x004E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0063,             // Range Minimum
                            0x0063,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0065,             // Range Minimum
                            0x0065,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0067,             // Range Minimum
                            0x0067,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0092,             // Range Minimum
                            0x0092,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00B2,             // Range Minimum
                            0x00B2,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0400,             // Range Minimum
                            0x0400,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x0680,             // Range Minimum
                            0x0680,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0x0480,             // Range Minimum
                            0x0480,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0xFFFF,             // Range Minimum
                            0xFFFF,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0xFFFF,             // Range Minimum
                            0xFFFF,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x1180,             // Range Minimum
                            0x1180,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0xFE00,             // Range Minimum
                            0xFE00,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0068,             // Range Minimum
                            0x0068,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x006C,             // Range Minimum
                            0x006C,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0700,             // Range Minimum
                            0x0700,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                    })
                }

                Device (CDRC)
                {
                    Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                    Name (_UID, 0x03)  // _UID: Unique ID
                    Name (BUF0, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x06B0,             // Range Minimum
                            0x06B0,             // Range Maximum
                            0x01,               // Alignment
                            0x40,               // Length
                            )
                    })
                    Name (BUF1, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x06B0,             // Range Minimum
                            0x06B0,             // Range Maximum
                            0x01,               // Alignment
                            0x50,               // Length
                            )
                    })
                    Name (BUF2, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x06A0,             // Range Minimum
                            0x06A0,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x06B0,             // Range Minimum
                            0x06B0,             // Range Maximum
                            0x01,               // Alignment
                            0x40,               // Length
                            )
                    })
                    Name (BUF3, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x06A0,             // Range Minimum
                            0x06A0,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x06B0,             // Range Minimum
                            0x06B0,             // Range Maximum
                            0x01,               // Alignment
                            0x50,               // Length
                            )
                    })
                }

                Device (RTC)
                {
                    Name (_HID, EisaId ("PNP0B00"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                    })
                }

                Device (TIMR)
                {
                    Name (_HID, EisaId ("PNP0100"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                        IO (Decode16,
                            0x0050,             // Range Minimum
                            0x0050,             // Range Maximum
                            0x10,               // Alignment
                            0x04,               // Length
                            )
                    })
                }

                Device (PS2K)
                {
                    Name (_HID, EisaId ("PNP0303"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {1}
                    })
                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            FixedIO (
                                0x0060,             // Address
                                0x01,               // Length
                                )
                            FixedIO (
                                0x0064,             // Address
                                0x01,               // Length
                                )
                            IRQNoFlags ()
                                {1}
                        }
                        EndDependentFn ()
                    })
                }

                Device (PS2M)
                {
                    Name (_HID, EisaId ("PNP0F13"))  // _HID: Hardware ID
                    Name (_CID, Package (0x03)  // _CID: Compatible ID
                    {
                        EisaId ("SYN1000"), 
                        EisaId ("SYN0002"), 
                        EisaId ("PNP0F13")
                    })
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {12}
                    })
                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            IRQNoFlags ()
                                {12}
                        }
                        EndDependentFn ()
                    })
                    Method (MHID, 0, NotSerialized)
                    {
                        If (GI19)
                        {
                            Store (0x2A102E4F, _HID)
                        }
                        Else
                        {
                            If (LAnd (LNot (GI37), LNot (GI36)))
                            {
                                Store (0x22102E4F, _HID)
                            }

                            If (LAnd (LNot (GI37), GI36))
                            {
                                Store (0x22102E4F, _HID)
                            }

                            If (LAnd (GI37, LNot (GI36)))
                            {
                                Store (0x23102E4F, _HID)
                            }

                            If (LAnd (GI37, GI36))
                            {
                                Store (0x23102E4F, _HID)
                            }
                        }
                    }
                }
            }

            Device (USB0)
            {
                Name (_ADR, 0x001D0000)  // _ADR: Address
                OperationRegion (U1CS, PCI_Config, 0xC4, 0x04)
                Field (U1CS, DWordAcc, NoLock, Preserve)
                {
                    U1EN,   2
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        Store (0x03, U1EN)
                    }
                    Else
                    {
                        Store (Zero, U1EN)
                    }
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    Return (0x02)
                }

                Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
                {
                    Return (0x02)
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x03, 
                    0x03
                })
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    Store (Package (0x0F)
                        {
                            "device-id", 
                            Buffer (0x04)
                            {
                                 0x34, 0x3A, 0x00, 0x00                         
                            }, 

                            "AAPL,clock-id", 
                            Buffer (One)
                            {
                                 0x0A                                           
                            }, 

                            "built-in", 
                            Buffer (One)
                            {
                                 0x00                                           
                            }, 

                            "device_type", 
                            Buffer (0x05)
                            {
                                "EHCI"
                            }, 

                            "AAPL,current-available", 
                            0x04B0, 
                            "AAPL,current-extra", 
                            0x02BC, 
                            "AAPL,current-in-sleep", 
                            0x03E8, 
                            Buffer (One)
                            {
                                 0x00                                           
                            }
                        }, Local0)
                    DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                    Return (Local0)
                }
            }

            Device (USB1)
            {
                Name (_ADR, 0x001D0001)  // _ADR: Address
                OperationRegion (U1CS, PCI_Config, 0xC4, 0x04)
                Field (U1CS, DWordAcc, NoLock, Preserve)
                {
                    U1EN,   2
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        Store (0x03, U1EN)
                    }
                    Else
                    {
                        Store (Zero, U1EN)
                    }
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    Return (0x02)
                }

                Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
                {
                    Return (0x02)
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x04, 
                    0x03
                })
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    Store (Package (0x0F)
                        {
                            "device-id", 
                            Buffer (0x04)
                            {
                                 0x35, 0x3A, 0x00, 0x00                         
                            }, 

                            "AAPL,clock-id", 
                            Buffer (One)
                            {
                                 0x0A                                           
                            }, 

                            "built-in", 
                            Buffer (One)
                            {
                                 0x00                                           
                            }, 

                            "device_type", 
                            Buffer (0x05)
                            {
                                "EHCI"
                            }, 

                            "AAPL,current-available", 
                            0x04B0, 
                            "AAPL,current-extra", 
                            0x02BC, 
                            "AAPL,current-in-sleep", 
                            0x03E8, 
                            Buffer (One)
                            {
                                 0x00                                           
                            }
                        }, Local0)
                    DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                    Return (Local0)
                }
            }

            Device (USB2)
            {
                Name (_ADR, 0x001D0002)  // _ADR: Address
                OperationRegion (U1CS, PCI_Config, 0xC4, 0x04)
                Field (U1CS, DWordAcc, NoLock, Preserve)
                {
                    U1EN,   2
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        Store (0x03, U1EN)
                    }
                    Else
                    {
                        Store (Zero, U1EN)
                    }
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    Return (0x02)
                }

                Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
                {
                    Return (0x02)
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x0C, 
                    One
                })
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    Store (Package (0x0F)
                        {
                            "device-id", 
                            Buffer (0x04)
                            {
                                 0x36, 0x3A, 0x00, 0x00                         
                            }, 

                            "AAPL,clock-id", 
                            Buffer (One)
                            {
                                 0x0A                                           
                            }, 

                            "built-in", 
                            Buffer (One)
                            {
                                 0x00                                           
                            }, 

                            "device_type", 
                            Buffer (0x05)
                            {
                                "EHCI"
                            }, 

                            "AAPL,current-available", 
                            0x04B0, 
                            "AAPL,current-extra", 
                            0x02BC, 
                            "AAPL,current-in-sleep", 
                            0x03E8, 
                            Buffer (One)
                            {
                                 0x00                                           
                            }
                        }, Local0)
                    DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                    Return (Local0)
                }
            }

            Device (EHCO)
            {
                OperationRegion (EOWN, PCI_Config, 0x68, 0x04)
                Field (EOWN, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x02), 
                    HCBO,   1, 
                    Offset (0x03), 
                    HCOO,   1
                }

                Name (_ADR, 0x001D0007)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x0D, 
                    One
                })
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    Store (Package (0x0F)
                        {
                            "device-id", 
                            Buffer (0x04)
                            {
                                 0x3A, 0x3A, 0x00, 0x00                         
                            }, 

                            "AAPL,clock-id", 
                            Buffer (One)
                            {
                                 0x0A                                           
                            }, 

                            "built-in", 
                            Buffer (One)
                            {
                                 0x00                                           
                            }, 

                            "device_type", 
                            Buffer (0x05)
                            {
                                "EHCI"
                            }, 

                            "AAPL,current-available", 
                            0x04B0, 
                            "AAPL,current-extra", 
                            0x02BC, 
                            "AAPL,current-in-sleep", 
                            0x03E8, 
                            Buffer (One)
                            {
                                 0x00                                           
                            }
                        }, Local0)
                    DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                    Return (Local0)
                }

                Device (HUB0)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Device (WEBC)
                    {
                        Name (_ADR, 0x03)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                    }
                }
            }

            Device (USBR)
            {
                Name (_ADR, 0x001D0003)  // _ADR: Address
                OperationRegion (U1CS, PCI_Config, 0xC4, 0x04)
                Field (U1CS, DWordAcc, NoLock, Preserve)
                {
                    U1EN,   2
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    Return (0x02)
                }

                Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
                {
                    Return (0x02)
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x20, 
                    0x03
                })
            }

            Device (USB3)
            {
                Name (_ADR, 0x001A0000)  // _ADR: Address
                OperationRegion (U1CS, PCI_Config, 0xC4, 0x04)
                Field (U1CS, DWordAcc, NoLock, Preserve)
                {
                    U1EN,   2
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        Store (0x03, U1EN)
                    }
                    Else
                    {
                        Store (Zero, U1EN)
                    }
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    Return (0x02)
                }

                Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
                {
                    Return (0x02)
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x0E, 
                    0x03
                })
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    Store (Package (0x0F)
                        {
                            "device-id", 
                            Buffer (0x04)
                            {
                                 0x37, 0x3A, 0x00, 0x00                         
                            }, 

                            "AAPL,clock-id", 
                            Buffer (One)
                            {
                                 0x0A                                           
                            }, 

                            "built-in", 
                            Buffer (One)
                            {
                                 0x00                                           
                            }, 

                            "device_type", 
                            Buffer (0x05)
                            {
                                "EHCI"
                            }, 

                            "AAPL,current-available", 
                            0x04B0, 
                            "AAPL,current-extra", 
                            0x02BC, 
                            "AAPL,current-in-sleep", 
                            0x03E8, 
                            Buffer (One)
                            {
                                 0x00                                           
                            }
                        }, Local0)
                    DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                    Return (Local0)
                }
            }

            Device (USB4)
            {
                Name (_ADR, 0x001A0001)  // _ADR: Address
                OperationRegion (U1CS, PCI_Config, 0xC4, 0x04)
                Field (U1CS, DWordAcc, NoLock, Preserve)
                {
                    U1EN,   2
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        Store (0x03, U1EN)
                    }
                    Else
                    {
                        Store (Zero, U1EN)
                    }
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    Return (0x02)
                }

                Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
                {
                    Return (0x02)
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x05, 
                    0x03
                })
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    Store (Package (0x0F)
                        {
                            "device-id", 
                            Buffer (0x04)
                            {
                                 0x38, 0x3A, 0x00, 0x00                         
                            }, 

                            "AAPL,clock-id", 
                            Buffer (One)
                            {
                                 0x0A                                           
                            }, 

                            "built-in", 
                            Buffer (One)
                            {
                                 0x00                                           
                            }, 

                            "device_type", 
                            Buffer (0x05)
                            {
                                "EHCI"
                            }, 

                            "AAPL,current-available", 
                            0x04B0, 
                            "AAPL,current-extra", 
                            0x02BC, 
                            "AAPL,current-in-sleep", 
                            0x03E8, 
                            Buffer (One)
                            {
                                 0x00                                           
                            }
                        }, Local0)
                    DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                    Return (Local0)
                }
            }

            Device (USB5)
            {
                Name (_ADR, 0x001A0002)  // _ADR: Address
                OperationRegion (U1CS, PCI_Config, 0xC4, 0x04)
                Field (U1CS, DWordAcc, NoLock, Preserve)
                {
                    U1EN,   2
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    Return (0x02)
                }

                Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
                {
                    Return (0x02)
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x20, 
                    0x03
                })
                Device (HUB0)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Device (UWAN)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                    }

                    Device (ULAN)
                    {
                        Name (_ADR, 0x02)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                    }
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    Store (Package (0x0F)
                        {
                            "device-id", 
                            Buffer (0x04)
                            {
                                 0x39, 0x3A, 0x00, 0x00                         
                            }, 

                            "AAPL,clock-id", 
                            Buffer (One)
                            {
                                 0x0A                                           
                            }, 

                            "built-in", 
                            Buffer (One)
                            {
                                 0x00                                           
                            }, 

                            "device_type", 
                            Buffer (0x05)
                            {
                                "EHCI"
                            }, 

                            "AAPL,current-available", 
                            0x04B0, 
                            "AAPL,current-extra", 
                            0x02BC, 
                            "AAPL,current-in-sleep", 
                            0x03E8, 
                            Buffer (One)
                            {
                                 0x00                                           
                            }
                        }, Local0)
                    DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                    Return (Local0)
                }
            }

            Device (EHCT)
            {
                OperationRegion (EOWN, PCI_Config, 0x68, 0x04)
                Field (EOWN, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x02), 
                    HCBO,   1, 
                    Offset (0x03), 
                    HCOO,   1
                }

                Name (_ADR, 0x001A0007)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x0D, 
                    0x03
                })
                Device (HUB0)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Device (EWAN)
                    {
                        Name (_ADR, 0x05)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                    }

                    Device (ELAN)
                    {
                        Name (_ADR, 0x06)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                    }
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    Store (Package (0x0F)
                        {
                            "device-id", 
                            Buffer (0x04)
                            {
                                 0x3C, 0x3A, 0x00, 0x00                         
                            }, 

                            "AAPL,clock-id", 
                            Buffer (One)
                            {
                                 0x0A                                           
                            }, 

                            "built-in", 
                            Buffer (One)
                            {
                                 0x00                                           
                            }, 

                            "device_type", 
                            Buffer (0x05)
                            {
                                "EHCI"
                            }, 

                            "AAPL,current-available", 
                            0x04B0, 
                            "AAPL,current-extra", 
                            0x02BC, 
                            "AAPL,current-in-sleep", 
                            0x03E8, 
                            Buffer (One)
                            {
                                 0x00                                           
                            }
                        }, Local0)
                    DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                    Return (Local0)
                }
            }

            Device (HDEF)
            {
                Name (_ADR, 0x001B0000)  // _ADR: Address
                OperationRegion (HDAR, PCI_Config, 0x4C, 0x10)
                Field (HDAR, WordAcc, NoLock, Preserve)
                {
                    DCKA,   1, 
                    Offset (0x01), 
                    DCKM,   1, 
                        ,   6, 
                    DCKS,   1, 
                    Offset (0x08), 
                        ,   15, 
                    PMES,   1
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    Store (Package (0x0A)
                        {
                            "codec-id", 
                            Buffer (0x04)
                            {
                                 0x69, 0x02, 0xEC, 0x10                         
                            }, 

                            "layout-id", 
                            Buffer (0x04)
                            {
                                 0x56                                           
                            }, 

                            "device-type", 
                            Buffer (0x24)
                            {
                                "Realtek ALC269 @ Intel 82801IB ICH9"
                            }, 

                            "hda-gfx", 
                            Buffer (0x0A)
                            {
                                "onboard-1"
                            }, 

                            "PinConfigurations", 
                            Buffer (Zero) {}
                        }, Local0)
                    DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                    Return (Local0)
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x0D, 
                    0x02
                })
            }

            Device (RP01)
            {
                Name (_ADR, 0x001C0000)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x9C), 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x04
                    })
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x04
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR04)
                    }

                    Return (PR04)
                }
            }

            Device (RP02)
            {
                Name (_ADR, 0x001C0001)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x9C), 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x04
                    })
                }

                Name (PDSS, Zero)
                Name (PXSX._RMV, One)  // _RMV: Removal Status
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x04
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR05)
                    }

                    Return (PR05)
                }
            }

            Device (RP03)
            {
                Name (_ADR, 0x001C0002)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x9C), 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x04
                    })
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x04
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR06)
                    }

                    Return (PR06)
                }
            }

            Device (RP04)
            {
                Name (_ADR, 0x001C0003)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x9C), 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x04
                    })
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x04
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR07)
                    }

                    Return (PR07)
                }
            }

            Device (RP05)
            {
                Name (_ADR, 0x001C0004)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x9C), 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Device (FRWR)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_GPE, 0x1A)  // _GPE: General Purpose Events
                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        Store (Package (0x04)
                            {
                                "fwhub", 
                                Buffer (0x04)
                                {
                                     0x00, 0x00, 0x00, 0x00                         
                                }
                            }, Local0)
                        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                        Return (Local0)
                    }
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x04
                    })
                }

                Device (J380)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    OperationRegion (PCFG, PCI_Config, Zero, 0xFF)
                    Field (PCFG, ByteAcc, NoLock, Preserve)
                    {
                        DVID,   32, 
                        Offset (0x2C), 
                        SSID,   32, 
                        Offset (0xAC), 
                            ,   1, 
                            ,   1, 
                            ,   1, 
                            ,   1, 
                            ,   1, 
                            ,   1, 
                        D3EF,   1, 
                        Offset (0xAD), 
                        Offset (0xB2), 
                        LAT0,   8, 
                        Offset (0xCF), 
                        ATRB,   8, 
                        Offset (0xD3), 
                        PMC0,   8
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (LNotEqual (DVID, 0xFFFFFFFF))
                        {
                            Return (0x0A)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        If (LOr (_OSI ("Darwin"), _OSI ("Windows 2009")))
                        {
                            Return (Zero)
                        }
                        Else
                        {
                            Return (One)
                        }
                    }
                }

                Device (J381)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        If (LOr (_OSI ("Darwin"), _OSI ("Windows 2009")))
                        {
                            Return (Zero)
                        }
                        Else
                        {
                            Return (One)
                        }
                    }
                }

                Device (J382)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        If (LOr (_OSI ("Darwin"), _OSI ("Windows 2009")))
                        {
                            Return (Zero)
                        }
                        Else
                        {
                            Return (One)
                        }
                    }
                }

                Device (J383)
                {
                    Name (_ADR, 0x03)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        If (LOr (_OSI ("Darwin"), _OSI ("Windows 2009")))
                        {
                            Return (Zero)
                        }
                        Else
                        {
                            Return (One)
                        }
                    }
                }

                Device (J384)
                {
                    Name (_ADR, 0x04)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        If (LOr (_OSI ("Darwin"), _OSI ("Windows 2009")))
                        {
                            Return (Zero)
                        }
                        Else
                        {
                            Return (One)
                        }
                    }
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x04
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR08)
                    }

                    Return (PR08)
                }
            }

            Device (RP06)
            {
                Name (_ADR, 0x001C0005)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x9C), 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        Store (Package (0x06)
                            {
                                "device_type", 
                                Buffer (0x14)
                                {
                                    "Ethernet Controller"
                                }, 

                                "model", 
                                Buffer (0x2B)
                                {
                                    "Broadcom NetLink BCM5784M Gigabit Ethernet"
                                }, 

                                "built-in", 
                                Buffer (One)
                                {
                                     0x00                                           
                                }
                            }, Local0)
                        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                        Return (Local0)
                    }

                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x04
                    })
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x04
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR05)
                    }

                    Return (PR05)
                }
            }

            Device (MCHC)
            {
                Name (_ADR, Zero)  // _ADR: Address
            }
        }
    }

    Scope (_PR)
    {
        Processor (CPU0, 0x00, 0x00000410, 0x06) {}
        Processor (CPU1, 0x01, 0x00000410, 0x06) {}
        Processor (CPU2, 0x02, 0x00000410, 0x06) {}
        Processor (CPU3, 0x03, 0x00000410, 0x06) {}
    }

    Scope (_TZ)
    {
        Name (T10S, 0x64)
        Name (T85S, 0x55)
        Name (T15S, 0x67)
        Name (T90S, 0x55)
        Name (T10C, 0x64)
        Name (T85C, 0x55)
        Name (T15C, 0x69)
        Name (T90C, 0x5A)
        ThermalZone (TZ00)
        {
            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                If (\_SB.FL16)
                {
                    If (\_SB.FL13)
                    {
                        Return (Add (0x0AAC, Multiply (T90C, 0x0A)))
                    }
                    Else
                    {
                        Return (Add (0x0AAC, Multiply (T15C, 0x0A)))
                    }
                }
                Else
                {
                    If (\_SB.FL13)
                    {
                        Return (Add (0x0AAC, Multiply (T85C, 0x0A)))
                    }
                    Else
                    {
                        Return (Add (0x0AAC, Multiply (T10C, 0x0A)))
                    }
                }
            }

            Method (_SCP, 1, Serialized)  // _SCP: Set Cooling Policy
            {
                Store (Arg0, CTYP)
            }

            Mutex (MUTT, 0x00)
            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If (ECON)
                {
                    Acquire (MUTT, 0xFFFF)
                    If (Zero)
                    {
                        If (LGreaterEqual (DTS1, DTS2))
                        {
                            Store (DTS1, Local0)
                        }
                        Else
                        {
                            Store (DTS2, Local0)
                        }

                        If (Or (LLess (Local0, 0x28), LGreater (Local0, 0x73)))
                        {
                            Store (0x28, Local0)
                        }

                        Store (Local0, \_SB.PCI0.LPCB.EC0.RG5A)
                    }
                    Else
                    {
                        Store (\_SB.PCI0.LPCB.EC0.RTMP, Local0)
                        If (Or (LLess (Local0, 0x23), LGreater (Local0, 0x73)))
                        {
                            Store (0x23, Local0)
                        }
                    }

                    Store ("Current temp is: ", Debug)
                    Store (Local0, Debug)
                    Release (MUTT)
                    Return (Add (0x0AAC, Multiply (Local0, 0x0A)))
                }
                Else
                {
                    Store ("Get EC Temp failed!!", Debug)
                    Return (0x0BB8)
                }
            }

            Method (_PSL, 0, Serialized)  // _PSL: Passive List
            {
                If (MPEN)
                {
                    Return (Package (0x02)
                    {
                        \_PR.CPU0, 
                        \_PR.CPU1
                    })
                }

                Return (Package (0x01)
                {
                    \_PR.CPU0
                })
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                If (\_SB.FL16)
                {
                    If (\_SB.FL13)
                    {
                        Return (Add (0x0AAC, Multiply (T90S, 0x0A)))
                    }
                    Else
                    {
                        Return (Add (0x0AAC, Multiply (T15S, 0x0A)))
                    }
                }
                Else
                {
                    If (\_SB.FL13)
                    {
                        Return (Add (0x0AAC, Multiply (T85S, 0x0A)))
                    }
                    Else
                    {
                        Return (Add (0x0AAC, Multiply (T10S, 0x0A)))
                    }
                }
            }

            Method (_TC1, 0, Serialized)  // _TC1: Thermal Constant 1
            {
                Return (0x02)
            }

            Method (_TC2, 0, Serialized)  // _TC2: Thermal Constant 2
            {
                Return (0x03)
            }

            Method (_TSP, 0, Serialized)  // _TSP: Thermal Sampling Period
            {
                Return (0x64)
            }
        }
    }

    Scope (_SB)
    {
        OperationRegion (EXCO, SystemIO, 0x72, 0x02)
        Field (EXCO, ByteAcc, NoLock, Preserve)
        {
            INDX,   8, 
            DATA,   8
        }

        IndexField (INDX, DATA, ByteAcc, NoLock, Preserve)
        {
            Offset (0x80), 
                ,   1, 
                ,   1, 
                ,   2, 
            BRNS,   4, 
            Offset (0xA0), 
            DISD,   3, 
            OVRL,   1, 
            DCKS,   1, 
            ACST,   1, 
            FL06,   1, 
            FL07,   1, 
            FL10,   1, 
            FL11,   1, 
            FL12,   1, 
            FL13,   1, 
            FL14,   1, 
            FL15,   1, 
            FL16,   1, 
            FL17,   1, 
            FL20,   2, 
            FL21,   2, 
            FL22,   2, 
            FL23,   2, 
            CM23,   8, 
            CM24,   8, 
            CM25,   8, 
            Offset (0xD5), 
            PLID,   8, 
            Offset (0xEE), 
            INS4,   1, 
            Offset (0xEF), 
            S4CT,   8, 
            Offset (0xF2), 
                ,   2, 
            AVCT,   1, 
            Offset (0xF5), 
                ,   4, 
            OK3G,   1, 
            Offset (0xFC), 
                ,   1, 
            S5SB,   1, 
            APFG,   1, 
            Offset (0xFF), 
            CMSB,   8
        }
    }

    Mutex (MUTX, 0x00)
    OperationRegion (PRT0, SystemIO, 0x80, 0x04)
    Field (PRT0, DWordAcc, Lock, Preserve)
    {
        P8H0,   8, 
        P8H1,   8, 
        P8H2,   8, 
        P8H3,   8
    }

    Method (P8XH, 2, Serialized)
    {
        If (LEqual (Arg0, Zero))
        {
            Store (Arg1, P8D0)
        }

        If (LEqual (Arg0, One))
        {
            Store (Arg1, P8D1)
        }

        If (LEqual (Arg0, 0x02))
        {
            Store (Arg1, P8D2)
        }

        If (LEqual (Arg0, 0x03))
        {
            Store (Arg1, P8D3)
        }

        Store (P8D0, P8H0)
        Store (P8D1, P8H1)
        Store (P8D2, P8H2)
        Store (P8D3, P8H3)
    }

    OperationRegion (SPRT, SystemIO, 0xB2, 0x02)
    Field (SPRT, ByteAcc, Lock, Preserve)
    {
        SSMP,   8
    }

    Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        Store (Arg0, GPIC)
        Store (Arg0, PICM)
    }

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        If (LNotEqual (Arg0, 0x05))
        {
            Store (Zero, P8D0)
            Store (Zero, P8D1)
            Store (Zero, P8D2)
            Store (Zero, P8D3)
            P8XH (Zero, Arg0)
            If (LEqual (Arg0, 0x03))
            {
                If (LAnd (DTSE, MPEN))
                {
                    TRAP (TRTD, 0x1E)
                }

                Store (One, G8WS)
                Store (One, G8WE)
            }

            If (LEqual (Arg0, 0x04))
            {
                Store (One, \_SB.PCI0.LPCB.EC0.PFLG)
                Store (One, \_SB.INS4)
            }

            If (LOr (LEqual (Arg0, 0x03), LEqual (Arg0, 0x04)))
            {
                Store (Zero, \_SB.S5SB)
            }

            Store (Zero, \_SB.PCI0.LPCB.EC0.FVIS)
            Store (\_SB.PCI0.RP02.PDSX, \_SB.PCI0.RP02.PDSS)
            \_SB.PHSR (0x81)
        }
    }

    Method (PINI, 0, NotSerialized)
    {
        Store (Zero, \_SB.PCI0.EHCO.HCBO)
        Store (One, \_SB.PCI0.EHCO.HCOO)
        Store (Zero, \_SB.PCI0.EHCT.HCBO)
        Store (One, \_SB.PCI0.EHCT.HCOO)
    }

    Method (_WAK, 1, NotSerialized)  // _WAK: Wake
    {
        PINI ()
        P8XH (Zero, 0xAB)
        If (IGDS)
        {
            If (LEqual (\_SB.PCI0.LPCB.EC0.LDS0, One))
            {
                Store (Zero, \_SB.PCI0.GFX0.CLID)
            }
            Else
            {
                Store (One, \_SB.PCI0.GFX0.CLID)
            }
        }

        If (LGreaterEqual (OSYS, 0x07D6))
        {
            Store (One, \_SB.FL14)
            Store (One, \_SB.PCI0.LPCB.EC0.FVIS)
        }
        Else
        {
            Store (Zero, \_SB.FL14)
            Store (Zero, \_SB.PCI0.LPCB.EC0.FVIS)
        }

        If (LEqual (Arg0, 0x03))
        {
            Notify (\_SB.PCI0.RP05, Zero)
        }

        If (LEqual (Arg0, 0x04))
        {
            Notify (\_TZ.TZ00, 0x80)
            Store (Zero, \_SB.INS4)
            Store (Zero, \_SB.S4CT)
            Notify (\_SB.PWRB, 0x02)
            If (IGDS)
            {
                If (LAnd (LGreater (OSYS, 0x07D0), LLess (OSYS, 0x07D6)))
                {
                    Notify (\_SB.PCI0.GFX0, 0x80)
                }
            }
        }

        If (LOr (LEqual (Arg0, 0x03), LEqual (Arg0, 0x04)))
        {
            If (LAnd (DTSE, MPEN))
            {
                TRAP (TRTD, 0x14)
            }

            If (And (CFGD, 0x01000000))
            {
                If (LAnd (And (CFGD, 0xF0), LAnd (LEqual (OSYS, 0x07D1), LNot (And (
                    PDC0, 0x10)))))
                {
                    TRAP (TRTP, ESCS)
                }
            }

            If (LEqual (OSYS, 0x07D2))
            {
                If (And (CFGD, One))
                {
                    If (LGreater (\_PR.CPU0._PPC, Zero))
                    {
                        Subtract (\_PR.CPU0._PPC, One, \_PR.CPU0._PPC)
                        PNOT ()
                        Add (\_PR.CPU0._PPC, One, \_PR.CPU0._PPC)
                        PNOT ()
                    }
                    Else
                    {
                        Add (\_PR.CPU0._PPC, One, \_PR.CPU0._PPC)
                        PNOT ()
                        Subtract (\_PR.CPU0._PPC, One, \_PR.CPU0._PPC)
                        PNOT ()
                    }
                }
            }

            If (ECON)
            {
                \_SB.PCI0.LPCB.EC0.DR10 ()
            }
        }

        If (LNotEqual (\_SB.PCI0.RP02.PDSX, \_SB.PCI0.RP02.PDSS))
        {
            Notify (\_SB.PCI0.RP02, Zero)
        }

        If (LNot (\_SB.PCI0.LPCB.EC0.SW2S))
        {
            Store (One, \_SB.PCI0.RP05.J380.D3EF)
            \_SB.PHSR (0x92)
        }
        Else
        {
            Store (Zero, \_SB.PCI0.RP05.J380.D3EF)
        }

        P8XH (Zero, 0xCD)
        Return (Package (0x02)
        {
            Zero, 
            Zero
        })
    }

    Method (GETB, 3, Serialized)
    {
        Multiply (Arg0, 0x08, Local0)
        Multiply (Arg1, 0x08, Local1)
        CreateField (Arg2, Local0, Local1, TBF3)
        Return (TBF3)
    }

    Method (PNOT, 0, Serialized)
    {
        If (MPEN)
        {
            If (And (PDC0, 0x08))
            {
                Notify (\_PR.CPU0, 0x80)
                If (And (PDC0, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU0, 0x81)
                }
            }

            If (And (PDC1, 0x08))
            {
                Notify (\_PR.CPU1, 0x80)
                If (And (PDC1, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU1, 0x81)
                }
            }
        }
        Else
        {
            Notify (\_PR.CPU0, 0x80)
            Sleep (0x64)
            Notify (\_PR.CPU0, 0x81)
        }

        Notify (_SB, 0x80)
    }

    Method (TRAP, 2, Serialized)
    {
        Store (Arg1, SMIF)
        If (LEqual (Arg0, TRTP))
        {
            Store (Zero, TRPI)
        }

        If (LEqual (Arg0, TRTD))
        {
            Store (Arg1, DTSF)
            Store (Zero, TRPD)
            Return (DTSF)
        }

        If (LEqual (Arg0, TRTI))
        {
            Store (Zero, TRP0)
        }

        Return (SMIF)
    }

    Scope (_SB.PCI0)
    {
        Name (EBRL, 0x64)
        Name (EBRV, Zero)
        Name (IBCL, Package (0x0D)
        {
            0x64, 
            0x23, 
            0x05, 
            0x0F, 
            0x19, 
            0x23, 
            0x2D, 
            0x37, 
            0x41, 
            0x4B, 
            0x55, 
            0x5F, 
            0x64
        })
        Method (IBCM, 1, NotSerialized)
        {
            Store (Arg0, EBRL)
            If (LLess (EBRL, Add (DerefOf (Index (IBCL, 0x02)), One)))
            {
                Store (Zero, BRNS)
            }
            Else
            {
                If (LLess (EBRL, Add (DerefOf (Index (IBCL, 0x03)), One)))
                {
                    Store (One, BRNS)
                }
                Else
                {
                    If (LLess (EBRL, Add (DerefOf (Index (IBCL, 0x04)), One)))
                    {
                        Store (0x02, BRNS)
                    }
                    Else
                    {
                        If (LLess (EBRL, Add (DerefOf (Index (IBCL, 0x05)), One)))
                        {
                            Store (0x03, BRNS)
                        }
                        Else
                        {
                            If (LLess (EBRL, Add (DerefOf (Index (IBCL, 0x06)), One)))
                            {
                                Store (0x04, BRNS)
                            }
                            Else
                            {
                                If (LLess (EBRL, Add (DerefOf (Index (IBCL, 0x07)), One)))
                                {
                                    Store (0x05, BRNS)
                                }
                                Else
                                {
                                    If (LLess (EBRL, Add (DerefOf (Index (IBCL, 0x08)), One)))
                                    {
                                        Store (0x06, BRNS)
                                    }
                                    Else
                                    {
                                        If (LLess (EBRL, Add (DerefOf (Index (IBCL, 0x09)), One)))
                                        {
                                            Store (0x07, BRNS)
                                        }
                                        Else
                                        {
                                            If (LLess (EBRL, Add (DerefOf (Index (IBCL, 0x0A)), One)))
                                            {
                                                Store (0x08, BRNS)
                                            }
                                            Else
                                            {
                                                If (LLess (EBRL, Add (DerefOf (Index (IBCL, 0x0B)), One)))
                                                {
                                                    Store (0x09, BRNS)
                                                }
                                                Else
                                                {
                                                    If (LLess (EBRL, Add (DerefOf (Index (IBCL, 0x0C)), One)))
                                                    {
                                                        Store (0x0A, BRNS)
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }

            Store (BRNS, ^LPCB.EC0.BLVL)
            If (LNot (IGDS))
            {
                PHSR (0x9D)
            }

            Store (BRNS, EBRV)
        }

        Name (ISCT, Zero)
        Method (ISBC, 1, NotSerialized)
        {
            ^GFX0.PARD ()
            Store (Arg0, ^GFX0.BCLP)
            Or (^GFX0.BCLP, 0x80000000, ^GFX0.BCLP)
            Store (0x02, ^GFX0.ASLC)
            Store (0x05, ISCT)
            While (LAnd (^GFX0.ASLC, ISCT))
            {
                Store (Zero, ^GFX0.LBPC)
                Decrement (ISCT)
            }
        }

        Name (PNLS, Buffer (0x0B)
        {
            /* 0000 */  0xFF, 0xEB, 0xDA, 0xC7, 0xB5, 0xA4, 0x92, 0x6E,
            /* 0008 */  0x61, 0x55, 0x49                               
        })
        Name (PLT6, Buffer (0x2C)
        {
            /* 0000 */  0xFF, 0xEB, 0xDA, 0xC7, 0xB5, 0xA4, 0x92, 0x6E,
            /* 0008 */  0x61, 0x55, 0x49, 0xA7, 0x95, 0x83, 0x71, 0x5F,
            /* 0010 */  0x4D, 0x3D, 0x2E, 0x1D, 0x0D, 0x04, 0xFC, 0xDE,
            /* 0018 */  0xC2, 0xA8, 0x8E, 0x71, 0x57, 0x42, 0x2D, 0x19,
            /* 0020 */  0x06, 0xA7, 0x95, 0x83, 0x71, 0x5F, 0x4D, 0x3D,
            /* 0028 */  0x2E, 0x1D, 0x0D, 0x04                         
        })
        Name (PLT8, Buffer (0x2C)
        {
            /* 0000 */  0xFF, 0xEB, 0xDA, 0xC7, 0xB5, 0xA4, 0x92, 0x75,
            /* 0008 */  0x66, 0x59, 0x4C, 0xFF, 0xE4, 0xC7, 0xAC, 0x92,
            /* 0010 */  0x77, 0x5C, 0x42, 0x2C, 0x19, 0x06, 0xFC, 0xDE,
            /* 0018 */  0xC2, 0xA8, 0x8E, 0x71, 0x57, 0x42, 0x2D, 0x19,
            /* 0020 */  0x06, 0xFF, 0xE4, 0xC7, 0xAA, 0x8E, 0x72, 0x58,
            /* 0028 */  0x34, 0x2B, 0x18, 0x05                         
        })
        Name (PKT1, Buffer (0x2C)
        {
            /* 0000 */  0xFF, 0xEB, 0xDA, 0xC7, 0xB5, 0xA4, 0x92, 0x75,
            /* 0008 */  0x66, 0x59, 0x4C, 0xFF, 0xE2, 0xC3, 0xA5, 0x88,
            /* 0010 */  0x6B, 0x4F, 0x31, 0x21, 0x12, 0x03, 0xFF, 0xE2,
            /* 0018 */  0xC3, 0xA5, 0x88, 0x6B, 0x4E, 0x31, 0x22, 0x13,
            /* 0020 */  0x04, 0xFF, 0xE2, 0xC3, 0xA5, 0x88, 0x6B, 0x4D,
            /* 0028 */  0x31, 0x23, 0x13, 0x05                         
        })
        Method (UPBR, 0, NotSerialized)
        {
            If (IGDS)
            {
                If (GI19)
                {
                    Store (DerefOf (Index (PKT1, Add (Multiply (PLID, 0x0B), Zero))), 
                        Index (PNLS, Zero))
                    Store (DerefOf (Index (PKT1, Add (Multiply (PLID, 0x0B), One))), 
                        Index (PNLS, One))
                    Store (DerefOf (Index (PKT1, Add (Multiply (PLID, 0x0B), 0x02))), 
                        Index (PNLS, 0x02))
                    Store (DerefOf (Index (PKT1, Add (Multiply (PLID, 0x0B), 0x03))), 
                        Index (PNLS, 0x03))
                    Store (DerefOf (Index (PKT1, Add (Multiply (PLID, 0x0B), 0x04))), 
                        Index (PNLS, 0x04))
                    Store (DerefOf (Index (PKT1, Add (Multiply (PLID, 0x0B), 0x05))), 
                        Index (PNLS, 0x05))
                    Store (DerefOf (Index (PKT1, Add (Multiply (PLID, 0x0B), 0x06))), 
                        Index (PNLS, 0x06))
                    Store (DerefOf (Index (PKT1, Add (Multiply (PLID, 0x0B), 0x07))), 
                        Index (PNLS, 0x07))
                    Store (DerefOf (Index (PKT1, Add (Multiply (PLID, 0x0B), 0x08))), 
                        Index (PNLS, 0x08))
                    Store (DerefOf (Index (PKT1, Add (Multiply (PLID, 0x0B), 0x09))), 
                        Index (PNLS, 0x09))
                    Store (DerefOf (Index (PKT1, Add (Multiply (PLID, 0x0B), 0x0A))), 
                        Index (PNLS, 0x0A))
                }
                Else
                {
                    If (GI37)
                    {
                        Store (DerefOf (Index (PLT8, Add (Multiply (PLID, 0x0B), Zero))), 
                            Index (PNLS, Zero))
                        Store (DerefOf (Index (PLT8, Add (Multiply (PLID, 0x0B), One))), 
                            Index (PNLS, One))
                        Store (DerefOf (Index (PLT8, Add (Multiply (PLID, 0x0B), 0x02))), 
                            Index (PNLS, 0x02))
                        Store (DerefOf (Index (PLT8, Add (Multiply (PLID, 0x0B), 0x03))), 
                            Index (PNLS, 0x03))
                        Store (DerefOf (Index (PLT8, Add (Multiply (PLID, 0x0B), 0x04))), 
                            Index (PNLS, 0x04))
                        Store (DerefOf (Index (PLT8, Add (Multiply (PLID, 0x0B), 0x05))), 
                            Index (PNLS, 0x05))
                        Store (DerefOf (Index (PLT8, Add (Multiply (PLID, 0x0B), 0x06))), 
                            Index (PNLS, 0x06))
                        Store (DerefOf (Index (PLT8, Add (Multiply (PLID, 0x0B), 0x07))), 
                            Index (PNLS, 0x07))
                        Store (DerefOf (Index (PLT8, Add (Multiply (PLID, 0x0B), 0x08))), 
                            Index (PNLS, 0x08))
                        Store (DerefOf (Index (PLT8, Add (Multiply (PLID, 0x0B), 0x09))), 
                            Index (PNLS, 0x09))
                        Store (DerefOf (Index (PLT8, Add (Multiply (PLID, 0x0B), 0x0A))), 
                            Index (PNLS, 0x0A))
                    }
                    Else
                    {
                        Store (DerefOf (Index (PLT6, Add (Multiply (PLID, 0x0B), Zero))), 
                            Index (PNLS, Zero))
                        Store (DerefOf (Index (PLT6, Add (Multiply (PLID, 0x0B), One))), 
                            Index (PNLS, One))
                        Store (DerefOf (Index (PLT6, Add (Multiply (PLID, 0x0B), 0x02))), 
                            Index (PNLS, 0x02))
                        Store (DerefOf (Index (PLT6, Add (Multiply (PLID, 0x0B), 0x03))), 
                            Index (PNLS, 0x03))
                        Store (DerefOf (Index (PLT6, Add (Multiply (PLID, 0x0B), 0x04))), 
                            Index (PNLS, 0x04))
                        Store (DerefOf (Index (PLT6, Add (Multiply (PLID, 0x0B), 0x05))), 
                            Index (PNLS, 0x05))
                        Store (DerefOf (Index (PLT6, Add (Multiply (PLID, 0x0B), 0x06))), 
                            Index (PNLS, 0x06))
                        Store (DerefOf (Index (PLT6, Add (Multiply (PLID, 0x0B), 0x07))), 
                            Index (PNLS, 0x07))
                        Store (DerefOf (Index (PLT6, Add (Multiply (PLID, 0x0B), 0x08))), 
                            Index (PNLS, 0x08))
                        Store (DerefOf (Index (PLT6, Add (Multiply (PLID, 0x0B), 0x09))), 
                            Index (PNLS, 0x09))
                        Store (DerefOf (Index (PLT6, Add (Multiply (PLID, 0x0B), 0x0A))), 
                            Index (PNLS, 0x0A))
                    }
                }

                Store (DerefOf (Index (PNLS, Zero)), ^GFX0.BC0A)
                Store (DerefOf (Index (PNLS, One)), ^GFX0.BC09)
                Store (DerefOf (Index (PNLS, 0x02)), ^GFX0.BC08)
                Store (DerefOf (Index (PNLS, 0x03)), ^GFX0.BC07)
                Store (DerefOf (Index (PNLS, 0x04)), ^GFX0.BC06)
                Store (DerefOf (Index (PNLS, 0x05)), ^GFX0.BC05)
                Store (DerefOf (Index (PNLS, 0x06)), ^GFX0.BC04)
                Store (DerefOf (Index (PNLS, 0x07)), ^GFX0.BC03)
                Store (DerefOf (Index (PNLS, 0x08)), ^GFX0.BC02)
                Store (DerefOf (Index (PNLS, 0x09)), ^GFX0.BC01)
                Store (DerefOf (Index (PNLS, 0x0A)), ^GFX0.BC00)
            }
        }

        Name (IBC0, 0x64)
        Name (IBLV, 0x64)
        Method (IBCC, 1, NotSerialized)
        {
            Store (Arg0, IBC0)
            If (IGDS)
            {
                If (LLess (IBC0, Add (Divide (Multiply (DerefOf (Index (PNLS, 0x0A)), 0x64
                    ), 0xFF, ), One)))
                {
                    Store (Zero, BRNS)
                }
                Else
                {
                    If (LLess (IBC0, Add (Divide (Multiply (DerefOf (Index (PNLS, 0x09)), 0x64
                        ), 0xFF, ), One)))
                    {
                        Store (One, BRNS)
                    }
                    Else
                    {
                        If (LLess (IBC0, Add (Divide (Multiply (DerefOf (Index (PNLS, 0x08)), 0x64
                            ), 0xFF, ), One)))
                        {
                            Store (0x02, BRNS)
                        }
                        Else
                        {
                            If (LLess (IBC0, Add (Divide (Multiply (DerefOf (Index (PNLS, 0x07)), 0x64
                                ), 0xFF, ), One)))
                            {
                                Store (0x03, BRNS)
                            }
                            Else
                            {
                                If (LLess (IBC0, Add (Divide (Multiply (DerefOf (Index (PNLS, 0x06)), 0x64
                                    ), 0xFF, ), One)))
                                {
                                    Store (0x04, BRNS)
                                }
                                Else
                                {
                                    If (LLess (IBC0, Add (Divide (Multiply (DerefOf (Index (PNLS, 0x05)), 0x64
                                        ), 0xFF, ), One)))
                                    {
                                        Store (0x05, BRNS)
                                    }
                                    Else
                                    {
                                        If (LLess (IBC0, Add (Divide (Multiply (DerefOf (Index (PNLS, 0x04)), 0x64
                                            ), 0xFF, ), One)))
                                        {
                                            Store (0x06, BRNS)
                                        }
                                        Else
                                        {
                                            If (LLess (IBC0, Add (Divide (Multiply (DerefOf (Index (PNLS, 0x03)), 0x64
                                                ), 0xFF, ), One)))
                                            {
                                                Store (0x07, BRNS)
                                            }
                                            Else
                                            {
                                                If (LLess (IBC0, Add (Divide (Multiply (DerefOf (Index (PNLS, 0x02)), 0x64
                                                    ), 0xFF, ), One)))
                                                {
                                                    Store (0x08, BRNS)
                                                }
                                                Else
                                                {
                                                    If (LLess (IBC0, Add (Divide (Multiply (DerefOf (Index (PNLS, One)), 0x64
                                                        ), 0xFF, ), One)))
                                                    {
                                                        Store (0x09, BRNS)
                                                    }
                                                    Else
                                                    {
                                                        Store (0x0A, BRNS)
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }

                Store (BRNS, ^LPCB.EC0.BLVL)
            }
        }

        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            PINI ()
            Store (0x07D0, OSYS)
            If (CondRefOf (_OSI, Local0))
            {
                If (_OSI ("Linux"))
                {
                    Store (0x03E8, OSYS)
                }

                If (_OSI ("Windows 2001"))
                {
                    Store (0x07D1, OSYS)
                }

                If (_OSI ("Windows 2001 SP1"))
                {
                    Store (0x07D1, OSYS)
                }

                If (_OSI ("Windows 2001 SP2"))
                {
                    Store (0x07D2, OSYS)
                }

                If (_OSI ("Windows 2006"))
                {
                    Store (0x07D6, OSYS)
                }

                If (LOr (_OSI ("Darwin"), _OSI ("Windows 2009")))
                {
                    Store (0x07D9, OSYS)
                }

                If (LAnd (MPEN, LEqual (OSYS, 0x07D1)))
                {
                    TRAP (TRTP, \ESCS)
                }

                TRAP (TRTI, SOOT)
            }

            ^LPCB.PS2M.MHID ()
        }
    }

    Scope (\)
    {
        Name (PICM, Zero)
    }

    Scope (_SB.PCI0)
    {
        Device (PDRC)
        {
            Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (BUF0, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00004000,         // Address Length
                    _Y0E)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00004000,         // Address Length
                    _Y0F)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y10)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y11)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y12)
                Memory32Fixed (ReadWrite,
                    0xFED20000,         // Address Base
                    0x00020000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED40000,         // Address Base
                    0x00005000,         // Address Length
                    )
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y0E._BAS, RBR0)  // _BAS: Base Address
                ShiftLeft (^^LPCB.RCBA, 0x0E, RBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y0F._BAS, MBR0)  // _BAS: Base Address
                ShiftLeft (MHBR, 0x0E, MBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y10._BAS, DBR0)  // _BAS: Base Address
                ShiftLeft (DIBR, 0x0C, DBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y11._BAS, EBR0)  // _BAS: Base Address
                ShiftLeft (EPBR, 0x0C, EBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y12._BAS, XBR0)  // _BAS: Base Address
                ShiftLeft (PXBR, 0x1A, XBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y12._LEN, XSZ0)  // _LEN: Length
                ShiftRight (0x10000000, PXSZ, XSZ0)
                Return (BUF0)
            }
        }
    }

    Method (BRTW, 1, Serialized)
    {
        Store (Arg0, Local1)
        If (LEqual (ALSE, 0x02))
        {
            Store (Divide (Multiply (ALAF, Arg0), 0x64, ), Local1)
            If (LGreater (Local1, 0x64))
            {
                Store (0x64, Local1)
            }
        }

        Store (Divide (Multiply (0xFF, Local1), 0x64, ), Local0)
        Store (Local0, PRM0)
        Store (Arg0, BRTL)
        If (LEqual (TRAP (TRTI, SBCS), Zero))
        {
            P8XH (0x02, Local0)
        }
    }

    Method (HKDS, 1, Serialized)
    {
        If (LEqual (Zero, And (0x03, DSEN)))
        {
            If (LEqual (TRAP (TRTI, Arg0), Zero))
            {
                If (LNotEqual (CADL, PADL))
                {
                    Store (CADL, PADL)
                    If (LAnd (LGreater (OSYS, 0x07D0), LLess (OSYS, 0x07D6)))
                    {
                        Notify (\_SB.PCI0, Zero)
                    }
                    Else
                    {
                        Notify (\_SB.PCI0.GFX0, Zero)
                    }

                    Sleep (0x02EE)
                }

                Notify (\_SB.PCI0.GFX0, 0x80)
            }
        }

        If (LEqual (One, And (0x03, DSEN)))
        {
            If (LEqual (TRAP (TRTI, Increment (Arg0)), Zero))
            {
                Notify (\_SB.PCI0.GFX0, 0x81)
            }
        }
    }

    Method (LSDS, 1, Serialized)
    {
        If (Arg0)
        {
            HKDS (DSLO)
        }
        Else
        {
            HKDS (DSLC)
        }

        If (LNotEqual (And (0x03, DSEN), One))
        {
            Sleep (0x32)
            While (LEqual (And (0x03, DSEN), 0x02))
            {
                Sleep (0x32)
            }
        }
    }

    Method (BRTN, 1, Serialized)
    {
        If (LEqual (And (DID1, 0x0F00), 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD01, Arg0)
        }

        If (LEqual (And (DID2, 0x0F00), 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD02, Arg0)
        }

        If (LEqual (And (DID3, 0x0F00), 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD03, Arg0)
        }

        If (LEqual (And (DID4, 0x0F00), 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD04, Arg0)
        }

        If (LEqual (And (DID5, 0x0F00), 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD05, Arg0)
        }
    }

    Scope (\)
    {
        OperationRegion (IO_T, SystemIO, 0x0480, 0x10)
        Field (IO_T, ByteAcc, NoLock, Preserve)
        {
            TRPI,   16, 
            Offset (0x04), 
            Offset (0x06), 
            Offset (0x08), 
            TRP0,   8, 
            Offset (0x0A), 
            Offset (0x0B), 
            Offset (0x0C), 
            Offset (0x0D), 
            Offset (0x0E), 
            Offset (0x0F), 
            Offset (0x10)
        }

        OperationRegion (IO_D, SystemIO, 0x0900, 0x04)
        Field (IO_D, ByteAcc, NoLock, Preserve)
        {
            TRPD,   8
        }

        OperationRegion (IO_H, SystemIO, 0x0400, 0x04)
        Field (IO_H, ByteAcc, NoLock, Preserve)
        {
            TRPH,   8
        }

        OperationRegion (PMIO, SystemIO, PMBS, 0x80)
        Field (PMIO, ByteAcc, NoLock, Preserve)
        {
            Offset (0x20), 
                ,   2, 
            SPST,   1, 
            Offset (0x22), 
            Offset (0x23), 
            G8WS,   1, 
                ,   3, 
            G12S,   1, 
            G13S,   1, 
            Offset (0x28), 
            Offset (0x2A), 
            Offset (0x2B), 
            G8WE,   1, 
                ,   3, 
            G12E,   1, 
            G13E,   1, 
            Offset (0x42), 
                ,   1, 
            GPEC,   1, 
            Offset (0x64), 
                ,   9, 
            SCIS,   1, 
            Offset (0x66)
        }

        OperationRegion (GPIO, SystemIO, GPBS, 0x80)
        Field (GPIO, ByteAcc, NoLock, Preserve)
        {
            Offset (0x0C), 
                ,   1, 
                ,   1, 
                ,   1, 
                ,   1, 
                ,   1, 
                ,   1, 
                ,   1, 
            Offset (0x0D), 
                ,   1, 
                ,   1, 
                ,   1, 
                ,   1, 
            GI12,   1, 
            GI13,   1, 
                ,   1, 
            Offset (0x0E), 
                ,   1, 
                ,   1, 
            GO18,   1, 
            GI19,   1, 
            GO20,   1, 
            GI21,   1, 
            GI22,   1, 
            Offset (0x0F), 
            GO24,   1, 
                ,   1, 
                ,   1, 
            GO27,   1, 
            GO28,   1, 
                ,   1, 
                ,   1, 
            Offset (0x10), 
            Offset (0x38), 
                ,   1, 
            GO33,   1, 
            GO34,   1, 
            GI35,   1, 
            GI36,   1, 
            GI37,   1, 
            GO38,   1, 
            GO39,   1, 
                ,   1, 
                ,   1, 
                ,   1, 
                ,   1, 
                ,   1, 
                ,   1, 
                ,   1, 
            Offset (0x3A), 
            GI48,   1, 
            GO49,   1, 
                ,   1, 
                ,   1, 
                ,   1, 
                ,   1, 
                ,   1, 
            Offset (0x3B), 
            GO56,   1, 
            GO57,   1, 
                ,   1, 
                ,   1, 
                ,   1
        }

        OperationRegion (RCRB, SystemMemory, 0xFED1C000, 0x4000)
        Field (RCRB, DWordAcc, Lock, Preserve)
        {
            Offset (0x1000), 
            Offset (0x3000), 
            Offset (0x3404), 
            HPAS,   2, 
                ,   5, 
            HPAE,   1, 
            Offset (0x3418), 
                ,   1, 
                ,   1, 
            SATD,   1, 
            SMBD,   1, 
            HDAD,   1, 
            Offset (0x341A), 
            RP1D,   1, 
            RP2D,   1, 
            RP3D,   1, 
            RP4D,   1, 
            RP5D,   1, 
            RP6D,   1
        }

        Method (GETP, 1, Serialized)
        {
            If (LEqual (And (Arg0, 0x09), Zero))
            {
                Return (0xFFFFFFFF)
            }

            If (LEqual (And (Arg0, 0x09), 0x08))
            {
                Return (0x0384)
            }

            ShiftRight (And (Arg0, 0x0300), 0x08, Local0)
            ShiftRight (And (Arg0, 0x3000), 0x0C, Local1)
            Return (Multiply (0x1E, Subtract (0x09, Add (Local0, Local1))))
        }

        Method (GDMA, 5, Serialized)
        {
            If (Arg0)
            {
                If (LAnd (Arg1, Arg4))
                {
                    Return (0x14)
                }

                If (LAnd (Arg2, Arg4))
                {
                    Return (Multiply (Subtract (0x04, Arg3), 0x0F))
                }

                Return (Multiply (Subtract (0x04, Arg3), 0x1E))
            }

            Return (0xFFFFFFFF)
        }

        Method (GETT, 1, Serialized)
        {
            Return (Multiply (0x1E, Subtract (0x09, Add (And (ShiftRight (Arg0, 0x02), 0x03
                ), And (Arg0, 0x03)))))
        }

        Method (GETF, 3, Serialized)
        {
            Name (TMPF, Zero)
            If (Arg0)
            {
                Or (TMPF, One, TMPF)
            }

            If (And (Arg2, 0x02))
            {
                Or (TMPF, 0x02, TMPF)
            }

            If (Arg1)
            {
                Or (TMPF, 0x04, TMPF)
            }

            If (And (Arg2, 0x20))
            {
                Or (TMPF, 0x08, TMPF)
            }

            If (And (Arg2, 0x4000))
            {
                Or (TMPF, 0x10, TMPF)
            }

            Return (TMPF)
        }

        Method (SETP, 3, Serialized)
        {
            If (LGreater (Arg0, 0xF0))
            {
                Return (0x08)
            }
            Else
            {
                If (And (Arg1, 0x02))
                {
                    If (LAnd (LLessEqual (Arg0, 0x78), And (Arg2, 0x02)))
                    {
                        Return (0x2301)
                    }

                    If (LAnd (LLessEqual (Arg0, 0xB4), And (Arg2, One)))
                    {
                        Return (0x2101)
                    }
                }

                Return (0x1001)
            }
        }

        Method (SDMA, 1, Serialized)
        {
            If (LLessEqual (Arg0, 0x14))
            {
                Return (One)
            }

            If (LLessEqual (Arg0, 0x1E))
            {
                Return (0x02)
            }

            If (LLessEqual (Arg0, 0x2D))
            {
                Return (One)
            }

            If (LLessEqual (Arg0, 0x3C))
            {
                Return (0x02)
            }

            If (LLessEqual (Arg0, 0x5A))
            {
                Return (One)
            }

            Return (Zero)
        }

        Method (SETT, 3, Serialized)
        {
            If (And (Arg1, 0x02))
            {
                If (LAnd (LLessEqual (Arg0, 0x78), And (Arg2, 0x02)))
                {
                    Return (0x0B)
                }

                If (LAnd (LLessEqual (Arg0, 0xB4), And (Arg2, One)))
                {
                    Return (0x09)
                }
            }

            Return (0x04)
        }
    }

    Scope (_SB.PCI0)
    {
        Device (SAT0)
        {
            Name (_ADR, 0x001F0002)  // _ADR: Address
            OperationRegion (SACS, PCI_Config, 0x40, 0xC0)
            Field (SACS, DWordAcc, NoLock, Preserve)
            {
                PRIT,   16, 
                SECT,   16, 
                PSIT,   4, 
                SSIT,   4, 
                Offset (0x08), 
                SYNC,   4, 
                Offset (0x0A), 
                SDT0,   2, 
                    ,   2, 
                SDT1,   2, 
                Offset (0x0B), 
                SDT2,   2, 
                    ,   2, 
                SDT3,   2, 
                Offset (0x14), 
                ICR0,   4, 
                ICR1,   4, 
                ICR2,   4, 
                ICR3,   4, 
                ICR4,   4, 
                ICR5,   4, 
                Offset (0x50), 
                MAPV,   2, 
                Offset (0x52), 
                P0EN,   1, 
                P1EN,   1, 
                P2EN,   1, 
                    ,   1
            }

            Device (PRT0)
            {
                Name (_ADR, 0xFFFF)  // _ADR: Address
                Method (_SDD, 1, NotSerialized)  // _SDD: Set Device Data
                {
                    Name (GBU0, Buffer (0x07)
                    {
                         0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x00       
                    })
                    CreateByteField (GBU0, Zero, GB00)
                    CreateByteField (GBU0, One, GB01)
                    CreateByteField (GBU0, 0x02, GB02)
                    CreateByteField (GBU0, 0x03, GB03)
                    CreateByteField (GBU0, 0x04, GB04)
                    CreateByteField (GBU0, 0x05, GB05)
                    CreateByteField (GBU0, 0x06, GB06)
                    If (LEqual (SizeOf (Arg0), 0x0200))
                    {
                        CreateWordField (Arg0, 0x9C, W780)
                        If (And (W780, 0x08))
                        {
                            Store (0x10, GB00)
                            Store (0x03, GB01)
                            Store (0xEF, GB06)
                        }
                        Else
                        {
                            Store (0x90, GB00)
                            Store (0x03, GB01)
                            Store (0xEF, GB06)
                        }
                    }

                    Store (GBU0, GTF0)
                }

                Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                {
                    Return (GTF0)
                }
            }

            Device (PRT1)
            {
                Name (_ADR, 0x0001FFFF)  // _ADR: Address
                Method (_SDD, 1, NotSerialized)  // _SDD: Set Device Data
                {
                    Name (GBU1, Buffer (0x07)
                    {
                         0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x00       
                    })
                    CreateByteField (GBU1, Zero, GB10)
                    CreateByteField (GBU1, One, GB11)
                    CreateByteField (GBU1, 0x02, GB12)
                    CreateByteField (GBU1, 0x03, GB13)
                    CreateByteField (GBU1, 0x04, GB14)
                    CreateByteField (GBU1, 0x05, GB15)
                    CreateByteField (GBU1, 0x06, GB16)
                    If (LEqual (SizeOf (Arg0), 0x0200))
                    {
                        CreateWordField (Arg0, 0x9C, W781)
                        If (And (W781, 0x08))
                        {
                            Store (0x10, GB10)
                            Store (0x03, GB11)
                            Store (0xEF, GB16)
                        }
                        Else
                        {
                            Store (0x90, GB10)
                            Store (0x03, GB11)
                            Store (0xEF, GB16)
                        }
                    }

                    Store (GBU1, GTF1)
                }

                Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                {
                    Return (GTF1)
                }
            }

            Device (PRT2)
            {
                Name (_ADR, 0x0004FFFF)  // _ADR: Address
                Method (_SDD, 1, NotSerialized)  // _SDD: Set Device Data
                {
                    Name (GBU2, Buffer (0x07)
                    {
                         0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x00       
                    })
                    CreateByteField (GBU2, Zero, GB20)
                    CreateByteField (GBU2, One, GB21)
                    CreateByteField (GBU2, 0x02, GB22)
                    CreateByteField (GBU2, 0x03, GB23)
                    CreateByteField (GBU2, 0x04, GB24)
                    CreateByteField (GBU2, 0x05, GB25)
                    CreateByteField (GBU2, 0x06, GB26)
                    If (LEqual (SizeOf (Arg0), 0x0200))
                    {
                        CreateWordField (Arg0, 0x9C, W782)
                        If (And (W782, 0x08))
                        {
                            Store (0x10, GB20)
                            Store (0x03, GB21)
                            Store (0xEF, GB26)
                        }
                        Else
                        {
                            Store (0x90, GB20)
                            Store (0x03, GB21)
                            Store (0xEF, GB26)
                        }
                    }

                    Store (GBU2, GTF2)
                }

                Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                {
                    Return (GTF2)
                }
            }

            Device (PRT3)
            {
                Name (_ADR, 0x0005FFFF)  // _ADR: Address
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }
            }
        }

        Device (SAT1)
        {
            Name (_ADR, 0x001F0005)  // _ADR: Address
            OperationRegion (SACS, PCI_Config, 0x40, 0xC0)
            Field (SACS, DWordAcc, NoLock, Preserve)
            {
                PRIT,   16, 
                SECT,   16, 
                PSIT,   4, 
                SSIT,   4, 
                Offset (0x08), 
                SYNC,   4, 
                Offset (0x0A), 
                SDT0,   2, 
                    ,   2, 
                SDT1,   2, 
                Offset (0x0B), 
                SDT2,   2, 
                    ,   2, 
                SDT3,   2, 
                Offset (0x14), 
                ICR0,   4, 
                ICR1,   4, 
                ICR2,   4, 
                ICR3,   4, 
                ICR4,   4, 
                ICR5,   4, 
                Offset (0x50), 
                MAPV,   2, 
                Offset (0x52), 
                P0EN,   1, 
                P1EN,   1, 
                P2EN,   1, 
                    ,   1
            }
        }

        Device (SBUS)
        {
            Name (_ADR, 0x001F0003)  // _ADR: Address
            OperationRegion (SMBP, PCI_Config, 0x40, 0xC0)
            Field (SMBP, DWordAcc, NoLock, Preserve)
            {
                    ,   2, 
                I2CE,   1
            }

            OperationRegion (SMBI, SystemIO, 0x1C00, 0x10)
            Field (SMBI, ByteAcc, NoLock, Preserve)
            {
                HSTS,   8, 
                Offset (0x02), 
                HCON,   8, 
                HCOM,   8, 
                TXSA,   8, 
                DAT0,   8, 
                DAT1,   8, 
                HBDR,   8, 
                PECR,   8, 
                RXSA,   8, 
                SDAT,   16
            }

            Method (SSXB, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Arg0, TXSA)
                Store (Arg1, HCOM)
                Store (0x48, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (One)
                }

                Return (Zero)
            }

            Method (SRXB, 1, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }

                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Or (Arg0, One), TXSA)
                Store (0x44, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (DAT0)
                }

                Return (0xFFFF)
            }

            Method (SWRB, 3, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Arg0, TXSA)
                Store (Arg1, HCOM)
                Store (Arg2, DAT0)
                Store (0x48, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (One)
                }

                Return (Zero)
            }

            Method (SRDB, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }

                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Or (Arg0, One), TXSA)
                Store (Arg1, HCOM)
                Store (0x48, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (DAT0)
                }

                Return (0xFFFF)
            }

            Method (SWRW, 3, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Arg0, TXSA)
                Store (Arg1, HCOM)
                And (Arg2, 0xFF, DAT0)
                And (ShiftRight (Arg2, 0x08), 0xFF, DAT1)
                Store (0x4C, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (One)
                }

                Return (Zero)
            }

            Method (SRDW, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }

                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Or (Arg0, One), TXSA)
                Store (Arg1, HCOM)
                Store (0x4C, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (Or (ShiftLeft (DAT1, 0x08), DAT0))
                }

                Return (0xFFFFFFFF)
            }

            Method (SBLW, 4, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                Store (Arg3, I2CE)
                Store (0xBF, HSTS)
                Store (Arg0, TXSA)
                Store (Arg1, HCOM)
                Store (SizeOf (Arg2), DAT0)
                Store (Zero, Local1)
                Store (DerefOf (Index (Arg2, Zero)), HBDR)
                Store (0x54, HCON)
                While (LGreater (SizeOf (Arg2), Local1))
                {
                    Store (0x0FA0, Local0)
                    While (LAnd (LNot (And (HSTS, 0x80)), Local0))
                    {
                        Decrement (Local0)
                        Stall (0x32)
                    }

                    If (LNot (Local0))
                    {
                        KILL ()
                        Return (Zero)
                    }

                    Store (0x80, HSTS)
                    Increment (Local1)
                    If (LGreater (SizeOf (Arg2), Local1))
                    {
                        Store (DerefOf (Index (Arg2, Local1)), HBDR)
                    }
                }

                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (One)
                }

                Return (Zero)
            }

            Method (SBLR, 3, Serialized)
            {
                Name (TBUF, Buffer (0x0100) {})
                If (STRT ())
                {
                    Return (Zero)
                }

                Store (Arg2, I2CE)
                Store (0xBF, HSTS)
                Store (Or (Arg0, One), TXSA)
                Store (Arg1, HCOM)
                Store (0x54, HCON)
                Store (0x0FA0, Local0)
                While (LAnd (LNot (And (HSTS, 0x80)), Local0))
                {
                    Decrement (Local0)
                    Stall (0x32)
                }

                If (LNot (Local0))
                {
                    KILL ()
                    Return (Zero)
                }

                Store (DAT0, Index (TBUF, Zero))
                Store (0x80, HSTS)
                Store (One, Local1)
                While (LLess (Local1, DerefOf (Index (TBUF, Zero))))
                {
                    Store (0x0FA0, Local0)
                    While (LAnd (LNot (And (HSTS, 0x80)), Local0))
                    {
                        Decrement (Local0)
                        Stall (0x32)
                    }

                    If (LNot (Local0))
                    {
                        KILL ()
                        Return (Zero)
                    }

                    Store (HBDR, Index (TBUF, Local1))
                    Store (0x80, HSTS)
                    Increment (Local1)
                }

                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (TBUF)
                }

                Return (Zero)
            }

            Method (STRT, 0, Serialized)
            {
                Store (0xC8, Local0)
                While (Local0)
                {
                    If (And (HSTS, 0x40))
                    {
                        Decrement (Local0)
                        Sleep (One)
                        If (LEqual (Local0, Zero))
                        {
                            Return (One)
                        }
                    }
                    Else
                    {
                        Store (Zero, Local0)
                    }
                }

                Store (0x0FA0, Local0)
                While (Local0)
                {
                    If (And (HSTS, One))
                    {
                        Decrement (Local0)
                        Stall (0x32)
                        If (LEqual (Local0, Zero))
                        {
                            KILL ()
                        }
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Return (One)
            }

            Method (COMP, 0, Serialized)
            {
                Store (0x0FA0, Local0)
                While (Local0)
                {
                    If (And (HSTS, 0x02))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Decrement (Local0)
                        Stall (0x32)
                        If (LEqual (Local0, Zero))
                        {
                            KILL ()
                        }
                    }
                }

                Return (Zero)
            }

            Method (KILL, 0, Serialized)
            {
                Or (HCON, 0x02, HCON)
                Or (HSTS, 0xFF, HSTS)
            }

            Device (BUS0)
            {
                Name (_CID, "smbus")  // _CID: Compatible ID
                Name (_ADR, Zero)  // _ADR: Address
                Device (DVL0)
                {
                    Name (_ADR, 0x57)  // _ADR: Address
                    Name (_CID, "diagsvault")  // _CID: Compatible ID
                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        If (LEqual (Arg2, Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                           
                            })
                        }

                        Return (Package (0x02)
                        {
                            "address", 
                            0x57
                        })
                    }
                }
            }
        }
    }

    Scope (_GPE)
    {
        Method (_L1A, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.RP05.FRWR, Zero)
        }

        Method (_L01, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Add (L01C, One, L01C)
            P8XH (Zero, One)
            P8XH (One, L01C)
            Sleep (0x78)
            If (LAnd (LEqual (RP1D, Zero), \_SB.PCI0.RP01.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP01.PDCX)
                {
                    Store (One, \_SB.PCI0.RP01.PDCX)
                    Store (One, \_SB.PCI0.RP01.HPSX)
                    Notify (\_SB.PCI0.RP01, Zero)
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP01.HPSX)
                }
            }

            If (LAnd (LEqual (RP2D, Zero), \_SB.PCI0.RP02.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP02.PDCX)
                {
                    Store (One, \_SB.PCI0.RP02.PDCX)
                    Store (One, \_SB.PCI0.RP02.HPSX)
                    Notify (\_SB.PCI0.RP02, Zero)
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP02.HPSX)
                }
            }

            If (LAnd (LEqual (RP3D, Zero), \_SB.PCI0.RP03.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP03.PDCX)
                {
                    Store (One, \_SB.PCI0.RP03.PDCX)
                    Store (One, \_SB.PCI0.RP03.HPSX)
                    Notify (\_SB.PCI0.RP03, Zero)
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP03.HPSX)
                }
            }

            If (LAnd (LEqual (RP4D, Zero), \_SB.PCI0.RP04.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP04.PDCX)
                {
                    Store (One, \_SB.PCI0.RP04.PDCX)
                    Store (One, \_SB.PCI0.RP04.HPSX)
                    Notify (\_SB.PCI0.RP04, Zero)
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP04.HPSX)
                }
            }

            If (LAnd (LEqual (RP5D, Zero), \_SB.PCI0.RP05.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP05.PDCX)
                {
                    Store (One, \_SB.PCI0.RP05.PDCX)
                    Store (One, \_SB.PCI0.RP05.HPSX)
                    If (\_SB.PCI0.RP05.PDSX)
                    {
                        Store (0x0A, Local2)
                        While (LGreater (Local2, Zero))
                        {
                            Sleep (0x64)
                            And (\_SB.PCI0.RP05.J380.DVID, 0xFFF0FFFF, Local1)
                            If (LEqual (Local1, 0x2380197B))
                            {
                                Store (0x88, \_SB.PCI0.RP05.J380.LAT0)
                                Store (0x80, \_SB.PCI0.RP05.J380.PMC0)
                                \_SB.PHSR (0x91)
                                Store (Zero, Local2)
                                If (And (One, \_SB.PCI0.LPCB.EC0.SW2S))
                                {
                                    Store (Zero, \_SB.PCI0.RP05.J380.D3EF)
                                }
                                Else
                                {
                                    Store (One, \_SB.PCI0.RP05.J380.D3EF)
                                }
                            }
                            Else
                            {
                                Decrement (Local2)
                            }
                        }
                    }
                    Else
                    {
                        Sleep (0x64)
                    }

                    Notify (\_SB.PCI0.RP05, Zero)
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP05.HPSX)
                }
            }

            If (LAnd (LEqual (RP6D, Zero), \_SB.PCI0.RP06.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP06.PDCX)
                {
                    Store (One, \_SB.PCI0.RP06.PDCX)
                    Store (One, \_SB.PCI0.RP06.HPSX)
                    Notify (\_SB.PCI0.RP06, Zero)
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP06.HPSX)
                }
            }
        }

        Method (_L06, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If (LAnd (\_SB.PCI0.GFX0.GSSE, LNot (GSMI)))
            {
                \_SB.PCI0.GFX0.GSCI ()
            }
            Else
            {
                If (LEqual (And (\_SB.PCI0.ESCS, 0x08), 0x08))
                {
                    Store (One, Local0)
                    Store (\_SB.PCI0.T0IS, \_SB.PCI0.T0IS)
                    Store (\_SB.PCI0.T0IS, Local0)
                    Store (\_SB.PCI0.T1IS, \_SB.PCI0.T1IS)
                    Store (\_SB.PCI0.T1IS, Local0)
                    Store (One, SCIS)
                    Store (One, \_SB.PCI0.GTSE)
                    If (CondRefOf (\_SB.PCI0.TMEM.GPEH))
                    {
                        \_SB.PCI0.TMEM.GPEH ()
                    }
                }
                Else
                {
                    Store (One, SCIS)
                }
            }
        }

        Method (_L07, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Store (0x20, \_SB.PCI0.SBUS.HSTS)
        }

        Method (_L08, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
        }

        Method (_L18, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
        }

        Method (_L09, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.P0P2, 0x02)
            Notify (\_SB.PCI0.RP01, 0x02)
            Notify (\_SB.PCI0.RP02, 0x02)
            Notify (\_SB.PCI0.RP03, 0x02)
            Notify (\_SB.PCI0.RP04, 0x02)
            Notify (\_SB.PCI0.RP05, 0x02)
            Notify (\_SB.PCI0.RP06, 0x02)
        }

        Method (_L0B, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.P0P1, 0x02)
        }

        Method (_L03, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.USB0, 0x02)
        }

        Method (_L04, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.USB1, 0x02)
        }

        Method (_L0C, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.USB2, 0x02)
        }

        Method (_L20, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.USBR, 0x02)
            Notify (\_SB.PCI0.USB5, 0x02)
        }

        Method (_L0D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.EHCO, 0x02)
            Notify (\_SB.PCI0.EHCT, 0x02)
            Notify (\_SB.PCI0.HDEF, 0x02)
        }

        Method (_L0E, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.USB3, 0x02)
        }

        Method (_L05, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.USB4, 0x02)
        }
    }

    Name (_S0, Package (0x04)  // _S0_: S0 System State
    {
        Zero, 
        Zero, 
        Zero, 
        Zero
    })
    Name (_S2, Package (0x04)  // _S2_: S2 System State
    {
        0x04, 
        Zero, 
        Zero, 
        Zero
    })
    Name (_S3, Package (0x04)  // _S3_: S3 System State
    {
        0x05, 
        Zero, 
        Zero, 
        Zero
    })
    Name (_S4, Package (0x04)  // _S4_: S4 System State
    {
        0x06, 
        Zero, 
        Zero, 
        Zero
    })
    Name (_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x07, 
        Zero, 
        Zero, 
        Zero
    })
    Scope (_SB.PCI0.LPCB)
    {
        Device (EC0)
        {
            Name (_HID, EisaId ("PNP0C09"))  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_GPE, 0x17)  // _GPE: General Purpose Events
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (BFFR, ResourceTemplate ()
                {
                    IO (Decode16,
                        0x0062,             // Range Minimum
                        0x0062,             // Range Maximum
                        0x00,               // Alignment
                        0x01,               // Length
                        )
                    IO (Decode16,
                        0x0066,             // Range Minimum
                        0x0066,             // Range Maximum
                        0x00,               // Alignment
                        0x01,               // Length
                        )
                })
                Return (BFFR)
            }

            OperationRegion (ERAM, EmbeddedControl, Zero, 0xFF)
            Field (ERAM, ByteAcc, NoLock, Preserve)
            {
                Offset (0x04), 
                CMCM,   8, 
                CMD1,   8, 
                CMD2,   8, 
                CMD3,   8, 
                Offset (0x18), 
                SMPR,   8, 
                SMST,   8, 
                SMAD,   8, 
                SMCM,   8, 
                SM00,   8, 
                SM01,   8, 
                SM02,   8, 
                SM03,   8, 
                SM04,   8, 
                SM05,   8, 
                SM06,   8, 
                SM07,   8, 
                SM08,   8, 
                SM09,   8, 
                SM10,   8, 
                SM11,   8, 
                SM12,   8, 
                SM13,   8, 
                SM14,   8, 
                SM15,   8, 
                SM16,   8, 
                SM17,   8, 
                SM18,   8, 
                SM19,   8, 
                SM20,   8, 
                SM21,   8, 
                SM22,   8, 
                SM23,   8, 
                SM24,   8, 
                SM25,   8, 
                SM26,   8, 
                SM27,   8, 
                SM28,   8, 
                SM29,   8, 
                SM30,   8, 
                SM31,   8, 
                BCNT,   8, 
                SMAA,   8, 
                BA00,   8, 
                BA01,   8, 
                SW2S,   1, 
                Offset (0x41), 
                    ,   4, 
                CFAN,   1, 
                PFN2,   1, 
                FVIS,   1, 
                PFLG,   1, 
                Offset (0x43), 
                TMSS,   2, 
                    ,   2, 
                BANK,   4, 
                Offset (0x45), 
                VFAN,   1, 
                Offset (0x46), 
                RL01,   1, 
                RD01,   1, 
                RF01,   1, 
                RP01,   1, 
                RB01,   1, 
                RC01,   1, 
                    ,   1, 
                R701,   1, 
                R801,   1, 
                RM01,   1, 
                RI01,   1, 
                    ,   1, 
                    ,   1, 
                    ,   1, 
                RA01,   1, 
                RR01,   1, 
                RL10,   1, 
                RD10,   1, 
                RF10,   1, 
                RP10,   1, 
                RB10,   1, 
                RC10,   1, 
                    ,   1, 
                R710,   1, 
                R810,   1, 
                RM10,   1, 
                RI10,   1, 
                    ,   1, 
                    ,   1, 
                    ,   1, 
                RA10,   1, 
                RR10,   1, 
                WL01,   1, 
                WD01,   1, 
                WF01,   1, 
                WP01,   1, 
                WB01,   1, 
                WC01,   1, 
                    ,   1, 
                W701,   1, 
                W801,   1, 
                WM01,   1, 
                WI01,   1, 
                    ,   1, 
                    ,   1, 
                    ,   1, 
                WA01,   1, 
                WR01,   1, 
                WL10,   1, 
                WD10,   1, 
                WF10,   1, 
                WP10,   1, 
                WB10,   1, 
                WC10,   1, 
                    ,   1, 
                W710,   1, 
                W810,   1, 
                WM10,   1, 
                WI10,   1, 
                    ,   1, 
                    ,   1, 
                    ,   1, 
                WA10,   1, 
                WR10,   1, 
                LIDE,   1, 
                BAYE,   1, 
                EFDE,   1, 
                PRDE,   1, 
                BRBE,   1, 
                CRTE,   1, 
                    ,   1, 
                W7BE,   1, 
                W8BE,   1, 
                PMEE,   1, 
                INTE,   1, 
                    ,   1, 
                    ,   1, 
                    ,   1, 
                DB2E,   1, 
                DB3E,   1, 
                Offset (0x52), 
                    ,   1, 
                    ,   1, 
                    ,   1, 
                    ,   1, 
                BAYS,   1, 
                W7BS,   1, 
                PRDS,   1, 
                Offset (0x53), 
                PBSS,   1, 
                ACIO,   1, 
                NOVO,   1, 
                LDS0,   1, 
                    ,   1, 
                    ,   1, 
                    ,   1, 
                Offset (0x54), 
                SCIM,   8, 
                Offset (0x57), 
                RG57,   8, 
                RTMP,   8, 
                RG59,   8, 
                RG5A,   8, 
                RG5B,   8, 
                LOCP,   1, 
                Offset (0x5D), 
                THTB,   8, 
                VGAD,   1, 
                TJCP,   2, 
                MODT,   1, 
                Offset (0x5F), 
                CFN2,   1, 
                SFN2,   1, 
                TPNT,   1, 
                W7FG,   1, 
                    ,   1, 
                LNON,   1, 
                Offset (0x66), 
                BLVL,   8, 
                WLSE,   1, 
                BTDE,   1, 
                CCDE,   1, 
                WWAE,   1, 
                    ,   1, 
                    ,   1, 
                    ,   1, 
                KBMF,   1, 
                Offset (0x6A), 
                BATS,   16, 
                BATC,   1, 
                Offset (0x71), 
                MBTS,   1, 
                MBTF,   1, 
                Offset (0x72), 
                MBTC,   1, 
                    ,   2, 
                MBNH,   1, 
                Offset (0x77), 
                BA1C,   8, 
                Offset (0x7E), 
                BA1T,   8, 
                Offset (0x81), 
                SBTS,   1, 
                SBTF,   1, 
                Offset (0x82), 
                SBTC,   1, 
                Offset (0x87), 
                BA2C,   8, 
                Offset (0x96), 
                CFS0,   8, 
                CFS1,   9, 
                Offset (0xA0), 
                POD0,   8, 
                POD1,   8, 
                Offset (0xB9), 
                SEBT,   8, 
                Offset (0xBB), 
                SLB0,   8, 
                SLB1,   8, 
                SLB2,   8, 
                Offset (0xBF), 
                GSWS,   1, 
                RFSS,   1, 
                WRFS,   1, 
                BTSS,   1, 
                CCDS,   1, 
                BLIS,   1, 
                G3RS,   1, 
                TPDS,   1, 
                Offset (0xC1), 
                MCU0,   8, 
                MCU1,   8, 
                MBR0,   8, 
                MBR1,   8, 
                MBV0,   8, 
                MBV1,   8, 
                Offset (0xC8), 
                ACUR,   16, 
                ABRM,   16, 
                ABVG,   16, 
                Offset (0xCF), 
                DLYC,   8, 
                EBPL,   1, 
                Offset (0xD2), 
                    ,   6, 
                APWR,   1, 
                DLYE,   1, 
                Offset (0xD6), 
                DBPL,   8, 
                Offset (0xDB), 
                ANYK,   1, 
                    ,   1, 
                    ,   1, 
                    ,   1, 
                WLID,   1, 
                Offset (0xDF), 
                WLNS,   1, 
                Offset (0xE0), 
                BFC0,   8, 
                BFC1,   8, 
                B2FC,   16, 
                Offset (0xE7), 
                GQKS,   7, 
                Offset (0xE8), 
                    ,   7, 
                ONEK,   1, 
                Offset (0xEB), 
                LOMD,   1, 
                CBDE,   1, 
                Offset (0xED), 
                SPL0,   1, 
                SPL1,   1, 
                SPL2,   1, 
                SPL3,   1, 
                ADT0,   1, 
                Offset (0xF5), 
                    ,   7, 
                ODD0,   1, 
                    ,   3, 
                ODD1,   2, 
                Offset (0xFA), 
                STC0,   8, 
                STC1,   8, 
                SPC0,   8, 
                SPC1,   8
            }

            Name (BATO, Zero)
            Name (BATN, Zero)
            Name (BATF, 0xC0)
            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If (LAnd (LEqual (Arg0, 0x03), LEqual (Arg1, One)))
                {
                    Store (One, ECON)
                    Store (One, S5SB)
                    Store (Zero, LNON)
                    UPBR ()
                    If (SW2S)
                    {
                        Store (Zero, ^^^RP05.J380.D3EF)
                    }
                    Else
                    {
                        Store (One, ^^^RP05.J380.D3EF)
                    }

                    If (GSWS)
                    {
                        If (WLSE)
                        {
                            Store (FL07, WRFS)
                            Store (FL07, GO28)
                        }
                        Else
                        {
                            Store (Zero, WRFS)
                            Store (Zero, GO28)
                        }

                        If (BTDE)
                        {
                            Store (FL10, BTSS)
                            If (FL10)
                            {
                                Store (Zero, GO24)
                                Store (Zero, GO34)
                            }
                            Else
                            {
                                Store (One, GO24)
                                Store (One, GO34)
                            }
                        }
                        Else
                        {
                            Store (Zero, BTSS)
                            Store (One, GO24)
                            Store (One, GO34)
                        }

                        If (WWAE)
                        {
                            Store (FL17, G3RS)
                            Store (FL17, GO27)
                        }
                        Else
                        {
                            Store (Zero, G3RS)
                            Store (Zero, GO27)
                        }
                    }
                    Else
                    {
                        Store (Zero, GO28)
                        Store (One, GO24)
                        Store (One, GO34)
                        Store (Zero, GO27)
                    }

                    WWBL ()
                    If (LGreaterEqual (OSYS, 0x07D6))
                    {
                        Store (One, FVIS)
                    }
                    Else
                    {
                        Store (Zero, FVIS)
                        If (IGDS)
                        {
                            ISBC (^^^GFX0.PWMC)
                        }
                    }

                    Store (One, ^^^GFX0.CLID)
                    Store (0x0A, POD1)
                }
            }

            Method (BPOL, 1, NotSerialized)
            {
                Store (Arg0, DBPL)
                Store (One, EBPL)
            }

            Mutex (CMUT, 0x00)
            Method (CMC2, 3, NotSerialized)
            {
                Acquire (CMUT, 0xFFFF)
                Store (Arg2, CMD2)
                Store (Arg1, CMD1)
                Store (Arg0, CMCM)
                While (CMCM) {}
                Release (CMUT)
            }

            Name (TIM1, Zero)
            Method (_Q09, 0, NotSerialized)  // _Qxx: EC Query
            {
                Notify (BAT1, 0x80)
                Notify (BAT1, Zero)
                Notify (ACAD, Zero)
                BPOL (0x3C)
            }

            Method (_Q20, 0, NotSerialized)  // _Qxx: EC Query
            {
                If (And (SMST, 0x40))
                {
                    Store (SMAA, Local0)
                    If (LEqual (Local0, 0x14))
                    {
                        SELE ()
                        If (And (0x40, BATF))
                        {
                            Notify (BAT1, 0x81)
                        }

                        If (And (0x02, BATF))
                        {
                            Notify (ACAD, Zero)
                            UPBR ()
                            If (SW2S)
                            {
                                Store (Zero, ^^^RP05.J380.D3EF)
                            }
                            Else
                            {
                                Store (One, ^^^RP05.J380.D3EF)
                            }

                            PNOT ()
                        }

                        Notify (BAT1, 0x80)
                        Store (B1B2 (BA00, BA01), BATO)
                        And (SMST, 0xBF, SMST)
                    }
                }
            }

            Method (UPAC, 0, NotSerialized)
            {
                If (SW2S)
                {
                    Store (ShiftRight (Or (B1B2 (BA00, BA01), 0xC0), 0x08), BA01)
                    Store (Or (B1B2 (BA00, BA01), 0xC0), BA00)
                    Or (BATO, 0xC0, BATO)
                }
                Else
                {
                    Store (ShiftRight (And (B1B2 (BA00, BA01), 0xC0), 0x08), BA01)
                    Store (And (B1B2 (BA00, BA01), 0xC0), BA00)
                    And (BATO, 0xFF3F, BATO)
                }
            }

            Method (SELE, 0, NotSerialized)
            {
                Store (B1B2 (BA00, BA01), BATN)
                Store (Zero, BATF)
                If (And (0xC0, BATN))
                {
                    Or (BATF, One, BATF)
                }

                If (And (0x0300, BATN))
                {
                    Or (BATF, 0x04, BATF)
                }

                And (BATN, One, Local0)
                And (BATO, One, Local1)
                If (Local0)
                {
                    Or (BATF, 0x0100, BATF)
                }
                Else
                {
                    And (BATF, 0xFEFF, BATF)
                }

                If (Not (LEqual (Local0, Local1)))
                {
                    Or (BATF, 0x40, BATF)
                }

                And (BATN, 0xC0, Local0)
                And (BATO, 0xC0, Local1)
                If (Not (LEqual (Local0, Local1)))
                {
                    Or (BATF, 0x02, BATF)
                }

                If (And (One, BATF))
                {
                    If (And (0x04, BATF))
                    {
                        If (And (BATN, 0x10))
                        {
                            Or (BATF, 0x10, BATF)
                        }
                    }
                }
            }

            Method (_Q80, 0, NotSerialized)  // _Qxx: EC Query
            {
                Store ("_Q80 : Temperature Up", Debug)
                Notify (\_TZ.TZ00, 0x80)
            }

            Method (_Q81, 0, NotSerialized)  // _Qxx: EC Query
            {
                Store ("_Q81 : Temperature Down", Debug)
                Notify (\_TZ.TZ00, 0x80)
            }

            Method (_Q8F, 0, NotSerialized)  // _Qxx: EC Query
            {
                Store ("_Q8F : Hot Key Event", Debug)
                P8H4 (0x8F)
                If (GI19)
                {
                    If (CCDE)
                    {
                        If (CCDS)
                        {
                            PHSR (0x8B)
                        }
                        Else
                        {
                            PHSR (0x8C)
                        }
                    }
                }

                If (GSWS)
                {
                    If (WLSE)
                    {
                        Store (WRFS, GO28)
                    }

                    If (BTDE)
                    {
                        If (BTSS)
                        {
                            Store (Zero, GO24)
                            Store (Zero, GO34)
                        }
                        Else
                        {
                            Store (One, GO24)
                            Store (One, GO34)
                        }
                    }

                    If (WWAE)
                    {
                        Store (G3RS, GO27)
                    }
                }
                Else
                {
                    Store (Zero, GO27)
                    Store (Zero, GO28)
                    Store (One, GO24)
                    Store (One, GO34)
                }

                WWBL ()
                If (GSWS)
                {
                    Store (GO28, FL07)
                    Store (Not (GO24), FL10)
                    Store (GO27, FL17)
                }

                Store ("_Q8F : Hot Key Event Finished", Debug)
            }

            Method (DR10, 0, NotSerialized)
            {
                Store ("_DAA : Hot Key Event", Debug)
                P8H4 (0xAA)
                If (GSWS)
                {
                    If (WLSE)
                    {
                        If (FL07)
                        {
                            Store (One, WRFS)
                            Store (One, GO28)
                        }
                        Else
                        {
                            Store (Zero, WRFS)
                            Store (Zero, GO28)
                        }
                    }

                    If (BTDE)
                    {
                        If (FL10)
                        {
                            Store (One, BTSS)
                            Store (Zero, GO24)
                            Store (Zero, GO34)
                        }
                        Else
                        {
                            Store (Zero, BTSS)
                            Store (One, GO24)
                            Store (One, GO34)
                        }
                    }

                    If (WWAE)
                    {
                        If (FL17)
                        {
                            Store (One, G3RS)
                            Store (One, GO27)
                        }
                        Else
                        {
                            Store (Zero, G3RS)
                            Store (Zero, GO27)
                        }
                    }
                }
                Else
                {
                    Store (Zero, GO27)
                    Store (Zero, GO28)
                    Store (One, GO24)
                    Store (One, GO34)
                }

                WWBL ()
            }

            Method (_Q90, 0, NotSerialized)  // _Qxx: EC Query
            {
                P8H4 (0x90)
                If (LGreaterEqual (OSYS, 0x07D6))
                {
                    If (IGDS)
                    {
                        And (^^^GFX0.CBLV, 0xFF, IBLV)
                        If (LNotEqual (IBLV, IBC0))
                        {
                            And (^^^GFX0.CBLV, 0xFF, IBC0)
                            IBCC (IBC0)
                        }

                        Notify (^^^GFX0.DD03, 0x86)
                        Sleep (0x64)
                        And (^^^GFX0.CBLV, 0xFF, IBC0)
                        IBCC (IBC0)
                    }
                    Else
                    {
                        PHSR (0x9E)
                        Add (Divide (DB01, 0x19, ), One, Local0)
                        If (LOr (LLess (Local0, Zero), LGreater (Local0, 0x0A)))
                        {
                            Store (0x0A, BRNS)
                        }
                        Else
                        {
                            Store (Local0, BRNS)
                        }

                        If (LNotEqual (BRNS, BLVL))
                        {
                            Store (BRNS, BLVL)
                        }

                        Notify (^^^P0P2.VGA.LCD, 0x86)
                    }
                }
                Else
                {
                    PHSR (0x96)
                    If (IGDS)
                    {
                        ISBC (^^^GFX0.PWMC)
                    }

                    Store (BRNS, BLVL)
                }
            }

            Method (_Q91, 0, NotSerialized)  // _Qxx: EC Query
            {
                P8H4 (0x91)
                If (LGreaterEqual (OSYS, 0x07D6))
                {
                    If (IGDS)
                    {
                        And (^^^GFX0.CBLV, 0xFF, IBLV)
                        If (LNotEqual (IBLV, IBC0))
                        {
                            And (^^^GFX0.CBLV, 0xFF, IBC0)
                            IBCC (IBC0)
                        }

                        Notify (^^^GFX0.DD03, 0x87)
                        Sleep (0x64)
                        And (^^^GFX0.CBLV, 0xFF, IBC0)
                        IBCC (IBC0)
                    }
                    Else
                    {
                        PHSR (0x9E)
                        Subtract (Divide (DB01, 0x19, ), One, Local0)
                        If (LOr (LLess (Local0, Zero), LGreater (Local0, 0x0A)))
                        {
                            Store (Zero, BRNS)
                        }
                        Else
                        {
                            Store (Local0, BRNS)
                        }

                        If (LNotEqual (BRNS, BLVL))
                        {
                            Store (BRNS, BLVL)
                        }

                        Notify (^^^P0P2.VGA.LCD, 0x87)
                    }
                }
                Else
                {
                    PHSR (0x97)
                    If (IGDS)
                    {
                        ISBC (^^^GFX0.PWMC)
                    }

                    Store (BRNS, BLVL)
                }
            }

            Mutex (Q26X, 0x00)
            Method (_Q26, 0, NotSerialized)  // _Qxx: EC Query
            {
                Acquire (Q26X, 0xFFFF)
                P8H4 (0x26)
                If (^^^RP05.PDSX)
                {
                    Store (Zero, ^^^RP05.J380.D3EF)
                }
                Else
                {
                    PHSR (0x93)
                }

                Release (Q26X)
            }

            Method (_Q27, 0, NotSerialized)  // _Qxx: EC Query
            {
                P8H4 (0x27)
                Store (One, ^^^RP05.J380.D3EF)
            }

            Mutex (SXXX, 0x00)
            Method (_Q92, 0, NotSerialized)  // _Qxx: EC Query
            {
                Store ("_Q92 : Switch Display Event", Debug)
                P8H4 (0x92)
                If (LNot (^VPC0.APDT))
                {
                    Store (Zero, ^VPC0.GCPU)
                    Acquire (SXXX, 0xFFFF)
                    If (IGDS)
                    {
                        PHSR (0x85)
                        Store (DB00, Local0)
                        If (LEqual (Local0, 0x0B))
                        {
                            ^^^GFX0.GHDS (One)
                        }
                        Else
                        {
                            ^^^GFX0.GHDS (Zero)
                        }
                    }
                    Else
                    {
                        If (LEqual (^^^P0P2.VGA.SWIT, One))
                        {
                            PHSR (0x87)
                        }
                        Else
                        {
                            If (LEqual (^^^P0P2.VGA.SWIT, 0x02)) {}
                            Else
                            {
                                ^^^P0P2.VGA.SWIH ()
                            }
                        }
                    }

                    Release (SXXX)
                    Store (One, ^VPC0.GCPU)
                }

                Store ("_Q92 : End of Switch Display Event", Debug)
            }

            Method (_Q94, 0, NotSerialized)  // _Qxx: EC Query
            {
                P8H4 (0x94)
                Store (LNot (BLIS), GO20)
            }

            Method (_QE0, 0, NotSerialized)  // _Qxx: EC Query
            {
                Store ("_QE0 : LID Switch Event", Debug)
                P8H4 (0xE0)
                If (IGDS)
                {
                    If (LDS0)
                    {
                        Store (Zero, LIDS)
                    }
                    Else
                    {
                        Store (One, LIDS)
                        If (LNot (LOr (LOr (LEqual (^^^GFX0.CPDL, ^^^GFX0.DDL2), LEqual (^^^GFX0.CPL2, ^^^GFX0.DDL2)), LEqual (^^^GFX0.CPL2, 
                            ^^^GFX0.DDL2))))
                        {
                            Store (One, ^^^GFX0.CLID)
                        }

                        If (LAnd (LGreater (OSYS, 0x07D0), LLess (OSYS, 0x07D6)))
                        {
                            ^^^GFX0.GLID (One)
                        }
                    }
                }

                Notify (LID, 0x80)
                Store ("_QE0 : End of LID Switch Event", Debug)
            }

            Method (WWBL, 0, NotSerialized)
            {
                Store (Zero, INS4)
                Store (Zero, S4CT)
                If (GSWS)
                {
                    Store (One, GO39)
                    If (WLSE)
                    {
                        If (GO28)
                        {
                            Store (Zero, GO39)
                        }
                    }

                    If (BTDE)
                    {
                        If (LNot (GO24))
                        {
                            Store (Zero, GO39)
                        }
                    }

                    If (WWAE)
                    {
                        If (GO27)
                        {
                            Store (Zero, GO39)
                        }
                    }
                }
                Else
                {
                    Store (One, GO39)
                }
            }

            Method (_QE2, 0, NotSerialized)  // _Qxx: EC Query
            {
                P8H4 (0xE2)
                Notify (SLPB, 0x80)
            }

            Method (_QE3, 0, NotSerialized)  // _Qxx: EC Query
            {
                P8H4 (0xE3)
                If (S5SB)
                {
                    Store (0x02, SEBT)
                    Store (0x02, CMSB)
                }
                Else
                {
                    Store (CMSB, SEBT)
                }
            }

            Method (_Q43, 0, NotSerialized)  // _Qxx: EC Query
            {
                P8H4 (0x43)
                ^^^^WMI2.CMD2 (0x2A, One, One)
            }

            Method (_QE5, 0, NotSerialized)  // _Qxx: EC Query
            {
                P8H4 (0xE5)
                Notify (DBTN, 0x80)
            }

            Method (_QE6, 0, NotSerialized)  // _Qxx: EC Query
            {
                ^^^^WMI2.CMD3 (0x84)
            }

            Method (_Q44, 0, NotSerialized)  // _Qxx: EC Query
            {
                If (OK3G)
                {
                    ^^^^WMI2.CMD3 (0x85)
                }
            }

            Mutex (QE8X, 0x00)
            Method (_QE8, 0, NotSerialized)  // _Qxx: EC Query
            {
                If (LEqual (Zero, ADT0))
                {
                    Acquire (QE8X, 0xFFFF)
                    P8H4 (0xE8)
                    Store (One, ADT0)
                    PHSR (0x9C)
                    Release (QE8X)
                }
            }

            Mutex (QE9X, 0x00)
            Method (_QE9, 0, NotSerialized)  // _Qxx: EC Query
            {
                If (LEqual (One, ADT0))
                {
                    Acquire (QE9X, 0xFFFF)
                    P8H4 (0xE9)
                    Store (Zero, ADT0)
                    PHSR (0x9B)
                    Release (QE9X)
                }
            }

            Mutex (QEAX, 0x00)
            Method (_QEA, 0, NotSerialized)  // _Qxx: EC Query
            {
                If (LEqual (Zero, ADT0))
                {
                    If (LEqual (Zero, SPL2))
                    {
                        Acquire (QEAX, 0xFFFF)
                        P8H4 (0xEA)
                        Store (One, SPL2)
                        Sleep (0x32)
                        Store (0x03, \_PR.CPU0._PPC)
                        PNOT ()
                        Sleep (0x32)
                        Store (0x03, \_PR.CPU1._PPC)
                        PNOT ()
                        Sleep (0x32)
                        Release (QEAX)
                    }
                }
            }

            Mutex (QEBX, 0x00)
            Method (_QEB, 0, NotSerialized)  // _Qxx: EC Query
            {
                If (LEqual (Zero, ADT0))
                {
                    If (LNotEqual (SPL1, One))
                    {
                        If (LNotEqual (SPL2, One))
                        {
                            If (LNotEqual (SPL3, One))
                            {
                                Acquire (QEBX, 0xFFFF)
                                P8H4 (0xEB)
                                Store (One, SPL0)
                                Sleep (0x32)
                                Store (0x02, \_PR.CPU0._PPC)
                                PNOT ()
                                Sleep (0x32)
                                Store (0x02, \_PR.CPU1._PPC)
                                PNOT ()
                                Sleep (0x32)
                                Release (QEBX)
                            }
                        }
                    }
                }
            }

            Mutex (QECX, 0x00)
            Method (_QEC, 0, NotSerialized)  // _Qxx: EC Query
            {
                If (LEqual (Zero, ADT0))
                {
                    If (LEqual (Zero, SPL1))
                    {
                        Acquire (QECX, 0xFFFF)
                        P8H4 (0xEC)
                        Store (One, SPL1)
                        Sleep (0x32)
                        Store (0x03, \_PR.CPU0._PPC)
                        PNOT ()
                        Sleep (0x32)
                        Store (0x03, \_PR.CPU1._PPC)
                        PNOT ()
                        Sleep (0x32)
                        Release (QECX)
                    }
                }
            }

            Mutex (QEDX, 0x00)
            Method (_QED, 0, NotSerialized)  // _Qxx: EC Query
            {
                If (LEqual (Zero, ADT0))
                {
                    If (LEqual (Zero, SPL3))
                    {
                        Acquire (QEDX, 0xFFFF)
                        P8H4 (0xED)
                        Store (One, SPL3)
                        Sleep (0x32)
                        Store (0x03, \_PR.CPU0._PPC)
                        PNOT ()
                        Sleep (0x32)
                        Store (0x03, \_PR.CPU1._PPC)
                        PNOT ()
                        Sleep (0x32)
                        Release (QEDX)
                    }
                }
            }

            Mutex (QEEX, 0x00)
            Method (_QEE, 0, NotSerialized)  // _Qxx: EC Query
            {
                If (LEqual (Zero, ADT0))
                {
                    Acquire (QEEX, 0xFFFF)
                    P8H4 (0xEE)
                    Store (Zero, SPL0)
                    Store (Zero, SPL1)
                    Store (Zero, SPL2)
                    Store (Zero, SPL3)
                    Sleep (0x32)
                    Store (Zero, \_PR.CPU0._PPC)
                    PNOT ()
                    Sleep (0x32)
                    Store (Zero, \_PR.CPU1._PPC)
                    PNOT ()
                    Sleep (0x32)
                    Release (QEEX)
                }
            }

            Field (ERAM, ByteAcc, NoLock, Preserve)
            {
                Offset (0x1C), 
                SMW0,   8, 
                SMW1,   8
            }

            Field (ERAM, ByteAcc, NoLock, Preserve)
            {
                Offset (0x1C), 
                SMB0,   8
            }

            Field (ERAM, ByteAcc, NoLock, Preserve)
            {
                Offset (0x1C), 
                FLD0,   64
            }

            Field (ERAM, ByteAcc, NoLock, Preserve)
            {
                Offset (0x1C), 
                DL10,   8, 
                DL11,   8, 
                DL12,   8, 
                DL13,   8, 
                DL14,   8, 
                DL15,   8, 
                DL16,   8, 
                DL17,   8, 
                DL18,   8, 
                DL19,   8, 
                DL1A,   8, 
                DL1B,   8, 
                DL1C,   8, 
                DL1D,   8, 
                DL1E,   8, 
                DL1F,   8
            }

            Field (ERAM, ByteAcc, NoLock, Preserve)
            {
                Offset (0x1C), 
                DL20,   8, 
                DL21,   8, 
                DL22,   8, 
                DL23,   8, 
                DL24,   8, 
                DL25,   8, 
                DL26,   8, 
                DL27,   8, 
                DL28,   8, 
                DL29,   8, 
                DL2A,   8, 
                DL2B,   8, 
                DL2C,   8, 
                DL2D,   8, 
                DL2E,   8, 
                DL2F,   8, 
                DL2G,   8, 
                DL2H,   8, 
                DL2I,   8, 
                DL2J,   8, 
                DL2K,   8, 
                DL2L,   8, 
                DL2M,   8, 
                DL2N,   8
            }

            Field (ERAM, ByteAcc, NoLock, Preserve)
            {
                Offset (0x1C), 
                DL30,   8, 
                DL31,   8, 
                DL32,   8, 
                DL33,   8, 
                DL34,   8, 
                DL35,   8, 
                DL36,   8, 
                DL37,   8, 
                DL38,   8, 
                DL39,   8, 
                DL3A,   8, 
                DL3B,   8, 
                DL3C,   8, 
                DL3D,   8, 
                DL3E,   8, 
                DL3F,   8, 
                DL3G,   8, 
                DL3H,   8, 
                DL3I,   8, 
                DL3J,   8, 
                DL3K,   8, 
                DL3L,   8, 
                DL3M,   8, 
                DL3N,   8, 
                DL3O,   8, 
                DL3P,   8, 
                DL3Q,   8, 
                DL3R,   8, 
                DL3S,   8, 
                DL3T,   8, 
                DL3U,   8, 
                DL3V,   8
            }

            Mutex (MUT0, 0x00)
            Method (SMRD, 4, NotSerialized)
            {
                If (LNot (ECON))
                {
                    Return (0xFF)
                }

                If (LNotEqual (Arg0, 0x07))
                {
                    If (LNotEqual (Arg0, 0x09))
                    {
                        If (LNotEqual (Arg0, 0x0B))
                        {
                            Return (0x19)
                        }
                    }
                }

                Acquire (MUT0, 0xFFFF)
                Store (0x04, Local0)
                While (LGreater (Local0, One))
                {
                    And (SMST, 0x40, SMST)
                    Store (Arg2, SMCM)
                    Store (Arg1, SMAD)
                    Store (Arg0, SMPR)
                    Store (Zero, Local3)
                    While (LNot (And (SMST, 0xBF, Local1)))
                    {
                        Sleep (0x02)
                        Increment (Local3)
                        If (LEqual (Local3, 0x32))
                        {
                            And (SMST, 0x40, SMST)
                            Store (Arg2, SMCM)
                            Store (Arg1, SMAD)
                            Store (Arg0, SMPR)
                            Store (Zero, Local3)
                        }
                    }

                    If (LEqual (Local1, 0x80))
                    {
                        Store (Zero, Local0)
                    }
                    Else
                    {
                        Decrement (Local0)
                    }
                }

                If (Local0)
                {
                    Store (And (Local1, 0x1F), Local0)
                }
                Else
                {
                    If (LEqual (Arg0, 0x07))
                    {
                        Store (SMB0, Arg3)
                    }

                    If (LEqual (Arg0, 0x09))
                    {
                        Store (B1B2 (B1B2 (SMW0, SMW1), SMW1), Arg3)
                    }

                    If (LEqual (Arg0, 0x0B))
                    {
                        Store (BCNT, Local3)
                        ShiftRight (0x0100, 0x03, Local2)
                        If (LGreater (Local3, Local2))
                        {
                            Store (Local2, Local3)
                        }

                        If (LLess (Local3, 0x11))
                        {
                            Store (L1L4 (B1B4 (DL10, DL11, DL12, DL13), B1B4 (DL14, DL15, DL16, DL17), 
                                B1B4 (DL18, DL19, DL1A, DL1B), B1B4 (DL1C, DL1D, DL1E, DL1F)), Local2)
                        }
                        Else
                        {
                            If (LLess (Local3, 0x19))
                            {
                                Store (L1L6 (B1B4 (DL20, DL21, DL22, DL23), B1B4 (DL24, DL25, DL26, DL27), 
                                    B1B4 (DL28, DL29, DL2A, DL2B), B1B4 (DL2C, DL2D, DL2E, DL2F), B1B4 (DL2G, DL2H, 
                                    DL2I, DL2J), B1B4 (DL2K, DL2L, DL2M, DL2N)), Local2)
                            }
                            Else
                            {
                                Store (D2D4 (L1L4 (B1B4 (DL30, DL31, DL32, DL33), B1B4 (DL34, DL35, DL36, 
                                    DL37), B1B4 (DL38, DL39, DL3A, DL3B), B1B4 (DL3C, DL3D, DL3E, DL3F)), L1L4 (B1B4 (
                                    DL3G, DL3H, DL3I, DL3J), B1B4 (DL3K, DL3L, DL3M, DL3N), B1B4 (DL3O, DL3P, DL3Q, 
                                    DL3R), B1B4 (DL3S, DL3T, DL3U, DL3V))), Local2)
                            }
                        }

                        Increment (Local3)
                        Store (Buffer (Local3) {}, Local4)
                        Decrement (Local3)
                        Store (Zero, Local5)
                        While (LGreater (Local3, Local5))
                        {
                            If (LEqual (Local5, Zero))
                            {
                                Store (SM00, Local6)
                            }

                            If (LEqual (Local5, One))
                            {
                                Store (SM01, Local6)
                            }

                            If (LEqual (Local5, 0x02))
                            {
                                Store (SM02, Local6)
                            }

                            If (LEqual (Local5, 0x03))
                            {
                                Store (SM03, Local6)
                            }

                            If (LEqual (Local5, 0x04))
                            {
                                Store (SM04, Local6)
                            }

                            If (LEqual (Local5, 0x05))
                            {
                                Store (SM05, Local6)
                            }

                            If (LEqual (Local5, 0x06))
                            {
                                Store (SM06, Local6)
                            }

                            If (LEqual (Local5, 0x07))
                            {
                                Store (SM07, Local6)
                            }

                            If (LEqual (Local5, 0x08))
                            {
                                Store (SM08, Local6)
                            }

                            If (LEqual (Local5, 0x09))
                            {
                                Store (SM09, Local6)
                            }

                            If (LEqual (Local5, 0x0A))
                            {
                                Store (SM10, Local6)
                            }

                            If (LEqual (Local5, 0x0B))
                            {
                                Store (SM11, Local6)
                            }

                            If (LEqual (Local5, 0x0C))
                            {
                                Store (SM12, Local6)
                            }

                            If (LEqual (Local5, 0x0D))
                            {
                                Store (SM13, Local6)
                            }

                            If (LEqual (Local5, 0x0E))
                            {
                                Store (SM14, Local6)
                            }

                            If (LEqual (Local5, 0x0F))
                            {
                                Store (SM15, Local6)
                            }

                            If (LEqual (Local5, 0x10))
                            {
                                Store (SM16, Local6)
                            }

                            If (LEqual (Local5, 0x11))
                            {
                                Store (SM17, Local6)
                            }

                            If (LEqual (Local5, 0x12))
                            {
                                Store (SM18, Local6)
                            }

                            If (LEqual (Local5, 0x13))
                            {
                                Store (SM19, Local6)
                            }

                            If (LEqual (Local5, 0x14))
                            {
                                Store (SM20, Local6)
                            }

                            If (LEqual (Local5, 0x15))
                            {
                                Store (SM21, Local6)
                            }

                            If (LEqual (Local5, 0x16))
                            {
                                Store (SM22, Local6)
                            }

                            If (LEqual (Local5, 0x17))
                            {
                                Store (SM23, Local6)
                            }

                            If (LEqual (Local5, 0x18))
                            {
                                Store (SM24, Local6)
                            }

                            If (LEqual (Local5, 0x19))
                            {
                                Store (SM25, Local6)
                            }

                            If (LEqual (Local5, 0x1A))
                            {
                                Store (SM26, Local6)
                            }

                            If (LEqual (Local5, 0x1B))
                            {
                                Store (SM27, Local6)
                            }

                            If (LEqual (Local5, 0x1C))
                            {
                                Store (SM28, Local6)
                            }

                            If (LEqual (Local5, 0x1D))
                            {
                                Store (SM29, Local6)
                            }

                            If (LEqual (Local5, 0x1E))
                            {
                                Store (SM30, Local6)
                            }

                            If (LEqual (Local5, 0x1F))
                            {
                                Store (SM31, Local6)
                            }

                            PBFE (Local4, Local5, Local6)
                            Increment (Local5)
                        }

                        PBFE (Local4, Local5, Zero)
                        Store (Local4, Arg3)
                    }
                }

                Release (MUT0)
                Return (Local0)
            }

            Method (SMWR, 4, NotSerialized)
            {
                If (LNot (ECON))
                {
                    Return (0xFF)
                }

                If (LNotEqual (Arg0, 0x06))
                {
                    If (LNotEqual (Arg0, 0x08))
                    {
                        If (LNotEqual (Arg0, 0x0A))
                        {
                            Return (0x19)
                        }
                    }
                }

                Acquire (MUT0, 0xFFFF)
                Store (0x04, Local0)
                While (LGreater (Local0, One))
                {
                    If (LEqual (Arg0, 0x06))
                    {
                        Store (Arg3, SMB0)
                    }

                    If (LEqual (Arg0, 0x08))
                    {
                        Store (And (Arg3, 0xFF), SMW0)
                        Store (ShiftRight (Arg3, 0x08), SMW1)
                    }

                    If (LEqual (Arg0, 0x0A))
                    {
                        Store (SizeOf (Arg3), Local3)
                        And (Local3, 0x1F, Local3)
                        Store (Arg3, Local4)
                        Store (Zero, Local5)
                        While (LGreater (Local3, Local5))
                        {
                            GBFE (Local4, Local5, RefOf (Local6))
                            If (LEqual (Local5, Zero))
                            {
                                Store (Local6, SM00)
                            }

                            If (LEqual (Local5, One))
                            {
                                Store (Local6, SM01)
                            }

                            If (LEqual (Local5, 0x02))
                            {
                                Store (Local6, SM02)
                            }

                            If (LEqual (Local5, 0x03))
                            {
                                Store (Local6, SM03)
                            }

                            If (LEqual (Local5, 0x04))
                            {
                                Store (Local6, SM04)
                            }

                            If (LEqual (Local5, 0x05))
                            {
                                Store (Local6, SM05)
                            }

                            If (LEqual (Local5, 0x06))
                            {
                                Store (Local6, SM06)
                            }

                            If (LEqual (Local5, 0x07))
                            {
                                Store (Local6, SM07)
                            }

                            If (LEqual (Local5, 0x08))
                            {
                                Store (Local6, SM08)
                            }

                            If (LEqual (Local5, 0x09))
                            {
                                Store (Local6, SM09)
                            }

                            If (LEqual (Local5, 0x0A))
                            {
                                Store (Local6, SM10)
                            }

                            If (LEqual (Local5, 0x0B))
                            {
                                Store (Local6, SM11)
                            }

                            If (LEqual (Local5, 0x0C))
                            {
                                Store (Local6, SM12)
                            }

                            If (LEqual (Local5, 0x0D))
                            {
                                Store (Local6, SM13)
                            }

                            If (LEqual (Local5, 0x0E))
                            {
                                Store (Local6, SM14)
                            }

                            If (LEqual (Local5, 0x0F))
                            {
                                Store (Local6, SM15)
                            }

                            If (LEqual (Local5, 0x10))
                            {
                                Store (Local6, SM16)
                            }

                            If (LEqual (Local5, 0x11))
                            {
                                Store (Local6, SM17)
                            }

                            If (LEqual (Local5, 0x12))
                            {
                                Store (Local6, SM18)
                            }

                            If (LEqual (Local5, 0x13))
                            {
                                Store (Local6, SM19)
                            }

                            If (LEqual (Local5, 0x14))
                            {
                                Store (Local6, SM20)
                            }

                            If (LEqual (Local5, 0x15))
                            {
                                Store (Local6, SM21)
                            }

                            If (LEqual (Local5, 0x16))
                            {
                                Store (Local6, SM22)
                            }

                            If (LEqual (Local5, 0x17))
                            {
                                Store (Local6, SM23)
                            }

                            If (LEqual (Local5, 0x18))
                            {
                                Store (Local6, SM24)
                            }

                            If (LEqual (Local5, 0x19))
                            {
                                Store (Local6, SM25)
                            }

                            If (LEqual (Local5, 0x1A))
                            {
                                Store (Local6, SM26)
                            }

                            If (LEqual (Local5, 0x1B))
                            {
                                Store (Local6, SM27)
                            }

                            If (LEqual (Local5, 0x1C))
                            {
                                Store (Local6, SM28)
                            }

                            If (LEqual (Local5, 0x1D))
                            {
                                Store (Local6, SM29)
                            }

                            If (LEqual (Local5, 0x1E))
                            {
                                Store (Local6, SM30)
                            }

                            If (LEqual (Local5, 0x1F))
                            {
                                Store (Local6, SM31)
                            }

                            Increment (Local5)
                        }

                        Store (And (Local3, 0x1F), BCNT)
                    }

                    And (SMST, 0x40, SMST)
                    Store (Arg2, SMCM)
                    Store (Arg1, SMAD)
                    Store (Arg0, SMPR)
                    Store (Zero, Local3)
                    While (LNot (And (SMST, 0xBF, Local1)))
                    {
                        Sleep (0x02)
                        Increment (Local3)
                        If (LEqual (Local3, 0x32))
                        {
                            And (SMST, 0x40, SMST)
                            Store (Arg2, SMCM)
                            Store (Arg1, SMAD)
                            Store (Arg0, SMPR)
                            Store (Zero, Local3)
                        }
                    }

                    If (LEqual (Local1, 0x80))
                    {
                        Store (Zero, Local0)
                    }
                    Else
                    {
                        Decrement (Local0)
                    }
                }

                If (Local0)
                {
                    Store (And (Local1, 0x1F), Local0)
                }

                Release (MUT0)
                Return (Local0)
            }

            Method (RE1B, 1, NotSerialized)
            {
                OperationRegion (ERAM, EmbeddedControl, Arg0, One)
                Field (ERAM, ByteAcc, NoLock, Preserve)
                {
                    BYTE,   8
                }

                Return (BYTE)
            }

            Method (RECB, 2, Serialized)
            {
                ShiftRight (Arg1, 0x03, Arg1)
                Name (TEMP, Buffer (Arg1) {})
                Add (Arg0, Arg1, Arg1)
                Store (Zero, Local0)
                While (LLess (Arg0, Arg1))
                {
                    Store (RE1B (Arg0), Index (TEMP, Local0))
                    Increment (Arg0)
                    Increment (Local0)
                }

                Return (TEMP)
            }

            Method (WE1B, 2, NotSerialized)
            {
                OperationRegion (ERAM, EmbeddedControl, Arg0, One)
                Field (ERAM, ByteAcc, NoLock, Preserve)
                {
                    BYTE,   8
                }

                Store (Arg1, BYTE)
            }

            Method (WECB, 3, Serialized)
            {
                ShiftRight (Arg1, 0x03, Arg1)
                Name (TEMP, Buffer (Arg1) {})
                Store (Arg2, TEMP)
                Add (Arg0, Arg1, Arg1)
                Store (Zero, Local0)
                While (LLess (Arg0, Arg1))
                {
                    WE1B (Arg0, DerefOf (Index (TEMP, Local0)))
                    Increment (Arg0)
                    Increment (Local0)
                }
            }
        }

        Scope (\)
        {
            OperationRegion (WIN1, SystemIO, 0x2E, 0x02)
            Field (WIN1, ByteAcc, NoLock, Preserve)
            {
                INDP,   8, 
                DATP,   8
            }

            IndexField (INDP, DATP, ByteAcc, NoLock, Preserve)
            {
                Offset (0x02), 
                CFG,    8, 
                Offset (0x07), 
                LDN,    8, 
                Offset (0x20), 
                IDHI,   8, 
                IDLO,   8, 
                POWC,   8, 
                Offset (0x30), 
                ACTR,   8, 
                Offset (0x60), 
                IOAH,   8, 
                IOAL,   8, 
                IOBH,   8, 
                IOBL,   8, 
                Offset (0x70), 
                INTR,   8, 
                Offset (0x72), 
                INT1,   8, 
                Offset (0x74), 
                DMCH,   8, 
                Offset (0xF0), 
                OPT1,   8, 
                OPT2,   8, 
                OPT3,   8
            }

            Method (ENFG, 0, NotSerialized)
            {
                Store (0x87, INDP)
                Store (One, INDP)
                Store (0x55, INDP)
                Store (0xAA, INDP)
                Or (POWC, 0x80, POWC)
                Store (0x87, INDP)
                Store (One, INDP)
                Store (0x55, INDP)
                Store (0x55, INDP)
                Or (POWC, 0x80, POWC)
            }

            Method (EXFG, 0, NotSerialized)
            {
                Store (0x02, CFG)
            }

            Method (GSRG, 1, NotSerialized)
            {
                Store (Arg0, INDP)
                Return (DATP)
            }

            Method (SSRG, 2, NotSerialized)
            {
                Store (Arg0, INDP)
                Store (Arg1, DATP)
            }
        }

        Device (CIR)
        {
            Name (_HID, EisaId ("ITE8708"))  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                ENFG ()
                Store (0x0A, LDN)
                EXFG ()
                Return (0x0F)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (BUF1, ResourceTemplate ()
                {
                    IO (Decode16,
                        0x0000,             // Range Minimum
                        0x0000,             // Range Maximum
                        0x04,               // Alignment
                        0x08,               // Length
                        _Y13)
                    IRQNoFlags (_Y14)
                        {}
                })
                CreateWordField (BUF1, \_SB.PCI0.LPCB.CIR._CRS._Y13._MIN, IOLO)  // _MIN: Minimum Base Address
                CreateWordField (BUF1, 0x03, IOHI)
                CreateWordField (BUF1, \_SB.PCI0.LPCB.CIR._CRS._Y13._MAX, IORL)  // _MAX: Maximum Base Address
                CreateWordField (BUF1, 0x05, IORH)
                CreateWordField (BUF1, \_SB.PCI0.LPCB.CIR._CRS._Y14._INT, IRQW)  // _INT: Interrupts
                ENFG ()
                Store (0x0A, LDN)
                Store (IOAL, IOLO)
                Store (IOAL, IORL)
                Store (IOAH, IOHI)
                Store (IOAH, IORH)
                Store (One, Local0)
                ShiftLeft (Local0, INTR, IRQW)
                EXFG ()
                Return (BUF1)
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (ResourceTemplate ()
                {
                    StartDependentFnNoPri ()
                    {
                        IO (Decode16,
                            0x0260,             // Range Minimum
                            0x0260,             // Range Maximum
                            0x08,               // Alignment
                            0x08,               // Length
                            )
                        IRQNoFlags ()
                            {10}
                    }
                    StartDependentFnNoPri ()
                    {
                        IO (Decode16,
                            0x0260,             // Range Minimum
                            0x0260,             // Range Maximum
                            0x08,               // Alignment
                            0x08,               // Length
                            )
                        IRQNoFlags ()
                            {5}
                    }
                    StartDependentFnNoPri ()
                    {
                        IO (Decode16,
                            0x0310,             // Range Minimum
                            0x0310,             // Range Maximum
                            0x08,               // Alignment
                            0x08,               // Length
                            )
                        IRQNoFlags ()
                            {10}
                    }
                    StartDependentFnNoPri ()
                    {
                        IO (Decode16,
                            0x0310,             // Range Minimum
                            0x0310,             // Range Maximum
                            0x08,               // Alignment
                            0x08,               // Length
                            )
                        IRQNoFlags ()
                            {5}
                    }
                    EndDependentFn ()
                })
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateByteField (Arg0, 0x02, IOLO)
                CreateByteField (Arg0, 0x03, IOHI)
                CreateWordField (Arg0, 0x09, IRQW)
                ENFG ()
                Store (0x0A, LDN)
                Store (One, ACTR)
                Store (IOLO, IOAL)
                Store (IOHI, IOAH)
                FindSetRightBit (IRQW, Local0)
                Subtract (Local0, One, INTR)
                EXFG ()
            }
        }
    }

    Scope (_SB.PCI0.LPCB.EC0)
    {
        Field (ERAM, ByteAcc, Lock, Preserve)
        {
            Offset (0xF2), 
            VCMD,   8, 
            VDAT,   8, 
            VSTA,   8
        }

        Device (VPC0)
        {
            Name (_HID, "VPC2004")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (VPC, Zero)
            Name (VPCD, Zero)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (CFG, 0, NotSerialized)
            {
                Store (ILDD (), Local0)
                Store (Local0, VPC)
                Return (VPC)
            }

            Method (VPCR, 1, Serialized)
            {
                If (LEqual (Arg0, One))
                {
                    Store (VCMD, VPCD)
                }
                Else
                {
                    Store (VDAT, VPCD)
                }

                Return (VPCD)
            }

            Method (VPCW, 2, Serialized)
            {
                If (LEqual (Arg0, One))
                {
                    Store (Arg1, VCMD)
                }
                Else
                {
                    Store (Arg1, VDAT)
                }

                Return (Zero)
            }

            Mutex (VXXX, 0x00)
            Name (GCPU, One)
            Method (VPCM, 2, Serialized)
            {
                Acquire (VXXX, 0xFFFF)
                Name (T_0, Zero)
                Store (ToInteger (Arg0), T_0)
                If (LEqual (T_0, 0x12))
                {
                    Store (BLVL, Local0)
                }
                Else
                {
                    If (LEqual (T_0, 0x13))
                    {
                        Store (Arg1, BLVL)
                        Store (BLVL, Local0)
                    }
                    Else
                    {
                        If (LEqual (T_0, 0x29))
                        {
                            Store (GCPU, Local0)
                        }
                        Else
                        {
                            P8H4 (0x77)
                            Store ("No Match Case in VPCM", Debug)
                        }
                    }
                }

                Store (Local0, VDAT)
                Store (Zero, VCMD)
                Release (VXXX)
            }

            Name (APDT, Zero)
            Method (APPC, 1, Serialized)
            {
                Store (Arg0, APDT)
                Return (Zero)
            }

            Method (DBSL, 0, NotSerialized)
            {
                Return (Package (0x0B)
                {
                    0x64, 
                    0x5F, 
                    0x55, 
                    0x4B, 
                    0x41, 
                    0x37, 
                    0x2D, 
                    0x23, 
                    0x19, 
                    0x0F, 
                    0x05
                })
            }

            Method (BASL, 1, Serialized)
            {
                Store (Arg0, Local0)
                Store (And (Arg0, 0xFF), STC0)
                Store (ShiftRight (Arg0, 0x08), STC1)
                ShiftRight (Local0, 0x10, Local0)
                Store (And (Local0, 0xFF), SPC0)
                Store (ShiftRight (Local0, 0x08), SPC1)
            }

            Method (HALS, 0, NotSerialized)
            {
                Return (0xFF)
            }

            Method (SALS, 1, Serialized)
            {
                Return (Zero)
            }

            Method (HODD, 0, NotSerialized)
            {
                Return (0xFF)
            }

            Method (SODD, 1, Serialized)
            {
                Return (Zero)
            }

            Name (VPCY, Zero)
            Method (ILDD, 0, NotSerialized)
            {
                Store (Zero, VPCY)
                If (GI19)
                {
                    Or (VPCY, 0x00700000, VPCY)
                }
                Else
                {
                    If (GI37)
                    {
                        If (GI36)
                        {
                            Or (VPCY, 0x00100000, VPCY)
                        }
                        Else
                        {
                            Or (VPCY, 0x00200000, VPCY)
                        }
                    }
                    Else
                    {
                        Or (VPCY, 0x00100000, VPCY)
                    }
                }

                If (CCDE)
                {
                    Or (VPCY, 0x00080000, VPCY)
                }

                If (WLSE)
                {
                    Or (VPCY, 0x00040000, VPCY)
                }

                If (WWAE)
                {
                    Or (VPCY, 0x00020000, VPCY)
                }

                If (BTDE)
                {
                    Or (VPCY, 0x00010000, VPCY)
                }

                If (GI19)
                {
                    Or (VPCY, Zero, VPCY)
                }
                Else
                {
                    If (GI37)
                    {
                        Or (VPCY, Zero, VPCY)
                    }
                    Else
                    {
                        Or (VPCY, Zero, VPCY)
                    }
                }

                If (IGDS)
                {
                    Or (VPCY, Zero, VPCY)
                }
                Else
                {
                    Or (VPCY, 0x1000, VPCY)
                }

                If (GI19)
                {
                    If (LOr (LOr (LEqual (^^^^GFX0.CPDL, 0x0300), LEqual (^^^^GFX0.CPL2, 0x0300)), LEqual (^^^^GFX0.CPL3, 0x0300)))
                    {
                        Or (VPCY, 0x0800, VPCY)
                    }
                    Else
                    {
                        And (VPCY, 0xFFFFF7FF, VPCY)
                    }
                }

                If (IGDS)
                {
                    Or (VPCY, 0x0100, VPCY)
                }
                Else
                {
                    Or (VPCY, 0x0300, VPCY)
                }

                Return (VPCY)
            }

            Method (VPDG, 1, NotSerialized)
            {
                Store (DB06, DB07)
                Store (DB05, DB06)
                Store (DB04, DB05)
                Store (DB03, DB04)
                Store (DB02, DB03)
                Store (DB01, DB02)
                Store (DB00, DB01)
                Store (Arg0, DB00)
            }
        }

        Method (_Q41, 0, NotSerialized)  // _Qxx: EC Query
        {
            P8H4 (0x41)
            Notify (VPC0, 0x80)
        }

        Name (VQ00, Zero)
        Name (VQ01, 0x64)
        Method (_Q42, 0, NotSerialized)  // _Qxx: EC Query
        {
            P8H4 (0x42)
            Store (BLVL, VQ00)
            If (LNotEqual (BRNS, VQ00))
            {
                If (LGreaterEqual (OSYS, 0x07D6))
                {
                    If (LEqual (VQ00, Zero))
                    {
                        Store (DerefOf (Index (IBCL, 0x02)), VQ01)
                    }
                    Else
                    {
                        If (LEqual (VQ00, One))
                        {
                            Store (DerefOf (Index (IBCL, 0x03)), VQ01)
                        }
                        Else
                        {
                            If (LEqual (VQ00, 0x02))
                            {
                                Store (DerefOf (Index (IBCL, 0x04)), VQ01)
                            }
                            Else
                            {
                                If (LEqual (VQ00, 0x03))
                                {
                                    Store (DerefOf (Index (IBCL, 0x05)), VQ01)
                                }
                                Else
                                {
                                    If (LEqual (VQ00, 0x04))
                                    {
                                        Store (DerefOf (Index (IBCL, 0x06)), VQ01)
                                    }
                                    Else
                                    {
                                        If (LEqual (VQ00, 0x05))
                                        {
                                            Store (DerefOf (Index (IBCL, 0x07)), VQ01)
                                        }
                                        Else
                                        {
                                            If (LEqual (VQ00, 0x06))
                                            {
                                                Store (DerefOf (Index (IBCL, 0x08)), VQ01)
                                            }
                                            Else
                                            {
                                                If (LEqual (VQ00, 0x07))
                                                {
                                                    Store (DerefOf (Index (IBCL, 0x09)), VQ01)
                                                }
                                                Else
                                                {
                                                    If (LEqual (VQ00, 0x08))
                                                    {
                                                        Store (DerefOf (Index (IBCL, 0x0A)), VQ01)
                                                    }
                                                    Else
                                                    {
                                                        If (LEqual (VQ00, 0x09))
                                                        {
                                                            Store (DerefOf (Index (IBCL, 0x0B)), VQ01)
                                                        }
                                                        Else
                                                        {
                                                            Store (DerefOf (Index (IBCL, 0x0C)), VQ01)
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }

                    ^^^GFX0.DD03._BCM (VQ01)
                    Store (VQ00, BRNS)
                    Sleep (0x64)
                    And (^^^GFX0.CBLV, 0xFF, IBC0)
                    IBCC (IBC0)
                }
                Else
                {
                    If (LEqual (VQ00, Zero))
                    {
                        Increment (VQ00)
                        Store (VQ00, BRNS)
                        PHSR (0x97)
                    }
                    Else
                    {
                        Decrement (VQ00)
                        Store (VQ00, BRNS)
                        PHSR (0x96)
                    }

                    If (IGDS)
                    {
                        ISBC (^^^GFX0.PWMC)
                    }
                }

                _Q41 ()
            }
        }
    }

    Scope (_SB)
    {
        Device (ACAD)
        {
            Name (_HID, "ACPI0003")  // _HID: Hardware ID
            Mutex (MUTA, 0x00)
            Name (ACWT, Zero)
            Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
            {
                Acquire (MUTA, 0xFFFF)
                Store (ACST, ACWT)
                If (ECON)
                {
                    Store (^^PCI0.LPCB.EC0.SW2S, ACST)
                    Store (^^PCI0.LPCB.EC0.SW2S, PWRS)
                }

                If (LNotEqual (ACWT, ACST))
                {
                    PNOT ()
                }

                Release (MUTA)
                Return (ACST)
            }

            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x18, 
                0x03
            })
        }
    }

    Scope (_SB)
    {
        Method (VTOB, 1, NotSerialized)
        {
            Store (One, Local0)
            ShiftLeft (Local0, Arg0, Local0)
            Return (Local0)
        }

        Method (BTOV, 1, NotSerialized)
        {
            ShiftRight (Arg0, One, Local0)
            Store (Zero, Local1)
            While (Local0)
            {
                Increment (Local1)
                ShiftRight (Local0, One, Local0)
            }

            Return (Local1)
        }

        Method (MKWD, 2, NotSerialized)
        {
            If (And (Arg1, 0x80))
            {
                Store (0xFFFF0000, Local0)
            }
            Else
            {
                Store (Zero, Local0)
            }

            Or (Local0, Arg0, Local0)
            Or (Local0, ShiftLeft (Arg1, 0x08), Local0)
            Return (Local0)
        }

        Method (POSW, 1, NotSerialized)
        {
            If (And (Arg0, 0x8000))
            {
                If (LEqual (Arg0, 0xFFFF))
                {
                    Return (0xFFFFFFFF)
                }
                Else
                {
                    Not (Arg0, Local0)
                    Increment (Local0)
                    And (Local0, 0xFFFF, Local0)
                    Return (Local0)
                }
            }
            Else
            {
                Return (Arg0)
            }
        }

        Method (GBFE, 3, NotSerialized)
        {
            CreateByteField (Arg0, Arg1, TIDX)
            Store (TIDX, Arg2)
        }

        Method (PBFE, 3, NotSerialized)
        {
            CreateByteField (Arg0, Arg1, TIDX)
            Store (Arg2, TIDX)
        }

        Method (ITOS, 1, NotSerialized)
        {
            Store (Buffer (0x09)
                {
                    /* 0000 */  0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0008 */  0x00                                           
                }, Local0)
            Store (Buffer (0x11)
                {
                    "0123456789ABCDEF"
                }, Local7)
            Store (0x08, Local1)
            Store (Zero, Local2)
            Store (Zero, Local3)
            While (Local1)
            {
                Decrement (Local1)
                And (ShiftRight (Arg0, ShiftLeft (Local1, 0x02)), 0x0F, Local4)
                If (Local4)
                {
                    Store (Ones, Local3)
                }

                If (Local3)
                {
                    GBFE (Local7, Local4, RefOf (Local5))
                    PBFE (Local0, Local2, Local5)
                    Increment (Local2)
                }
            }

            Return (Local0)
        }

        Device (BAT1)
        {
            Name (_HID, EisaId ("PNP0C0A"))  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
            {
                _SB
            })
            Name (PBIF, Package (0x0D)
            {
                One, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                One, 
                0xFFFFFFFF, 
                0xFA, 
                0x64, 
                0x0A, 
                0x19, 
                "BAT1", 
                " ", 
                " ", 
                " "
            })
            Name (PBST, Package (0x04)
            {
                Zero, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0x2710
            })
            Name (BAST, Zero)
            Name (USBW, Zero)
            Name (B1ST, 0x0F)
            Name (B1WT, Zero)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (ECON)
                {
                    If (^^PCI0.LPCB.EC0.MBTS)
                    {
                        Store (0x1F, B1ST)
                    }
                    Else
                    {
                        Store (0x0F, B1ST)
                    }
                }
                Else
                {
                    Store (0x0F, B1ST)
                }

                Return (B1ST)
            }

            Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
            {
                If (ECON)
                {
                    If (^^PCI0.LPCB.EC0.MBTS)
                    {
                        UPBI ()
                    }
                    Else
                    {
                        IVBI ()
                    }
                }
                Else
                {
                    IVBI ()
                }

                Return (PBIF)
            }

            Method (_BST, 0, NotSerialized)  // _BST: Battery Status
            {
                If (ECON)
                {
                    If (^^PCI0.LPCB.EC0.MBTS)
                    {
                        UPBS ()
                    }
                    Else
                    {
                        IVBS ()
                    }
                }
                Else
                {
                    IVBS ()
                }

                Return (PBST)
            }

            Method (UPBI, 0, NotSerialized)
            {
                Store (B1B2 (^^PCI0.LPCB.EC0.BFC0, ^^PCI0.LPCB.EC0.BFC1), Index (PBIF, 0x02))
                Store (0x1FFF, Local2)
                ^^PCI0.LPCB.EC0.SMWR (0x08, 0x14, One, Local2)
                ^^PCI0.LPCB.EC0.SMRD (0x09, 0x14, One, RefOf (Local3))
                If (LEqual (Local2, Or (Local3, 0x0FFF)))
                {
                    If (LNot (^^PCI0.LPCB.EC0.SMRD (0x09, 0x16, 0x18, RefOf (Local1))))
                    {
                        Store (Local1, Index (PBIF, One))
                        Store (Divide (Local1, 0x0A, ), Index (PBIF, 0x05))
                        Store (Divide (Multiply (Local1, 0x03), 0x64, ), Index (PBIF, 0x06
                            ))
                    }

                    If (LNot (^^PCI0.LPCB.EC0.SMRD (0x09, 0x16, 0x19, RefOf (Local1))))
                    {
                        Store (Local1, Index (PBIF, 0x04))
                    }

                    If (LNot (^^PCI0.LPCB.EC0.SMRD (0x0B, 0x16, 0x21, RefOf (Local6))))
                    {
                        Store (Local6, Index (PBIF, 0x09))
                    }

                    If (LNot (^^PCI0.LPCB.EC0.SMRD (0x0B, 0x16, 0x20, RefOf (Local6))))
                    {
                        Store (Local6, Index (PBIF, 0x0C))
                    }
                }

                Store ("LION", Index (PBIF, 0x0B))
                Store (One, Index (PBIF, Zero))
            }

            Method (UPBS, 0, NotSerialized)
            {
                Store (B1B2 (^^PCI0.LPCB.EC0.MCU0, ^^PCI0.LPCB.EC0.MCU1), Local5)
                Store (POSW (Local5), Index (PBST, One))
                Store (B1B2 (^^PCI0.LPCB.EC0.MBR0, ^^PCI0.LPCB.EC0.MBR1), Index (PBST, 0x02))
                Store (B1B2 (^^PCI0.LPCB.EC0.MBV0, ^^PCI0.LPCB.EC0.MBV1), Index (PBST, 0x03))
                If (LNotEqual (Local5, Zero))
                {
                    P8H4 (0xB1)
                    If (^^PCI0.LPCB.EC0.MBTC)
                    {
                        Store (0x02, Index (PBST, Zero))
                    }
                    Else
                    {
                        Store (One, Index (PBST, Zero))
                    }
                }
                Else
                {
                    Store (Zero, Index (PBST, Zero))
                }
            }

            Method (IVBI, 0, NotSerialized)
            {
                Store (0xFFFFFFFF, Index (PBIF, One))
                Store (0xFFFFFFFF, Index (PBIF, 0x02))
                Store (0xFFFFFFFF, Index (PBIF, 0x04))
                Store ("Bad", Index (PBIF, 0x09))
                Store ("      ", Index (PBIF, 0x0A))
                Store ("Bad", Index (PBIF, 0x0B))
                Store ("Bad", Index (PBIF, 0x0C))
            }

            Method (IVBS, 0, NotSerialized)
            {
                Store (Zero, Index (PBST, Zero))
                Store (0xFFFFFFFF, Index (PBST, One))
                Store (0xFFFFFFFF, Index (PBST, 0x02))
                Store (0x2710, Index (PBST, 0x03))
            }
        }
    }

    Scope (_SB)
    {
        Device (LID)
        {
            Name (_HID, EisaId ("PNP0C0D"))  // _HID: Hardware ID
            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x18, 
                0x03
            })
            Method (_LID, 0, NotSerialized)  // _LID: Lid Status
            {
                If (ECON)
                {
                    If (^^PCI0.LPCB.EC0.LDS0)
                    {
                        Store (Zero, LIDS)
                        Return (Zero)
                    }
                    Else
                    {
                        Store (One, LIDS)
                        Return (One)
                    }
                }
                Else
                {
                    Store (One, LIDS)
                    Return (One)
                }
            }

            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                If (ECON)
                {
                    If (Arg0)
                    {
                        Store (One, ^^PCI0.LPCB.EC0.WLID)
                    }
                    Else
                    {
                        Store (Zero, ^^PCI0.LPCB.EC0.WLID)
                    }
                }
            }
        }
    }

    Scope (_SB)
    {
        Device (PWRB)
        {
            Name (_HID, EisaId ("PNP0C0C"))  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0B)
            }
        }

        Device (PNLF)
        {
            Name (_HID, EisaId ("APP0002"))  // _HID: Hardware ID
            Name (_CID, "backlight")  // _CID: Compatible ID
            Name (_UID, 0x0A)  // _UID: Unique ID
            Name (_STA, 0x0B)  // _STA: Status
        }

        Device (SLPB)
        {
            Name (_HID, EisaId ("PNP0C0E"))  // _HID: Hardware ID
        }

        Device (WMI2)
        {
            Name (_HID, "PNP0C14")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (CMBF, Buffer (0x03)
            {
                 0x00, 0x00, 0x00                               
            })
            Name (BUF1, Buffer (0x40)
            {
                /* 0000 */  0x01, 0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0xFF,
                /* 0008 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                /* 0010 */  0xFF, 0xFF, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF,
                /* 0018 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                /* 0020 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                /* 0028 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                /* 0030 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                /* 0038 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF 
            })
            Name (BUF2, Buffer (0x40)
            {
                /* 0000 */  0x02, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                /* 0008 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                /* 0018 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                /* 0020 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                /* 0028 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                /* 0030 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                /* 0038 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF 
            })
            Name (INBF, Buffer (0x80)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0020 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0028 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0030 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0038 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0040 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0048 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0050 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0058 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0060 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0068 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0070 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0078 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
            })
            CreateByteField (CMBF, Zero, EVID)
            CreateByteField (CMBF, One, ACID)
            CreateByteField (CMBF, 0x02, DA01)
            CreateByteField (BUF1, One, EID1)
            CreateByteField (BUF1, 0x02, ERQ0)
            CreateByteField (BUF1, 0x03, BRIL)
            CreateByteField (BUF1, 0x04, SKEY)
            CreateByteField (BUF1, 0x08, BLUE)
            CreateByteField (BUF1, 0x09, WLAN)
            CreateByteField (BUF1, 0x0A, WL3G)
            CreateByteField (BUF1, 0x0B, WMAX)
            CreateByteField (BUF1, 0x0C, GLSW)
            CreateByteField (BUF1, 0x10, TPST)
            CreateByteField (BUF1, 0x11, SLMD)
            CreateByteField (BUF1, 0x12, SBR0)
            CreateByteField (BUF1, 0x13, SBR1)
            CreateByteField (BUF1, 0x14, SBR2)
            CreateByteField (BUF1, 0x15, SBBR)
            CreateByteField (BUF1, 0x16, SBLI)
            CreateBitField (BUF1, 0x10, AP00)
            CreateBitField (BUF1, 0x11, AP01)
            CreateBitField (BUF1, 0x12, AP02)
            CreateBitField (BUF1, 0x13, AP03)
            CreateBitField (BUF1, 0x14, AP04)
            CreateBitField (BUF1, 0x15, AP05)
            CreateBitField (BUF1, 0x16, AP06)
            CreateBitField (BUF1, 0x17, AP07)
            CreateByteField (BUF1, 0x20, PD00)
            CreateByteField (BUF1, 0x21, PD01)
            CreateByteField (BUF1, 0x22, PD02)
            CreateByteField (BUF1, 0x23, PD03)
            CreateByteField (BUF1, 0x24, PD04)
            CreateByteField (BUF1, 0x25, PD05)
            CreateByteField (BUF1, 0x26, PD06)
            CreateByteField (BUF1, 0x27, PD07)
            CreateByteField (BUF2, One, EID2)
            CreateByteField (BUF2, 0x08, BIV0)
            CreateByteField (BUF2, 0x09, BIV1)
            CreateByteField (BUF2, 0x0A, BIV2)
            CreateByteField (BUF2, 0x0B, BIV3)
            CreateByteField (BUF2, 0x0C, BIV4)
            CreateByteField (BUF2, 0x0D, BIV5)
            CreateByteField (BUF2, 0x0E, BIV6)
            CreateByteField (BUF2, 0x0F, BIV7)
            CreateByteField (BUF2, 0x10, WMIV)
            CreateByteField (BUF2, 0x18, BRMX)
            CreateByteField (BUF2, 0x20, BAT1)
            CreateByteField (BUF2, 0x21, BAT2)
            CreateByteField (BUF2, 0x22, ACDC)
            CreateByteField (BUF2, 0x23, CPUT)
            CreateByteField (BUF2, 0x24, VGAT)
            CreateByteField (BUF2, 0x25, CDT1)
            CreateByteField (BUF2, 0x26, CDT2)
            CreateByteField (BUF2, 0x27, FSP1)
            CreateByteField (BUF2, 0x28, FSP2)
            CreateByteField (INBF, Zero, BY00)
            CreateByteField (INBF, One, BY01)
            CreateByteField (INBF, 0x02, BY02)
            CreateByteField (INBF, 0x03, BY03)
            CreateByteField (INBF, 0x04, BY04)
            CreateByteField (INBF, 0x05, BY05)
            CreateByteField (INBF, 0x06, BY06)
            CreateByteField (INBF, 0x07, BY07)
            CreateByteField (INBF, 0x08, BY08)
            CreateByteField (INBF, 0x09, BY09)
            CreateByteField (INBF, 0x0A, BY10)
            CreateByteField (INBF, 0x0B, BY11)
            CreateByteField (INBF, 0x0C, BY12)
            CreateByteField (INBF, 0x0D, BY13)
            CreateByteField (INBF, 0x0E, BY14)
            CreateByteField (INBF, 0x0F, BY15)
            CreateByteField (INBF, 0x10, BY16)
            CreateByteField (INBF, 0x11, BY17)
            CreateByteField (INBF, 0x12, BY18)
            CreateByteField (INBF, 0x13, BY19)
            CreateByteField (INBF, 0x14, BY20)
            CreateByteField (INBF, 0x15, BY21)
            CreateByteField (INBF, 0x16, BY22)
            CreateByteField (INBF, 0x17, BY23)
            CreateByteField (INBF, 0x18, BY24)
            CreateByteField (INBF, 0x19, BY25)
            CreateByteField (INBF, 0x1A, BY26)
            CreateByteField (INBF, 0x1B, BY27)
            CreateByteField (INBF, 0x1C, BY28)
            CreateByteField (INBF, 0x1D, BY29)
            CreateByteField (INBF, 0x1E, BY30)
            CreateByteField (INBF, 0x1F, BY31)
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                SBSW ()
                Store (F0DA, BIV0)
                Store (F0DB, BIV1)
                Store (F0DC, BIV2)
                Store (F0DD, BIV3)
                Store (F0DE, BIV4)
                Store (F0DF, BIV5)
                Store (F0E0, BIV6)
                Store (F0E1, BIV7)
                Store (0x10, WMIV)
                Store (BRNS, BRMX)
            }

            Name (_WDG, Buffer (0x3C)
            {
                /* 0000 */  0x20, 0x0F, 0xBC, 0xAB, 0xA1, 0x8E, 0xD1, 0x11,
                /* 0008 */  0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10, 0x00, 0x00,
                /* 0010 */  0x80, 0x00, 0x01, 0x08, 0x40, 0x0F, 0xBC, 0xAB,
                /* 0018 */  0xA1, 0x8E, 0xD1, 0x11, 0x00, 0xA0, 0xC9, 0x06,
                /* 0020 */  0x29, 0x10, 0x00, 0x00, 0x49, 0x4F, 0x01, 0x01,
                /* 0028 */  0x21, 0x12, 0x90, 0x05, 0x66, 0xD5, 0xD1, 0x11,
                /* 0030 */  0xB2, 0xF0, 0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10,
                /* 0038 */  0x41, 0x45, 0x01, 0x00                         
            })
            Method (WQIO, 1, NotSerialized)
            {
                Store ("======== WMI WQIO ========", Debug)
                CMD1 (One, 0x02)
                CMD1 (0x02, 0x02)
                Concatenate (BUF2, BUF1, Local0)
                Return (Local0)
            }

            Mutex (MSIO, 0x00)
            Method (WSIO, 2, Serialized)
            {
                Store ("======== WMI WSIO ========", Debug)
                Acquire (MSIO, 0xFFFF)
                CPSR (Arg1)
                Release (MSIO)
            }

            Method (CPSR, 1, NotSerialized)
            {
                Store (Arg0, INBF)
                Name (T_0, Zero)
                Store (BY00, T_0)
                If (LEqual (T_0, One))
                {
                    If (LNotEqual (BY01, 0x10))
                    {
                        Return (Zero)
                    }
                }
                Else
                {
                    Return (Zero)
                }

                CMD0 (BY08, BY09, BY10, One, BY16)
                Return (Zero)
            }

            Method (_WED, 1, NotSerialized)  // _Wxx: Wake Event
            {
                Return (UWEA (EVID, ACID, DA01))
            }

            Method (CMD1, 2, NotSerialized)
            {
                CMD0 (Arg0, Arg1, Zero, Zero, Zero)
            }

            Method (CMD2, 3, NotSerialized)
            {
                CMD0 (Arg0, Arg1, Arg2, Zero, Zero)
            }

            Method (CMD3, 1, NotSerialized)
            {
                CMD0 (0x19, One, One, One, Arg0)
            }

            Mutex (MCD0, 0x00)
            Method (CMD0, 5, Serialized)
            {
                If (LAnd (ERQ0, LEqual (Arg2, One)))
                {
                    Store (Arg0, EVID)
                    Store (Arg1, ACID)
                    Store (Arg4, DA01)
                    Notify (WMI2, 0x80)
                }
                Else
                {
                    Acquire (MCD0, 0xFFFF)
                    UWED (Arg0, Arg1, Arg4)
                    Release (MCD0)
                }
            }

            Method (UWED, 3, NotSerialized)
            {
                Name (T_0, Zero)
                Store (Arg0, T_0)
                If (LEqual (T_0, One))
                {
                    Store (Arg0, EID1)
                    SBSW ()
                    Return (BUF1)
                }
                Else
                {
                    If (LEqual (T_0, 0x02))
                    {
                        Store (Arg0, EID2)
                        Return (BUF2)
                    }
                    Else
                    {
                        If (LEqual (T_0, 0x08))
                        {
                            Store (Arg0, EID1)
                            If (Arg2)
                            {
                                Store (One, AP00)
                            }
                            Else
                            {
                                Store (Zero, AP00)
                            }

                            Return (BUF1)
                        }
                        Else
                        {
                            If (LEqual (T_0, 0x09))
                            {
                                Store (Arg0, EID1)
                                If (Arg2)
                                {
                                    Store (One, AP01)
                                }
                                Else
                                {
                                    Store (Zero, AP01)
                                }

                                Return (BUF1)
                            }
                            Else
                            {
                                If (LEqual (T_0, 0x0A))
                                {
                                    Store (Arg0, EID1)
                                    If (Arg2)
                                    {
                                        Store (One, AP02)
                                        Store (One, SBLI)
                                        SBSV ()
                                    }
                                    Else
                                    {
                                        Store (Zero, AP02)
                                        Store (Zero, SBLI)
                                        SBSV ()
                                    }

                                    Return (BUF1)
                                }
                                Else
                                {
                                    If (LEqual (T_0, 0x0B))
                                    {
                                        Store (Arg0, EID1)
                                        If (Arg2)
                                        {
                                            Store (One, AP03)
                                        }
                                        Else
                                        {
                                            Store (Zero, AP03)
                                        }

                                        Return (BUF1)
                                    }
                                    Else
                                    {
                                        If (LEqual (T_0, 0x0C))
                                        {
                                            Store (Arg0, EID1)
                                            If (Arg2)
                                            {
                                                Store (One, AP04)
                                            }
                                            Else
                                            {
                                                Store (Zero, AP04)
                                            }

                                            Return (BUF1)
                                        }
                                        Else
                                        {
                                            If (LEqual (T_0, 0x0D))
                                            {
                                                Store (Arg0, EID1)
                                                If (Arg2)
                                                {
                                                    Store (One, AP05)
                                                }
                                                Else
                                                {
                                                    Store (Zero, AP05)
                                                }

                                                Return (BUF1)
                                            }
                                            Else
                                            {
                                                If (LEqual (T_0, 0x0E))
                                                {
                                                    Store (Arg0, EID1)
                                                    If (Arg2)
                                                    {
                                                        Store (One, AP06)
                                                    }
                                                    Else
                                                    {
                                                        Store (Zero, AP06)
                                                    }

                                                    Return (BUF1)
                                                }
                                                Else
                                                {
                                                    If (LEqual (T_0, 0x0F))
                                                    {
                                                        Store (Arg0, EID1)
                                                        If (Arg2)
                                                        {
                                                            Store (One, AP07)
                                                        }
                                                        Else
                                                        {
                                                            Store (Zero, AP07)
                                                        }

                                                        Return (BUF1)
                                                    }
                                                    Else
                                                    {
                                                        If (LEqual (T_0, 0x19))
                                                        {
                                                            Store (Arg0, EID1)
                                                            Store (Arg2, SKEY)
                                                            Return (BUF1)
                                                        }
                                                        Else
                                                        {
                                                            If (LEqual (T_0, 0x2A))
                                                            {
                                                                Store (Arg0, EID1)
                                                                Store (^^PCI0.LPCB.EC0.SLB0, SBR0)
                                                                Store (^^PCI0.LPCB.EC0.SLB1, SBR1)
                                                                Store (^^PCI0.LPCB.EC0.SLB2, SBR2)
                                                                Return (BUF1)
                                                            }
                                                            Else
                                                            {
                                                                If (LEqual (T_0, 0x2B))
                                                                {
                                                                    Store (Arg0, EID1)
                                                                    Name (T_1, Zero)
                                                                    Store (Arg1, T_1)
                                                                    If (LEqual (T_1, One))
                                                                    {
                                                                        SBSW ()
                                                                    }
                                                                    Else
                                                                    {
                                                                        If (LEqual (T_1, 0x03))
                                                                        {
                                                                            Name (T_2, Zero)
                                                                            Store (Arg2, T_2)
                                                                            If (LEqual (T_2, Zero))
                                                                            {
                                                                                Store (Zero, SBBR)
                                                                                SBSV ()
                                                                            }
                                                                            Else
                                                                            {
                                                                                If (LEqual (T_2, One))
                                                                                {
                                                                                    Store (One, SBBR)
                                                                                    SBSV ()
                                                                                }
                                                                                Else
                                                                                {
                                                                                    If (LEqual (T_2, 0x10))
                                                                                    {
                                                                                        Store (Zero, SBLI)
                                                                                        SBSV ()
                                                                                    }
                                                                                    Else
                                                                                    {
                                                                                        If (LEqual (T_2, 0x11))
                                                                                        {
                                                                                            Store (One, SBLI)
                                                                                            SBSV ()
                                                                                        }
                                                                                        Else
                                                                                        {
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }

                                                                    Return (BUF1)
                                                                }
                                                                Else
                                                                {
                                                                    If (LEqual (T_0, 0x30))
                                                                    {
                                                                        Store (Arg0, EID1)
                                                                        Name (T_3, Zero)
                                                                        Store (Arg1, T_3)
                                                                        If (LEqual (T_3, 0x03))
                                                                        {
                                                                            Name (T_4, Zero)
                                                                            Store (Arg2, T_4)
                                                                            If (LEqual (T_4, 0x02)) {}
                                                                            Else
                                                                            {
                                                                                If (LEqual (T_4, 0x03)) {}
                                                                                Else
                                                                                {
                                                                                    If (LEqual (T_4, 0x04))
                                                                                    {
                                                                                        Store (One, ^^PCI0.LPCB.EC0.TPDS)
                                                                                        Store (One, ^^PCI0.LPCB.EC0.TPNT)
                                                                                        If (^^PCI0.LPCB.EC0.CCDE)
                                                                                        {
                                                                                            PHSR (0x8B)
                                                                                            Store (One, ^^PCI0.LPCB.EC0.CCDS)
                                                                                        }
                                                                                    }
                                                                                    Else
                                                                                    {
                                                                                        If (LEqual (T_4, 0x05)) {}
                                                                                        Else
                                                                                        {
                                                                                            If (LEqual (T_4, 0x06)) {}
                                                                                            Else
                                                                                            {
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                        Else
                                                                        {
                                                                        }

                                                                        Return (BUF1)
                                                                    }
                                                                    Else
                                                                    {
                                                                        Return (Zero)
                                                                    }

                                                                    Return (Zero)
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }

            Method (SBSW, 0, NotSerialized)
            {
                Name (T_0, Zero)
                Store (CMSB, T_0)
                If (LEqual (T_0, Zero))
                {
                    Store (One, SBLI)
                    Store (One, SBBR)
                }
                Else
                {
                    If (LEqual (T_0, One))
                    {
                        Store (One, SBLI)
                        Store (Zero, SBBR)
                    }
                    Else
                    {
                        If (LEqual (T_0, 0x02))
                        {
                            Store (Zero, SBLI)
                            Store (Zero, SBBR)
                        }
                        Else
                        {
                            If (LEqual (T_0, 0x03))
                            {
                                Store (Zero, SBLI)
                                Store (One, SBBR)
                            }
                            Else
                            {
                                Store (Zero, SBLI)
                                Store (One, SBBR)
                                Store (0x03, CMSB)
                            }
                        }
                    }
                }
            }

            Mutex (MEC0, 0x00)
            Method (SBSV, 0, Serialized)
            {
                Acquire (MEC0, 0xFFFF)
                Name (T_0, Zero)
                Store (SBLI, T_0)
                If (LEqual (T_0, Zero))
                {
                    Name (T_1, Zero)
                    Store (SBBR, T_1)
                    If (LEqual (T_1, Zero))
                    {
                        Store (0x02, CMSB)
                    }
                    Else
                    {
                        If (LEqual (T_1, One))
                        {
                            Store (0x03, CMSB)
                        }
                        Else
                        {
                        }
                    }
                }
                Else
                {
                    If (LEqual (T_0, One))
                    {
                        Name (T_2, Zero)
                        Store (SBBR, T_2)
                        If (LEqual (T_2, Zero))
                        {
                            Store (One, CMSB)
                        }
                        Else
                        {
                            If (LEqual (T_2, One))
                            {
                                Store (Zero, CMSB)
                            }
                            Else
                            {
                            }
                        }
                    }
                    Else
                    {
                    }
                }

                Store (CMSB, ^^PCI0.LPCB.EC0.SEBT)
                Release (MEC0)
            }

            Method (UWEA, 3, NotSerialized)
            {
                Name (T_0, Zero)
                Store (Arg0, T_0)
                If (LEqual (T_0, 0x19))
                {
                    Store (Arg0, EID1)
                    Store (Arg2, SKEY)
                    Return (BUF1)
                }
                Else
                {
                    If (LEqual (T_0, 0x2A))
                    {
                        Store (Arg0, EID1)
                        Store (^^PCI0.LPCB.EC0.SLB0, SBR0)
                        Store (^^PCI0.LPCB.EC0.SLB1, SBR1)
                        Store (^^PCI0.LPCB.EC0.SLB2, SBR2)
                        Return (BUF1)
                    }
                    Else
                    {
                        Return (Zero)
                    }

                    Return (Zero)
                }
            }

            Method (UWEB, 3, NotSerialized)
            {
                Name (T_0, Zero)
                Store (Arg0, T_0)
                If (LEqual (T_0, 0x0A))
                {
                    Store (Arg0, EID1)
                    If (Arg2)
                    {
                        Store (One, AP02)
                        Store (One, SBLI)
                        SBSV ()
                    }
                    Else
                    {
                        Store (Zero, AP02)
                        Store (Zero, SBLI)
                        SBSV ()
                    }

                    Return (BUF1)
                }
                Else
                {
                    If (LEqual (T_0, 0x2B))
                    {
                        Store (Arg0, EID1)
                        Name (T_1, Zero)
                        Store (Arg1, T_1)
                        If (LEqual (T_1, One))
                        {
                            SBSW ()
                        }
                        Else
                        {
                            If (LEqual (T_1, 0x03))
                            {
                                Name (T_2, Zero)
                                Store (Arg2, T_2)
                                If (LEqual (T_2, Zero))
                                {
                                    Store (Zero, SBBR)
                                    SBSV ()
                                }
                                Else
                                {
                                    If (LEqual (T_2, One))
                                    {
                                        Store (One, SBBR)
                                        SBSV ()
                                    }
                                    Else
                                    {
                                        If (LEqual (T_2, 0x10))
                                        {
                                            Store (Zero, SBLI)
                                            SBSV ()
                                        }
                                        Else
                                        {
                                            If (LEqual (T_2, 0x11))
                                            {
                                                Store (One, SBLI)
                                                SBSV ()
                                            }
                                            Else
                                            {
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        Return (BUF1)
                    }
                    Else
                    {
                        Return (Zero)
                    }

                    Return (Zero)
                }
            }

            Name (WQAE, Buffer (0x02CB)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,
                /* 0008 */  0xBB, 0x02, 0x00, 0x00, 0x3C, 0x09, 0x00, 0x00,
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,
                /* 0018 */  0x18, 0x5E, 0x84, 0x00, 0x01, 0x06, 0x18, 0x42,
                /* 0020 */  0x10, 0x05, 0x10, 0x8A, 0x23, 0x81, 0x42, 0x04,
                /* 0028 */  0x8A, 0x40, 0xA4, 0x00, 0x30, 0x28, 0x0D, 0x20,
                /* 0030 */  0x92, 0x03, 0x21, 0x17, 0x4C, 0x4C, 0x00, 0xB7,
                /* 0038 */  0x04, 0x78, 0x15, 0x60, 0x53, 0x80, 0x49, 0x10,
                /* 0040 */  0xF5, 0xEF, 0x0F, 0x51, 0x12, 0x1C, 0x4A, 0x08,
                /* 0048 */  0x84, 0x24, 0x0A, 0x30, 0x2F, 0x40, 0xB7, 0x00,
                /* 0050 */  0xC3, 0x02, 0x6C, 0x0B, 0x30, 0x2D, 0xC0, 0x31,
                /* 0058 */  0x24, 0x95, 0x06, 0x4E, 0x09, 0x2C, 0x05, 0x42,
                /* 0060 */  0x42, 0x05, 0x28, 0x17, 0xE0, 0x5B, 0x80, 0x76,
                /* 0068 */  0x44, 0x49, 0x16, 0x60, 0x19, 0x46, 0x04, 0x1E,
                /* 0070 */  0x05, 0x43, 0xE3, 0xD0, 0xD8, 0x61, 0x58, 0x26,
                /* 0078 */  0x98, 0x06, 0x71, 0x18, 0x65, 0x23, 0x8B, 0xC0,
                /* 0080 */  0xB8, 0x9D, 0x0A, 0x90, 0x2B, 0x40, 0x98, 0x00,
                /* 0088 */  0xF1, 0xA8, 0xC2, 0x68, 0x0E, 0x8A, 0x88, 0x86,
                /* 0090 */  0x46, 0x89, 0x19, 0x13, 0x81, 0xED, 0x1C, 0x5B,
                /* 0098 */  0xA3, 0x38, 0x95, 0xC2, 0x05, 0x48, 0xC7, 0xD0,
                /* 00A0 */  0x08, 0x8E, 0xEB, 0x58, 0xB8, 0x2D, 0x01, 0x06,
                /* 00A8 */  0x05, 0x38, 0x9C, 0x8C, 0x50, 0x0A, 0x02, 0xD5,
                /* 00B0 */  0x68, 0x42, 0x84, 0x0B, 0x19, 0x26, 0x44, 0xCC,
                /* 00B8 */  0x18, 0xC6, 0x3E, 0x97, 0x48, 0x07, 0x50, 0xF3,
                /* 00C0 */  0xC8, 0x08, 0xD2, 0xB1, 0x05, 0x8A, 0x15, 0x22,
                /* 00C8 */  0xC1, 0x11, 0x1D, 0x0A, 0x46, 0x06, 0x84, 0x3C,
                /* 00D0 */  0x0B, 0xB0, 0x3E, 0x46, 0x42, 0x60, 0xF7, 0xB3,
                /* 00D8 */  0x90, 0x42, 0x04, 0x4D, 0xE3, 0xAC, 0x6A, 0x14,
                /* 00E0 */  0xA0, 0x0C, 0x43, 0x43, 0x29, 0x4E, 0x80, 0x45,
                /* 00E8 */  0x2C, 0x19, 0x43, 0x11, 0x44, 0x84, 0xB3, 0x8A,
                /* 00F0 */  0x62, 0xB0, 0x08, 0xA1, 0xE2, 0x19, 0xF5, 0xFC,
                /* 00F8 */  0x82, 0xD4, 0x06, 0x2B, 0x90, 0x68, 0xC1, 0x8C,
                /* 0100 */  0xC0, 0xEC, 0x0F, 0x82, 0xC4, 0x7F, 0x17, 0xE8,
                /* 0108 */  0x44, 0xE0, 0x48, 0xA3, 0x41, 0x9D, 0x02, 0x12,
                /* 0110 */  0x3C, 0x15, 0x78, 0x7A, 0x07, 0xE6, 0x51, 0x19,
                /* 0118 */  0xE4, 0x4C, 0xCF, 0xAC, 0xCE, 0xE3, 0x00, 0x19,
                /* 0120 */  0x38, 0xC3, 0x4A, 0xD0, 0xC1, 0xF9, 0x00, 0x8A,
                /* 0128 */  0x6B, 0x40, 0xFD, 0xFF, 0x2F, 0x06, 0x8F, 0x05,
                /* 0130 */  0x6C, 0x94, 0xE1, 0x30, 0x43, 0xF4, 0x4C, 0xC3,
                /* 0138 */  0x9D, 0xC0, 0x21, 0x32, 0x40, 0x8F, 0xE8, 0x89,
                /* 0140 */  0x00, 0x3B, 0xB5, 0x93, 0x39, 0xFD, 0x52, 0x05,
                /* 0148 */  0x98, 0x9D, 0xBD, 0x26, 0x99, 0xE0, 0x78, 0x7C,
                /* 0150 */  0x0E, 0xF0, 0x7C, 0x4E, 0x38, 0x81, 0xE5, 0x0F,
                /* 0158 */  0x02, 0x35, 0x32, 0x43, 0x7B, 0xA4, 0xA7, 0xF5,
                /* 0160 */  0x3A, 0xE0, 0x83, 0x80, 0x09, 0x2C, 0xF6, 0x30,
                /* 0168 */  0x41, 0xC7, 0x03, 0x7E, 0xC5, 0x37, 0x03, 0x21,
                /* 0170 */  0xBC, 0x33, 0x78, 0xBE, 0x86, 0xD5, 0xD9, 0x42,
                /* 0178 */  0x46, 0x56, 0xE1, 0xF1, 0xD0, 0xA3, 0x84, 0x41,
                /* 0180 */  0xCF, 0xE6, 0x78, 0x9E, 0x09, 0x0E, 0x36, 0xC6,
                /* 0188 */  0x2B, 0x83, 0x09, 0x1C, 0x18, 0x42, 0x16, 0x20,
                /* 0190 */  0x24, 0x6A, 0xE0, 0xF4, 0x54, 0xC1, 0x4F, 0x0D,
                /* 0198 */  0x2F, 0x17, 0x3E, 0x17, 0x3C, 0x29, 0xB0, 0xB1,
                /* 01A0 */  0x9C, 0x92, 0xCF, 0x1D, 0x1E, 0x1A, 0x7C, 0x91,
                /* 01A8 */  0xA7, 0x09, 0xD0, 0x9C, 0x25, 0x30, 0xB3, 0xF2,
                /* 01B0 */  0x59, 0x82, 0x0F, 0x86, 0x1F, 0x0D, 0xD8, 0xA0,
                /* 01B8 */  0xF8, 0x20, 0x3C, 0xD6, 0xC8, 0xC7, 0x6E, 0x81,
                /* 01C0 */  0x10, 0x92, 0x35, 0x66, 0xE8, 0xF7, 0x09, 0x0F,
                /* 01C8 */  0xC2, 0x47, 0x89, 0xC0, 0x0C, 0x16, 0x37, 0x66,
                /* 01D0 */  0xFB, 0x15, 0x80, 0x10, 0xFA, 0x05, 0xE4, 0x24,
                /* 01D8 */  0x9E, 0x3E, 0x22, 0x24, 0xF8, 0xFF, 0x3F, 0x70,
                /* 01E0 */  0xB0, 0x49, 0xF1, 0x41, 0x61, 0x08, 0x3C, 0x48,
                /* 01E8 */  0xFC, 0x00, 0xF8, 0x39, 0x22, 0x70, 0xEC, 0xB0,
                /* 01F0 */  0x07, 0x10, 0x3A, 0xBA, 0x87, 0xE3, 0x03, 0x49,
                /* 01F8 */  0x84, 0xBA, 0x20, 0x74, 0x3A, 0x31, 0xC2, 0x01,
                /* 0200 */  0x44, 0xE9, 0xFD, 0x06, 0x40, 0x08, 0x3C, 0xCD,
                /* 0208 */  0x43, 0xC0, 0x8C, 0xD3, 0x43, 0xE0, 0x03, 0x68,
                /* 0210 */  0x75, 0x76, 0x44, 0xE9, 0xA4, 0x90, 0xA3, 0xE2,
                /* 0218 */  0x63, 0xC2, 0x0E, 0x80, 0x8B, 0x3C, 0xD4, 0x50,
                /* 0220 */  0xD1, 0x8F, 0x02, 0xC9, 0x82, 0x41, 0x9D, 0x6B,
                /* 0228 */  0x00, 0x57, 0x90, 0x8F, 0x0E, 0x60, 0xB9, 0x34,
                /* 0230 */  0xF0, 0x73, 0x43, 0xB8, 0x83, 0x08, 0x12, 0x32,
                /* 0238 */  0x42, 0x98, 0x27, 0x9A, 0x78, 0x4F, 0x34, 0x9E,
                /* 0240 */  0x51, 0x9F, 0x07, 0x1A, 0x90, 0x0D, 0xC8, 0x07,
                /* 0248 */  0x1A, 0x18, 0xFF, 0xFF, 0x03, 0x0D, 0xB8, 0x22,
                /* 0250 */  0xBE, 0x4D, 0x74, 0xF8, 0xF0, 0x81, 0x06, 0xE0,
                /* 0258 */  0x87, 0x98, 0x03, 0x0D, 0x1A, 0xDA, 0x77, 0x03,
                /* 0260 */  0xDF, 0x67, 0x70, 0xD1, 0x21, 0x74, 0xBA, 0xF0,
                /* 0268 */  0x79, 0x06, 0x78, 0x00, 0xE2, 0xEF, 0x23, 0xE7,
                /* 0270 */  0xEC, 0xB9, 0x18, 0x90, 0xC9, 0x3B, 0x4D, 0x40,
                /* 0278 */  0xFB, 0xFF, 0x9F, 0x26, 0xF0, 0x43, 0xF3, 0x18,
                /* 0280 */  0x4E, 0x3D, 0xD8, 0xD3, 0x96, 0xEF, 0x05, 0x3E,
                /* 0288 */  0xD4, 0xC0, 0x0C, 0x70, 0xA8, 0x01, 0xDD, 0x88,
                /* 0290 */  0x70, 0x87, 0x1A, 0xB0, 0xC0, 0xBD, 0x69, 0xB0,
                /* 0298 */  0x33, 0x0D, 0x30, 0x19, 0x01, 0x57, 0x68, 0xD3,
                /* 02A0 */  0xA7, 0x46, 0xA3, 0x56, 0x0D, 0xCA, 0xD4, 0x28,
                /* 02A8 */  0xD3, 0xA0, 0x56, 0x9F, 0x4A, 0x8D, 0x19, 0x3B,
                /* 02B0 */  0x13, 0x90, 0x37, 0x83, 0x86, 0xEA, 0x48, 0x20,
                /* 02B8 */  0x34, 0x18, 0x85, 0x40, 0x1C, 0x8A, 0x4E, 0x20,
                /* 02C0 */  0x96, 0xE4, 0x01, 0x84, 0x09, 0x5C, 0x81, 0x40,
                /* 02C8 */  0xFC, 0xFF, 0x07                               
            })
        }
    }

    Scope (_SB.PCI0.P0P2)
    {
        Device (VGA)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (SWIT, One)
            Name (CRTA, One)
            Name (LCDA, One)
            Name (HDTV, One)
            Name (TOGF, Zero)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Name (_PSC, Zero)  // _PSC: Power State Current
            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                Store (Zero, _PSC)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                Store (0x03, _PSC)
            }

            Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
            {
                Store (And (Arg0, 0x03), SWIT)
            }

            Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
            {
                Return (Package (0x03)
                {
                    0x00010100, 
                    0x00010118, 
                    0x00010121
                })
            }

            Device (CRT)
            {
                Name (_ADR, 0x0100)  // _ADR: Address
                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (CRTA)
                    {
                        Return (0x1F)
                    }
                    Else
                    {
                        Return (0x1D)
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (CRTA)
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    Store ("CRT -- _DSS", Debug)
                }
            }

            Device (LCD)
            {
                Name (_ADR, 0x0118)  // _ADR: Address
                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LCDA)
                    {
                        Return (0x1F)
                    }
                    Else
                    {
                        Return (0x1D)
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LCDA)
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    Store ("LCD -- _DSS", Debug)
                }

                Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                {
                    Return (IBCL)
                }

                Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                {
                    IBCM (Arg0)
                }

                Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
                {
                    Return (EBRL)
                }
            }

            Device (HDMI)
            {
                Name (_ADR, 0x0121)  // _ADR: Address
                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    Store ("HDMI TV -- _DCS", Debug)
                    If (HDTV)
                    {
                        Return (0x1F)
                    }
                    Else
                    {
                        Return (0x1D)
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    Store ("HDMI TV -- _DCS", Debug)
                    If (HDTV)
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    Store ("HDMI TV -- _DSS", Debug)
                }
            }

            Method (SWIH, 0, NotSerialized)
            {
                PHSR (0x85)
                Store (DB00, Local0)
                Store (One, LCDA)
                Store (Zero, CRTA)
                Store (Zero, HDTV)
                If (LEqual (Local0, 0x03))
                {
                    GETD ()
                    Increment (TOGF)
                    Store (TOGF, Local1)
                    If (LEqual (Local1, One))
                    {
                        Store (One, LCDA)
                        Store (Zero, CRTA)
                        Store (Zero, HDTV)
                    }
                    Else
                    {
                        If (LEqual (Local1, 0x02))
                        {
                            Store (Zero, LCDA)
                            Store (One, CRTA)
                            Store (Zero, HDTV)
                        }
                        Else
                        {
                            If (LEqual (Local1, 0x03))
                            {
                                Store (One, LCDA)
                                Store (One, CRTA)
                                Store (Zero, HDTV)
                            }
                            Else
                            {
                                Store (One, TOGF)
                                Store (One, LCDA)
                                Store (Zero, CRTA)
                                Store (Zero, HDTV)
                            }
                        }
                    }
                }
                Else
                {
                    If (GI19)
                    {
                        If (LEqual (Local0, 0x05))
                        {
                            GETD ()
                            Increment (TOGF)
                            Store (TOGF, Local1)
                            If (LEqual (Local1, One))
                            {
                                Store (One, LCDA)
                                Store (Zero, CRTA)
                                Store (Zero, HDTV)
                            }
                            Else
                            {
                                If (LEqual (Local1, 0x05))
                                {
                                    Store (Zero, TOGF)
                                    Store (One, LCDA)
                                    Store (Zero, CRTA)
                                    Store (One, HDTV)
                                }
                                Else
                                {
                                    Store (Zero, LCDA)
                                    Store (Zero, CRTA)
                                    Store (One, HDTV)
                                }
                            }
                        }
                        Else
                        {
                            If (LEqual (Local0, 0x07))
                            {
                                GETS ()
                                Increment (TOGF)
                                Store (TOGF, Local1)
                                If (LEqual (Local1, One))
                                {
                                    Store (One, LCDA)
                                    Store (Zero, CRTA)
                                    Store (Zero, HDTV)
                                }
                                Else
                                {
                                    If (LEqual (Local1, 0x02))
                                    {
                                        Store (Zero, LCDA)
                                        Store (One, CRTA)
                                        Store (Zero, HDTV)
                                    }
                                    Else
                                    {
                                        If (LEqual (Local1, 0x03))
                                        {
                                            Store (One, LCDA)
                                            Store (One, CRTA)
                                            Store (Zero, HDTV)
                                        }
                                        Else
                                        {
                                            If (LEqual (Local1, 0x04))
                                            {
                                                Store (Zero, LCDA)
                                                Store (Zero, CRTA)
                                                Store (One, HDTV)
                                            }
                                            Else
                                            {
                                                If (LEqual (Local1, 0x05))
                                                {
                                                    Store (One, LCDA)
                                                    Store (Zero, CRTA)
                                                    Store (One, HDTV)
                                                }
                                                Else
                                                {
                                                    If (LEqual (Local1, 0x06))
                                                    {
                                                        Store (Zero, LCDA)
                                                        Store (One, CRTA)
                                                        Store (One, HDTV)
                                                    }
                                                    Else
                                                    {
                                                        Store (Zero, TOGF)
                                                        Store (One, LCDA)
                                                        Store (Zero, CRTA)
                                                        Store (One, HDTV)
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            Else
                            {
                                Store (One, TOGF)
                                Store (One, LCDA)
                                Store (Zero, CRTA)
                                Store (Zero, HDTV)
                            }
                        }
                    }
                }

                Notify (VGA, 0x80)
            }

            Method (GETD, 0, NotSerialized)
            {
                PHSR (0x84)
                Store (DB00, Local2)
                If (LEqual (Local2, One))
                {
                    Store (One, TOGF)
                }

                If (LEqual (Local2, 0x02))
                {
                    Store (0x02, TOGF)
                }

                If (LEqual (Local2, 0x03))
                {
                    Store (0x03, TOGF)
                }

                If (LEqual (Local2, 0x04))
                {
                    Store (0x04, TOGF)
                }

                If (LEqual (Local2, 0x05))
                {
                    Store (Zero, TOGF)
                }

                If (LEqual (Local2, 0x06))
                {
                    Store (Zero, TOGF)
                }
            }

            Method (GETS, 0, NotSerialized)
            {
                PHSR (0x84)
                Store (DB00, Local2)
                If (LEqual (Local2, One))
                {
                    Store (0x05, TOGF)
                }

                If (LEqual (Local2, 0x02))
                {
                    Store (0x02, TOGF)
                }

                If (LEqual (Local2, 0x03))
                {
                    Store (0x03, TOGF)
                }

                If (LEqual (Local2, 0x04))
                {
                    Store (0x04, TOGF)
                }

                If (LEqual (Local2, 0x05))
                {
                    Store (Zero, TOGF)
                }

                If (LEqual (Local2, 0x06))
                {
                    Store (One, TOGF)
                }
            }
        }
    }

    Scope (_SB.PCI0.RP04.PXSX)
    {
        Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
        {
            Store (Arg0, ^^^LPCB.EC0.LNON)
        }
    }

    Scope (_SB.PCI0.RP06.PXSX)
    {
        Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
        {
            Store (Arg0, ^^^LPCB.EC0.LNON)
        }
    }

    Method (B1B2, 2, NotSerialized)
    {
        Return (Or (Arg0, ShiftLeft (Arg1, 0x08)))
    }
}

