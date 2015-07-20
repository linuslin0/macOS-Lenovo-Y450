LenovoY450
==========

This is an IOKit Driver which can be used as Info.plist injector for other kexts.
And this driver would also check CSR config flags on 10.11 El Capitan.
The Info.plist is configured for Lenovo IdeaPad Y450.
Additional properties for injection can be found in Info_Y450.plist

Requirement
-----------

OS X 10.10 and above.

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

