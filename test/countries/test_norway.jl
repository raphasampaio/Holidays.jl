module TestNorway

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Norway" begin
    calendar = Holidays.Norway()

    holidays = [
        Date(2024, 1, 1),   # New Year's Day
        Date(2024, 3, 28),  # Maundy Thursday
        Date(2024, 3, 29),  # Good Friday
        Date(2024, 3, 31),  # Easter Sunday
        Date(2024, 4, 1),   # Easter Monday
        Date(2024, 5, 1),   # Labour Day
        Date(2024, 5, 9),   # Ascension Day
        Date(2024, 5, 17),  # Constitution Day
        Date(2024, 5, 19),  # Whit Sunday
        Date(2024, 5, 20),  # Whit Monday
        Date(2024, 12, 25), # Christmas Day
        Date(2024, 12, 26), # Boxing Day
    ]

    test_holidays(calendar, holidays)
end

end
