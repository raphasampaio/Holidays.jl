module Chinese

using Dates

# Chinese Lunar Calendar Functions
# Note: These are simplified approximations. Actual lunar calendar calculations
# require complex astronomical computations.

"""
    chinese_new_year_dates

Approximate dates for Chinese New Year (Spring Festival) in the Gregorian calendar.
The actual date varies each year based on lunar calculations.
"""
const CHINESE_NEW_YEAR_DATES = Dict{Int, Date}(
    2020 => Date(2020, 1, 25),
    2021 => Date(2021, 2, 12),
    2022 => Date(2022, 2, 1),
    2023 => Date(2023, 1, 22),
    2024 => Date(2024, 2, 10),
    2025 => Date(2025, 1, 29),
    2026 => Date(2026, 2, 17),
    2027 => Date(2027, 2, 6),
    2028 => Date(2028, 1, 26),
    2029 => Date(2029, 2, 13),
    2030 => Date(2030, 2, 3),
    2031 => Date(2031, 1, 23),
    2032 => Date(2032, 2, 11),
    2033 => Date(2033, 1, 31),
    2034 => Date(2034, 2, 19),
    2035 => Date(2035, 2, 8),
)

"""
    mid_autumn_festival_dates

Approximate dates for Mid-Autumn Festival (Moon Festival) in the Gregorian calendar.
"""
const MID_AUTUMN_FESTIVAL_DATES = Dict{Int, Date}(
    2020 => Date(2020, 10, 1),
    2021 => Date(2021, 9, 21),
    2022 => Date(2022, 9, 10),
    2023 => Date(2023, 9, 29),
    2024 => Date(2024, 9, 17),
    2025 => Date(2025, 10, 6),
    2026 => Date(2026, 9, 25),
    2027 => Date(2027, 9, 15),
    2028 => Date(2028, 10, 3),
    2029 => Date(2029, 9, 22),
    2030 => Date(2030, 9, 12),
    2031 => Date(2031, 10, 1),
    2032 => Date(2032, 9, 19),
    2033 => Date(2033, 9, 8),
    2034 => Date(2034, 9, 27),
    2035 => Date(2035, 9, 16),
)

"""
    dragon_boat_festival_dates

Approximate dates for Dragon Boat Festival (Duanwu Festival) in the Gregorian calendar.
"""
const DRAGON_BOAT_FESTIVAL_DATES = Dict{Int, Date}(
    2020 => Date(2020, 6, 25),
    2021 => Date(2021, 6, 14),
    2022 => Date(2022, 6, 3),
    2023 => Date(2023, 6, 22),
    2024 => Date(2024, 6, 10),
    2025 => Date(2025, 5, 31),
    2026 => Date(2026, 6, 19),
    2027 => Date(2027, 6, 9),
    2028 => Date(2028, 5, 28),
    2029 => Date(2029, 6, 16),
    2030 => Date(2030, 6, 5),
    2031 => Date(2031, 6, 24),
    2032 => Date(2032, 6, 12),
    2033 => Date(2033, 6, 2),
    2034 => Date(2034, 6, 21),
    2035 => Date(2035, 6, 11),
)

"""
    qingming_festival_dates

Approximate dates for Qingming Festival (Tomb-Sweeping Day) in the Gregorian calendar.
This is a solar term and usually falls on April 4 or 5.
"""
const QINGMING_FESTIVAL_DATES = Dict{Int, Date}(
    2020 => Date(2020, 4, 4),
    2021 => Date(2021, 4, 4),
    2022 => Date(2022, 4, 5),
    2023 => Date(2023, 4, 5),
    2024 => Date(2024, 4, 4),
    2025 => Date(2025, 4, 4),
    2026 => Date(2026, 4, 5),
    2027 => Date(2027, 4, 5),
    2028 => Date(2028, 4, 4),
    2029 => Date(2029, 4, 4),
    2030 => Date(2030, 4, 5),
    2031 => Date(2031, 4, 5),
    2032 => Date(2032, 4, 4),
    2033 => Date(2033, 4, 4),
    2034 => Date(2034, 4, 5),
    2035 => Date(2035, 4, 5),
)

# Helper function to get date from dictionary with fallback
function get_chinese_date(dates_dict::Dict{Int, Date}, x::TimeType, fallback_month::Int, fallback_day::Int)
    year = Dates.year(x)
    if haskey(dates_dict, year)
        return x == dates_dict[year]
    else
        # Fallback approximation for years not in the dictionary
        return Dates.month(x) == fallback_month && Dates.day(x) == fallback_day
    end
end

"""
    is_chinese_new_year(x::TimeType)

Check if the given date is Chinese New Year (Spring Festival).
"""
function is_chinese_new_year(x::TimeType)
    return get_chinese_date(CHINESE_NEW_YEAR_DATES, x, 2, 10)
end

"""
    is_mid_autumn_festival(x::TimeType)

Check if the given date is Mid-Autumn Festival.
"""
function is_mid_autumn_festival(x::TimeType)
    return get_chinese_date(MID_AUTUMN_FESTIVAL_DATES, x, 9, 17)
end

"""
    is_dragon_boat_festival(x::TimeType)

Check if the given date is Dragon Boat Festival.
"""
function is_dragon_boat_festival(x::TimeType)
    return get_chinese_date(DRAGON_BOAT_FESTIVAL_DATES, x, 6, 10)
end

"""
    is_qingming_festival(x::TimeType)

Check if the given date is Qingming Festival (Tomb-Sweeping Day).
"""
function is_qingming_festival(x::TimeType)
    return get_chinese_date(QINGMING_FESTIVAL_DATES, x, 4, 4)
end

"""
    is_lantern_festival(x::TimeType)

Check if the given date is Lantern Festival (15th day of the first lunar month).
Approximated as 15 days after Chinese New Year.
"""
function is_lantern_festival(x::TimeType)
    year = Dates.year(x)
    if haskey(CHINESE_NEW_YEAR_DATES, year)
        lantern_date = CHINESE_NEW_YEAR_DATES[year] + Dates.Day(14)
        return x == lantern_date
    else
        # Fallback approximation
        return Dates.month(x) == 2 && Dates.day(x) == 24
    end
end

end
