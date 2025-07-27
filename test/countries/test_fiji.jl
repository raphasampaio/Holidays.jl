module TestFiji

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Fiji" begin
    calendar = Holidays.Fiji()

    holidays = Date[
        Date(2016, 1, 1), # New Year's Day
        Date(2017, 1, 1), # New Year's Day
        Date(2018, 1, 1), # New Year's Day
        Date(2019, 1, 1), # New Year's Day
        Date(2020, 1, 1), # New Year's Day
        Date(2021, 1, 1), # New Year's Day
        Date(2022, 1, 1), # New Year's Day
        Date(2023, 1, 1), # New Year's Day
        Date(2024, 1, 1), # New Year's Day
        Date(2025, 1, 1), # New Year's Day
        Date(2026, 1, 1), # New Year's Day
        Date(2027, 1, 1), # New Year's Day
        Date(2028, 1, 1), # New Year's Day
        Date(2029, 1, 1), # New Year's Day
        Date(2030, 1, 1), # New Year's Day
    ]

    test_holidays(calendar, holidays)

    return nothing
end

end
