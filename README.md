# Holidays.jl

[![CI](https://github.com/raphasampaio/Holidays.jl/actions/workflows/CI.yml/badge.svg)](https://github.com/raphasampaio/Holidays.jl/actions/workflows/CI.yml)
[![codecov](https://codecov.io/gh/raphasampaio/Holidays.jl/graph/badge.svg?token=bM7aXQsSOZ)](https://codecov.io/gh/raphasampaio/Holidays.jl)
[![Aqua](https://raw.githubusercontent.com/JuliaTesting/Aqua.jl/master/badge.svg)](https://github.com/JuliaTesting/Aqua.jl)

## Introduction

Holidays.jl is a lightweight Julia package designed for determining whether a specific date is a public holiday in a variety of countries. The package supports checking national and regional holidays, making it a perfect fit for applications that require accurate date-based calculations.

## Currently Supported Countries

- Brazil (including states)
- Germany (including states)
- United States

## Getting Started

### Installation

```julia
julia> ] add Holidays
```

### Example 1: United States

```julia
using Holidays

usa = Holidays.UnitedStates()

# check if new year's day is a holiday
@show is_holiday(usa, Date(2024, 1, 1)) # true

# check if memorial day is a holiday
@show is_holiday(usa, Date(2024, 5, 27)) # true

# check if thanksgiving day is a holiday
@show is_holiday(usa, Date(2024, 11, 28)) # true
```

### Example 2: Brazil (National and State Holidays)

```julia
using Holidays

brazil = Holidays.Brazil()
rio = Holidays.Brazil(location = Location.RioDeJaneiro())

# check if april 23rd is a holiday in brazil
@show is_holiday(brazil, Date(2024, 4, 23)) # false

# check if april 23rd is a holiday specifically in rio de janeiro
@show is_holiday(rio, Date(2024, 4, 23)) # true
```

## Contributing

Contributions, bug reports, and feature requests are welcome! Feel free to open an issue or submit a pull request.