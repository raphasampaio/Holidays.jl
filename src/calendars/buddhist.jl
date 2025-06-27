module Buddhist

using Dates

# Buddhist Calendar Functions
# The Buddhist calendar is used in various Southeast Asian countries
# and is based on the Buddha's birth year (traditionally 543 BCE in Thailand)

"""
    BUDDHIST_ERA_OFFSET

Offset from Gregorian calendar to Buddhist Era.
In Thailand and other Theravada countries, the Buddhist Era starts 543 years before the Christian Era.
"""
const BUDDHIST_ERA_OFFSET = 543

"""
    gregorian_to_buddhist_year(year::Int)

Convert Gregorian year to Buddhist Era year.
"""
function gregorian_to_buddhist_year(year::Int)
    return year + BUDDHIST_ERA_OFFSET
end

"""
    buddhist_to_gregorian_year(buddhist_year::Int)

Convert Buddhist Era year to Gregorian year.
"""
function buddhist_to_gregorian_year(buddhist_year::Int)
    return buddhist_year - BUDDHIST_ERA_OFFSET
end

"""
    vesak_day_dates

Approximate dates for Vesak Day (Buddha's Birthday, Enlightenment, and Parinirvana).
This varies by country and lunar calendar calculations.
"""
const VESAK_DAY_DATES = Dict{Int, Date}(
    2020 => Date(2020, 5, 7),
    2021 => Date(2021, 5, 26),
    2022 => Date(2022, 5, 16),
    2023 => Date(2023, 5, 5),
    2024 => Date(2024, 5, 22),
    2025 => Date(2025, 5, 12),
    2026 => Date(2026, 5, 31),
    2027 => Date(2027, 5, 20),
    2028 => Date(2028, 5, 9),
    2029 => Date(2029, 5, 28),
    2030 => Date(2030, 5, 18),
    2031 => Date(2031, 5, 7),
    2032 => Date(2032, 5, 26),
    2033 => Date(2033, 5, 15),
    2034 => Date(2034, 5, 4),
    2035 => Date(2035, 5, 23),
)

"""
    magha_puja_dates

Approximate dates for Magha Puja Day (Sangha Day).
Usually falls on the full moon of the third lunar month.
"""
const MAGHA_PUJA_DATES = Dict{Int, Date}(
    2020 => Date(2020, 2, 8),
    2021 => Date(2021, 2, 26),
    2022 => Date(2022, 2, 16),
    2023 => Date(2023, 3, 6),
    2024 => Date(2024, 2, 24),
    2025 => Date(2025, 2, 12),
    2026 => Date(2026, 3, 3),
    2027 => Date(2027, 2, 21),
    2028 => Date(2028, 2, 10),
    2029 => Date(2029, 2, 28),
    2030 => Date(2030, 2, 17),
    2031 => Date(2031, 3, 9),
    2032 => Date(2032, 2, 27),
    2033 => Date(2033, 2, 15),
    2034 => Date(2034, 3, 7),
    2035 => Date(2035, 2, 25),
)

"""
    asalha_puja_dates

Approximate dates for Asalha Puja Day (Dharma Day).
Usually falls on the full moon of the eighth lunar month.
"""
const ASALHA_PUJA_DATES = Dict{Int, Date}(
    2020 => Date(2020, 7, 5),
    2021 => Date(2021, 7, 24),
    2022 => Date(2022, 7, 13),
    2023 => Date(2023, 8, 1),
    2024 => Date(2024, 7, 21),
    2025 => Date(2025, 7, 11),
    2026 => Date(2026, 7, 31),
    2027 => Date(2027, 7, 20),
    2028 => Date(2028, 7, 8),
    2029 => Date(2029, 7, 27),
    2030 => Date(2030, 7, 16),
    2031 => Date(2031, 8, 5),
    2032 => Date(2032, 7, 24),
    2033 => Date(2033, 7, 13),
    2034 => Date(2034, 8, 2),
    2035 => Date(2035, 7, 22),
)

# Helper function to get date from dictionary with fallback
function get_buddhist_date(dates_dict::Dict{Int, Date}, x::TimeType, fallback_month::Int, fallback_day::Int)
    year = Dates.year(x)
    if haskey(dates_dict, year)
        return x == dates_dict[year]
    else
        # Fallback approximation for years not in the dictionary
        return Dates.month(x) == fallback_month && Dates.day(x) == fallback_day
    end
end

"""
    is_vesak_day(x::TimeType)

Check if the given date is Vesak Day (Buddha Day).
"""
function is_vesak_day(x::TimeType)
    return get_buddhist_date(VESAK_DAY_DATES, x, 5, 15)
end

"""
    is_magha_puja(x::TimeType)

Check if the given date is Magha Puja Day.
"""
function is_magha_puja(x::TimeType)
    return get_buddhist_date(MAGHA_PUJA_DATES, x, 2, 22)
end

"""
    is_asalha_puja(x::TimeType)

Check if the given date is Asalha Puja Day.
"""
function is_asalha_puja(x::TimeType)
    return get_buddhist_date(ASALHA_PUJA_DATES, x, 7, 19)
end

"""
    is_khao_phansa(x::TimeType)

Check if the given date is Khao Phansa (Beginning of Buddhist Lent).
Usually the day after Asalha Puja.
"""
function is_khao_phansa(x::TimeType)
    year = Dates.year(x)
    if haskey(ASALHA_PUJA_DATES, year)
        khao_phansa_date = ASALHA_PUJA_DATES[year] + Dates.Day(1)
        return x == khao_phansa_date
    else
        # Fallback approximation
        return Dates.month(x) == 7 && Dates.day(x) == 20
    end
end

"""
    is_ok_phansa(x::TimeType)

Check if the given date is Ok Phansa (End of Buddhist Lent).
Usually occurs 3 months after Khao Phansa.
"""
function is_ok_phansa(x::TimeType)
    year = Dates.year(x)
    if haskey(ASALHA_PUJA_DATES, year)
        ok_phansa_date = ASALHA_PUJA_DATES[year] + Dates.Day(91) # Approximately 3 months
        return x == ok_phansa_date
    else
        # Fallback approximation
        return Dates.month(x) == 10 && Dates.day(x) == 19
    end
end

"""
    get_buddhist_year(x::TimeType)

Get the Buddhist Era year for a given date.
"""
function get_buddhist_year(x::TimeType)
    return gregorian_to_buddhist_year(Dates.year(x))
end

end
