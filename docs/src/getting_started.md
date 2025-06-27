# Getting Started

## Installation

```julia
julia> ] add Holidays
```

## Basic Usage

### Checking if a Date is a Holiday

```julia
using Holidays
using Dates

# Create a holiday calendar for a specific country
usa_holidays = Holidays.UnitedStates()

# Check if a specific date is a holiday
@show Date(2024, 1, 1) in usa_holidays  # New Year's Day - true
@show Date(2024, 7, 4) in usa_holidays  # Independence Day - true
@show Date(2024, 12, 25) in usa_holidays # Christmas Day - true
@show Date(2024, 3, 15) in usa_holidays  # Random date - false
```

### Working with Different Countries

```julia
# Check the same date across different countries
australia_day = Date(2024, 1, 26)

@show australia_day in Holidays.Australia()     # true - Australia Day
@show australia_day in Holidays.UnitedStates()  # false
@show australia_day in Holidays.Canada()        # false

# Check country-specific holidays
@show Date(2024, 7, 1) in Holidays.Canada()        # Canada Day - true
@show Date(2024, 7, 14) in Holidays.France()       # Bastille Day - true
@show Date(2024, 4, 25) in Holidays.Australia()    # ANZAC Day - true
@show Date(2024, 5, 5) in Holidays.Japan()         # Children's Day - true
```

### Countries with Subdivisions

Some countries support regional subdivisions (states, provinces, etc.):

```julia
# Brazil with state-specific holidays
brazil_national = Holidays.Brazil()
brazil_rio = Holidays.Brazil(subdivision = Subdivision.RioDeJaneiro())

st_george_day = Date(2024, 4, 23)
@show st_george_day in brazil_national  # false - not a national holiday
@show st_george_day in brazil_rio       # true - state holiday in Rio de Janeiro

# Germany with state-specific holidays  
germany_national = Holidays.Germany()
germany_bavaria = Holidays.Germany(subdivision = Subdivision.Bavaria())

epiphany = Date(2024, 1, 6)
@show epiphany in germany_national  # false - not a national holiday
@show epiphany in germany_bavaria   # true - state holiday in Bavaria
```

### Finding All Holidays in a Year

```julia
# Get all holidays for a specific year
calendar = Holidays.UnitedStates()
holidays_2024 = Holidays.find_holidays(calendar; years = [2024])

println("US Federal Holidays in 2024:")
for holiday in holidays_2024
    println("$(holiday.label)")
end
```

## Available Countries

Currently supported countries:

- **Australia** - National holidays
- **Brazil** - National and state holidays (26 states + Federal District)
- **Canada** - National holidays  
- **Egypt** - National holidays
- **France** - National holidays
- **Germany** - National and state holidays (16 states)
- **India** - Major national holidays
- **Italy** - National holidays
- **Japan** - National holidays
- **Mexico** - National holidays
- **Netherlands** - National holidays
- **Russia** - National holidays
- **South Korea** - National holidays
- **Spain** - National holidays
- **United Kingdom** - National holidays
- **United States** - Federal holidays

