module IndonesiaHolidays

using Dates
using Holidays

include("../dates.jl")

const Chinese = Holidays.Chinese
const Christian = Holidays.Christian
const International = Holidays.International

function is_nyepi(x::TimeType)
    # Balinese New Year - simplified dates
    nyepi_dates = Dict(
        2024 => Date(2024, 3, 11),
        2025 => Date(2025, 3, 29),
        2026 => Date(2026, 3, 19),
        2027 => Date(2027, 3, 9),
    )
    return haskey(nyepi_dates, Dates.year(x)) && x == nyepi_dates[Dates.year(x)]
end

function is_pancasila_day(x::TimeType)
    return is_june(x) && is_day(x, 1)
end

function is_independence_day(x::TimeType)
    return is_august(x) && is_day(x, 17)
end

function is_isra_miraj(x::TimeType)
    # Simplified - Islamic calendar holiday
    isra_miraj_dates = Dict(
        2024 => Date(2024, 2, 8),
        2025 => Date(2025, 1, 27),
        2026 => Date(2026, 1, 16),
        2027 => Date(2027, 1, 6),
    )
    return haskey(isra_miraj_dates, Dates.year(x)) && x == isra_miraj_dates[Dates.year(x)]
end

function is_eid_al_fitr(x::TimeType)
    # Eid al-Fitr (simplified dates)
    eid_dates = Dict(
        2024 => [Date(2024, 4, 10), Date(2024, 4, 11)],
        2025 => [Date(2025, 3, 30), Date(2025, 3, 31)],
        2026 => [Date(2026, 3, 20), Date(2026, 3, 21)],
        2027 => [Date(2027, 3, 9), Date(2027, 3, 10)],
    )
    return haskey(eid_dates, Dates.year(x)) && x in eid_dates[Dates.year(x)]
end

function is_vesak_day(x::TimeType)
    # Buddha's Birthday - simplified dates
    vesak_dates = Dict(
        2024 => Date(2024, 5, 23),
        2025 => Date(2025, 5, 12),
        2026 => Date(2026, 5, 31),
        2027 => Date(2027, 5, 20),
    )
    return haskey(vesak_dates, Dates.year(x)) && x == vesak_dates[Dates.year(x)]
end

function is_eid_al_adha(x::TimeType)
    # Eid al-Adha (simplified dates)
    eid_adha_dates = Dict(
        2024 => Date(2024, 6, 17),
        2025 => Date(2025, 6, 6),
        2026 => Date(2026, 5, 27),
        2027 => Date(2027, 5, 16),
    )
    return haskey(eid_adha_dates, Dates.year(x)) && x == eid_adha_dates[Dates.year(x)]
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

function Holidays.fetch_holidays(::Type{Holidays.Indonesia})
    return [
        Holiday("New Year's Day", International.is_new_years_day),
        # Holiday("Chinese New Year", Chinese.is_chinese_new_year),
        # Holiday("Isra and Mi'raj", is_isra_miraj),
        # Holiday("Nyepi (Balinese New Year)", is_nyepi),
        # Holiday("Eid al-Fitr", is_eid_al_fitr),
        # Holiday("Good Friday", Christian.is_good_friday),
        # Holiday("Vesak Day", is_vesak_day),
        # Holiday("Pancasila Day", is_pancasila_day),
        # Holiday("Eid al-Adha", is_eid_al_adha),
        # Holiday("Islamic New Year", is_islamic_new_year),
        # Holiday("Independence Day", is_independence_day),
        # Holiday("Prophet Muhammad's Birthday", is_prophet_birthday),
        # Holiday("Christmas Day", Christian.is_christmas_day),
    ]
end

end
