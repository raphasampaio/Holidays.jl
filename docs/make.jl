using Documenter
using Holidays

DocMeta.setdocmeta!(Holidays, :DocTestSetup, :(using Holidays); recursive = true)

makedocs(
    sitename = "Holidays",
    modules = [Holidays],
    authors = "Raphael Araujo Sampaio",
    repo = "https://github.com/raphasampaio/Holidays.jl/blob/{commit}{path}#{line}",
    doctest = true,
    clean = true,
    format = Documenter.HTML(
        prettyurls = get(ENV, "CI", "false") == "true",
        canonical = "https://raphasampaio.github.io/Holidays.jl",
        edit_link = "main",
        # assets = [
        #     "assets/favicon.ico",
        # ],
    ),
    pages = [
        "Home" => "index.md",
        "Getting Started" => "getting_started.md",
        "API Reference" => "api_reference.md",
    ],
)

deploydocs(
    repo = "github.com/raphasampaio/Holidays.jl.git",
    devbranch = "main",
    push_preview = true,
)
