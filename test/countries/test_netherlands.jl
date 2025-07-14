module TestNetherlands

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Netherlands" begin
    calendar = Holidays.Netherlands()

    holidays = [
        Date(2024, 1, 1),   # New Year's Day
        Date(2024, 3, 29),  # Good Friday
        Date(2024, 4, 1),   # Easter Monday
        Date(2024, 4, 27),  # King's Day
        Date(2024, 5, 5),   # Liberation Day
        Date(2024, 5, 9),   # Ascension Day
        Date(2024, 5, 20),  # Whit Monday
        Date(2024, 12, 25), # Christmas Day
        Date(2024, 12, 26), # Boxing Day
    ]

    test_holidays(calendar, holidays)

    return nothing
end
end
