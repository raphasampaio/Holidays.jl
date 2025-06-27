module TestCanada

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Canada" begin
    calendar = Holidays.Canada()

    holidays = [
        Date(2024, 1, 1),   # New Year's Day
        Date(2024, 2, 19),  # Family Day
        Date(2024, 3, 29),  # Good Friday
        Date(2024, 4, 1),   # Easter Monday
        Date(2024, 5, 20),  # Victoria Day
        Date(2024, 7, 1),   # Canada Day
        Date(2024, 8, 5),   # Civic Holiday
        Date(2024, 9, 2),   # Labour Day
        Date(2024, 10, 14), # Thanksgiving Day
        Date(2024, 11, 11), # Remembrance Day
        Date(2024, 12, 25), # Christmas Day
        Date(2024, 12, 26), # Boxing Day
    ]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end
