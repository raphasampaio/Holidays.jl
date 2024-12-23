# Holidays.jl

[![Documentation](https://img.shields.io/badge/docs-dev-blue.svg)](https://raphasampaio.github.io/Holidays.jl/dev)
[![CI](https://github.com/raphasampaio/Holidays.jl/actions/workflows/CI.yml/badge.svg)](https://github.com/raphasampaio/Holidays.jl/actions/workflows/CI.yml)
[![codecov](https://codecov.io/gh/raphasampaio/Holidays.jl/graph/badge.svg?token=bM7aXQsSOZ)](https://codecov.io/gh/raphasampaio/Holidays.jl)
[![Aqua](https://raw.githubusercontent.com/JuliaTesting/Aqua.jl/master/badge.svg)](https://github.com/JuliaTesting/Aqua.jl)

## Introduction

Holidays.jl is a lightweight Julia package designed for determining whether a specific date is a public holiday in a variety of countries. The package supports checking national and regional holidays, making it a perfect fit for applications that require accurate date-based calculations.

## Currently Supported Countries

- Brazil (including subdivisions)
- Egypt
- Germany (including subdivisions)
- United States

## Getting Started

### Installation

```julia
julia> ] add Holidays
```

### Example 1: United States

```julia
using Holidays
using Dates

usa_holidays = Holidays.UnitedStates()

# check if new year's day is a holiday
@show Date(2024, 1, 1) in usa_holidays # true

# check if memorial day is a holiday
@show Date(2024, 5, 27) in usa_holidays # true

# check if thanksgiving day is a holiday
@show Date(2024, 11, 28) in usa_holidays # true
```

### Example 2: Brazil (Country and Subdivisions Holidays)

```julia
using Holidays
using Dates

# check if april 23rd is a holiday in brazil
brazil_holidays = Holidays.Brazil()
@show Date(2024, 4, 23) in brazil_holidays # false

# check if april 23rd is a holiday specifically in rio de janeiro
rio_holidays = Holidays.Brazil(subdivision = Subdivision.RioDeJaneiro())
@show Date(2024, 4, 23) in rio_holidays # true
```

### Example 3: Find Holidays in a Specific Year Range

```julia
using Holidays

calendar = Holidays.UnitedStates()

@show Holidays.find_holidays(calendar, years = [2024, 2025])
```

## Contributing

Contributions, bug reports, and feature requests are welcome! Feel free to open an issue or submit a pull request.