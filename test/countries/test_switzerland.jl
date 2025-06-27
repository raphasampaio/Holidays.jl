module TestSwitzerland

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Switzerland" begin
    calendar = Holidays.Switzerland()

    holidays = [
        Date(2024, 1, 1),   # New Year's Day
        Date(2024, 1, 2),   # Berchtoldstag
        Date(2024, 3, 29),  # Good Friday
        Date(2024, 4, 1),   # Easter Monday
        Date(2024, 5, 1),   # Labour Day
        Date(2024, 5, 9),   # Ascension Day
        Date(2024, 5, 20),  # Whit Monday
        Date(2024, 8, 1),   # Swiss National Day
        Date(2024, 12, 25), # Christmas Day
        Date(2024, 12, 26), # Boxing Day
    ]

    test_holidays(calendar, 2024, holidays)
end

end
