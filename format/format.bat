@echo off

SET BASEPATH=%~dp0

julia +1.11 --project=%BASEPATH% %BASEPATH%\format.jl