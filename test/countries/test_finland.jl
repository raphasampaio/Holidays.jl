module TestFinland

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Finland" begin
    calendar = Holidays.Finland()

    holidays = [
        Date(2024, 1, 1),   # New Year's Day
        Date(2024, 1, 6),   # Epiphany
        Date(2024, 3, 29),  # Good Friday
        Date(2024, 3, 31),  # Easter Sunday
        Date(2024, 4, 1),   # Easter Monday
        Date(2024, 5, 1),   # May Day
        Date(2024, 5, 9),   # Ascension Day
        Date(2024, 5, 19),  # Whit Sunday
        Date(2024, 6, 21),  # Midsummer Eve
        Date(2024, 6, 22),  # Midsummer Day
        Date(2024, 11, 2),  # All Saints' Day
        Date(2024, 12, 6),  # Independence Day
        Date(2024, 12, 24), # Christmas Eve
        Date(2024, 12, 25), # Christmas Day
        Date(2024, 12, 26), # Boxing Day
    ]

    test_holidays(calendar, 2024, holidays)
end

end
