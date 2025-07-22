@echo off

SET BASEPATH=%~dp0

IF "%~1"=="" (
    CALL "%JULIA_1115%" --project=%BASEPATH%\.. -e "import Pkg; Pkg.test()"
) ELSE (
    CALL "%JULIA_1115%" --project=%BASEPATH%\.. %BASEPATH%\runtests.jl %1
)