module TestPeru

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Peru" begin
    calendar = Holidays.Peru()

    holidays = [
        Date(2024, 1, 1),   # New Year's Day
        Date(2024, 3, 28),  # Maundy Thursday
        Date(2024, 3, 29),  # Good Friday
        Date(2024, 5, 1),   # Labour Day
        Date(2024, 6, 7),   # Battle of Arica
        Date(2024, 6, 29),  # St. Peter and St. Paul
        Date(2024, 7, 23),  # Peruvian Air Force Day
        Date(2024, 7, 28),  # Independence Day
        Date(2024, 7, 29),  # Independence Day
        Date(2024, 8, 6),   # Battle of Junín
        Date(2024, 8, 30),  # Santa Rosa de Lima
        Date(2024, 10, 8),  # Battle of Angamos
        Date(2024, 11, 1),  # All Saints' Day
        Date(2024, 12, 8),  # Immaculate Conception
        Date(2024, 12, 9),  # Battle of Ayacucho
        Date(2024, 12, 25), # Christmas Day
    ]

    test_holidays(calendar, holidays)
end

end