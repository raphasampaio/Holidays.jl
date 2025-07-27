module TestSerbia

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Serbia" begin
    calendar = Holidays.Serbia()

    holidays = Date[
        Date(1970, 1, 1), # New Year's Day
        Date(1970, 1, 2), # New Year's Day
        Date(1971, 1, 1), # New Year's Day
        Date(1971, 1, 2), # New Year's Day
        Date(1972, 1, 1), # New Year's Day
        Date(1972, 1, 2), # New Year's Day
        Date(1973, 1, 1), # New Year's Day
        Date(1973, 1, 2), # New Year's Day
        Date(1974, 1, 1), # New Year's Day
        Date(1974, 1, 2), # New Year's Day
        Date(1975, 1, 1), # New Year's Day
        Date(1975, 1, 2), # New Year's Day
        Date(1976, 1, 1), # New Year's Day
        Date(1976, 1, 2), # New Year's Day
        Date(1977, 1, 1), # New Year's Day
        Date(1977, 1, 2), # New Year's Day
        Date(1978, 1, 1), # New Year's Day
        Date(1978, 1, 2), # New Year's Day
        Date(1979, 1, 1), # New Year's Day
        Date(1979, 1, 2), # New Year's Day
        Date(1980, 1, 1), # New Year's Day
        Date(1980, 1, 2), # New Year's Day
        Date(1981, 1, 1), # New Year's Day
        Date(1981, 1, 2), # New Year's Day
        Date(1982, 1, 1), # New Year's Day
        Date(1982, 1, 2), # New Year's Day
        Date(1983, 1, 1), # New Year's Day
        Date(1983, 1, 2), # New Year's Day
        Date(1984, 1, 1), # New Year's Day
        Date(1984, 1, 2), # New Year's Day
        Date(1985, 1, 1), # New Year's Day
        Date(1985, 1, 2), # New Year's Day
        Date(1986, 1, 1), # New Year's Day
        Date(1986, 1, 2), # New Year's Day
        Date(1987, 1, 1), # New Year's Day
        Date(1987, 1, 2), # New Year's Day
        Date(1988, 1, 1), # New Year's Day
        Date(1988, 1, 2), # New Year's Day
        Date(1989, 1, 1), # New Year's Day
        Date(1989, 1, 2), # New Year's Day
        Date(1990, 1, 1), # New Year's Day
        Date(1990, 1, 2), # New Year's Day
        Date(1991, 1, 1), # New Year's Day
        Date(1991, 1, 2), # New Year's Day
        Date(1992, 1, 1), # New Year's Day
        Date(1992, 1, 2), # New Year's Day
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
        Date(2005, 1, 1), # New Year's Day
        Date(2005, 1, 2), # New Year's Day
        Date(2006, 1, 1), # New Year's Day
        Date(2006, 1, 2), # New Year's Day
        Date(2007, 1, 1), # New Year's Day
        Date(2007, 1, 2), # New Year's Day
        Date(2008, 1, 1), # New Year's Day
        Date(2008, 1, 2), # New Year's Day
        Date(2009, 1, 1), # New Year's Day
        Date(2009, 1, 2), # New Year's Day
        Date(2010, 1, 1), # New Year's Day
        Date(2010, 1, 2), # New Year's Day
        Date(2011, 1, 1), # New Year's Day
        Date(2011, 1, 2), # New Year's Day
        Date(2012, 1, 1), # New Year's Day
        Date(2012, 1, 2), # New Year's Day
        Date(2013, 1, 1), # New Year's Day
        Date(2013, 1, 2), # New Year's Day
        Date(2014, 1, 1), # New Year's Day
        Date(2014, 1, 2), # New Year's Day
        Date(2015, 1, 1), # New Year's Day
        Date(2015, 1, 2), # New Year's Day
        Date(2016, 1, 1), # New Year's Day
        Date(2016, 1, 2), # New Year's Day
        Date(2017, 1, 1), # New Year's Day
        Date(2017, 1, 2), # New Year's Day
        Date(2018, 1, 1), # New Year's Day
        Date(2018, 1, 2), # New Year's Day
        Date(2019, 1, 1), # New Year's Day
        Date(2019, 1, 2), # New Year's Day
        Date(2020, 1, 1), # New Year's Day
        Date(2020, 1, 2), # New Year's Day
        Date(2021, 1, 1), # New Year's Day
        Date(2021, 1, 2), # New Year's Day
        Date(2022, 1, 1), # New Year's Day
        Date(2022, 1, 2), # New Year's Day
        Date(2023, 1, 1), # New Year's Day
        Date(2023, 1, 2), # New Year's Day
        Date(2024, 1, 1), # New Year's Day
        Date(2024, 1, 2), # New Year's Day
        Date(2025, 1, 1), # New Year's Day
        Date(2025, 1, 2), # New Year's Day
        Date(2026, 1, 1), # New Year's Day
        Date(2026, 1, 2), # New Year's Day
        Date(2027, 1, 1), # New Year's Day
        Date(2027, 1, 2), # New Year's Day
        Date(2028, 1, 1), # New Year's Day
        Date(2028, 1, 2), # New Year's Day
        Date(2029, 1, 1), # New Year's Day
        Date(2029, 1, 2), # New Year's Day
        Date(2030, 1, 1), # New Year's Day
        Date(2030, 1, 2), # New Year's Day
    ]

    test_holidays(calendar, holidays)

    return nothing
end

end
