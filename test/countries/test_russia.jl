module TestRussia

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Russia" begin
    calendar = Holidays.Russia()

    holidays = Date[
        Date(1991, 1, 1), # New Year's Day
        Date(1992, 1, 1), # New Year's Day
        Date(1993, 1, 1), # New Year's Day
        Date(1993, 1, 2), # New Year's Day
        Date(1994, 1, 1), # New Year's Day
        Date(1994, 1, 2), # New Year's Day
        Date(1995, 1, 1), # New Year's Day
        Date(1995, 1, 2), # New Year's Day
        Date(1996, 1, 1), # New Year's Day
        Date(1996, 1, 2), # New Year's Day
        Date(1997, 1, 1), # New Year's Day
        Date(1997, 1, 2), # New Year's Day
        Date(1998, 1, 1), # New Year's Day
        Date(1998, 1, 2), # New Year's Day
        Date(1999, 1, 1), # New Year's Day
        Date(1999, 1, 2), # New Year's Day
        Date(2000, 1, 1), # New Year's Day
        Date(2000, 1, 2), # New Year's Day
        Date(2001, 1, 1), # New Year's Day
        Date(2001, 1, 2), # New Year's Day
        Date(2002, 1, 1), # New Year's Day
        Date(2002, 1, 2), # New Year's Day
        Date(2003, 1, 1), # New Year's Day
        Date(2003, 1, 2), # New Year's Day
        Date(2004, 1, 1), # New Year's Day
        Date(2004, 1, 2), # New Year's Day
    ]

    test_holidays(calendar, holidays)

    return nothing
end

end
