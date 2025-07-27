module TestCostaRica

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Costa Rica" begin
    calendar = Holidays.CostaRica()

    holidays = Date[
        Date(2025, 1, 1),   # New Year's Day
        Date(2025, 4, 17),  # Maundy Thursday
        Date(2025, 4, 18),  # Good Friday
        Date(2025, 4, 11),  # Juan Santamaria Day
        Date(2025, 5, 1),   # Labour Day
        Date(2025, 7, 25),  # Guanacaste Day
        Date(2025, 8, 2),   # Lady of the Angels Day
        Date(2025, 8, 15),  # Mother's Day
        Date(2025, 9, 15),  # Independence Day
        Date(2025, 12, 1),  # Army Abolition Day
        Date(2025, 12, 25), # Christmas Day
    ]

    test_holidays(calendar, holidays)

    return nothing
end

end
