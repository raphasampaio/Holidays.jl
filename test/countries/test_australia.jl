module TestAustralia

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Australia" begin
    calendar = Holidays.Australia()

    holidays = [
        Date(2024, 1, 1),   # New Year's Day
        Date(2024, 1, 26),  # Australia Day
        Date(2024, 3, 29),  # Good Friday
        Date(2024, 3, 30),  # Easter Saturday
        Date(2024, 4, 1),   # Easter Monday
        Date(2024, 4, 25),  # ANZAC Day
        Date(2024, 6, 10),  # Queen's Birthday
        Date(2024, 10, 7),  # Labour Day
        Date(2024, 12, 25), # Christmas Day
        Date(2024, 12, 26), # Boxing Day
    ]

    test_holidays(calendar, holidays)

    return nothing
end

end
