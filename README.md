# Holidays.jl

[![Documentation](https://img.shields.io/badge/docs-dev-blue.svg)](https://raphasampaio.github.io/Holidays.jl/dev)
[![CI](https://github.com/raphasampaio/Holidays.jl/actions/workflows/CI.yml/badge.svg)](https://github.com/raphasampaio/Holidays.jl/actions/workflows/CI.yml)
[![codecov](https://codecov.io/gh/raphasampaio/Holidays.jl/graph/badge.svg?token=bM7aXQsSOZ)](https://codecov.io/gh/raphasampaio/Holidays.jl)
[![Aqua](https://raw.githubusercontent.com/JuliaTesting/Aqua.jl/master/badge.svg)](https://github.com/JuliaTesting/Aqua.jl)

## Introduction

Holidays.jl is a lightweight Julia package designed for determining whether a specific date is a public holiday in a variety of countries. The package supports checking national and regional holidays, making it a perfect fit for applications that require accurate date-based calculations.

## Currently Supported Countries

- Australia
- Brazil (including subdivisions)
- Canada
- Egypt
- France
- Germany (including subdivisions)
- India
- Italy
- Japan
- Mexico
- Netherlands
- Russia
- South Korea
- Spain
- United Kingdom
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

### Example 3: International Coverage

```julia
using Holidays
using Dates

# Check New Year's Day across different countries
new_years = Date(2024, 1, 1)

@show new_years in Holidays.UnitedStates()  # true
@show new_years in Holidays.Canada()        # true
@show new_years in Holidays.UnitedKingdom() # true
@show new_years in Holidays.France()        # true
@show new_years in Holidays.Australia()     # true
@show new_years in Holidays.Japan()         # true

# Check country-specific holidays
@show Date(2024, 7, 4) in Holidays.UnitedStates()  # Independence Day - true
@show Date(2024, 7, 1) in Holidays.Canada()        # Canada Day - true
@show Date(2024, 7, 14) in Holidays.France()       # Bastille Day - true
@show Date(2024, 1, 26) in Holidays.Australia()    # Australia Day - true
@show Date(2024, 2, 23) in Holidays.Japan()        # Emperor's Birthday - true

# European holidays
@show Date(2024, 4, 27) in Holidays.Netherlands()  # King's Day - true
@show Date(2024, 6, 2) in Holidays.Italy()         # Republic Day - true
@show Date(2024, 10, 12) in Holidays.Spain()       # National Day - true

# Asian and other regions
@show Date(2024, 3, 1) in Holidays.SouthKorea()    # Independence Movement Day - true
@show Date(2024, 5, 9) in Holidays.Russia()        # Victory Day - true
@show Date(2024, 9, 16) in Holidays.Mexico()       # Independence Day - true
```

### Example 4: Find Holidays in a Specific Year Range

```julia
using Holidays

calendar = Holidays.UnitedStates()

@show Holidays.find_holidays(calendar, years = [2024, 2025])
```

## Contributing

Contributions, bug reports, and feature requests are welcome! Feel free to open an issue or submit a pull request.