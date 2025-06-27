module Buddhist

using Dates

include("../dates.jl")

const BUDDHIST_ERA_OFFSET = 543

function gregorian_to_buddhist_year(year::Int)
    return year + BUDDHIST_ERA_OFFSET
end

function buddhist_to_gregorian_year(buddhist_year::Int)
    return buddhist_year - BUDDHIST_ERA_OFFSET
end

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

function get_buddhist_date(dates_dict::Dict{Int, Date}, x::TimeType, fallback_month::Int, fallback_day::Int)
    year = Dates.year(x)
    if haskey(dates_dict, year)
        return x == dates_dict[year]
    else
        return Dates.month(x) == fallback_month && Dates.day(x) == fallback_day
    end
end

function is_vesak_day(x::TimeType)
    return get_buddhist_date(VESAK_DAY_DATES, x, 5, 15)
end

function is_magha_puja(x::TimeType)
    return get_buddhist_date(MAGHA_PUJA_DATES, x, 2, 22)
end

function is_asalha_puja(x::TimeType)
    return get_buddhist_date(ASALHA_PUJA_DATES, x, 7, 19)
end

function is_khao_phansa(x::TimeType)
    year = Dates.year(x)
    if haskey(ASALHA_PUJA_DATES, year)
        khao_phansa_date = ASALHA_PUJA_DATES[year] + Dates.Day(1)
        return x == khao_phansa_date
    else
        return is_july(x) && Dates.day(x) == 20
    end
end

function is_ok_phansa(x::TimeType)
    year = Dates.year(x)
    if haskey(ASALHA_PUJA_DATES, year)
        ok_phansa_date = ASALHA_PUJA_DATES[year] + Dates.Day(91) # Approximately 3 months
        return x == ok_phansa_date
    else
        return is_october(x) && Dates.day(x) == 19
    end
end

function get_buddhist_year(x::TimeType)
    return gregorian_to_buddhist_year(Dates.year(x))
end

end
