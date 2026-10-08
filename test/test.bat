@echo off

SET BASEPATH=%~dp0

IF "%~1"=="" (
    CALL julia --project=%BASEPATH%\.. -e "import Pkg; Pkg.test()"
) ELSE (
    CALL julia --project=%BASEPATH%\.. %BASEPATH%\runtests.jl %1
)