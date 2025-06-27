module TestThailand

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Thailand" begin
    calendar = Holidays.Thailand()

    holidays = [
        Date(2024, 1, 1),   # New Year's Day
        Date(2024, 2, 24),  # Makha Bucha Day
        Date(2024, 4, 6),   # Chakri Day
        Date(2024, 4, 13),  # Songkran Day (Apr 13)
        Date(2024, 4, 14),  # Songkran Day (Apr 14)
        Date(2024, 4, 15),  # Songkran Day (Apr 15)
        Date(2024, 5, 4),   # Coronation Day
        Date(2024, 5, 13),  # Royal Ploughing Ceremony
        Date(2024, 5, 22),  # Visakha Bucha Day
        Date(2024, 7, 21),  # Khao Phansa Day
        Date(2024, 7, 22),  # Asanha Bucha Day (day after)
        Date(2024, 7, 28),  # HM King's Birthday
        Date(2024, 8, 12),  # HM Queen's Birthday
        Date(2024, 10, 23), # King Chulalongkorn Day
        Date(2024, 12, 10), # Constitution Day
    ]

    test_holidays(calendar, 2024, holidays)
end

end
