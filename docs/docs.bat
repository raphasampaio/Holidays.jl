CALL julia +1.11.6 --project -e "using Pkg; Pkg.develop(PackageSpec(path=dirname(pwd()))); Pkg.instantiate()"
CALL julia +1.11.6 --project make.jl