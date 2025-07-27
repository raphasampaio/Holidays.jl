module TestVietnam

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Vietnam" begin
    calendar = Holidays.Vietnam()

    holidays = Date[
        Date(2024, 1, 1),   # New Year's Day
        Date(2024, 2, 9),   # Tet Holiday (day 1)
        Date(2024, 2, 10),  # Tet Holiday (day 2)
        Date(2024, 2, 11),  # Tet Holiday (day 3)
        Date(2024, 2, 12),  # Tet Holiday (day 4)
        Date(2024, 2, 13),  # Tet Holiday (day 5)
        Date(2024, 4, 18),  # Hung Kings' Day
        Date(2024, 4, 30),  # Reunification Day
        Date(2024, 5, 1),   # Labour Day
        Date(2024, 9, 2),   # Independence Day
    ]

    test_holidays(calendar, holidays)
end

end
