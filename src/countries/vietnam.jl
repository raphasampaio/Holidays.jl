module VietnamHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian
const International = Holidays.International

const Vietnam = Holidays.Vietnam

function is_tet_holiday(x::TimeType)
    # Vietnamese New Year (Tet) - simplified dates based on lunar calendar
    tet_dates = Dict(
        2024 => [Date(2024, 2, 9), Date(2024, 2, 10), Date(2024, 2, 11), Date(2024, 2, 12), Date(2024, 2, 13)],
        2025 => [Date(2025, 1, 28), Date(2025, 1, 29), Date(2025, 1, 30), Date(2025, 1, 31), Date(2025, 2, 1)],
        2026 => [Date(2026, 2, 16), Date(2026, 2, 17), Date(2026, 2, 18), Date(2026, 2, 19), Date(2026, 2, 20)],
        2027 => [Date(2027, 2, 5), Date(2027, 2, 6), Date(2027, 2, 7), Date(2027, 2, 8), Date(2027, 2, 9)],
    )
    return haskey(tet_dates, Dates.year(x)) && x in tet_dates[Dates.year(x)]
end

function is_hung_kings_day(x::TimeType)
    # 10th day of 3rd lunar month - simplified as April 18
    hung_kings_dates = Dict(
        2024 => Date(2024, 4, 18),
        2025 => Date(2025, 4, 7),
        2026 => Date(2026, 4, 26),
        2027 => Date(2027, 4, 16),
    )
    return haskey(hung_kings_dates, Dates.year(x)) && x == hung_kings_dates[Dates.year(x)]
end

function is_reunification_day(x::TimeType)
    return is_april(x) && is_day(x, 30)
end

function is_independence_day(x::TimeType)
    return is_september(x) && is_day(x, 2)
end

function Holidays.fetch_holidays(::Type{Holidays.Vietnam})
    return [
        Holiday("New Year's Day", International.is_new_years_day),
        # Holiday("Tet Holiday", is_tet_holiday),
        # Holiday("Hung Kings' Day", is_hung_kings_day),
        # Holiday("Reunification Day", is_reunification_day),
        # Holiday("Labour Day", International.is_workers_day),
        # Holiday("Independence Day", is_independence_day),
    ]
end

end
