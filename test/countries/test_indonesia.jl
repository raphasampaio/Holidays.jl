module TestIndonesia

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Indonesia" begin
    calendar = Holidays.Indonesia()

    holidays = [
        Date(2024, 1, 1),   # New Year's Day
        Date(2024, 2, 8),   # Isra and Mi'raj
        Date(2024, 2, 10),  # Chinese New Year
        Date(2024, 3, 11),  # Nyepi (Balinese New Year)
        Date(2024, 3, 29),  # Good Friday
        Date(2024, 4, 10),  # Eid al-Fitr (day 1)
        Date(2024, 4, 11),  # Eid al-Fitr (day 2)
        Date(2024, 5, 23),  # Vesak Day
        Date(2024, 6, 1),   # Pancasila Day
        Date(2024, 6, 17),  # Eid al-Adha
        Date(2024, 7, 7),   # Islamic New Year
        Date(2024, 8, 17),  # Independence Day
        Date(2024, 9, 15),  # Prophet Muhammad's Birthday
        Date(2024, 12, 25), # Christmas Day
    ]

    test_holidays(calendar, 2024, holidays)
end

end
