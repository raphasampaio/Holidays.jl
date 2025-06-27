module TestFrance

using Dates
using Holidays
using Test

include("../util.jl")

@testset "France" begin
    calendar = Holidays.France()

    holidays = [
        Date(2024, 1, 1),   # New Year's Day
        Date(2024, 1, 6),   # Epiphany
        Date(2024, 4, 1),   # Easter Monday
        Date(2024, 5, 1),   # Labour Day
        Date(2024, 5, 8),   # Victory in Europe Day
        Date(2024, 5, 9),   # Ascension Day
        Date(2024, 5, 20),  # Whit Monday
        Date(2024, 7, 14),  # Bastille Day
        Date(2024, 8, 15),  # Assumption of Mary
        Date(2024, 11, 1),  # All Saints' Day
        Date(2024, 11, 11), # Armistice Day
        Date(2024, 12, 25), # Christmas Day
    ]

    test_holidays(calendar, 2024, holidays)

    return nothing
end
end
