module TestCzechRepublic

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Czech Republic" begin
    calendar = Holidays.CzechRepublic()

    holidays = [
        Date(2024, 1, 1),   # New Year's Day
        Date(2024, 4, 1),   # Easter Monday
        Date(2024, 5, 1),   # Labour Day
        Date(2024, 5, 8),   # Liberation Day
        Date(2024, 7, 5),   # St. Cyril and Methodius Day
        Date(2024, 7, 6),   # Jan Hus Day
        Date(2024, 9, 28),  # Czech Statehood Day
        Date(2024, 10, 28), # Independence Day
        Date(2024, 11, 17), # Freedom Day
        Date(2024, 12, 24), # Christmas Eve
        Date(2024, 12, 25), # Christmas Day
        Date(2024, 12, 26), # Boxing Day
    ]

    test_holidays(calendar, holidays)
end

end
