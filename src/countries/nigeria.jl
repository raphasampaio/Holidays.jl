module NigeriaHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian

function is_independence_day(x::TimeType)
    return is_october(x) && is_day(x, 1)
end

function is_democracy_day(x::TimeType)
    return is_june(x) && is_day(x, 12)
end

function is_childrens_day(x::TimeType)
    return is_may(x) && is_day(x, 27)
end

function is_eid_al_fitr(x::TimeType)
    # Eid al-Fitr (simplified dates - varies by year due to lunar calendar)
    eid_dates = Dict(
        2024 => [Date(2024, 4, 10), Date(2024, 4, 11)],
        2025 => [Date(2025, 3, 30), Date(2025, 3, 31)],
        2026 => [Date(2026, 3, 20), Date(2026, 3, 21)],
        2027 => [Date(2027, 3, 9), Date(2027, 3, 10)],
    )
    return haskey(eid_dates, Dates.year(x)) && x in eid_dates[Dates.year(x)]
end

function is_eid_al_adha(x::TimeType)
    # Eid al-Adha (simplified dates)
    eid_adha_dates = Dict(
        2024 => [Date(2024, 6, 16), Date(2024, 6, 17)],
        2025 => [Date(2025, 6, 6), Date(2025, 6, 7)],
        2026 => [Date(2026, 5, 26), Date(2026, 5, 27)],
        2027 => [Date(2027, 5, 16), Date(2027, 5, 17)],
    )
    return haskey(eid_adha_dates, Dates.year(x)) && x in eid_adha_dates[Dates.year(x)]
end

function is_islamic_new_year(x::TimeType)
    # Islamic New Year (simplified dates)
    islamic_new_year_dates = Dict(
        2024 => Date(2024, 7, 7),
        2025 => Date(2025, 6, 26),
        2026 => Date(2026, 6, 16),
        2027 => Date(2027, 6, 5),
    )
    return haskey(islamic_new_year_dates, Dates.year(x)) && x == islamic_new_year_dates[Dates.year(x)]
end

function is_prophet_birthday(x::TimeType)
    # Prophet Muhammad's Birthday (simplified dates)
    prophet_dates = Dict(
        2024 => Date(2024, 9, 15),
        2025 => Date(2025, 9, 5),
        2026 => Date(2026, 8, 25),
        2027 => Date(2027, 8, 14),
    )
    return haskey(prophet_dates, Dates.year(x)) && x == prophet_dates[Dates.year(x)]
end

function Holidays.fetch_holidays(::Type{Holidays.Nigeria})
    return [
        Holiday("New Year's Day", is_january_1st, start_year = 1979),
        # Holiday("Good Friday", Christian.is_good_friday),
        # Holiday("Easter Monday", Christian.is_easter_monday),
        # Holiday("Labour Day", International.is_workers_day),
        # Holiday("Children's Day", is_childrens_day),
        # Holiday("Democracy Day", is_democracy_day),
        # Holiday("Eid al-Fitr", is_eid_al_fitr),
        # Holiday("Eid al-Adha", is_eid_al_adha),
        # Holiday("Islamic New Year", is_islamic_new_year),
        # Holiday("Prophet Muhammad's Birthday", is_prophet_birthday),
        # Holiday("Independence Day", is_independence_day),
        # Holiday("Christmas Day", Christian.is_christmas_day),
        # Holiday("Boxing Day", Christian.is_boxing_day),
    ]
end

end
