module TestSpain

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Spain" begin
    calendar = Holidays.Spain()

    holidays = [
        Date(2024, 1, 1),   # New Year's Day
        Date(2024, 1, 6),   # Epiphany
        Date(2024, 3, 29),  # Good Friday
        Date(2024, 4, 1),   # Easter Monday
        Date(2024, 5, 1),   # Labour Day
        Date(2024, 8, 15),  # Assumption of Mary
        Date(2024, 10, 12), # National Day
        Date(2024, 11, 1),  # All Saints' Day
        Date(2024, 12, 6),  # Constitution Day
        Date(2024, 12, 8),  # Immaculate Conception
        Date(2024, 12, 25), # Christmas Day
    ]

    test_holidays(calendar, 2024, holidays)

    return nothing
end
end
