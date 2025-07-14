module TestDenmark

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Denmark" begin
    calendar = Holidays.Denmark()

    holidays = [
        Date(2024, 1, 1),   # New Year's Day
        Date(2024, 3, 28),  # Maundy Thursday
        Date(2024, 3, 29),  # Good Friday
        Date(2024, 3, 31),  # Easter Sunday
        Date(2024, 4, 1),   # Easter Monday
        Date(2024, 4, 26),  # General Prayer Day
        Date(2024, 5, 9),   # Ascension Day
        Date(2024, 5, 19),  # Whit Sunday
        Date(2024, 5, 20),  # Whit Monday
        Date(2024, 6, 5),   # Constitution Day
        Date(2024, 12, 25), # Christmas Day
        Date(2024, 12, 26), # Boxing Day
    ]

    test_holidays(calendar, holidays)
end

end
