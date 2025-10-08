@echo off

SET BASEPATH=%~dp0

julia +1.12 --project=%BASEPATH% %BASEPATH%\format.jl