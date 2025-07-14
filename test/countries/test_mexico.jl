module TestMexico

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Mexico" begin
    calendar = Holidays.Mexico()

    holidays = [
        Date(2024, 1, 1),   # New Year's Day
        Date(2024, 2, 5),   # Constitution Day (first Monday in February)
        Date(2024, 3, 18),  # Benito Juárez's Birthday (third Monday in March)
        Date(2024, 3, 29),  # Good Friday
        Date(2024, 5, 1),   # Labour Day
        Date(2024, 9, 16),  # Independence Day
        Date(2024, 11, 18), # Revolution Day (third Monday in November)
        Date(2024, 12, 25), # Christmas Day
    ]

    test_holidays(calendar, holidays)

    return nothing
end
end
