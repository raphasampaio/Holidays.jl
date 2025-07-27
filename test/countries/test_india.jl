module TestIndia

using Dates
using Holidays
using Test

include("../util.jl")

@testset "India" begin
    calendar = Holidays.India()

    holidays = Date[
        Date(2024, 1, 1),   # New Year's Day
        Date(2024, 1, 26),  # Republic Day
        Date(2024, 3, 25),  # Holi
        Date(2024, 4, 17),  # Ram Navami
        Date(2024, 8, 15),  # Independence Day
        Date(2024, 8, 26),  # Janmashtami
        Date(2024, 10, 2),  # Gandhi Jayanti
        Date(2024, 10, 12), # Dussehra
        Date(2024, 11, 1),  # Diwali
    ]

    test_holidays(calendar, holidays)

    return nothing
end
end
