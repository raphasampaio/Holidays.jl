module TestChile

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Chile" begin
    calendar = Holidays.Chile()

    holidays = Date[
        Date(2025, 1, 1),   # New Year's Day
        Date(2025, 4, 18),  # Good Friday
        Date(2025, 4, 19),  # Holy Saturday
        Date(2025, 5, 1),   # Labour Day
        Date(2025, 5, 21),  # Navy Day
        Date(2025, 6, 20),  # National Day of Indigenous Peoples
        Date(2025, 6, 29),  # Saints Peter and Paul
        Date(2025, 7, 16),  # Our Lady of Mount Carmel
        Date(2025, 8, 15),  # Assumption of Mary
        Date(2025, 9, 18),  # Independence Day
        Date(2025, 9, 19),  # Army Day
        Date(2025, 10, 12), # Columbus Day
        Date(2025, 10, 31), # Reformation Day
        Date(2025, 11, 1),  # All Saints' Day
        Date(2025, 12, 8),  # Immaculate Conception
        Date(2025, 12, 25), # Christmas Day
    ]

    test_holidays(calendar, holidays)

    return nothing
end

end
