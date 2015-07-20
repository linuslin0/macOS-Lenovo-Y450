/*
 * Copyright (c) 2015 Linus. All rights reserved.
 *
 * This IOKit driver is written for the Info.plist properties injection
 * and CSR BootFlags checking.
 */

#include <IOKit/IOLib.h>
#include <pexpert/pexpert.h>
#include "LenovoY450.h"


// This required macro defines the class's constructors, destructors,
// and several other methods I/O Kit requires.
OSDefineMetaClassAndStructors(LenovoY450, IOService)

// Define the driver's superclass.
#define super IOService

bool LenovoY450::init(OSDictionary *dict)
{
    bool result = super::init(dict);
    IOLog("LenovoY450 1.0 Copyright 2015 Linus. All rights reserved.\n");
    return result;
}

void LenovoY450::free(void)
{
    //IOLog("LenovoY450::Freeing\n");
    super::free();
}

IOService *LenovoY450::probe(IOService *provider, SInt32 *score)
{
    IOService *result = super::probe(provider, score);
    //IOLog("LenovoY450::Probing\n");
    return result;
}

bool LenovoY450::start(IOService *provider)
{
    bool result = super::start(provider);
    //IOLog("LenovoY450::Starting\n");
    IOLog("LenovoY450 (Build date/time: %s %s)\n", __DATE__, __TIME__);
    
    IOLog("LenovoY450: Scanning CSR flag.\n");
    // checking CSR bootargs flag
    csr_config_t config;
    boot_args *args = (boot_args *)PE_state.bootArgs;
    if (args->flags & kBootArgsFlagCSRBoot)
        IOLog("LenovoY450: CSRBoot flag found.\n");
    if (args->flags & kBootArgsFlagCSRActiveConfig) {
        config = args->csrActiveConfig & CSR_VALID_FLAGS;
    } else {
        config = 0;
    }
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
    
    return result;
}

void LenovoY450::stop(IOService *provider)
{
    IOLog("LenovoY450::Stopping\n");
    super::stop(provider);
}