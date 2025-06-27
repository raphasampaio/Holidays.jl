module TestItaly

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Italy" begin
    calendar = Holidays.Italy()

    holidays = [
        Date(2024, 1, 1),   # New Year's Day
        Date(2024, 1, 6),   # Epiphany
        Date(2024, 4, 1),   # Easter Monday
        Date(2024, 4, 25),  # Liberation Day
        Date(2024, 5, 1),   # Labour Day
        Date(2024, 6, 2),   # Republic Day
        Date(2024, 8, 15),  # Ferragosto
        Date(2024, 11, 1),  # All Saints' Day
        Date(2024, 12, 8),  # Immaculate Conception
        Date(2024, 12, 25), # Christmas Day
        Date(2024, 12, 26), # St. Stephen's Day
    ]

    test_holidays(calendar, 2024, holidays)

    return nothing
end
end
