CALL "%JULIA_1104%" --project -e "using Pkg; Pkg.develop(PackageSpec(path=dirname(pwd()))); Pkg.instantiate()"
CALL "%JULIA_1104%" --project make.jl