/* add your code here */

#include <IOKit/IOLib.h>
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
    return result;
}

void LenovoY450::stop(IOService *provider)
{
    IOLog("LenovoY450::Stopping\n");
    super::stop(provider);
}