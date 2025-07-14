module TestPhilippines

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Philippines" begin
    calendar = Holidays.Philippines()

    holidays = [
        Date(2024, 1, 1),   # New Year's Day
        Date(2024, 2, 10),  # Chinese New Year
        Date(2024, 2, 25),  # People Power Anniversary
        Date(2024, 3, 28),  # Maundy Thursday
        Date(2024, 3, 29),  # Good Friday
        Date(2024, 3, 30),  # Black Saturday
        Date(2024, 3, 31),  # Easter Sunday
        Date(2024, 4, 9),   # Araw ng Kagitingan
        Date(2024, 4, 10),  # Eid al-Fitr
        Date(2024, 5, 1),   # Labour Day
        Date(2024, 6, 12),  # Independence Day
        Date(2024, 8, 21),  # Ninoy Aquino Day
        Date(2024, 8, 26),  # National Heroes Day (last Monday of August)
        Date(2024, 11, 1),  # All Saints' Day
        Date(2024, 11, 30), # Bonifacio Day
        Date(2024, 12, 25), # Christmas Day
        Date(2024, 12, 30), # Rizal Day
    ]

    test_holidays(calendar, holidays)
end

end
