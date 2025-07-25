@echo off

SET BASEPATH=%~dp0

CALL julia +1.11.6 --project=%BASEPATH% --interactive --load=%BASEPATH%\revise.jl
