module TestArgentina

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Argentina" begin
    calendar = Holidays.Argentina()

    holidays = Date[
        Date(2024, 1, 1),   # New Year's Day
        Date(2024, 3, 24),  # Truth and Justice Day
        Date(2024, 3, 29),  # Good Friday
        Date(2024, 4, 2),   # Veterans Day
        Date(2024, 5, 1),   # Labour Day
        Date(2024, 5, 25),  # Revolution Day
        Date(2024, 6, 17),  # Martín Güemes Day
        Date(2024, 6, 20),  # Flag Day
        Date(2024, 7, 9),   # Independence Day
        Date(2024, 8, 19),  # San Martín Day (third Monday in August)
        Date(2024, 10, 14), # Respect for Cultural Diversity Day (second Monday in October)
        Date(2024, 11, 25), # National Sovereignty Day (fourth Monday in November)
        Date(2024, 12, 8),  # Immaculate Conception
        Date(2024, 12, 25), # Christmas Day
    ]

    test_holidays(calendar, holidays)

    return nothing
end

end
