/* add your code here */

#include <IOKit/IOService.h>

#define LenovoY450 org_linus_driver_LenovoY450

class LenovoY450 : public IOService
{
    OSDeclareDefaultStructors(LenovoY450)
public:
    virtual bool init(OSDictionary *dictionary = 0);
    virtual void free(void);
    virtual IOService *probe(IOService *provider, SInt32 *score);
    virtual bool start(IOService *provider);
    virtual void stop(IOService *provider);
};