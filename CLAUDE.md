# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Holidays.jl is a Julia package for determining public holidays in various countries and their subdivisions. It supports 200+ countries with national and regional holidays using a modular calendar-based architecture.

## Development Commands

### Testing
```bash
# Run all tests (Windows)
test\test.bat

# Run tests for specific country (Windows)
test\test.bat countries\test_united_states.jl
```

### Code Formatting
```bash
# Format code (Windows)
format\format.bat
```

## Architecture

### Core Components

1. **AbstractHolidayCalendar**: Base type for all country calendars
2. **Holiday struct**: Represents individual holidays with handlers, date ranges, and observance rules
3. **Subdivision module**: Manages regional/state-specific holidays
4. **Calendar systems**: Supports Christian, Islamic, Chinese, Buddhist, and Hindu calendars

### Country Implementation Pattern

Countries are defined using the `@country` macro which generates:
- A country struct inheriting from `AbstractHolidayCalendar` 
- Constructor supporting optional subdivision parameter
- Automatic holiday fetching via `fetch_holidays()`

Example structure:
```julia
@country UnitedStates  # Generates UnitedStates struct

# Usage:
holidays = UnitedStates()  # National holidays only
regional = UnitedStates(subdivision = Subdivision.California())  # With state holidays
```

### Holiday Definition

Each holiday is defined with:
- `label`: Human-readable name (required)
- `handler`: Function returning the holiday date for a given year (required)
- `observed`: Optional function for observance rules (e.g., Monday if falls on Sunday)
- `start_year`/`end_year`: Optional date range limits
- `only_years`: Optional array or function to filter specific years
- `skip_years`: Optional years to exclude the holiday

Example holiday definitions:
```julia
# Simple holiday
Holiday("New Year's Day", is_january_1st)

# With date range
Holiday("Workers' Day", is_may_1st, start_year = 1980, end_year = 1983)

# With observance rule
Holiday("New Year's Day", is_january_1st, observed = next_monday_if_falls_on_weekend)

# With year filtering
Holiday("Presidential Inauguration", is_march_1st,
    start_year = 1985, end_year = 2020,
    only_years = year -> year % 5 == 0)
```

### Observance Rules

Common observance functions in `src/observed.jl`:
- `closest_weekday`: Moves holidays to Friday (if Saturday) or Monday (if Sunday)
- `next_monday_if_falls_on_weekend`: Moves Saturday/Sunday holidays to Monday
- `next_monday_if_falls_on_sunday`: Moves only Sunday holidays to Monday

### Advanced Holiday Patterns

#### Year Filtering with `only_years`

For holidays that occur only in specific years (e.g., every 5 years):

**Using an array** (simple, explicit):
```julia
Holiday("Presidential Inauguration Day", is_july_1st,
    only_years = [2014, 2019, 2024])
```

**Using a function** (cleaner for patterns):
```julia
Holiday("Presidential Inauguration Day", is_march_1st,
    start_year = 1985, end_year = 2020,
    only_years = year -> year % 5 == 0)
```

#### Calendar-Specific Date Overrides

For countries that use different calendar systems (Islamic, Chinese, etc.), dates may need country-specific overrides.

Example (Iran - Islamic calendar):
```julia
# Override Islamic calendar dates for Iran-specific calculations
const IranianIslamic = Holidays.Islamic

function IranianIslamic.is_eid_al_fitr(x::TimeType)
    # Iran-specific Eid al-Fitr dates (differ from standard Islamic calendar)
    year = Dates.year(x)
    iranian_dates = Dict(
        1979 => Date(1979, 9, 5),
        1980 => Date(1980, 8, 25),
        # ... more dates
    )
    return get(iranian_dates, year, Date(1,1,1)) == Date(x)
end
```

#### Historical Holiday Changes

For holidays that were abolished, renamed, or modified over time:

Example (Italy - holidays abolished in 1977):
```julia
Holiday("Epiphany", Christian.is_epiphany, end_year = 1976),
Holiday("Saint Joseph's Day", is_march_19th, end_year = 1976),
Holiday("Epiphany", Christian.is_epiphany, start_year = 2001),
```

### File Organization

- `src/countries/`: Individual country implementations (200+ files)
- `src/calendars/`: Calendar system implementations
- `src/`: Core modules (country.jl, holiday.jl, calendar.jl, etc.)
- `test/countries/`: Corresponding test files for each country
- `test/calendars/`: Calendar system tests

## Implementation Best Practices

### 1. Reuse Existing Date Handlers

Always check `src/dates.jl` for existing date helper functions before creating custom ones:
- `is_january_1st`, `is_february_14th`, etc. for specific dates
- `is_first_monday_of_january`, `is_last_friday_of_march`, etc. for relative dates

### 2. Custom Handlers for Complex Logic

Create custom handler functions when:
- Date calculation depends on conditional logic (e.g., different dates for different years)
- Replacement observance patterns are needed
- Calendar-specific date overrides are required

### 3. Testing Workflow

Always run tests after implementation:
```bash
# Run specific country tests
test\test.bat countries\test_country_name.jl

# Verify all tests pass before committing
test\test.bat
```

### 4. Calendar System Overrides

For countries using non-Gregorian calendars, create module-scoped constants:
```julia
const IranianIslamic = Holidays.Islamic

# Override specific dates
function IranianIslamic.is_eid_al_fitr(x::TimeType)
    # Country-specific implementation
end
```

## Testing Strategy

The test suite uses a recursive inclusion system that automatically finds and runs all `test_*.jl` files. Individual country tests can be run by passing the test file name as an argument to the test runner.

All tests must pass before committing changes. The test files are located in `test/countries/` and follow the naming convention `test_country_name.jl`.

## Code Style

The project uses JuliaFormatter for consistent code formatting. All contributions should be formatted using the provided format scripts before committing.

Key style guidelines:
- Use guard clauses for early returns
- Prefer mathematical formulas over nested conditionals for date calculations
- Add clear comments explaining complex observance logic
- Keep functions focused and single-purpose

## Julia Version Support

Minimum Julia version: 1.9
The project is designed to work with Julia 1.11+ as evidenced by the batch scripts using `julia +1.11`.