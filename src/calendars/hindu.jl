module Hindu

using Dates
using Holidays

include("../dates.jl")

const DIWALI_DATES = Dict{Int, Date}(
    2020 => Date(2020, 11, 14),
    2021 => Date(2021, 11, 4),
    2022 => Date(2022, 10, 24),
    2023 => Date(2023, 11, 12),
    2024 => Date(2024, 11, 1),
    2025 => Date(2025, 10, 20),
    2026 => Date(2026, 11, 8),
    2027 => Date(2027, 10, 29),
    2028 => Date(2028, 10, 17),
    2029 => Date(2029, 11, 5),
    2030 => Date(2030, 10, 26),
    2031 => Date(2031, 11, 14),
    2032 => Date(2032, 11, 2),
    2033 => Date(2033, 10, 23),
    2034 => Date(2034, 11, 11),
    2035 => Date(2035, 10, 31),
)

const HOLI_DATES = Dict{Int, Date}(
    2020 => Date(2020, 3, 10),
    2021 => Date(2021, 3, 29),
    2022 => Date(2022, 3, 18),
    2023 => Date(2023, 3, 8),
    2024 => Date(2024, 3, 25),
    2025 => Date(2025, 3, 14),
    2026 => Date(2026, 3, 3),
    2027 => Date(2027, 3, 22),
    2028 => Date(2028, 3, 11),
    2029 => Date(2029, 3, 1),
    2030 => Date(2030, 3, 20),
    2031 => Date(2031, 3, 9),
    2032 => Date(2032, 3, 27),
    2033 => Date(2033, 3, 17),
    2034 => Date(2034, 3, 6),
    2035 => Date(2035, 3, 25),
)

const DUSSEHRA_DATES = Dict{Int, Date}(
    2020 => Date(2020, 10, 25),
    2021 => Date(2021, 10, 15),
    2022 => Date(2022, 10, 5),
    2023 => Date(2023, 10, 24),
    2024 => Date(2024, 10, 12),
    2025 => Date(2025, 10, 2),
    2026 => Date(2026, 10, 20),
    2027 => Date(2027, 10, 10),
    2028 => Date(2028, 9, 28),
    2029 => Date(2029, 10, 17),
    2030 => Date(2030, 10, 7),
    2031 => Date(2031, 10, 26),
    2032 => Date(2032, 10, 14),
    2033 => Date(2033, 10, 4),
    2034 => Date(2034, 10, 23),
    2035 => Date(2035, 10, 12),
)

const JANMASHTAMI_DATES = Dict{Int, Date}(
    2020 => Date(2020, 8, 11),
    2021 => Date(2021, 8, 30),
    2022 => Date(2022, 8, 19),
    2023 => Date(2023, 9, 7),
    2024 => Date(2024, 8, 26),
    2025 => Date(2025, 8, 16),
    2026 => Date(2026, 9, 4),
    2027 => Date(2027, 8, 24),
    2028 => Date(2028, 8, 13),
    2029 => Date(2029, 9, 1),
    2030 => Date(2030, 8, 21),
    2031 => Date(2031, 9, 10),
    2032 => Date(2032, 8, 29),
    2033 => Date(2033, 8, 18),
    2034 => Date(2034, 9, 6),
    2035 => Date(2035, 8, 27),
)

const RAM_NAVAMI_DATES = Dict{Int, Date}(
    2020 => Date(2020, 4, 2),
    2021 => Date(2021, 4, 21),
    2022 => Date(2022, 4, 10),
    2023 => Date(2023, 3, 30),
    2024 => Date(2024, 4, 17),
    2025 => Date(2025, 4, 6),
    2026 => Date(2026, 3, 27),
    2027 => Date(2027, 4, 15),
    2028 => Date(2028, 4, 3),
    2029 => Date(2029, 3, 24),
    2030 => Date(2030, 4, 12),
    2031 => Date(2031, 4, 1),
    2032 => Date(2032, 4, 19),
    2033 => Date(2033, 4, 9),
    2034 => Date(2034, 3, 29),
    2035 => Date(2035, 4, 18),
)

function get_hindu_date(dates_dict::Dict{Int, Date}, x::TimeType, fallback_month::Int, fallback_day::Int)
    year = Dates.year(x)
    if haskey(dates_dict, year)
        return x == dates_dict[year]
    else
        return Dates.month(x) == fallback_month && Dates.day(x) == fallback_day
    end
end

function is_diwali(x::TimeType)
    return get_hindu_date(DIWALI_DATES, x, 11, 4)
end

function is_holi(x::TimeType)
    return get_hindu_date(HOLI_DATES, x, 3, 17)
end

function is_dussehra(x::TimeType)
    return get_hindu_date(DUSSEHRA_DATES, x, 10, 15)
end

function is_janmashtami(x::TimeType)
    return get_hindu_date(JANMASHTAMI_DATES, x, 8, 24)
end

function is_ram_navami(x::TimeType)
    return get_hindu_date(RAM_NAVAMI_DATES, x, 4, 8)
end

function is_maha_shivratri(x::TimeType)
    # Simplified approximation - actual date varies by lunar calendar
    return is_february(x) && is_day_between(x, 20, 22)
end

function is_karva_chauth(x::TimeType)
    # Simplified approximation - usually in late October or early November
    return (is_october(x) && Dates.day(x) >= 25) || (is_november(x) && Dates.day(x) <= 15)
end

function is_ganesh_chaturthi(x::TimeType)
    # Simplified approximation - usually in late August or early September
    return (is_august(x) && Dates.day(x) >= 20) || (is_september(x) && Dates.day(x) <= 15)
end

end
