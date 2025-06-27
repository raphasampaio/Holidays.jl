module TestIsrael

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Israel" begin
    calendar = Holidays.Israel()

    holidays = [
        Date(2024, 1, 1),   # New Year's Day
        Date(2024, 4, 28),  # Holocaust Remembrance Day
        Date(2024, 5, 13),  # Memorial Day
        Date(2024, 5, 14),  # Independence Day
        Date(2024, 9, 15),  # Rosh Hashanah (1st day)
        Date(2024, 9, 16),  # Rosh Hashanah (2nd day)
        Date(2024, 9, 25),  # Yom Kippur
        Date(2024, 9, 30),  # Sukkot
        Date(2024, 10, 7),  # Simchat Torah
    ]

    test_holidays(calendar, 2024, holidays)
end

end
