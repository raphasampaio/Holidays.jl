module TestUruguay

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Uruguay" begin
    calendar = Holidays.Uruguay()

    holidays = Date[
        Date(1970, 1, 1), # New Year's Day
        Date(1970, 5, 1), # Workers' Day
        Date(1970, 7, 18), # Constitution Day
        Date(1970, 8, 25), # Independence Day
        Date(1970, 12, 8), # Beaches Day
        Date(1970, 12, 25), # Day of the Family
        Date(1971, 1, 1), # New Year's Day
        Date(1971, 5, 1), # Workers' Day
        Date(1971, 7, 18), # Constitution Day
        Date(1971, 8, 25), # Independence Day
        Date(1971, 12, 8), # Beaches Day
        Date(1971, 12, 25), # Day of the Family
        Date(1972, 1, 1), # New Year's Day
        Date(1972, 5, 1), # Workers' Day
        Date(1972, 7, 18), # Constitution Day
        Date(1972, 8, 25), # Independence Day
        Date(1972, 12, 8), # Beaches Day
        Date(1972, 12, 25), # Day of the Family
        Date(1973, 1, 1), # New Year's Day
        Date(1973, 5, 1), # Workers' Day
        Date(1973, 7, 18), # Constitution Day
        Date(1973, 8, 25), # Independence Day
        Date(1973, 12, 8), # Beaches Day
        Date(1973, 12, 25), # Day of the Family
        Date(1974, 1, 1), # New Year's Day
        Date(1974, 5, 1), # Workers' Day
        Date(1974, 7, 18), # Constitution Day
        Date(1974, 8, 25), # Independence Day
        Date(1974, 12, 8), # Beaches Day
        Date(1974, 12, 25), # Day of the Family
        Date(1975, 1, 1), # New Year's Day
        Date(1975, 5, 1), # Workers' Day
        Date(1975, 7, 18), # Constitution Day
        Date(1975, 8, 25), # Independence Day
        Date(1975, 12, 8), # Beaches Day
        Date(1975, 12, 25), # Day of the Family
        Date(1976, 1, 1), # New Year's Day
        Date(1976, 5, 1), # Workers' Day
        Date(1976, 7, 18), # Constitution Day
        Date(1976, 8, 25), # Independence Day
        Date(1976, 12, 8), # Beaches Day
        Date(1976, 12, 25), # Day of the Family
        Date(1977, 1, 1), # New Year's Day
        Date(1977, 5, 1), # Workers' Day
        Date(1977, 7, 18), # Constitution Day
        Date(1977, 8, 25), # Independence Day
        Date(1977, 12, 8), # Beaches Day
        Date(1977, 12, 25), # Day of the Family
        Date(1978, 1, 1), # New Year's Day
        Date(1978, 5, 1), # Workers' Day
        Date(1978, 7, 18), # Constitution Day
        Date(1978, 8, 25), # Independence Day
        Date(1978, 12, 8), # Beaches Day
        Date(1978, 12, 25), # Day of the Family
        Date(1979, 1, 1), # New Year's Day
        Date(1979, 5, 1), # Workers' Day
        Date(1979, 7, 18), # Constitution Day
        Date(1979, 8, 25), # Independence Day
        Date(1979, 12, 8), # Beaches Day
        Date(1979, 12, 25), # Day of the Family
        Date(1980, 1, 1), # New Year's Day
        Date(1980, 5, 5), # Workers' Day
        Date(1980, 7, 18), # Constitution Day
        Date(1980, 8, 25), # Independence Day
        Date(1980, 12, 25), # Day of the Family
        Date(1981, 1, 1), # New Year's Day
        Date(1981, 5, 4), # Workers' Day
        Date(1981, 7, 18), # Constitution Day
        Date(1981, 8, 25), # Independence Day
        Date(1981, 12, 25), # Day of the Family
        Date(1982, 1, 1), # New Year's Day
        Date(1982, 5, 1), # Workers' Day
        Date(1982, 7, 18), # Constitution Day
        Date(1982, 8, 25), # Independence Day
        Date(1982, 12, 25), # Day of the Family
        Date(1983, 1, 1), # New Year's Day
        Date(1983, 5, 1), # Workers' Day
        Date(1983, 7, 18), # Constitution Day
        Date(1983, 8, 25), # Independence Day
        Date(1983, 12, 25), # Day of the Family
        Date(1984, 1, 1), # New Year's Day
        Date(1984, 5, 1), # Workers' Day
        Date(1984, 7, 18), # Constitution Day
        Date(1984, 8, 25), # Independence Day
        Date(1984, 12, 25), # Day of the Family
        Date(1985, 1, 1), # New Year's Day
        Date(1985, 3, 1), # Presidential Inauguration Day
        Date(1985, 5, 1), # Workers' Day
        Date(1985, 7, 18), # Constitution Day
        Date(1985, 8, 25), # Independence Day
        Date(1985, 12, 25), # Day of the Family
        Date(1986, 1, 1), # New Year's Day
        Date(1986, 5, 1), # Workers' Day
        Date(1986, 7, 18), # Constitution Day
        Date(1986, 8, 25), # Independence Day
        Date(1986, 12, 25), # Day of the Family
        Date(1987, 1, 1), # New Year's Day
        Date(1987, 5, 1), # Workers' Day
        Date(1987, 7, 18), # Constitution Day
        Date(1987, 8, 25), # Independence Day
        Date(1987, 12, 25), # Day of the Family
        Date(1988, 1, 1), # New Year's Day
        Date(1988, 5, 1), # Workers' Day
        Date(1988, 7, 18), # Constitution Day
        Date(1988, 8, 25), # Independence Day
        Date(1988, 12, 25), # Day of the Family
        Date(1989, 1, 1), # New Year's Day
        Date(1989, 5, 1), # Workers' Day
        Date(1989, 7, 18), # Constitution Day
        Date(1989, 8, 25), # Independence Day
        Date(1989, 12, 25), # Day of the Family
        Date(1990, 1, 1), # New Year's Day
        Date(1990, 3, 1), # Presidential Inauguration Day
        Date(1990, 5, 1), # Workers' Day
        Date(1990, 7, 18), # Constitution Day
        Date(1990, 8, 25), # Independence Day
        Date(1990, 12, 25), # Day of the Family
        Date(1991, 1, 1), # New Year's Day
        Date(1991, 5, 1), # Workers' Day
        Date(1991, 7, 18), # Constitution Day
        Date(1991, 8, 25), # Independence Day
        Date(1991, 12, 25), # Day of the Family
        Date(1992, 1, 1), # New Year's Day
        Date(1992, 5, 1), # Workers' Day
        Date(1992, 7, 18), # Constitution Day
        Date(1992, 8, 25), # Independence Day
        Date(1992, 12, 25), # Day of the Family
        Date(1993, 1, 1), # New Year's Day
        Date(1993, 5, 1), # Workers' Day
        Date(1993, 7, 18), # Constitution Day
        Date(1993, 8, 25), # Independence Day
        Date(1993, 12, 25), # Day of the Family
        Date(1994, 1, 1), # New Year's Day
        Date(1994, 5, 1), # Workers' Day
        Date(1994, 7, 18), # Constitution Day
        Date(1994, 8, 25), # Independence Day
        Date(1994, 12, 25), # Day of the Family
        Date(1995, 1, 1), # New Year's Day
        Date(1995, 3, 1), # Presidential Inauguration Day
        Date(1995, 5, 1), # Workers' Day
        Date(1995, 7, 18), # Constitution Day
        Date(1995, 8, 25), # Independence Day
        Date(1995, 12, 25), # Day of the Family
        Date(1996, 1, 1), # New Year's Day
        Date(1996, 5, 1), # Workers' Day
        Date(1996, 7, 18), # Constitution Day
        Date(1996, 8, 25), # Independence Day
        Date(1996, 12, 25), # Day of the Family
        Date(1997, 1, 1), # New Year's Day
        Date(1997, 5, 1), # Workers' Day
        Date(1997, 7, 18), # Constitution Day
        Date(1997, 8, 25), # Independence Day
        Date(1997, 12, 25), # Day of the Family
        Date(1998, 1, 1), # New Year's Day
        Date(1998, 5, 1), # Workers' Day
        Date(1998, 7, 18), # Constitution Day
        Date(1998, 8, 25), # Independence Day
        Date(1998, 12, 25), # Day of the Family
        Date(1999, 1, 1), # New Year's Day
        Date(1999, 5, 1), # Workers' Day
        Date(1999, 7, 18), # Constitution Day
        Date(1999, 8, 25), # Independence Day
        Date(1999, 12, 25), # Day of the Family
        Date(2000, 1, 1), # New Year's Day
        Date(2000, 3, 1), # Presidential Inauguration Day
        Date(2000, 5, 1), # Workers' Day
        Date(2000, 7, 18), # Constitution Day
        Date(2000, 8, 25), # Independence Day
        Date(2000, 12, 25), # Day of the Family
        Date(2001, 1, 1), # New Year's Day
        Date(2001, 5, 1), # Workers' Day
        Date(2001, 7, 18), # Constitution Day
        Date(2001, 8, 25), # Independence Day
        Date(2001, 12, 25), # Day of the Family
        Date(2002, 1, 1), # New Year's Day
        Date(2002, 5, 1), # Workers' Day
        Date(2002, 7, 18), # Constitution Day
        Date(2002, 8, 25), # Independence Day
        Date(2002, 12, 25), # Day of the Family
        Date(2003, 1, 1), # New Year's Day
        Date(2003, 5, 1), # Workers' Day
        Date(2003, 7, 18), # Constitution Day
        Date(2003, 8, 25), # Independence Day
        Date(2003, 12, 25), # Day of the Family
        Date(2004, 1, 1), # New Year's Day
        Date(2004, 5, 1), # Workers' Day
        Date(2004, 7, 18), # Constitution Day
        Date(2004, 8, 25), # Independence Day
        Date(2004, 12, 25), # Day of the Family
        Date(2005, 1, 1), # New Year's Day
        Date(2005, 3, 1), # Presidential Inauguration Day
        Date(2005, 5, 1), # Workers' Day
        Date(2005, 7, 18), # Constitution Day
        Date(2005, 8, 25), # Independence Day
        Date(2005, 12, 25), # Day of the Family
        Date(2006, 1, 1), # New Year's Day
        Date(2006, 5, 1), # Workers' Day
        Date(2006, 7, 18), # Constitution Day
        Date(2006, 8, 25), # Independence Day
        Date(2006, 12, 25), # Day of the Family
        Date(2007, 1, 1), # New Year's Day
        Date(2007, 5, 1), # Workers' Day
        Date(2007, 7, 18), # Constitution Day
        Date(2007, 8, 25), # Independence Day
        Date(2007, 12, 25), # Day of the Family
        Date(2008, 1, 1), # New Year's Day
        Date(2008, 5, 1), # Workers' Day
        Date(2008, 7, 18), # Constitution Day
        Date(2008, 8, 25), # Independence Day
        Date(2008, 12, 25), # Day of the Family
        Date(2009, 1, 1), # New Year's Day
        Date(2009, 5, 1), # Workers' Day
        Date(2009, 7, 18), # Constitution Day
        Date(2009, 8, 25), # Independence Day
        Date(2009, 12, 25), # Day of the Family
        Date(2010, 1, 1), # New Year's Day
        Date(2010, 3, 1), # Presidential Inauguration Day
        Date(2010, 5, 1), # Workers' Day
        Date(2010, 7, 18), # Constitution Day
        Date(2010, 8, 25), # Independence Day
        Date(2010, 12, 25), # Day of the Family
        Date(2011, 1, 1), # New Year's Day
        Date(2011, 5, 1), # Workers' Day
        Date(2011, 7, 18), # Constitution Day
        Date(2011, 8, 25), # Independence Day
        Date(2011, 12, 25), # Day of the Family
        Date(2012, 1, 1), # New Year's Day
        Date(2012, 5, 1), # Workers' Day
        Date(2012, 7, 18), # Constitution Day
        Date(2012, 8, 25), # Independence Day
        Date(2012, 12, 25), # Day of the Family
        Date(2013, 1, 1), # New Year's Day
        Date(2013, 5, 1), # Workers' Day
        Date(2013, 7, 18), # Constitution Day
        Date(2013, 8, 25), # Independence Day
        Date(2013, 12, 25), # Day of the Family
        Date(2014, 1, 1), # New Year's Day
        Date(2014, 5, 1), # Workers' Day
        Date(2014, 7, 18), # Constitution Day
        Date(2014, 8, 25), # Independence Day
        Date(2014, 12, 25), # Day of the Family
        Date(2015, 1, 1), # New Year's Day
        Date(2015, 3, 1), # Presidential Inauguration Day
        Date(2015, 5, 1), # Workers' Day
        Date(2015, 7, 18), # Constitution Day
        Date(2015, 8, 25), # Independence Day
        Date(2015, 12, 25), # Day of the Family
        Date(2016, 1, 1), # New Year's Day
        Date(2016, 5, 1), # Workers' Day
        Date(2016, 7, 18), # Constitution Day
        Date(2016, 8, 25), # Independence Day
        Date(2016, 12, 25), # Day of the Family
        Date(2017, 1, 1), # New Year's Day
        Date(2017, 5, 1), # Workers' Day
        Date(2017, 7, 18), # Constitution Day
        Date(2017, 8, 25), # Independence Day
        Date(2017, 12, 25), # Day of the Family
        Date(2018, 1, 1), # New Year's Day
        Date(2018, 5, 1), # Workers' Day
        Date(2018, 7, 18), # Constitution Day
        Date(2018, 8, 25), # Independence Day
        Date(2018, 12, 25), # Day of the Family
        Date(2019, 1, 1), # New Year's Day
        Date(2019, 5, 1), # Workers' Day
        Date(2019, 7, 18), # Constitution Day
        Date(2019, 8, 25), # Independence Day
        Date(2019, 12, 25), # Day of the Family
        Date(2020, 1, 1), # New Year's Day
        Date(2020, 3, 1), # Presidential Inauguration Day
        Date(2020, 5, 1), # Workers' Day
        Date(2020, 7, 18), # Constitution Day
        Date(2020, 8, 25), # Independence Day
        Date(2020, 12, 25), # Day of the Family
        Date(2021, 1, 1), # New Year's Day
        Date(2021, 5, 1), # Workers' Day
        Date(2021, 7, 18), # Constitution Day
        Date(2021, 8, 25), # Independence Day
        Date(2021, 12, 25), # Day of the Family
        Date(2022, 1, 1), # New Year's Day
        Date(2022, 5, 1), # Workers' Day
        Date(2022, 7, 18), # Constitution Day
        Date(2022, 8, 25), # Independence Day
        Date(2022, 12, 25), # Day of the Family
        Date(2023, 1, 1), # New Year's Day
        Date(2023, 5, 1), # Workers' Day
        Date(2023, 7, 18), # Constitution Day
        Date(2023, 8, 25), # Independence Day
        Date(2023, 12, 25), # Day of the Family
        Date(2024, 1, 1), # New Year's Day
        Date(2024, 5, 1), # Workers' Day
        Date(2024, 7, 18), # Constitution Day
        Date(2024, 8, 25), # Independence Day
        Date(2024, 12, 25), # Day of the Family
        Date(2025, 1, 1), # New Year's Day
        Date(2025, 5, 1), # Workers' Day
        Date(2025, 7, 18), # Constitution Day
        Date(2025, 8, 25), # Independence Day
        Date(2025, 12, 25), # Day of the Family
        Date(2026, 1, 1), # New Year's Day
        Date(2026, 5, 1), # Workers' Day
        Date(2026, 7, 18), # Constitution Day
        Date(2026, 8, 25), # Independence Day
        Date(2026, 12, 25), # Day of the Family
        Date(2027, 1, 1), # New Year's Day
        Date(2027, 5, 1), # Workers' Day
        Date(2027, 7, 18), # Constitution Day
        Date(2027, 8, 25), # Independence Day
        Date(2027, 12, 25), # Day of the Family
        Date(2028, 1, 1), # New Year's Day
        Date(2028, 5, 1), # Workers' Day
        Date(2028, 7, 18), # Constitution Day
        Date(2028, 8, 25), # Independence Day
        Date(2028, 12, 25), # Day of the Family
        Date(2029, 1, 1), # New Year's Day
        Date(2029, 5, 1), # Workers' Day
        Date(2029, 7, 18), # Constitution Day
        Date(2029, 8, 25), # Independence Day
        Date(2029, 12, 25), # Day of the Family
        Date(2030, 1, 1), # New Year's Day
        Date(2030, 5, 1), # Workers' Day
        Date(2030, 7, 18), # Constitution Day
        Date(2030, 8, 25), # Independence Day
        Date(2030, 12, 25), # Day of the Family
    ]

    test_holidays(calendar, holidays)

    return nothing
end

end
