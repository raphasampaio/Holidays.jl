module TestJapan

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Japan" begin
    calendar = Holidays.Japan()

    holidays = [
        Date(2024, 1, 1),   # New Year's Day
        Date(2024, 1, 8),   # Coming-of-Age Day
        Date(2024, 2, 11),  # National Foundation Day
        Date(2024, 2, 23),  # Emperor's Birthday
        Date(2024, 3, 20),  # Vernal Equinox Day
        Date(2024, 4, 29),  # Showa Day
        Date(2024, 5, 3),   # Constitution Memorial Day
        Date(2024, 5, 4),   # Greenery Day
        Date(2024, 5, 5),   # Children's Day
        Date(2024, 7, 15),  # Marine Day
        Date(2024, 8, 11),  # Mountain Day
        Date(2024, 9, 16),  # Respect-for-the-Aged Day
        Date(2024, 9, 23),  # Autumnal Equinox Day
        Date(2024, 10, 14), # Sports Day
        Date(2024, 11, 3),  # Culture Day
        Date(2024, 11, 23), # Labour Thanksgiving Day
    ]

    test_holidays(calendar, 2024, holidays)

    return nothing
end
end
