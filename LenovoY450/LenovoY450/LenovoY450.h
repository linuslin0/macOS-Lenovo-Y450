/*
 * Copyright (c) 2015-2016 Linus Lin. All rights reserved.
 *
 * License -> Creative Commons Attribution-NonCommercial 4.0
 *            https://creativecommons.org/licenses/by-nc/4.0/
 */

#include <IOKit/IOService.h>

#define LenovoY450 org_linus_driver_LenovoY450
#define VERSION "1.2.5"
#define iLog(msg...) do { IOLog("LenovoY450: " msg); } while (0);

typedef uint32_t csr_config_t;
typedef uint32_t csr_op_t;

/* Rootless configuration flags */
#define CSR_ALLOW_UNTRUSTED_KEXTS		(1 << 0)
#define CSR_ALLOW_UNRESTRICTED_FS		(1 << 1)
#define CSR_ALLOW_TASK_FOR_PID			(1 << 2)
#define CSR_ALLOW_KERNEL_DEBUGGER		(1 << 3)
#define CSR_ALLOW_APPLE_INTERNAL		(1 << 4)
#define CSR_ALLOW_UNRESTRICTED_DTRACE	(1 << 5)
#define CSR_ALLOW_UNRESTRICTED_NVRAM	(1 << 6)
#define CSR_ALLOW_DEVICE_CONFIGURATION	(1 << 7)
#define CSR_ALLOW_ANY_RECOVERY_OS       (1 << 8)

#define CSR_VALID_FLAGS (CSR_ALLOW_UNTRUSTED_KEXTS | \
CSR_ALLOW_UNRESTRICTED_FS | \
CSR_ALLOW_TASK_FOR_PID | \
CSR_ALLOW_KERNEL_DEBUGGER | \
CSR_ALLOW_APPLE_INTERNAL | \
CSR_ALLOW_UNRESTRICTED_DTRACE | \
CSR_ALLOW_UNRESTRICTED_NVRAM | \
CSR_ALLOW_DEVICE_CONFIGURATION | \
CSR_ALLOW_ANY_RECOVERY_OS)

/* CSR capabilities that a booter can give to the system */
#define CSR_CAPABILITY_UNLIMITED				(1 << 0)
#define CSR_CAPABILITY_CONFIG					(1 << 1)
#define CSR_CAPABILITY_APPLE_INTERNAL			(1 << 2)

#define CSR_VALID_CAPABILITIES (CSR_CAPABILITY_UNLIMITED | CSR_CAPABILITY_CONFIG | CSR_CAPABILITY_APPLE_INTERNAL)

class LenovoY450 : public IOService
{
    OSDeclareDefaultStructors(LenovoY450)
public:
    virtual bool init(OSDictionary *dictionary = 0) override;
    virtual void free(void) override;
    virtual IOService *probe(IOService *provider, SInt32 *score) override;
    virtual bool start(IOService *provider) override;
    virtual void stop(IOService *provider) override;
private:
    void checkCSRFlags(void);
    void checkBootArgsFlags(void);
    bool needCheckCSRFlags = false;
    bool needCheckCSRActiveConfig = false;
    bool needCheckBootargsFlags = false;
};
