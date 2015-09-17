/*
 * Copyright (c) 2015 Linus. All rights reserved.
 *
 * This IOKit driver is written for the Info.plist properties injection
 * and CSR config flags checking.
 *
 */

#include <IOKit/IOLib.h>
#include <pexpert/pexpert.h>
#include "LenovoY450.h"

// This required macro defines the class's constructors, destructors,
// and several other methods I/O Kit requires.
OSDefineMetaClassAndStructors(LenovoY450, IOService)

// Define the driver's superclass.
#define super IOService

#define kScanBootargsFlags  "Scan Bootargs Flags"
#define kScanCSRValidFlags  "Scan CSR Valid Flags"

bool LenovoY450::init(OSDictionary *dict)
{
    if (!super::init(dict))
        return false;
    IOLog("LenovoY450 v1.2.1 Copyright 2015 Linus. All rights reserved.\n");
    IOLog("LenovoY450 (Build date/time: %s %s)\n", __DATE__, __TIME__);
    
    OSBoolean* scanRequired = OSDynamicCast(OSBoolean, dict->getObject(kScanBootargsFlags));
    if (scanRequired && scanRequired->isTrue()) {
        needCheckBootargsFlags = true;
    }
    
    scanRequired = OSDynamicCast(OSBoolean, dict->getObject(kScanCSRValidFlags));
    if (scanRequired && scanRequired->isTrue()) {
        needCheckCSRFlags = true;
    }
    
    OSSafeReleaseNULL(scanRequired);
    
    return true;
}

void LenovoY450::free(void)
{
    //IOLog("LenovoY450: Freeing.\n");
    super::free();
}

IOService *LenovoY450::probe(IOService *provider, SInt32 *score)
{
    IOService *result = super::probe(provider, score);
    //IOLog("LenovoY450: Probing.\n");
    return result;
}

bool LenovoY450::start(IOService *provider)
{
    if (!super::start(provider))
        return false;
    //IOLog("LenovoY450: Starting.\n");
    
    if (needCheckBootargsFlags) {
        checkBootArgsFlags();
    }
    if (needCheckCSRFlags) {
        checkCSRFlags();
    }
    
    return true;
}

void LenovoY450::stop(IOService *provider)
{
    IOLog("LenovoY450: Stopping.\n");
    super::stop(provider);
}

void LenovoY450::checkCSRFlags(void)
{
    //check CSR valid flags
    IOLog("LenovoY450: Scanning CSR valid flags.\n");
    
    int rootless_boot_arg;
    if (PE_parse_boot_argn("rootless", &rootless_boot_arg, sizeof(rootless_boot_arg))
        && rootless_boot_arg == 0) {
        IOLog("LenovoY450: WARNING: Found deprecated boot-args rootless=0.\n");
    }
    int kext_dev_mode_boot_arg;
    if (PE_parse_boot_argn("kext-dev-mode", &kext_dev_mode_boot_arg, sizeof(kext_dev_mode_boot_arg))
        && kext_dev_mode_boot_arg == 1) {
        IOLog("LenovoY450: WARNING: Found deprecated boot-args kext-dev-mode=1.\n");
    }
    
    csr_config_t config;
    boot_args *args = (boot_args *)PE_state.bootArgs;
    config = args->csrActiveConfig & CSR_VALID_FLAGS;
    if (config & CSR_ALLOW_UNTRUSTED_KEXTS)
        IOLog("LenovoY450: [0] Allow untrusted kexts.\n");
    if (config & CSR_ALLOW_UNRESTRICTED_FS)
        IOLog("LenovoY450: [1] Allow unrestricted file system.\n");
    if (config & CSR_ALLOW_TASK_FOR_PID)
        IOLog("LenovoY450: [2] Allow test_for_pid().\n");
    if (config & CSR_ALLOW_KERNEL_DEBUGGER)
        IOLog("LenovoY450: [3] Allow kernel debugger.\n");
    if (config & CSR_ALLOW_APPLE_INTERNAL)
        IOLog("LenovoY450: [4] Allow Apple internal.\n");
    if (config & CSR_ALLOW_UNRESTRICTED_DTRACE)
        IOLog("LenovoY450: [5] Allow unrestricted dtrace.\n");
    if (config & CSR_ALLOW_UNRESTRICTED_NVRAM)
        IOLog("LenovoY450: [6] Allow unrestricted NVRAM.\n");

}

void LenovoY450::checkBootArgsFlags(void)
{
    //check bootargs flags
    IOLog("LenovoY450: Scanning bootargs flags.\n");
    boot_args *args = (boot_args *)PE_state.bootArgs;
    if (args->flags & kBootArgsFlagRebootOnPanic)
        IOLog("LenovoY450: [0] RebootOnPanic\n");
    if (args->flags & kBootArgsFlagHiDPI)
        IOLog("LenovoY450: [1] HiDPI\n");
    if (args->flags & kBootArgsFlagBlack)
        IOLog("LenovoY450: [2] Black\n");
    if (args->flags & kBootArgsFlagCSRActiveConfig) {
        IOLog("LenovoY450: [3] CSRActiveConfig\n");
    } else {
        needCheckCSRFlags = false;
    }
    if (args->flags & kBootArgsFlagCSRConfigMode)
        IOLog("LenovoY450: [4] CSRConfigMode\n");
    if (args->flags & kBootArgsFlagCSRBoot)
        IOLog("LenovoY450: [5] CSRBoot\n");
    if (args->flags & kBootArgsFlagBlackBg)
        IOLog("LenovoY450: [6] BlackBg\n");
    if (args->flags & kBootArgsFlagLoginUI)
        IOLog("LenovoY450: [7] LoginUI\n");

}
