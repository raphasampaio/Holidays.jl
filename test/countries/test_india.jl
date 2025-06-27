module TestIndia

using Dates
using Holidays
using Test

include("../util.jl")

@testset "India" begin
    calendar = Holidays.India()

    holidays = [
        Date(2024, 1, 1),   # New Year's Day
        Date(2024, 1, 26),  # Republic Day
        Date(2024, 8, 15),  # Independence Day
        Date(2024, 10, 2),  # Gandhi Jayanti
    ]

    test_holidays(calendar, 2024, holidays)

    return nothing
end
end
