module TestBelgium

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Belgium" begin
    calendar = Holidays.Belgium()

    holidays = Date[
        Date(2024, 1, 1),   # New Year's Day
        Date(2024, 4, 1),   # Easter Monday
        Date(2024, 5, 1),   # Labour Day
        Date(2024, 5, 9),   # Ascension Day
        Date(2024, 5, 20),  # Whit Monday
        Date(2024, 7, 21),  # Belgian National Day
        Date(2024, 8, 15),  # Assumption Day
        Date(2024, 11, 1),  # All Saints' Day
        Date(2024, 11, 11), # Armistice Day
        Date(2024, 12, 25), # Christmas Day
    ]

    test_holidays(calendar, holidays)
end

end
