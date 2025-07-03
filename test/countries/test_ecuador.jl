module TestEcuador

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Ecuador" begin
    calendar = Holidays.Ecuador()

    holidays = [
        Date(2024, 1, 1),   # New Year's Day
        Date(2024, 2, 12),  # Carnival Monday
        Date(2024, 2, 13),  # Carnival Tuesday
        Date(2024, 3, 29),  # Good Friday
        Date(2024, 5, 1),   # Labour Day
        Date(2024, 5, 24),  # The Battle of Pichincha
        Date(2024, 8, 12),   # Independence Day (observed)
        Date(2024, 10, 14),  # Independence of Guayaquil
        Date(2024, 11, 2),  # All Souls' Day
        Date(2024, 11, 3),  # Independence of Cuenca
        Date(2024, 12, 25), # Christmas Day
    ]

    test_holidays(calendar, 2024, holidays)
end

end