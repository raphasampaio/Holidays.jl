module TestIreland

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Ireland" begin
    calendar = Holidays.Ireland()

    holidays = Date[
        Date(2024, 1, 1),   # New Year's Day
        Date(2024, 3, 17),  # St. Patrick's Day
        Date(2024, 4, 1),   # Easter Monday
        Date(2024, 5, 6),   # May Bank Holiday
        Date(2024, 6, 3),   # June Bank Holiday
        Date(2024, 8, 5),   # August Bank Holiday
        Date(2024, 10, 28), # October Bank Holiday
        Date(2024, 12, 25), # Christmas Day
        Date(2024, 12, 26), # St. Stephen's Day
    ]

    test_holidays(calendar, holidays)
end

end
