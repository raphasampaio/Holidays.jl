module TestPortugal

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Portugal" begin
    calendar = Holidays.Portugal()

    holidays = [
        Date(2024, 1, 1),   # New Year's Day
        Date(2024, 3, 29),  # Good Friday
        Date(2024, 3, 31),  # Easter Sunday
        Date(2024, 4, 25),  # Freedom Day
        Date(2024, 5, 1),   # Labour Day
        Date(2024, 5, 30),  # Corpus Christi
        Date(2024, 6, 10),  # Portugal Day
        Date(2024, 8, 15),  # Assumption Day
        Date(2024, 10, 5),  # Republic Day
        Date(2024, 11, 1),  # All Saints' Day
        Date(2024, 12, 1),  # Restoration of Independence
        Date(2024, 12, 8),  # Immaculate Conception
        Date(2024, 12, 25), # Christmas Day
    ]

    test_holidays(calendar, 2024, holidays)
end

end
