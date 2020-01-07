@ECHO OFF
SET ctitle=GNU Octave multicore server(s) console (close to kill servers)
title=%ctitle%

REM ===================================================================================================
REM USAGE: qwtb_mcm_start_servers.bat octave_bin_folder octave_exe cores_count jobs_sharing_folder_path
REM ===================================================================================================


REM ==== SETUP ====

REM --- Desired cores count ---
SET /a CORE_N=%3

REM --- Avaliable cores count ---
SET /a CORE_MAX=%NUMBER_OF_PROCESSORS%

REM --- GNU Octave path ---
SET OCT_FLD=%1
SET OCT_NAME=%2

REM --- Job share folder ---
SET SHARE_PATH=%4

REM --- Options ---
SET OPT=/BELOWNORMAL /B

REM --- Set this script priority ---
for /f "tokens=2" %%a in ('tasklist /v ^| findstr /c:"%ctitle%"') do set cpid=%%a
wmic process %cpid% CALL SetPriority "Below Normal"

REM ==== RUN SERVERS ====
SET FUNC_NAME=run_multicore_slave("'%SHARE_PATH%'")
SET /a i=0
SET /a c=0
:loop
SET /a "CORE_MSK=1<<%c%"
START "GNU Octave - multicore slave #%i%" /AFFINITY %CORE_MSK% %OPT% /D "%OCT_FLD%" "%OCT_NAME%" -q -p "%CD%" --exec-path "%CD%" --eval %FUNC_NAME% --persist -i
SET /a c=%c%+1
IF %i% GTR %CORE_MAX% SET /a c=0
SET /a i=%i%+1
IF %CORE_N% GTR %i% GOTO loop
