robocopy . original_package /E /XD original_package .git
robocopy . newpackage /E /XD "original_package" "newpackage" /XF "packtemplate.bat" /Move

md newpackage\$root
move newpackage\*.* newpackage\$root
move newpackage\package\*.* newpackage
rd newpackage\package
ren newpackage package
move package\$root\unpack.bat package
call move packTemplate.bat package\$root