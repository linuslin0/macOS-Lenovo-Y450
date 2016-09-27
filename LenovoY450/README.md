LenovoY450
==========

This is an IOKit Driver which can be used as Info.plist injector for other kexts.

And this driver would also check CSR and bootargs flags.

The Info.plist is configured for Lenovo IdeaPad Y450.

Additional properties for injection can be found in Info_Y450.plist

This kext is provided for TEST PURPOSE ONLY.

Requirement
-----------

OS X 10.9 and above.

OS X 10.11 or higher version required for the CSR flags check.

Installation
------------

Install to `/Library/Extensions`

Method of installation

* Install to `/Library/Extensions`.

* Use Clover EFI Bootloader to inject this kext.

* Load kext directly via kextload.

License
-------

This project is released under the Creative Commons Attribution-NonCommercial 4.0          

Please see <https://creativecommons.org/licenses/by-nc/4.0/> 
for detailed license information.

Change Log
----------

08/03/2015 v1.2.5

* Add CSR capability flag check, some log cleanup.

06/15/2016 v1.2.4

* Initial support for 10.12 for new SIP flag.

09/17/2015 v1.2.2

* Add 10.11 SDK support, change some flag names.

08/03/2015 v1.2.1

* Add properties in Info.plist to enable/disable bootargs & CSR flags scan.

07/31/2015 v1.2.0

* Add bootargs flags check.

07/20/2015 v1.1.0

* Add CSR config flags check.

07/12/2015 v1.0.0

* Initial release