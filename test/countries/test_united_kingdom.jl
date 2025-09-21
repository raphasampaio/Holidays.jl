module TestUnitedKingdom

using Dates
using Holidays
using Test

include("../util.jl")

@testset "UnitedKingdom" begin
    calendar = Holidays.UnitedKingdom()

    holidays = Date[
        Date(1970, 3, 27), # Good Friday
        Date(1970, 12, 25), # Christmas Day
        Date(1970, 12, 26), # Boxing Day
        Date(1970, 12, 28), # Boxing Day (observed)
        Date(1971, 4, 9), # Good Friday
        Date(1971, 5, 31), # Spring Bank Holiday
        Date(1971, 12, 25), # Christmas Day
        Date(1971, 12, 26), # Boxing Day
        Date(1971, 12, 27), # Christmas Day (observed)
        Date(1971, 12, 28), # Boxing Day (observed)
        Date(1972, 3, 31), # Good Friday
        Date(1972, 5, 29), # Spring Bank Holiday
        Date(1972, 12, 25), # Christmas Day
        Date(1972, 12, 26), # Boxing Day
        Date(1973, 4, 20), # Good Friday
        Date(1973, 5, 28), # Spring Bank Holiday
        Date(1973, 12, 25), # Christmas Day
        Date(1973, 12, 26), # Boxing Day
        Date(1974, 4, 12), # Good Friday
        Date(1974, 5, 27), # Spring Bank Holiday
        Date(1974, 12, 25), # Christmas Day
        Date(1974, 12, 26), # Boxing Day
        Date(1975, 1, 1), # New Year's Day
        Date(1975, 3, 28), # Good Friday
        Date(1975, 5, 26), # Spring Bank Holiday
        Date(1975, 12, 25), # Christmas Day
        Date(1975, 12, 26), # Boxing Day
        Date(1976, 1, 1), # New Year's Day
        Date(1976, 4, 16), # Good Friday
        Date(1976, 5, 31), # Spring Bank Holiday
        Date(1976, 12, 25), # Christmas Day
        Date(1976, 12, 26), # Boxing Day
        Date(1976, 12, 27), # Christmas Day (observed)
        Date(1976, 12, 28), # Boxing Day (observed)
        Date(1977, 1, 1), # New Year's Day
        Date(1977, 1, 3), # New Year's Day (observed)
        Date(1977, 4, 8), # Good Friday
        Date(1977, 5, 30), # Spring Bank Holiday
        Date(1977, 6, 7), # Silver Jubilee of Elizabeth II
        Date(1977, 12, 25), # Christmas Day
        Date(1977, 12, 26), # Boxing Day
        Date(1977, 12, 27), # Christmas Day (observed)
        Date(1978, 1, 1), # New Year's Day
        Date(1978, 1, 2), # New Year's Day (observed)
        Date(1978, 3, 24), # Good Friday
        Date(1978, 5, 1), # May Day
        Date(1978, 5, 29), # Spring Bank Holiday
        Date(1978, 12, 25), # Christmas Day
        Date(1978, 12, 26), # Boxing Day
        Date(1979, 1, 1), # New Year's Day
        Date(1979, 4, 13), # Good Friday
        Date(1979, 5, 7), # May Day
        Date(1979, 5, 28), # Spring Bank Holiday
        Date(1979, 12, 25), # Christmas Day
        Date(1979, 12, 26), # Boxing Day
        Date(1980, 1, 1), # New Year's Day
        Date(1980, 4, 4), # Good Friday
        Date(1980, 5, 5), # May Day
        Date(1980, 5, 26), # Spring Bank Holiday
        Date(1980, 12, 25), # Christmas Day
        Date(1980, 12, 26), # Boxing Day
        Date(1981, 1, 1), # New Year's Day
        Date(1981, 4, 17), # Good Friday
        Date(1981, 5, 4), # May Day
        Date(1981, 5, 25), # Spring Bank Holiday
        Date(1981, 7, 29), # Wedding of Charles and Diana
        Date(1981, 12, 25), # Christmas Day
        Date(1981, 12, 26), # Boxing Day
        Date(1981, 12, 28), # Boxing Day (observed)
        Date(1982, 1, 1), # New Year's Day
        Date(1982, 4, 9), # Good Friday
        Date(1982, 5, 3), # May Day
        Date(1982, 5, 31), # Spring Bank Holiday
        Date(1982, 12, 25), # Christmas Day
        Date(1982, 12, 26), # Boxing Day
        Date(1982, 12, 27), # Christmas Day (observed)
        Date(1982, 12, 28), # Boxing Day (observed)
        Date(1983, 1, 1), # New Year's Day
        Date(1983, 1, 3), # New Year's Day (observed)
        Date(1983, 4, 1), # Good Friday
        Date(1983, 5, 2), # May Day
        Date(1983, 5, 30), # Spring Bank Holiday
        Date(1983, 12, 25), # Christmas Day
        Date(1983, 12, 26), # Boxing Day
        Date(1983, 12, 27), # Christmas Day (observed)
        Date(1984, 1, 1), # New Year's Day
        Date(1984, 1, 2), # New Year's Day (observed)
        Date(1984, 4, 20), # Good Friday
        Date(1984, 5, 7), # May Day
        Date(1984, 5, 28), # Spring Bank Holiday
        Date(1984, 12, 25), # Christmas Day
        Date(1984, 12, 26), # Boxing Day
        Date(1985, 1, 1), # New Year's Day
        Date(1985, 4, 5), # Good Friday
        Date(1985, 5, 6), # May Day
        Date(1985, 5, 27), # Spring Bank Holiday
        Date(1985, 12, 25), # Christmas Day
        Date(1985, 12, 26), # Boxing Day
        Date(1986, 1, 1), # New Year's Day
        Date(1986, 3, 28), # Good Friday
        Date(1986, 5, 5), # May Day
        Date(1986, 5, 26), # Spring Bank Holiday
        Date(1986, 12, 25), # Christmas Day
        Date(1986, 12, 26), # Boxing Day
        Date(1987, 1, 1), # New Year's Day
        Date(1987, 4, 17), # Good Friday
        Date(1987, 5, 4), # May Day
        Date(1987, 5, 25), # Spring Bank Holiday
        Date(1987, 12, 25), # Christmas Day
        Date(1987, 12, 26), # Boxing Day
        Date(1987, 12, 28), # Boxing Day (observed)
        Date(1988, 1, 1), # New Year's Day
        Date(1988, 4, 1), # Good Friday
        Date(1988, 5, 2), # May Day
        Date(1988, 5, 30), # Spring Bank Holiday
        Date(1988, 12, 25), # Christmas Day
        Date(1988, 12, 26), # Boxing Day
        Date(1988, 12, 27), # Christmas Day (observed)
        Date(1989, 1, 1), # New Year's Day
        Date(1989, 1, 2), # New Year's Day (observed)
        Date(1989, 3, 24), # Good Friday
        Date(1989, 5, 1), # May Day
        Date(1989, 5, 29), # Spring Bank Holiday
        Date(1989, 12, 25), # Christmas Day
        Date(1989, 12, 26), # Boxing Day
        Date(1990, 1, 1), # New Year's Day
        Date(1990, 4, 13), # Good Friday
        Date(1990, 5, 7), # May Day
        Date(1990, 5, 28), # Spring Bank Holiday
        Date(1990, 12, 25), # Christmas Day
        Date(1990, 12, 26), # Boxing Day
        Date(1991, 1, 1), # New Year's Day
        Date(1991, 3, 29), # Good Friday
        Date(1991, 5, 6), # May Day
        Date(1991, 5, 27), # Spring Bank Holiday
        Date(1991, 12, 25), # Christmas Day
        Date(1991, 12, 26), # Boxing Day
        Date(1992, 1, 1), # New Year's Day
        Date(1992, 4, 17), # Good Friday
        Date(1992, 5, 4), # May Day
        Date(1992, 5, 25), # Spring Bank Holiday
        Date(1992, 12, 25), # Christmas Day
        Date(1992, 12, 26), # Boxing Day
        Date(1992, 12, 28), # Boxing Day (observed)
        Date(1993, 1, 1), # New Year's Day
        Date(1993, 4, 9), # Good Friday
        Date(1993, 5, 3), # May Day
        Date(1993, 5, 31), # Spring Bank Holiday
        Date(1993, 12, 25), # Christmas Day
        Date(1993, 12, 26), # Boxing Day
        Date(1993, 12, 27), # Christmas Day (observed)
        Date(1993, 12, 28), # Boxing Day (observed)
        Date(1994, 1, 1), # New Year's Day
        Date(1994, 1, 3), # New Year's Day (observed)
        Date(1994, 4, 1), # Good Friday
        Date(1994, 5, 2), # May Day
        Date(1994, 5, 30), # Spring Bank Holiday
        Date(1994, 12, 25), # Christmas Day
        Date(1994, 12, 26), # Boxing Day
        Date(1994, 12, 27), # Christmas Day (observed)
        Date(1995, 1, 1), # New Year's Day
        Date(1995, 1, 2), # New Year's Day (observed)
        Date(1995, 4, 14), # Good Friday
        Date(1995, 5, 8), # May Day
        Date(1995, 5, 29), # Spring Bank Holiday
        Date(1995, 12, 25), # Christmas Day
        Date(1995, 12, 26), # Boxing Day
        Date(1996, 1, 1), # New Year's Day
        Date(1996, 4, 5), # Good Friday
        Date(1996, 5, 6), # May Day
        Date(1996, 5, 27), # Spring Bank Holiday
        Date(1996, 12, 25), # Christmas Day
        Date(1996, 12, 26), # Boxing Day
        Date(1997, 1, 1), # New Year's Day
        Date(1997, 3, 28), # Good Friday
        Date(1997, 5, 5), # May Day
        Date(1997, 5, 26), # Spring Bank Holiday
        Date(1997, 12, 25), # Christmas Day
        Date(1997, 12, 26), # Boxing Day
        Date(1998, 1, 1), # New Year's Day
        Date(1998, 4, 10), # Good Friday
        Date(1998, 5, 4), # May Day
        Date(1998, 5, 25), # Spring Bank Holiday
        Date(1998, 12, 25), # Christmas Day
        Date(1998, 12, 26), # Boxing Day
        Date(1998, 12, 28), # Boxing Day (observed)
        Date(1999, 1, 1), # New Year's Day
        Date(1999, 4, 2), # Good Friday
        Date(1999, 5, 3), # May Day
        Date(1999, 5, 31), # Spring Bank Holiday
        Date(1999, 12, 25), # Christmas Day
        Date(1999, 12, 26), # Boxing Day
        Date(1999, 12, 27), # Christmas Day (observed)
        Date(1999, 12, 28), # Boxing Day (observed)
        Date(1999, 12, 31), # Millennium Celebrations
        Date(2000, 1, 1), # New Year's Day
        Date(2000, 1, 3), # New Year's Day (observed)
        Date(2000, 4, 21), # Good Friday
        Date(2000, 5, 1), # May Day
        Date(2000, 5, 29), # Spring Bank Holiday
        Date(2000, 12, 25), # Christmas Day
        Date(2000, 12, 26), # Boxing Day
        Date(2001, 1, 1), # New Year's Day
        Date(2001, 4, 13), # Good Friday
        Date(2001, 5, 7), # May Day
        Date(2001, 5, 28), # Spring Bank Holiday
        Date(2001, 12, 25), # Christmas Day
        Date(2001, 12, 26), # Boxing Day
        Date(2002, 1, 1), # New Year's Day
        Date(2002, 3, 29), # Good Friday
        Date(2002, 5, 6), # May Day
        Date(2002, 6, 3), # Golden Jubilee of Elizabeth II
        Date(2002, 6, 4), # Spring Bank Holiday
        Date(2002, 12, 25), # Christmas Day
        Date(2002, 12, 26), # Boxing Day
        Date(2003, 1, 1), # New Year's Day
        Date(2003, 4, 18), # Good Friday
        Date(2003, 5, 5), # May Day
        Date(2003, 5, 26), # Spring Bank Holiday
        Date(2003, 12, 25), # Christmas Day
        Date(2003, 12, 26), # Boxing Day
        Date(2004, 1, 1), # New Year's Day
        Date(2004, 4, 9), # Good Friday
        Date(2004, 5, 3), # May Day
        Date(2004, 5, 31), # Spring Bank Holiday
        Date(2004, 12, 25), # Christmas Day
        Date(2004, 12, 26), # Boxing Day
        Date(2004, 12, 27), # Christmas Day (observed)
        Date(2004, 12, 28), # Boxing Day (observed)
        Date(2005, 1, 1), # New Year's Day
        Date(2005, 1, 3), # New Year's Day (observed)
        Date(2005, 3, 25), # Good Friday
        Date(2005, 5, 2), # May Day
        Date(2005, 5, 30), # Spring Bank Holiday
        Date(2005, 12, 25), # Christmas Day
        Date(2005, 12, 26), # Boxing Day
        Date(2005, 12, 27), # Christmas Day (observed)
        Date(2006, 1, 1), # New Year's Day
        Date(2006, 1, 2), # New Year's Day (observed)
        Date(2006, 4, 14), # Good Friday
        Date(2006, 5, 1), # May Day
        Date(2006, 5, 29), # Spring Bank Holiday
        Date(2006, 12, 25), # Christmas Day
        Date(2006, 12, 26), # Boxing Day
        Date(2007, 1, 1), # New Year's Day
        Date(2007, 4, 6), # Good Friday
        Date(2007, 5, 7), # May Day
        Date(2007, 5, 28), # Spring Bank Holiday
        Date(2007, 12, 25), # Christmas Day
        Date(2007, 12, 26), # Boxing Day
        Date(2008, 1, 1), # New Year's Day
        Date(2008, 3, 21), # Good Friday
        Date(2008, 5, 5), # May Day
        Date(2008, 5, 26), # Spring Bank Holiday
        Date(2008, 12, 25), # Christmas Day
        Date(2008, 12, 26), # Boxing Day
        Date(2009, 1, 1), # New Year's Day
        Date(2009, 4, 10), # Good Friday
        Date(2009, 5, 4), # May Day
        Date(2009, 5, 25), # Spring Bank Holiday
        Date(2009, 12, 25), # Christmas Day
        Date(2009, 12, 26), # Boxing Day
        Date(2009, 12, 28), # Boxing Day (observed)
        Date(2010, 1, 1), # New Year's Day
        Date(2010, 4, 2), # Good Friday
        Date(2010, 5, 3), # May Day
        Date(2010, 5, 31), # Spring Bank Holiday
        Date(2010, 12, 25), # Christmas Day
        Date(2010, 12, 26), # Boxing Day
        Date(2010, 12, 27), # Christmas Day (observed)
        Date(2010, 12, 28), # Boxing Day (observed)
        Date(2011, 1, 1), # New Year's Day
        Date(2011, 1, 3), # New Year's Day (observed)
        Date(2011, 4, 22), # Good Friday
        Date(2011, 4, 29), # Wedding of William and Catherine
        Date(2011, 5, 2), # May Day
        Date(2011, 5, 30), # Spring Bank Holiday
        Date(2011, 12, 25), # Christmas Day
        Date(2011, 12, 26), # Boxing Day
        Date(2011, 12, 27), # Christmas Day (observed)
        Date(2012, 1, 1), # New Year's Day
        Date(2012, 1, 2), # New Year's Day (observed)
        Date(2012, 4, 6), # Good Friday
        Date(2012, 5, 7), # May Day
        Date(2012, 6, 4), # Spring Bank Holiday
        Date(2012, 6, 5), # Diamond Jubilee of Elizabeth II
        Date(2012, 12, 25), # Christmas Day
        Date(2012, 12, 26), # Boxing Day
        Date(2013, 1, 1), # New Year's Day
        Date(2013, 3, 29), # Good Friday
        Date(2013, 5, 6), # May Day
        Date(2013, 5, 27), # Spring Bank Holiday
        Date(2013, 12, 25), # Christmas Day
        Date(2013, 12, 26), # Boxing Day
        Date(2014, 1, 1), # New Year's Day
        Date(2014, 4, 18), # Good Friday
        Date(2014, 5, 5), # May Day
        Date(2014, 5, 26), # Spring Bank Holiday
        Date(2014, 12, 25), # Christmas Day
        Date(2014, 12, 26), # Boxing Day
        Date(2015, 1, 1), # New Year's Day
        Date(2015, 4, 3), # Good Friday
        Date(2015, 5, 4), # May Day
        Date(2015, 5, 25), # Spring Bank Holiday
        Date(2015, 12, 25), # Christmas Day
        Date(2015, 12, 26), # Boxing Day
        Date(2015, 12, 28), # Boxing Day (observed)
        Date(2016, 1, 1), # New Year's Day
        Date(2016, 3, 25), # Good Friday
        Date(2016, 5, 2), # May Day
        Date(2016, 5, 30), # Spring Bank Holiday
        Date(2016, 12, 25), # Christmas Day
        Date(2016, 12, 26), # Boxing Day
        Date(2016, 12, 27), # Christmas Day (observed)
        Date(2017, 1, 1), # New Year's Day
        Date(2017, 1, 2), # New Year's Day (observed)
        Date(2017, 4, 14), # Good Friday
        Date(2017, 5, 1), # May Day
        Date(2017, 5, 29), # Spring Bank Holiday
        Date(2017, 12, 25), # Christmas Day
        Date(2017, 12, 26), # Boxing Day
        Date(2018, 1, 1), # New Year's Day
        Date(2018, 3, 30), # Good Friday
        Date(2018, 5, 7), # May Day
        Date(2018, 5, 28), # Spring Bank Holiday
        Date(2018, 12, 25), # Christmas Day
        Date(2018, 12, 26), # Boxing Day
        Date(2019, 1, 1), # New Year's Day
        Date(2019, 4, 19), # Good Friday
        Date(2019, 5, 6), # May Day
        Date(2019, 5, 27), # Spring Bank Holiday
        Date(2019, 12, 25), # Christmas Day
        Date(2019, 12, 26), # Boxing Day
        Date(2020, 1, 1), # New Year's Day
        Date(2020, 4, 10), # Good Friday
        Date(2020, 5, 8), # May Day
        Date(2020, 5, 25), # Spring Bank Holiday
        Date(2020, 12, 25), # Christmas Day
        Date(2020, 12, 26), # Boxing Day
        Date(2020, 12, 28), # Boxing Day (observed)
        Date(2021, 1, 1), # New Year's Day
        Date(2021, 4, 2), # Good Friday
        Date(2021, 5, 3), # May Day
        Date(2021, 5, 31), # Spring Bank Holiday
        Date(2021, 12, 25), # Christmas Day
        Date(2021, 12, 26), # Boxing Day
        Date(2021, 12, 27), # Christmas Day (observed)
        Date(2021, 12, 28), # Boxing Day (observed)
        Date(2022, 1, 1), # New Year's Day
        Date(2022, 1, 3), # New Year's Day (observed)
        Date(2022, 4, 15), # Good Friday
        Date(2022, 5, 2), # May Day
        Date(2022, 6, 2), # Spring Bank Holiday
        Date(2022, 6, 3), # Platinum Jubilee of Elizabeth II
        Date(2022, 9, 19), # State Funeral of Queen Elizabeth II
        Date(2022, 12, 25), # Christmas Day
        Date(2022, 12, 26), # Boxing Day
        Date(2022, 12, 27), # Christmas Day (observed)
        Date(2023, 1, 1), # New Year's Day
        Date(2023, 1, 2), # New Year's Day (observed)
        Date(2023, 4, 7), # Good Friday
        Date(2023, 5, 1), # May Day
        Date(2023, 5, 8), # Coronation of Charles III
        Date(2023, 5, 29), # Spring Bank Holiday
        Date(2023, 12, 25), # Christmas Day
        Date(2023, 12, 26), # Boxing Day
        Date(2024, 1, 1), # New Year's Day
        Date(2024, 3, 29), # Good Friday
        Date(2024, 5, 6), # May Day
        Date(2024, 5, 27), # Spring Bank Holiday
        Date(2024, 12, 25), # Christmas Day
        Date(2024, 12, 26), # Boxing Day
        Date(2025, 1, 1), # New Year's Day
        Date(2025, 4, 18), # Good Friday
        Date(2025, 5, 5), # May Day
        Date(2025, 5, 26), # Spring Bank Holiday
        Date(2025, 12, 25), # Christmas Day
        Date(2025, 12, 26), # Boxing Day
        Date(2026, 1, 1), # New Year's Day
        Date(2026, 4, 3), # Good Friday
        Date(2026, 5, 4), # May Day
        Date(2026, 5, 25), # Spring Bank Holiday
        Date(2026, 12, 25), # Christmas Day
        Date(2026, 12, 26), # Boxing Day
        Date(2026, 12, 28), # Boxing Day (observed)
        Date(2027, 1, 1), # New Year's Day
        Date(2027, 3, 26), # Good Friday
        Date(2027, 5, 3), # May Day
        Date(2027, 5, 31), # Spring Bank Holiday
        Date(2027, 12, 25), # Christmas Day
        Date(2027, 12, 26), # Boxing Day
        Date(2027, 12, 27), # Christmas Day (observed)
        Date(2027, 12, 28), # Boxing Day (observed)
        Date(2028, 1, 1), # New Year's Day
        Date(2028, 1, 3), # New Year's Day (observed)
        Date(2028, 4, 14), # Good Friday
        Date(2028, 5, 1), # May Day
        Date(2028, 5, 29), # Spring Bank Holiday
        Date(2028, 12, 25), # Christmas Day
        Date(2028, 12, 26), # Boxing Day
        Date(2029, 1, 1), # New Year's Day
        Date(2029, 3, 30), # Good Friday
        Date(2029, 5, 7), # May Day
        Date(2029, 5, 28), # Spring Bank Holiday
        Date(2029, 12, 25), # Christmas Day
        Date(2029, 12, 26), # Boxing Day
        Date(2030, 1, 1), # New Year's Day
        Date(2030, 4, 19), # Good Friday
        Date(2030, 5, 6), # May Day
        Date(2030, 5, 27), # Spring Bank Holiday
        Date(2030, 12, 25), # Christmas Day
        Date(2030, 12, 26), # Boxing Day
    ]

    test_holidays(calendar, holidays)

    return nothing
end

end
