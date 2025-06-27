module TestTurkey

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Turkey" begin
    calendar = Holidays.Turkey()

    holidays = [
        Date(2024, 1, 1),   # New Year's Day
        Date(2024, 4, 10),  # Ramadan Feast Day 1 (approximation)
        Date(2024, 4, 11),  # Ramadan Feast Day 2
        Date(2024, 4, 12),  # Ramadan Feast Day 3
        Date(2024, 4, 23),  # National Sovereignty and Children's Day
        Date(2024, 5, 1),   # Labour and Solidarity Day
        Date(2024, 5, 19),  # Commemoration of Atatürk, Youth and Sports Day
        Date(2024, 6, 16),  # Sacrifice Feast Day 1 (approximation)
        Date(2024, 6, 17),  # Sacrifice Feast Day 2
        Date(2024, 6, 18),  # Sacrifice Feast Day 3
        Date(2024, 6, 19),  # Sacrifice Feast Day 4
        Date(2024, 7, 15),  # Democracy and National Unity Day
        Date(2024, 8, 30),  # Victory Day
        Date(2024, 10, 29), # Republic Day
    ]

    test_holidays(calendar, 2024, holidays)

    return nothing
end
end
