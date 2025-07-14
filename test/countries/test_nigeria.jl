module TestNigeria

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Nigeria" begin
    calendar = Holidays.Nigeria()

    holidays = [
        Date(2024, 1, 1),   # New Year's Day
        Date(2024, 3, 29),  # Good Friday
        Date(2024, 4, 1),   # Easter Monday
        Date(2024, 4, 10),  # Eid al-Fitr (day 1)
        Date(2024, 4, 11),  # Eid al-Fitr (day 2)
        Date(2024, 5, 1),   # Labour Day
        Date(2024, 5, 27),  # Children's Day
        Date(2024, 6, 12),  # Democracy Day
        Date(2024, 6, 16),  # Eid al-Adha (day 1)
        Date(2024, 6, 17),  # Eid al-Adha (day 2)
        Date(2024, 7, 7),   # Islamic New Year
        Date(2024, 9, 15),  # Prophet Muhammad's Birthday
        Date(2024, 10, 1),  # Independence Day
        Date(2024, 12, 25), # Christmas Day
        Date(2024, 12, 26), # Boxing Day
    ]

    test_holidays(calendar, holidays)
end

end
