/*
 * Copyright (c) 2015-2016 Linus Lin. All rights reserved.
 *
 * License -> Creative Commons Attribution-NonCommercial 4.0
 *            https://creativecommons.org/licenses/by-nc/4.0/
 */

#include <IOKit/IOLib.h>
#include <pexpert/pexpert.h>
#include <libkern/version.h>
#include "LenovoY450.h"

// This required macro defines the class's constructors, destructors,
// and several other methods I/O Kit requires.
OSDefineMetaClassAndStructors(LenovoY450, IOService)

// Define the driver's superclass.
#define super IOService

#define kScanBootargsFlags  "Scan Bootargs Flags"
#define kScanCSRFlags  "Scan CSR Flags"

bool LenovoY450::init(OSDictionary *dict)
{
    if (!super::init(dict))
        return false;
    iLog("v%s Copyright 2016 Linus. All rights reserved.\n", VERSION);
    iLog("Build date/time: %s %s\n", __DATE__, __TIME__);
    
    OSBoolean* scanRequired = OSDynamicCast(OSBoolean, dict->getObject(kScanBootargsFlags));
    if (scanRequired && scanRequired->isTrue()) {
        needCheckBootargsFlags = true;
    }
    
    scanRequired = OSDynamicCast(OSBoolean, dict->getObject(kScanCSRFlags));
    if (scanRequired && scanRequired->isTrue()) {
        needCheckCSRFlags = true;
    }
    
    OSSafeReleaseNULL(scanRequired);
    
    return true;
}

void LenovoY450::free(void)
{
    super::free();
}

IOService *LenovoY450::probe(IOService *provider, SInt32 *score)
{
    IOService *result = super::probe(provider, score);
    return result;
}

bool LenovoY450::start(IOService *provider)
{
    if (!super::start(provider))
        return false;
    
    if (needCheckBootargsFlags) {
        checkBootArgsFlags();
    }
    
    //CSR flags check begin with 10.11
    if (version_major >= 15) {
        //deprecated boot-args check
        int rootless_boot_arg;
        if (PE_parse_boot_argn("rootless", &rootless_boot_arg, sizeof(rootless_boot_arg))
            && rootless_boot_arg == 0) {
            iLog("WARNING: Deprecated boot-args \"rootless\" found.\n");
        }
        int kext_dev_mode_boot_arg;
        if (PE_parse_boot_argn("kext-dev-mode", &kext_dev_mode_boot_arg, sizeof(kext_dev_mode_boot_arg))
            && kext_dev_mode_boot_arg == 1) {
            iLog("WARNING: Deprecated boot-args \"kext-dev-mode\" found.\n");
        }
    
        if (needCheckCSRFlags) {
            checkCSRFlags();
        }
    }
    
    return true;
}

void LenovoY450::stop(IOService *provider)
{
    iLog("Stopping.\n");
    super::stop(provider);
}

void LenovoY450::checkCSRFlags(void)
{
    //check CSR flags
    iLog("Scanning CSR flags.\n");
    
    csr_config_t config;
    boot_args *args = (boot_args *)PE_state.bootArgs;
    if (needCheckCSRActiveConfig) {
        config = args->csrActiveConfig & CSR_VALID_FLAGS;
        iLog("Scanning csrActiveConfig = 0x%08x\n", config);
        if (config & CSR_ALLOW_UNTRUSTED_KEXTS)
            iLog("[0] Allow Untrusted Kexts\n");
        if (config & CSR_ALLOW_UNRESTRICTED_FS)
            iLog("[1] Allow Unrestricted FS\n");
        if (config & CSR_ALLOW_TASK_FOR_PID)
            iLog("[2] Allow Task for PID\n");
        if (config & CSR_ALLOW_KERNEL_DEBUGGER)
            iLog("[3] Allow Kernel Debugger\n");
        if (config & CSR_ALLOW_APPLE_INTERNAL)
            iLog("[4] Allow Apple Internal\n");
        if (config & CSR_ALLOW_UNRESTRICTED_DTRACE)
            iLog("[5] Allow Unrestricted DTrace\n");
        if (config & CSR_ALLOW_UNRESTRICTED_NVRAM)
            iLog("[6] Allow Unrestricted NVRAM\n");
        if (config & CSR_ALLOW_DEVICE_CONFIGURATION)
            iLog("[7] Allow Device Configuration\n");
        if (config & CSR_ALLOW_ANY_RECOVERY_OS)  // new in 10.12
            iLog("[8] Allow Any Recovery OS\n");
    }
    
    csr_op_t csrOpConfig;
    csrOpConfig = args->csrCapabilities & CSR_VALID_CAPABILITIES;
    if (csrOpConfig) {
        iLog("Scanning csrCapabilities = 0x%08x\n", csrOpConfig);
        if (csrOpConfig & CSR_CAPABILITY_UNLIMITED)
            iLog("[0] CSR_CAPABILITY_UNLIMITED\n");
        if (csrOpConfig & CSR_CAPABILITY_CONFIG)
            iLog("[1] CSR_CAPABILITY_CONFIG\n");
        if (csrOpConfig & CSR_CAPABILITY_APPLE_INTERNAL)
            iLog("[2] CSR_CAPABILITY_APPLE_INTERNAL\n");
    }

}

void LenovoY450::checkBootArgsFlags(void)
{
    //check bootargs flags
    boot_args *args = (boot_args *)PE_state.bootArgs;
    iLog("Scanning bootArgs = 0x%08x\n", args->flags);
    if (args->flags & kBootArgsFlagRebootOnPanic)
        iLog("[0] RebootOnPanic\n");
    if (args->flags & kBootArgsFlagHiDPI)
        iLog("[1] HiDPI\n");
    if (args->flags & kBootArgsFlagBlack)
        iLog("[2] Black\n");
    if (args->flags & kBootArgsFlagCSRActiveConfig) {
        iLog("[3] CSRActiveConfig\n");
        needCheckCSRActiveConfig = true;
    }
    if (args->flags & kBootArgsFlagCSRConfigMode)
        iLog("[4] CSRConfigMode\n");
    if (args->flags & kBootArgsFlagCSRBoot)
        iLog("[5] CSRBoot\n");
    if (args->flags & kBootArgsFlagBlackBg)
        iLog("[6] BlackBg\n");
    if (args->flags & kBootArgsFlagLoginUI)
        iLog("[7] LoginUI\n");
    if (args->flags & kBootArgsFlagInstallUI)
        iLog("[8] InstallUI\n");

}
