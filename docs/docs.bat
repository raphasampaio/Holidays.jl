CALL "%JULIA_194%" --project -e "using Pkg; Pkg.develop(PackageSpec(path=dirname(pwd()))); Pkg.instantiate()"
CALL "%JULIA_194%" --project make.jl