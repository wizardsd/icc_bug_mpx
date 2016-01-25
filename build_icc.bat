@REM ICC 2016 IA-32 VS2015 U1 command prompt: "C:\Program Files (x86)\IntelSWTools\compilers_and_libraries_2016.1.146\windows\bin\ipsxe-comp-vars.bat" ia32 vs2015

devenv /Upgrade googletest\googletest\msvc\gtest.sln

SET CL=-D__builtin_huge_val()#HUGE_VAL -D__builtin_huge_valf()#HUGE_VALF -D__builtin_nan#nan -D__builtin_nanf#nanf -D__builtin_nans#nan -D__builtin_nansf#nanf
@REM Everything works as expected without next line...
SET CL=%CL% -Qcheck-pointers-mpx:rw

msbuild googletest\googletest\msvc\gtest.sln /p:PlatformToolset="Intel C++ Compiler 16.0" /t:rebuild
