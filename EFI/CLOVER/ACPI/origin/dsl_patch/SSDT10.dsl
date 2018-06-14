/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT10.aml, Wed Jun 13 00:40:30 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000169 (361)
 *     Revision         0x01
 *     Checksum         0x75
 *     OEM ID           "Intel"
 *     OEM Table ID     "IntelRMT"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120913 (538052883)
 */
DefinitionBlock ("", "SSDT", 1, "Intel", "IntelRMT", 0x00001000)
{
    /*
     * External declarations were imported from
     * a reference file -- refs.txt
     */

    External (_GPE.MMTB, MethodObj)    // Imported: 0 Arguments
    External (_GPE.VHOV, MethodObj)    // Imported: 3 Arguments
    External (_SB_.PCI0.GFX0.DD02._BCM, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECMD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECRD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECWT, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.PEG0.PEGP.SGPO, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.SAT0.SDSM, MethodObj)    // Imported: 4 Arguments
    External (_SB_.PCI0.XHC_.RHUB.TPLD, MethodObj)    // Imported: 2 Arguments
    External (ADBG, MethodObj)    // 1 Arguments
    External (IRMC, FieldUnitObj)
    External (MDBG, MethodObj)    // Imported: 1 Arguments
    External (P8XH, MethodObj)    // 2 Arguments

    Scope (\_SB)
    {
        Device (INSD)
        {
            Name (_HID, "INT3398")  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0C02"))  // _CID: Compatible ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (NBT1, Zero)
            Method (GNSC, 0, NotSerialized)
            {
                Store (IRMC, Local0)
                P8XH (Zero, 0xAA)
                ADBG ("GNSC: ")
                ADBG (ToHexString (Local0))
                Return (IRMC)
            }

            Method (GNSM, 0, Serialized)
            {
                Store (NBT1, Local0)
                P8XH (Zero, 0x71)
                ADBG ("GNSM: ")
                ADBG (ToHexString (Local0))
                Return (Local0)
            }

            Method (SNSM, 1, Serialized)
            {
                Store (Arg0, NBT1)
                Store (NBT1, Local0)
                Switch (ToInteger (Local0))
                {
                    Case (Zero)
                    {
                        ADBG ("case 0: ")
                    }
                    Case (One)
                    {
                        ADBG ("case 1: ")
                    }
                    Case (0x02)
                    {
                        ADBG ("case 2: ")
                    }
                    Case (0x03)
                    {
                        ADBG ("case 3: ")
                    }
                    Case (0x04)
                    {
                        ADBG ("case 4: ")
                    }

                }

                P8XH (Zero, 0x72)
                ADBG ("SNSM: ")
                ADBG (ToHexString (Local0))
            }
        }
    }
}

