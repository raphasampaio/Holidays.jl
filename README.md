# Holidays.jl

[![CI](https://github.com/raphasampaio/Holidays.jl/actions/workflows/CI.yml/badge.svg)](https://github.com/raphasampaio/Holidays.jl/actions/workflows/CI.yml)
[![codecov](https://codecov.io/gh/raphasampaio/Holidays.jl/graph/badge.svg?token=bM7aXQsSOZ)](https://codecov.io/gh/raphasampaio/Holidays.jl)
[![Aqua](https://raw.githubusercontent.com/JuliaTesting/Aqua.jl/master/badge.svg)](https://github.com/JuliaTesting/Aqua.jl)

## Introduction

Holidays.jl is a Julia package that provides a simple and efficient way to check whether a given date is a holiday in specific countries. The package allows you to determine both national and regional holidays, making it an ideal tool for applications that need to account for date-sensitive events.

## Supported Countries

- Brazil
- United States

## Getting Started

### Installation

```julia
julia> ] add Holidays
```

### Example

```julia
using Holidays

usa = Country.UnitedStates()

# check if new year's day is a holiday
@show is_holiday(usa, Date(2024, 1, 1)) # true

# check if memorial day is a holiday
@show is_holiday(usa, Date(2024, 5, 27)) # true

# check if thanksgiving day is a holiday
@show is_holiday(usa, Date(2024, 11, 28)) # true
```

### Example

```julia
using Holidays

brazil = Country.Brazil()
rio = Country.Brazil(location = Location.RioDeJaneiro())

# check if april 23rd is a holiday in brazil
@show is_holiday(brazil, Date(2024, 4, 23)) # false

# check if april 23rd is a holiday specifically in rio de janeiro
@show is_holiday(rio, Date(2024, 4, 23)) # true
```

## Contributing

Contributions, bug reports, and feature requests are welcome! Feel free to open an issue or submit a pull request.