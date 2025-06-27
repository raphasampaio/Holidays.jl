module TestNewZealand

using Dates
using Holidays
using Test

include("../util.jl")

@testset "New Zealand" begin
    calendar = Holidays.NewZealand()

    holidays = [
        Date(2024, 1, 1),   # New Year's Day
        Date(2024, 1, 2),   # Day after New Year's Day
        Date(2024, 2, 6),   # Waitangi Day
        Date(2024, 3, 29),  # Good Friday
        Date(2024, 4, 1),   # Easter Monday
        Date(2024, 4, 25),  # ANZAC Day
        Date(2024, 6, 3),   # Queen's Birthday (first Monday in June)
        Date(2024, 6, 28),  # Matariki (last Friday in June)
        Date(2024, 10, 28), # Labour Day (fourth Monday in October)
        Date(2024, 12, 25), # Christmas Day
        Date(2024, 12, 26), # Boxing Day
    ]

    test_holidays(calendar, 2024, holidays)
end

end
