module Persian

using Dates
using Holidays

include("persian/nowruz_dates.jl")

# Helper functions for Persian calendar dates

function is_nowruz(x::TimeType)
    return Date(x) in NOWRUZ_DATES
end

function is_nowruz_day_two(x::TimeType)
    return (Date(x) - Day(1)) in NOWRUZ_DATES
end

function is_nowruz_day_three(x::TimeType)
    return (Date(x) - Day(2)) in NOWRUZ_DATES
end

function is_nowruz_day_four(x::TimeType)
    return (Date(x) - Day(3)) in NOWRUZ_DATES
end

function is_oil_nationalization_day(x::TimeType)
    # 29 Esfand (day before Nowruz)
    return (Date(x) + Day(1)) in NOWRUZ_DATES
end

function is_last_day_of_year(x::TimeType)
    # In Gregorian leap years, 29 Esfand falls on March 20 and becomes a separate holiday
    # from Oil Nationalization Day
    return is_oil_nationalization_day(x) && Dates.isleapyear(x) && Dates.month(x) == 3 && Dates.day(x) == 20
end

function is_islamic_republic_day(x::TimeType)
    # 12 Farvardin (11 days after Nowruz)
    return (Date(x) - Day(11)) in NOWRUZ_DATES
end

function is_natures_day(x::TimeType)
    # 13 Farvardin (12 days after Nowruz)
    return (Date(x) - Day(12)) in NOWRUZ_DATES
end

end
