module TestMexico

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Mexico" begin
    calendar = Holidays.Mexico()

    holidays = Date[
        Date(1970, 1, 1), # New Year's Day
        Date(1970, 2, 5), # Constitution Day
        Date(1970, 3, 21), # Benito Juárez's birthday
        Date(1970, 5, 1), # Labor Day
        Date(1970, 9, 16), # Independence Day
        Date(1970, 11, 20), # Revolution Day
        Date(1970, 12, 1), # Change of Federal Government
        Date(1970, 12, 25), # Christmas Day
        Date(1971, 1, 1), # New Year's Day
        Date(1971, 2, 5), # Constitution Day
        Date(1971, 3, 21), # Benito Juárez's birthday
        Date(1971, 5, 1), # Labor Day
        Date(1971, 9, 16), # Independence Day
        Date(1971, 11, 20), # Revolution Day
        Date(1971, 12, 25), # Christmas Day
        Date(1972, 1, 1), # New Year's Day
        Date(1972, 2, 5), # Constitution Day
        Date(1972, 3, 21), # Benito Juárez's birthday
        Date(1972, 5, 1), # Labor Day
        Date(1972, 9, 16), # Independence Day
        Date(1972, 11, 20), # Revolution Day
        Date(1972, 12, 25), # Christmas Day
        Date(1973, 1, 1), # New Year's Day
        Date(1973, 2, 5), # Constitution Day
        Date(1973, 3, 21), # Benito Juárez's birthday
        Date(1973, 5, 1), # Labor Day
        Date(1973, 9, 16), # Independence Day
        Date(1973, 11, 20), # Revolution Day
        Date(1973, 12, 25), # Christmas Day
        Date(1974, 1, 1), # New Year's Day
        Date(1974, 2, 5), # Constitution Day
        Date(1974, 3, 21), # Benito Juárez's birthday
        Date(1974, 5, 1), # Labor Day
        Date(1974, 9, 16), # Independence Day
        Date(1974, 11, 20), # Revolution Day
        Date(1974, 12, 25), # Christmas Day
        Date(1975, 1, 1), # New Year's Day
        Date(1975, 2, 5), # Constitution Day
        Date(1975, 3, 21), # Benito Juárez's birthday
        Date(1975, 5, 1), # Labor Day
        Date(1975, 9, 16), # Independence Day
        Date(1975, 11, 20), # Revolution Day
        Date(1975, 12, 25), # Christmas Day
        Date(1976, 1, 1), # New Year's Day
        Date(1976, 2, 5), # Constitution Day
        Date(1976, 3, 21), # Benito Juárez's birthday
        Date(1976, 5, 1), # Labor Day
        Date(1976, 9, 16), # Independence Day
        Date(1976, 11, 20), # Revolution Day
        Date(1976, 12, 1), # Change of Federal Government
        Date(1976, 12, 25), # Christmas Day
        Date(1977, 1, 1), # New Year's Day
        Date(1977, 2, 5), # Constitution Day
        Date(1977, 3, 21), # Benito Juárez's birthday
        Date(1977, 5, 1), # Labor Day
        Date(1977, 9, 16), # Independence Day
        Date(1977, 11, 20), # Revolution Day
        Date(1977, 12, 25), # Christmas Day
        Date(1978, 1, 1), # New Year's Day
        Date(1978, 2, 5), # Constitution Day
        Date(1978, 3, 21), # Benito Juárez's birthday
        Date(1978, 5, 1), # Labor Day
        Date(1978, 9, 16), # Independence Day
        Date(1978, 11, 20), # Revolution Day
        Date(1978, 12, 25), # Christmas Day
        Date(1979, 1, 1), # New Year's Day
        Date(1979, 2, 5), # Constitution Day
        Date(1979, 3, 21), # Benito Juárez's birthday
        Date(1979, 5, 1), # Labor Day
        Date(1979, 9, 16), # Independence Day
        Date(1979, 11, 20), # Revolution Day
        Date(1979, 12, 25), # Christmas Day
        Date(1980, 1, 1), # New Year's Day
        Date(1980, 2, 5), # Constitution Day
        Date(1980, 3, 21), # Benito Juárez's birthday
        Date(1980, 5, 1), # Labor Day
        Date(1980, 9, 16), # Independence Day
        Date(1980, 11, 20), # Revolution Day
        Date(1980, 12, 25), # Christmas Day
        Date(1981, 1, 1), # New Year's Day
        Date(1981, 2, 5), # Constitution Day
        Date(1981, 3, 21), # Benito Juárez's birthday
        Date(1981, 5, 1), # Labor Day
        Date(1981, 9, 16), # Independence Day
        Date(1981, 11, 20), # Revolution Day
        Date(1981, 12, 25), # Christmas Day
        Date(1982, 1, 1), # New Year's Day
        Date(1982, 2, 5), # Constitution Day
        Date(1982, 3, 21), # Benito Juárez's birthday
        Date(1982, 5, 1), # Labor Day
        Date(1982, 9, 16), # Independence Day
        Date(1982, 11, 20), # Revolution Day
        Date(1982, 12, 1), # Change of Federal Government
        Date(1982, 12, 25), # Christmas Day
        Date(1983, 1, 1), # New Year's Day
        Date(1983, 2, 5), # Constitution Day
        Date(1983, 3, 21), # Benito Juárez's birthday
        Date(1983, 5, 1), # Labor Day
        Date(1983, 9, 16), # Independence Day
        Date(1983, 11, 20), # Revolution Day
        Date(1983, 12, 25), # Christmas Day
        Date(1984, 1, 1), # New Year's Day
        Date(1984, 2, 5), # Constitution Day
        Date(1984, 3, 21), # Benito Juárez's birthday
        Date(1984, 5, 1), # Labor Day
        Date(1984, 9, 16), # Independence Day
        Date(1984, 11, 20), # Revolution Day
        Date(1984, 12, 25), # Christmas Day
        Date(1985, 1, 1), # New Year's Day
        Date(1985, 2, 5), # Constitution Day
        Date(1985, 3, 21), # Benito Juárez's birthday
        Date(1985, 5, 1), # Labor Day
        Date(1985, 9, 16), # Independence Day
        Date(1985, 11, 20), # Revolution Day
        Date(1985, 12, 25), # Christmas Day
        Date(1986, 1, 1), # New Year's Day
        Date(1986, 2, 5), # Constitution Day
        Date(1986, 3, 21), # Benito Juárez's birthday
        Date(1986, 5, 1), # Labor Day
        Date(1986, 9, 16), # Independence Day
        Date(1986, 11, 20), # Revolution Day
        Date(1986, 12, 25), # Christmas Day
        Date(1987, 1, 1), # New Year's Day
        Date(1987, 2, 5), # Constitution Day
        Date(1987, 3, 21), # Benito Juárez's birthday
        Date(1987, 5, 1), # Labor Day
        Date(1987, 9, 16), # Independence Day
        Date(1987, 11, 20), # Revolution Day
        Date(1987, 12, 25), # Christmas Day
        Date(1988, 1, 1), # New Year's Day
        Date(1988, 2, 5), # Constitution Day
        Date(1988, 3, 21), # Benito Juárez's birthday
        Date(1988, 5, 1), # Labor Day
        Date(1988, 9, 16), # Independence Day
        Date(1988, 11, 20), # Revolution Day
        Date(1988, 12, 1), # Change of Federal Government
        Date(1988, 12, 25), # Christmas Day
        Date(1989, 1, 1), # New Year's Day
        Date(1989, 2, 5), # Constitution Day
        Date(1989, 3, 21), # Benito Juárez's birthday
        Date(1989, 5, 1), # Labor Day
        Date(1989, 9, 16), # Independence Day
        Date(1989, 11, 20), # Revolution Day
        Date(1989, 12, 25), # Christmas Day
        Date(1990, 1, 1), # New Year's Day
        Date(1990, 2, 5), # Constitution Day
        Date(1990, 3, 21), # Benito Juárez's birthday
        Date(1990, 5, 1), # Labor Day
        Date(1990, 9, 16), # Independence Day
        Date(1990, 11, 20), # Revolution Day
        Date(1990, 12, 25), # Christmas Day
        Date(1991, 1, 1), # New Year's Day
        Date(1991, 2, 5), # Constitution Day
        Date(1991, 3, 21), # Benito Juárez's birthday
        Date(1991, 5, 1), # Labor Day
        Date(1991, 9, 16), # Independence Day
        Date(1991, 11, 20), # Revolution Day
        Date(1991, 12, 25), # Christmas Day
        Date(1992, 1, 1), # New Year's Day
        Date(1992, 2, 5), # Constitution Day
        Date(1992, 3, 21), # Benito Juárez's birthday
        Date(1992, 5, 1), # Labor Day
        Date(1992, 9, 16), # Independence Day
        Date(1992, 11, 20), # Revolution Day
        Date(1992, 12, 25), # Christmas Day
        Date(1993, 1, 1), # New Year's Day
        Date(1993, 2, 5), # Constitution Day
        Date(1993, 3, 21), # Benito Juárez's birthday
        Date(1993, 5, 1), # Labor Day
        Date(1993, 9, 16), # Independence Day
        Date(1993, 11, 20), # Revolution Day
        Date(1993, 12, 25), # Christmas Day
        Date(1994, 1, 1), # New Year's Day
        Date(1994, 2, 5), # Constitution Day
        Date(1994, 3, 21), # Benito Juárez's birthday
        Date(1994, 5, 1), # Labor Day
        Date(1994, 9, 16), # Independence Day
        Date(1994, 11, 20), # Revolution Day
        Date(1994, 12, 1), # Change of Federal Government
        Date(1994, 12, 25), # Christmas Day
        Date(1995, 1, 1), # New Year's Day
        Date(1995, 2, 5), # Constitution Day
        Date(1995, 3, 21), # Benito Juárez's birthday
        Date(1995, 5, 1), # Labor Day
        Date(1995, 9, 16), # Independence Day
        Date(1995, 11, 20), # Revolution Day
        Date(1995, 12, 25), # Christmas Day
        Date(1996, 1, 1), # New Year's Day
        Date(1996, 2, 5), # Constitution Day
        Date(1996, 3, 21), # Benito Juárez's birthday
        Date(1996, 5, 1), # Labor Day
        Date(1996, 9, 16), # Independence Day
        Date(1996, 11, 20), # Revolution Day
        Date(1996, 12, 25), # Christmas Day
        Date(1997, 1, 1), # New Year's Day
        Date(1997, 2, 5), # Constitution Day
        Date(1997, 3, 21), # Benito Juárez's birthday
        Date(1997, 5, 1), # Labor Day
        Date(1997, 9, 16), # Independence Day
        Date(1997, 11, 20), # Revolution Day
        Date(1997, 12, 25), # Christmas Day
        Date(1998, 1, 1), # New Year's Day
        Date(1998, 2, 5), # Constitution Day
        Date(1998, 3, 21), # Benito Juárez's birthday
        Date(1998, 5, 1), # Labor Day
        Date(1998, 9, 16), # Independence Day
        Date(1998, 11, 20), # Revolution Day
        Date(1998, 12, 25), # Christmas Day
        Date(1999, 1, 1), # New Year's Day
        Date(1999, 2, 5), # Constitution Day
        Date(1999, 3, 21), # Benito Juárez's birthday
        Date(1999, 5, 1), # Labor Day
        Date(1999, 9, 16), # Independence Day
        Date(1999, 11, 20), # Revolution Day
        Date(1999, 12, 25), # Christmas Day
        Date(2000, 1, 1), # New Year's Day
        Date(2000, 2, 5), # Constitution Day
        Date(2000, 3, 21), # Benito Juárez's birthday
        Date(2000, 5, 1), # Labor Day
        Date(2000, 9, 16), # Independence Day
        Date(2000, 11, 20), # Revolution Day
        Date(2000, 12, 1), # Change of Federal Government
        Date(2000, 12, 25), # Christmas Day
        Date(2001, 1, 1), # New Year's Day
        Date(2001, 2, 5), # Constitution Day
        Date(2001, 3, 21), # Benito Juárez's birthday
        Date(2001, 5, 1), # Labor Day
        Date(2001, 9, 16), # Independence Day
        Date(2001, 11, 20), # Revolution Day
        Date(2001, 12, 25), # Christmas Day
        Date(2002, 1, 1), # New Year's Day
        Date(2002, 2, 5), # Constitution Day
        Date(2002, 3, 21), # Benito Juárez's birthday
        Date(2002, 5, 1), # Labor Day
        Date(2002, 9, 16), # Independence Day
        Date(2002, 11, 20), # Revolution Day
        Date(2002, 12, 25), # Christmas Day
        Date(2003, 1, 1), # New Year's Day
        Date(2003, 2, 5), # Constitution Day
        Date(2003, 3, 21), # Benito Juárez's birthday
        Date(2003, 5, 1), # Labor Day
        Date(2003, 9, 16), # Independence Day
        Date(2003, 11, 20), # Revolution Day
        Date(2003, 12, 25), # Christmas Day
        Date(2004, 1, 1), # New Year's Day
        Date(2004, 2, 5), # Constitution Day
        Date(2004, 3, 21), # Benito Juárez's birthday
        Date(2004, 5, 1), # Labor Day
        Date(2004, 9, 16), # Independence Day
        Date(2004, 11, 20), # Revolution Day
        Date(2004, 12, 25), # Christmas Day
        Date(2005, 1, 1), # New Year's Day
        Date(2005, 2, 5), # Constitution Day
        Date(2005, 3, 21), # Benito Juárez's birthday
        Date(2005, 5, 1), # Labor Day
        Date(2005, 9, 16), # Independence Day
        Date(2005, 11, 20), # Revolution Day
        Date(2005, 12, 25), # Christmas Day
        Date(2006, 1, 1), # New Year's Day
        Date(2006, 2, 6), # Constitution Day
        Date(2006, 3, 21), # Benito Juárez's birthday
        Date(2006, 5, 1), # Labor Day
        Date(2006, 9, 16), # Independence Day
        Date(2006, 11, 20), # Revolution Day
        Date(2006, 12, 1), # Change of Federal Government
        Date(2006, 12, 25), # Christmas Day
        Date(2007, 1, 1), # New Year's Day
        Date(2007, 2, 5), # Constitution Day
        Date(2007, 3, 19), # Benito Juárez's birthday
        Date(2007, 5, 1), # Labor Day
        Date(2007, 9, 16), # Independence Day
        Date(2007, 11, 19), # Revolution Day
        Date(2007, 12, 25), # Christmas Day
        Date(2008, 1, 1), # New Year's Day
        Date(2008, 2, 4), # Constitution Day
        Date(2008, 3, 17), # Benito Juárez's birthday
        Date(2008, 5, 1), # Labor Day
        Date(2008, 9, 16), # Independence Day
        Date(2008, 11, 17), # Revolution Day
        Date(2008, 12, 25), # Christmas Day
        Date(2009, 1, 1), # New Year's Day
        Date(2009, 2, 2), # Constitution Day
        Date(2009, 3, 16), # Benito Juárez's birthday
        Date(2009, 5, 1), # Labor Day
        Date(2009, 9, 16), # Independence Day
        Date(2009, 11, 16), # Revolution Day
        Date(2009, 12, 25), # Christmas Day
        Date(2010, 1, 1), # New Year's Day
        Date(2010, 2, 1), # Constitution Day
        Date(2010, 3, 15), # Benito Juárez's birthday
        Date(2010, 5, 1), # Labor Day
        Date(2010, 9, 16), # Independence Day
        Date(2010, 11, 15), # Revolution Day
        Date(2010, 12, 25), # Christmas Day
        Date(2011, 1, 1), # New Year's Day
        Date(2011, 2, 7), # Constitution Day
        Date(2011, 3, 21), # Benito Juárez's birthday
        Date(2011, 5, 1), # Labor Day
        Date(2011, 9, 16), # Independence Day
        Date(2011, 11, 21), # Revolution Day
        Date(2011, 12, 25), # Christmas Day
        Date(2012, 1, 1), # New Year's Day
        Date(2012, 2, 6), # Constitution Day
        Date(2012, 3, 19), # Benito Juárez's birthday
        Date(2012, 5, 1), # Labor Day
        Date(2012, 9, 16), # Independence Day
        Date(2012, 11, 19), # Revolution Day
        Date(2012, 12, 1), # Change of Federal Government
        Date(2012, 12, 25), # Christmas Day
        Date(2013, 1, 1), # New Year's Day
        Date(2013, 2, 4), # Constitution Day
        Date(2013, 3, 18), # Benito Juárez's birthday
        Date(2013, 5, 1), # Labor Day
        Date(2013, 9, 16), # Independence Day
        Date(2013, 11, 18), # Revolution Day
        Date(2013, 12, 25), # Christmas Day
        Date(2014, 1, 1), # New Year's Day
        Date(2014, 2, 3), # Constitution Day
        Date(2014, 3, 17), # Benito Juárez's birthday
        Date(2014, 5, 1), # Labor Day
        Date(2014, 9, 16), # Independence Day
        Date(2014, 11, 17), # Revolution Day
        Date(2014, 12, 25), # Christmas Day
        Date(2015, 1, 1), # New Year's Day
        Date(2015, 2, 2), # Constitution Day
        Date(2015, 3, 16), # Benito Juárez's birthday
        Date(2015, 5, 1), # Labor Day
        Date(2015, 9, 16), # Independence Day
        Date(2015, 11, 16), # Revolution Day
        Date(2015, 12, 25), # Christmas Day
        Date(2016, 1, 1), # New Year's Day
        Date(2016, 2, 1), # Constitution Day
        Date(2016, 3, 21), # Benito Juárez's birthday
        Date(2016, 5, 1), # Labor Day
        Date(2016, 9, 16), # Independence Day
        Date(2016, 11, 21), # Revolution Day
        Date(2016, 12, 25), # Christmas Day
        Date(2017, 1, 1), # New Year's Day
        Date(2017, 2, 6), # Constitution Day
        Date(2017, 3, 20), # Benito Juárez's birthday
        Date(2017, 5, 1), # Labor Day
        Date(2017, 9, 16), # Independence Day
        Date(2017, 11, 20), # Revolution Day
        Date(2017, 12, 25), # Christmas Day
        Date(2018, 1, 1), # New Year's Day
        Date(2018, 2, 5), # Constitution Day
        Date(2018, 3, 19), # Benito Juárez's birthday
        Date(2018, 5, 1), # Labor Day
        Date(2018, 9, 16), # Independence Day
        Date(2018, 11, 19), # Revolution Day
        Date(2018, 12, 1), # Change of Federal Government
        Date(2018, 12, 25), # Christmas Day
        Date(2019, 1, 1), # New Year's Day
        Date(2019, 2, 4), # Constitution Day
        Date(2019, 3, 18), # Benito Juárez's birthday
        Date(2019, 5, 1), # Labor Day
        Date(2019, 9, 16), # Independence Day
        Date(2019, 11, 18), # Revolution Day
        Date(2019, 12, 25), # Christmas Day
        Date(2020, 1, 1), # New Year's Day
        Date(2020, 2, 3), # Constitution Day
        Date(2020, 3, 16), # Benito Juárez's birthday
        Date(2020, 5, 1), # Labor Day
        Date(2020, 9, 16), # Independence Day
        Date(2020, 11, 16), # Revolution Day
        Date(2020, 12, 25), # Christmas Day
        Date(2021, 1, 1), # New Year's Day
        Date(2021, 2, 1), # Constitution Day
        Date(2021, 3, 15), # Benito Juárez's birthday
        Date(2021, 5, 1), # Labor Day
        Date(2021, 9, 16), # Independence Day
        Date(2021, 11, 15), # Revolution Day
        Date(2021, 12, 25), # Christmas Day
        Date(2022, 1, 1), # New Year's Day
        Date(2022, 2, 7), # Constitution Day
        Date(2022, 3, 21), # Benito Juárez's birthday
        Date(2022, 5, 1), # Labor Day
        Date(2022, 9, 16), # Independence Day
        Date(2022, 11, 21), # Revolution Day
        Date(2022, 12, 25), # Christmas Day
        Date(2023, 1, 1), # New Year's Day
        Date(2023, 2, 6), # Constitution Day
        Date(2023, 3, 20), # Benito Juárez's birthday
        Date(2023, 5, 1), # Labor Day
        Date(2023, 9, 16), # Independence Day
        Date(2023, 11, 20), # Revolution Day
        Date(2023, 12, 25), # Christmas Day
        Date(2024, 1, 1), # New Year's Day
        Date(2024, 2, 5), # Constitution Day
        Date(2024, 3, 18), # Benito Juárez's birthday
        Date(2024, 5, 1), # Labor Day
        Date(2024, 9, 16), # Independence Day
        Date(2024, 10, 1), # Change of Federal Government
        Date(2024, 11, 18), # Revolution Day
        Date(2024, 12, 25), # Christmas Day
        Date(2025, 1, 1), # New Year's Day
        Date(2025, 2, 3), # Constitution Day
        Date(2025, 3, 17), # Benito Juárez's birthday
        Date(2025, 5, 1), # Labor Day
        Date(2025, 9, 16), # Independence Day
        Date(2025, 11, 17), # Revolution Day
        Date(2025, 12, 25), # Christmas Day
        Date(2026, 1, 1), # New Year's Day
        Date(2026, 2, 2), # Constitution Day
        Date(2026, 3, 16), # Benito Juárez's birthday
        Date(2026, 5, 1), # Labor Day
        Date(2026, 9, 16), # Independence Day
        Date(2026, 11, 16), # Revolution Day
        Date(2026, 12, 25), # Christmas Day
        Date(2027, 1, 1), # New Year's Day
        Date(2027, 2, 1), # Constitution Day
        Date(2027, 3, 15), # Benito Juárez's birthday
        Date(2027, 5, 1), # Labor Day
        Date(2027, 9, 16), # Independence Day
        Date(2027, 11, 15), # Revolution Day
        Date(2027, 12, 25), # Christmas Day
        Date(2028, 1, 1), # New Year's Day
        Date(2028, 2, 7), # Constitution Day
        Date(2028, 3, 20), # Benito Juárez's birthday
        Date(2028, 5, 1), # Labor Day
        Date(2028, 9, 16), # Independence Day
        Date(2028, 11, 20), # Revolution Day
        Date(2028, 12, 25), # Christmas Day
        Date(2029, 1, 1), # New Year's Day
        Date(2029, 2, 5), # Constitution Day
        Date(2029, 3, 19), # Benito Juárez's birthday
        Date(2029, 5, 1), # Labor Day
        Date(2029, 9, 16), # Independence Day
        Date(2029, 11, 19), # Revolution Day
        Date(2029, 12, 25), # Christmas Day
        Date(2030, 1, 1), # New Year's Day
        Date(2030, 2, 4), # Constitution Day
        Date(2030, 3, 18), # Benito Juárez's birthday
        Date(2030, 5, 1), # Labor Day
        Date(2030, 9, 16), # Independence Day
        Date(2030, 10, 1), # Change of Federal Government
        Date(2030, 11, 18), # Revolution Day
        Date(2030, 12, 25), # Christmas Day
    ]

    test_holidays(calendar, holidays)

    return nothing
end

end
