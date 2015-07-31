LenovoY450
==========

This is an IOKit Driver which can be used as Info.plist injector for other kexts.

And this driver would also check CSR config and bootargs flags.

The Info.plist is configured for Lenovo IdeaPad Y450.

Additional properties for injection can be found in Info_Y450.plist

Requirement
-----------

OS X 10.10 and above.

OS X 10.11 for the CSR config flags check.

Installation
------------

Install to `/Library/Extensions`

Method of installation

* Manually copy the kext to /L/E, repair permissions and rebuild kernel cache.

License
-------

This project is released under the APPLE PUBLIC SOURCE LICENSE. 

Please see APPLE_LICENSE file or <http://www.opensource.apple.com/apsl/> 
for detailed license information.

Change Log
----------

07/31/2015 v1.2.0

* Add bootargs flags check.

07/20/2015 v1.1.0

* Add CSR config flags check.

07/12/2015 v1.0.0

* Initial release