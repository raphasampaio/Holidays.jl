module TestSouthAfrica

using Dates
using Holidays
using Test

include("../util.jl")

@testset "South Africa" begin
    calendar = Holidays.SouthAfrica()

    holidays = [
        Date(2024, 1, 1),   # New Year's Day
        Date(2024, 3, 21),  # Human Rights Day
        Date(2024, 3, 29),  # Good Friday
        Date(2024, 4, 1),   # Easter Monday
        Date(2024, 4, 27),  # Freedom Day
        Date(2024, 5, 1),   # Workers' Day
        Date(2024, 6, 16),  # Youth Day
        Date(2024, 8, 9),   # National Women's Day
        Date(2024, 9, 24),  # Heritage Day
        Date(2024, 12, 16), # Day of Reconciliation
        Date(2024, 12, 25), # Christmas Day
        Date(2024, 12, 26), # Day of Goodwill
    ]

    test_holidays(calendar, holidays)
end

end
