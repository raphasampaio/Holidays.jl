module TestUruguay

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Uruguay" begin
    calendar = Holidays.Uruguay()

    holidays = [
        Date(2024, 1, 1),   # New Year's Day
        Date(2024, 1, 6),   # Epiphany
        Date(2024, 2, 12),  # Carnival Monday (48 days before Easter)
        Date(2024, 2, 13),  # Carnival Tuesday (47 days before Easter)
        Date(2024, 3, 28),  # Tourism Week - Easter Thursday (3 days before Easter)
        Date(2024, 3, 29),  # Good Friday
        Date(2024, 4, 19),  # Landing of the 33 Orientals
        Date(2024, 5, 1),   # Labour Day
        Date(2024, 5, 18),  # Battle of Las Piedras
        Date(2024, 6, 19),  # Birthday of Artigas
        Date(2024, 7, 18),  # Constitution Day
        Date(2024, 8, 25),  # Independence Day
        Date(2024, 10, 12), # Diversity Day
        Date(2024, 11, 2),  # Day of the Deceased
        Date(2024, 12, 25), # Christmas Day
    ]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end
