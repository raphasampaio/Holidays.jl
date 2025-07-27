module TestCzechRepublic

using Dates
using Holidays
using Test

include("../util.jl")

@testset "CzechRepublic" begin
    calendar = Holidays.CzechRepublic()

    holidays = Date[
        Date(1970, 1, 1), # New Year's Day
        Date(1971, 1, 1), # New Year's Day
        Date(1972, 1, 1), # New Year's Day
        Date(1973, 1, 1), # New Year's Day
        Date(1974, 1, 1), # New Year's Day
        Date(1975, 1, 1), # New Year's Day
        Date(1976, 1, 1), # New Year's Day
        Date(1977, 1, 1), # New Year's Day
        Date(1978, 1, 1), # New Year's Day
        Date(1979, 1, 1), # New Year's Day
        Date(1980, 1, 1), # New Year's Day
        Date(1981, 1, 1), # New Year's Day
        Date(1982, 1, 1), # New Year's Day
        Date(1983, 1, 1), # New Year's Day
        Date(1984, 1, 1), # New Year's Day
        Date(1985, 1, 1), # New Year's Day
        Date(1986, 1, 1), # New Year's Day
        Date(1987, 1, 1), # New Year's Day
        Date(1988, 1, 1), # New Year's Day
        Date(1989, 1, 1), # New Year's Day
        Date(1990, 1, 1), # New Year's Day
        Date(1991, 1, 1), # New Year's Day
        Date(1992, 1, 1), # New Year's Day
        Date(1993, 1, 1), # New Year's Day
        Date(1994, 1, 1), # New Year's Day
        Date(1995, 1, 1), # New Year's Day
        Date(1996, 1, 1), # New Year's Day
        Date(1997, 1, 1), # New Year's Day
        Date(1998, 1, 1), # New Year's Day
        Date(1999, 1, 1), # New Year's Day
    ]

    test_holidays(calendar, holidays)

    return nothing
end

end
