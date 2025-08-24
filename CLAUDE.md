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
- `label`: Human-readable name
- `handler`: Function returning the holiday date for a given year
- `observed`: Optional function for observance rules (e.g., Monday if falls on Sunday)
- `start_year`/`end_year`: Optional date range limits
- `skip_years`: Years to exclude the holiday

### File Organization

- `src/countries/`: Individual country implementations (200+ files)
- `src/calendars/`: Calendar system implementations
- `src/`: Core modules (country.jl, holiday.jl, calendar.jl, etc.)
- `test/countries/`: Corresponding test files for each country
- `test/calendars/`: Calendar system tests

## Testing Strategy

The test suite uses a recursive inclusion system that automatically finds and runs all `test_*.jl` files. Individual country tests can be run by passing the test file name as an argument to the test runner.

## Code Style

The project uses JuliaFormatter for consistent code formatting. All contributions should be formatted using the provided format scripts before committing.

## Julia Version Support

Minimum Julia version: 1.9
The project is designed to work with Julia 1.11+ as evidenced by the batch scripts using `julia +1.11`.