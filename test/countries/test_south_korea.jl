module TestSouthKorea

using Dates
using Holidays
using Test

include("../util.jl")

@testset "SouthKorea" begin
    calendar = Holidays.SouthKorea()

    holidays = [
        Date(2024, 1, 1),   # New Year's Day
        Date(2024, 3, 1),   # Independence Movement Day
        Date(2024, 5, 5),   # Children's Day
        Date(2024, 5, 8),   # Buddha's Birthday (approximation)
        Date(2024, 6, 6),   # Memorial Day
        Date(2024, 7, 17),  # Constitution Day
        Date(2024, 8, 15),  # Liberation Day
        Date(2024, 10, 3),  # National Foundation Day
        Date(2024, 10, 9),  # Hangeul Day
    ]

    test_holidays(calendar, 2024, holidays)

    return nothing
end
end
