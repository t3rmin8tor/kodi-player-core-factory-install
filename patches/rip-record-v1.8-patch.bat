@ECHO OFF
@ECHO CAUTION THIS PATCH IS FOR RIP-RECORD VERSION 1.8
@ECHO ..
@ECHO THIS PATCH FIXES ENVIRONMENT ERRORS CAUSED BY WINDOWS UPDATES
@ECHO ..
@ECHO ******************
@ECHO **** WARNING *****
@ECHO ******************
@ECHO ..
@ECHO CONTINUING WILL RESET ALL USER PATHS 
:PROMPT
SET /P AREYOUSURE=Are you sure (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END
setx PATH "C:\Program Files (x86)\Rip-Record\Cygwin\bin;C:\Program Files (x86)\Rip-Record\bin;C:\Program Files (x86)\Rip-Record\Git\cmd;C:\Program Files (x86)\Rip-Record\Git\bin;%userprofile%\git\kodi-playercorefactory\bash-scripts-windows\"
@ECHO setting Cygwin path....

@ECHO setting application path...
 
@ECHO setting Git path....

@ECHO setting kodi-palyercorefactory path....
@ECHO ..
@ECHO ..
GOTO success 





:END
@ECHO Rip-Record v 1.8 patch terminated 
exit

:success
@ECHO success all pathches applied
@ECHO rip-record patch v1.8 exiting
pause
exit
