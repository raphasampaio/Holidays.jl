module TestVenezuela

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Venezuela" begin
    calendar = Holidays.Venezuela()

    holidays = [
        Date(2024, 1, 1),   # New Year's Day
        Date(2024, 2, 12),  # Carnival Monday (48 days before Easter)
        Date(2024, 2, 13),  # Carnival Tuesday (47 days before Easter)
        Date(2024, 3, 28),  # Maundy Thursday (3 days before Easter)
        Date(2024, 3, 29),  # Good Friday
        Date(2024, 4, 19),  # Declaration of Independence
        Date(2024, 5, 1),   # Labour Day
        Date(2024, 6, 24),  # Battle of Carabobo
        Date(2024, 7, 5),   # Independence Day
        Date(2024, 7, 24),  # Birthday of Simón Bolívar
        Date(2024, 10, 12), # Indigenous Resistance Day
        Date(2024, 12, 25), # Christmas Day
    ]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end
