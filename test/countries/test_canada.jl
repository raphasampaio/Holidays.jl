module TestCanada

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Canada" begin
    calendar = Holidays.Canada()

    holidays = Date[
        Date(1970, 1, 1), # New Year's Day
        Date(1970, 3, 27), # Good Friday
        Date(1970, 7, 1), # Dominion Day
        Date(1970, 9, 7), # Labor Day
        Date(1970, 12, 25), # Christmas Day
        Date(1971, 1, 1), # New Year's Day
        Date(1971, 4, 9), # Good Friday
        Date(1971, 7, 1), # Dominion Day
        Date(1971, 9, 6), # Labor Day
        Date(1971, 12, 25), # Christmas Day
        Date(1971, 12, 27), # Christmas Day (observed)
        Date(1972, 1, 1), # New Year's Day
        Date(1972, 1, 3), # New Year's Day (observed)
        Date(1972, 3, 31), # Good Friday
        Date(1972, 7, 1), # Dominion Day
        Date(1972, 9, 4), # Labor Day
        Date(1972, 12, 25), # Christmas Day
        Date(1973, 1, 1), # New Year's Day
        Date(1973, 4, 20), # Good Friday
        Date(1973, 7, 1), # Dominion Day
        Date(1973, 9, 3), # Labor Day
        Date(1973, 12, 25), # Christmas Day
        Date(1974, 1, 1), # New Year's Day
        Date(1974, 4, 12), # Good Friday
        Date(1974, 7, 1), # Dominion Day
        Date(1974, 9, 2), # Labor Day
        Date(1974, 12, 25), # Christmas Day
        Date(1975, 1, 1), # New Year's Day
        Date(1975, 3, 28), # Good Friday
        Date(1975, 7, 1), # Dominion Day
        Date(1975, 9, 1), # Labor Day
        Date(1975, 12, 25), # Christmas Day
        Date(1976, 1, 1), # New Year's Day
        Date(1976, 4, 16), # Good Friday
        Date(1976, 7, 1), # Dominion Day
        Date(1976, 9, 6), # Labor Day
        Date(1976, 12, 25), # Christmas Day
        Date(1976, 12, 27), # Christmas Day (observed)
        Date(1977, 1, 1), # New Year's Day
        Date(1977, 1, 3), # New Year's Day (observed)
        Date(1977, 4, 8), # Good Friday
        Date(1977, 7, 1), # Dominion Day
        Date(1977, 9, 5), # Labor Day
        Date(1977, 12, 25), # Christmas Day
        Date(1977, 12, 26), # Christmas Day (observed)
        Date(1978, 1, 1), # New Year's Day
        Date(1978, 1, 2), # New Year's Day (observed)
        Date(1978, 3, 24), # Good Friday
        Date(1978, 7, 1), # Dominion Day
        Date(1978, 9, 4), # Labor Day
        Date(1978, 12, 25), # Christmas Day
        Date(1979, 1, 1), # New Year's Day
        Date(1979, 4, 13), # Good Friday
        Date(1979, 7, 1), # Dominion Day
        Date(1979, 9, 3), # Labor Day
        Date(1979, 12, 25), # Christmas Day
        Date(1980, 1, 1), # New Year's Day
        Date(1980, 4, 4), # Good Friday
        Date(1980, 7, 1), # Dominion Day
        Date(1980, 9, 1), # Labor Day
        Date(1980, 12, 25), # Christmas Day
        Date(1981, 1, 1), # New Year's Day
        Date(1981, 4, 17), # Good Friday
        Date(1981, 7, 1), # Dominion Day
        Date(1981, 9, 7), # Labor Day
        Date(1981, 12, 25), # Christmas Day
        Date(1982, 1, 1), # New Year's Day
        Date(1982, 4, 9), # Good Friday
        Date(1982, 7, 1), # Dominion Day
        Date(1982, 9, 6), # Labor Day
        Date(1982, 12, 25), # Christmas Day
        Date(1982, 12, 27), # Christmas Day (observed)
        Date(1983, 1, 1), # New Year's Day
        Date(1983, 1, 3), # New Year's Day (observed)
        Date(1983, 4, 1), # Good Friday
        Date(1983, 7, 1), # Canada Day
        Date(1983, 9, 5), # Labor Day
        Date(1983, 12, 25), # Christmas Day
        Date(1983, 12, 26), # Christmas Day (observed)
        Date(1984, 1, 1), # New Year's Day
        Date(1984, 1, 2), # New Year's Day (observed)
        Date(1984, 4, 20), # Good Friday
        Date(1984, 7, 1), # Canada Day
        Date(1984, 9, 3), # Labor Day
        Date(1984, 12, 25), # Christmas Day
        Date(1985, 1, 1), # New Year's Day
        Date(1985, 4, 5), # Good Friday
        Date(1985, 7, 1), # Canada Day
        Date(1985, 9, 2), # Labor Day
        Date(1985, 12, 25), # Christmas Day
        Date(1986, 1, 1), # New Year's Day
        Date(1986, 3, 28), # Good Friday
        Date(1986, 7, 1), # Canada Day
        Date(1986, 9, 1), # Labor Day
        Date(1986, 12, 25), # Christmas Day
        Date(1987, 1, 1), # New Year's Day
        Date(1987, 4, 17), # Good Friday
        Date(1987, 7, 1), # Canada Day
        Date(1987, 9, 7), # Labor Day
        Date(1987, 12, 25), # Christmas Day
        Date(1988, 1, 1), # New Year's Day
        Date(1988, 4, 1), # Good Friday
        Date(1988, 7, 1), # Canada Day
        Date(1988, 9, 5), # Labor Day
        Date(1988, 12, 25), # Christmas Day
        Date(1988, 12, 26), # Christmas Day (observed)
        Date(1989, 1, 1), # New Year's Day
        Date(1989, 1, 2), # New Year's Day (observed)
        Date(1989, 3, 24), # Good Friday
        Date(1989, 7, 1), # Canada Day
        Date(1989, 9, 4), # Labor Day
        Date(1989, 12, 25), # Christmas Day
        Date(1990, 1, 1), # New Year's Day
        Date(1990, 4, 13), # Good Friday
        Date(1990, 7, 1), # Canada Day
        Date(1990, 9, 3), # Labor Day
        Date(1990, 12, 25), # Christmas Day
        Date(1991, 1, 1), # New Year's Day
        Date(1991, 3, 29), # Good Friday
        Date(1991, 7, 1), # Canada Day
        Date(1991, 9, 2), # Labor Day
        Date(1991, 12, 25), # Christmas Day
        Date(1992, 1, 1), # New Year's Day
        Date(1992, 4, 17), # Good Friday
        Date(1992, 7, 1), # Canada Day
        Date(1992, 9, 7), # Labor Day
        Date(1992, 12, 25), # Christmas Day
        Date(1993, 1, 1), # New Year's Day
        Date(1993, 4, 9), # Good Friday
        Date(1993, 7, 1), # Canada Day
        Date(1993, 9, 6), # Labor Day
        Date(1993, 12, 25), # Christmas Day
        Date(1993, 12, 27), # Christmas Day (observed)
        Date(1994, 1, 1), # New Year's Day
        Date(1994, 1, 3), # New Year's Day (observed)
        Date(1994, 4, 1), # Good Friday
        Date(1994, 7, 1), # Canada Day
        Date(1994, 9, 5), # Labor Day
        Date(1994, 12, 25), # Christmas Day
        Date(1994, 12, 26), # Christmas Day (observed)
        Date(1995, 1, 1), # New Year's Day
        Date(1995, 1, 2), # New Year's Day (observed)
        Date(1995, 4, 14), # Good Friday
        Date(1995, 7, 1), # Canada Day
        Date(1995, 9, 4), # Labor Day
        Date(1995, 12, 25), # Christmas Day
        Date(1996, 1, 1), # New Year's Day
        Date(1996, 4, 5), # Good Friday
        Date(1996, 7, 1), # Canada Day
        Date(1996, 9, 2), # Labor Day
        Date(1996, 12, 25), # Christmas Day
        Date(1997, 1, 1), # New Year's Day
        Date(1997, 3, 28), # Good Friday
        Date(1997, 7, 1), # Canada Day
        Date(1997, 9, 1), # Labor Day
        Date(1997, 12, 25), # Christmas Day
        Date(1998, 1, 1), # New Year's Day
        Date(1998, 4, 10), # Good Friday
        Date(1998, 7, 1), # Canada Day
        Date(1998, 9, 7), # Labor Day
        Date(1998, 12, 25), # Christmas Day
        Date(1999, 1, 1), # New Year's Day
        Date(1999, 4, 2), # Good Friday
        Date(1999, 7, 1), # Canada Day
        Date(1999, 9, 6), # Labor Day
        Date(1999, 12, 25), # Christmas Day
        Date(1999, 12, 27), # Christmas Day (observed)
        Date(2000, 1, 1), # New Year's Day
        Date(2000, 1, 3), # New Year's Day (observed)
        Date(2000, 4, 21), # Good Friday
        Date(2000, 7, 1), # Canada Day
        Date(2000, 9, 4), # Labor Day
        Date(2000, 12, 25), # Christmas Day
        Date(2001, 1, 1), # New Year's Day
        Date(2001, 4, 13), # Good Friday
        Date(2001, 7, 1), # Canada Day
        Date(2001, 9, 3), # Labor Day
        Date(2001, 12, 25), # Christmas Day
        Date(2002, 1, 1), # New Year's Day
        Date(2002, 3, 29), # Good Friday
        Date(2002, 7, 1), # Canada Day
        Date(2002, 9, 2), # Labor Day
        Date(2002, 12, 25), # Christmas Day
        Date(2003, 1, 1), # New Year's Day
        Date(2003, 4, 18), # Good Friday
        Date(2003, 7, 1), # Canada Day
        Date(2003, 9, 1), # Labor Day
        Date(2003, 12, 25), # Christmas Day
        Date(2004, 1, 1), # New Year's Day
        Date(2004, 4, 9), # Good Friday
        Date(2004, 7, 1), # Canada Day
        Date(2004, 9, 6), # Labor Day
        Date(2004, 12, 25), # Christmas Day
        Date(2004, 12, 27), # Christmas Day (observed)
        Date(2005, 1, 1), # New Year's Day
        Date(2005, 1, 3), # New Year's Day (observed)
        Date(2005, 3, 25), # Good Friday
        Date(2005, 7, 1), # Canada Day
        Date(2005, 9, 5), # Labor Day
        Date(2005, 12, 25), # Christmas Day
        Date(2005, 12, 26), # Christmas Day (observed)
        Date(2006, 1, 1), # New Year's Day
        Date(2006, 1, 2), # New Year's Day (observed)
        Date(2006, 4, 14), # Good Friday
        Date(2006, 7, 1), # Canada Day
        Date(2006, 9, 4), # Labor Day
        Date(2006, 12, 25), # Christmas Day
        Date(2007, 1, 1), # New Year's Day
        Date(2007, 4, 6), # Good Friday
        Date(2007, 7, 1), # Canada Day
        Date(2007, 9, 3), # Labor Day
        Date(2007, 12, 25), # Christmas Day
        Date(2008, 1, 1), # New Year's Day
        Date(2008, 3, 21), # Good Friday
        Date(2008, 7, 1), # Canada Day
        Date(2008, 9, 1), # Labor Day
        Date(2008, 12, 25), # Christmas Day
        Date(2009, 1, 1), # New Year's Day
        Date(2009, 4, 10), # Good Friday
        Date(2009, 7, 1), # Canada Day
        Date(2009, 9, 7), # Labor Day
        Date(2009, 12, 25), # Christmas Day
        Date(2010, 1, 1), # New Year's Day
        Date(2010, 4, 2), # Good Friday
        Date(2010, 7, 1), # Canada Day
        Date(2010, 9, 6), # Labor Day
        Date(2010, 12, 25), # Christmas Day
        Date(2010, 12, 27), # Christmas Day (observed)
        Date(2011, 1, 1), # New Year's Day
        Date(2011, 1, 3), # New Year's Day (observed)
        Date(2011, 4, 22), # Good Friday
        Date(2011, 7, 1), # Canada Day
        Date(2011, 9, 5), # Labor Day
        Date(2011, 12, 25), # Christmas Day
        Date(2011, 12, 26), # Christmas Day (observed)
        Date(2012, 1, 1), # New Year's Day
        Date(2012, 1, 2), # New Year's Day (observed)
        Date(2012, 4, 6), # Good Friday
        Date(2012, 7, 1), # Canada Day
        Date(2012, 9, 3), # Labor Day
        Date(2012, 12, 25), # Christmas Day
        Date(2013, 1, 1), # New Year's Day
        Date(2013, 3, 29), # Good Friday
        Date(2013, 7, 1), # Canada Day
        Date(2013, 9, 2), # Labor Day
        Date(2013, 12, 25), # Christmas Day
        Date(2014, 1, 1), # New Year's Day
        Date(2014, 4, 18), # Good Friday
        Date(2014, 7, 1), # Canada Day
        Date(2014, 9, 1), # Labor Day
        Date(2014, 12, 25), # Christmas Day
        Date(2015, 1, 1), # New Year's Day
        Date(2015, 4, 3), # Good Friday
        Date(2015, 7, 1), # Canada Day
        Date(2015, 9, 7), # Labor Day
        Date(2015, 12, 25), # Christmas Day
        Date(2016, 1, 1), # New Year's Day
        Date(2016, 3, 25), # Good Friday
        Date(2016, 7, 1), # Canada Day
        Date(2016, 9, 5), # Labor Day
        Date(2016, 12, 25), # Christmas Day
        Date(2016, 12, 26), # Christmas Day (observed)
        Date(2017, 1, 1), # New Year's Day
        Date(2017, 1, 2), # New Year's Day (observed)
        Date(2017, 4, 14), # Good Friday
        Date(2017, 7, 1), # Canada Day
        Date(2017, 9, 4), # Labor Day
        Date(2017, 12, 25), # Christmas Day
        Date(2018, 1, 1), # New Year's Day
        Date(2018, 3, 30), # Good Friday
        Date(2018, 7, 1), # Canada Day
        Date(2018, 9, 3), # Labor Day
        Date(2018, 12, 25), # Christmas Day
        Date(2019, 1, 1), # New Year's Day
        Date(2019, 4, 19), # Good Friday
        Date(2019, 7, 1), # Canada Day
        Date(2019, 9, 2), # Labor Day
        Date(2019, 12, 25), # Christmas Day
        Date(2020, 1, 1), # New Year's Day
        Date(2020, 4, 10), # Good Friday
        Date(2020, 7, 1), # Canada Day
        Date(2020, 9, 7), # Labor Day
        Date(2020, 12, 25), # Christmas Day
        Date(2021, 1, 1), # New Year's Day
        Date(2021, 4, 2), # Good Friday
        Date(2021, 7, 1), # Canada Day
        Date(2021, 9, 6), # Labor Day
        Date(2021, 12, 25), # Christmas Day
        Date(2021, 12, 27), # Christmas Day (observed)
        Date(2022, 1, 1), # New Year's Day
        Date(2022, 1, 3), # New Year's Day (observed)
        Date(2022, 4, 15), # Good Friday
        Date(2022, 7, 1), # Canada Day
        Date(2022, 9, 5), # Labor Day
        Date(2022, 12, 25), # Christmas Day
        Date(2022, 12, 26), # Christmas Day (observed)
        Date(2023, 1, 1), # New Year's Day
        Date(2023, 1, 2), # New Year's Day (observed)
        Date(2023, 4, 7), # Good Friday
        Date(2023, 7, 1), # Canada Day
        Date(2023, 9, 4), # Labor Day
        Date(2023, 12, 25), # Christmas Day
        Date(2024, 1, 1), # New Year's Day
        Date(2024, 3, 29), # Good Friday
        Date(2024, 7, 1), # Canada Day
        Date(2024, 9, 2), # Labor Day
        Date(2024, 12, 25), # Christmas Day
        Date(2025, 1, 1), # New Year's Day
        Date(2025, 4, 18), # Good Friday
        Date(2025, 7, 1), # Canada Day
        Date(2025, 9, 1), # Labor Day
        Date(2025, 12, 25), # Christmas Day
        Date(2026, 1, 1), # New Year's Day
        Date(2026, 4, 3), # Good Friday
        Date(2026, 7, 1), # Canada Day
        Date(2026, 9, 7), # Labor Day
        Date(2026, 12, 25), # Christmas Day
        Date(2027, 1, 1), # New Year's Day
        Date(2027, 3, 26), # Good Friday
        Date(2027, 7, 1), # Canada Day
        Date(2027, 9, 6), # Labor Day
        Date(2027, 12, 25), # Christmas Day
        Date(2027, 12, 27), # Christmas Day (observed)
        Date(2028, 1, 1), # New Year's Day
        Date(2028, 1, 3), # New Year's Day (observed)
        Date(2028, 4, 14), # Good Friday
        Date(2028, 7, 1), # Canada Day
        Date(2028, 9, 4), # Labor Day
        Date(2028, 12, 25), # Christmas Day
        Date(2029, 1, 1), # New Year's Day
        Date(2029, 3, 30), # Good Friday
        Date(2029, 7, 1), # Canada Day
        Date(2029, 9, 3), # Labor Day
        Date(2029, 12, 25), # Christmas Day
        Date(2030, 1, 1), # New Year's Day
        Date(2030, 4, 19), # Good Friday
        Date(2030, 7, 1), # Canada Day
        Date(2030, 9, 2), # Labor Day
        Date(2030, 12, 25), # Christmas Day
    ]

    test_holidays(calendar, holidays)

    return nothing
end

end
