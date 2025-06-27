module TestGreece

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Greece" begin
    calendar = Holidays.Greece()

    holidays = [
        Date(2024, 1, 1),   # New Year's Day
        Date(2024, 1, 6),   # Epiphany
        Date(2024, 2, 12),  # Clean Monday (48 days before Easter)
        Date(2024, 3, 25),  # Independence Day
        Date(2024, 3, 29),  # Orthodox Good Friday
        Date(2024, 3, 31),  # Orthodox Easter
        Date(2024, 4, 1),   # Orthodox Easter Monday
        Date(2024, 5, 1),   # Labour Day
        Date(2024, 5, 20),  # Whit Monday
        Date(2024, 8, 15),  # Assumption Day
        Date(2024, 10, 28), # Ochi Day
        Date(2024, 12, 25), # Christmas Day
        Date(2024, 12, 26), # Boxing Day
    ]

    test_holidays(calendar, 2024, holidays)
end

end
