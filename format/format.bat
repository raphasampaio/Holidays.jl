@echo off

SET BASEPATH=%~dp0

julia +1.11.6 --project=%BASEPATH% %BASEPATH%\format.jl