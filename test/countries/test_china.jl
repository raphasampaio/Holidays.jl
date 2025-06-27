module TestChina

using Dates
using Holidays
using Test

include("../util.jl")

@testset "China" begin
    calendar = Holidays.China()

    holidays = [
        Date(2024, 1, 1),   # New Year's Day
        Date(2024, 2, 10),  # Spring Festival (Chinese New Year)
        Date(2024, 2, 24),  # Lantern Festival
        Date(2024, 4, 4),   # Tomb-Sweeping Day (Qingming Festival)
        Date(2024, 5, 1),   # Labour Day
        Date(2024, 6, 10),  # Dragon Boat Festival
        Date(2024, 9, 17),  # Mid-Autumn Festival
        Date(2024, 10, 1),  # National Day
    ]

    test_holidays(calendar, 2024, holidays)

    return nothing
end
end
