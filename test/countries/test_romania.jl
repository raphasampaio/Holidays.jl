module TestRomania

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Romania" begin
    calendar = Holidays.Romania()

    holidays = [
        Date(2024, 1, 1),   # New Year's Day
        Date(2024, 1, 2),   # Day after New Year's Day
        Date(2024, 1, 6),   # Epiphany
        Date(2024, 3, 31),  # Orthodox Easter
        Date(2024, 4, 1),   # Orthodox Easter Monday
        Date(2024, 5, 1),   # Labour Day
        Date(2024, 6, 1),   # Children's Day
        Date(2024, 8, 15),  # Assumption of Mary
        Date(2024, 11, 30), # St. Andrew's Day
        Date(2024, 12, 1),  # National Day
        Date(2024, 12, 6),  # St. Nicholas Day
        Date(2024, 12, 25), # Christmas Day
        Date(2024, 12, 26), # Boxing Day
    ]

    test_holidays(calendar, 2024, holidays)
end

end
