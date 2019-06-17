@echo off
pushd %~dp0
setlocal

call "%SYNERGYDE64%dbl\dblvars64.bat"

rem Usage: gennet.exe -l<log filename> -o<output filename> <assemblys to load>
rem -l Filename used for logging failures
rem -o Filename for the output file
rem -d if you do not want to include dependent assemblys
rem -impdir Logical for generated imports

echo Generating .NET wrapper code...
gennet40 -o NETSRC:NetWrappers.dbl -l NetWrappers.log NETBIN:HashingTools.dll



echo DONE!

endlocal
popd