module TestColombia

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Colombia" begin
    calendar = Holidays.Colombia()

    holidays = [
        Date(2024, 1, 1),   # New Year's Day
        Date(2024, 1, 8),   # Epiphany (moved to Monday)
        Date(2024, 3, 25),  # St. Joseph's Day (moved to Monday)
        Date(2024, 3, 28),  # Maundy Thursday
        Date(2024, 3, 29),  # Good Friday
        Date(2024, 5, 1),   # Labour Day
        Date(2024, 5, 9),   # Ascension Day
        Date(2024, 5, 30),  # Corpus Christi
        Date(2024, 6, 7),   # Sacred Heart
        Date(2024, 7, 20),  # Independence Day
        Date(2024, 8, 7),   # Battle of Boyacá
        Date(2024, 8, 19),  # Assumption of Mary (moved to Monday)
        Date(2024, 10, 14), # Columbus Day (moved to Monday)
        Date(2024, 11, 4),  # All Saints' Day (moved to Monday)
        Date(2024, 11, 11), # Independence of Cartagena (moved to Monday)
        Date(2024, 12, 8),  # Immaculate Conception
        Date(2024, 12, 25), # Christmas Day
    ]

    test_holidays(calendar, holidays)
end

end
