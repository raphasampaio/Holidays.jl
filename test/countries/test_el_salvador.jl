module TestElSalvador

using Dates
using Holidays
using Test

include("../util.jl")

@testset "ElSalvador" begin
    calendar = Holidays.ElSalvador()

    holidays = Date[
        Date(1973, 1, 1), # New Year's Day
        Date(1973, 4, 19), # Maundy Thursday
        Date(1973, 4, 20), # Good Friday
        Date(1973, 4, 21), # Holy Saturday
        Date(1973, 5, 1), # Labor Day
        Date(1973, 8, 6), # Celebrations of San Salvador
        Date(1973, 9, 15), # Independence Day
        Date(1973, 11, 2), # All Souls' Day
        Date(1973, 12, 25), # Christmas Day
        Date(1974, 1, 1), # New Year's Day
        Date(1974, 4, 11), # Maundy Thursday
        Date(1974, 4, 12), # Good Friday
        Date(1974, 4, 13), # Holy Saturday
        Date(1974, 5, 1), # Labor Day
        Date(1974, 8, 6), # Celebrations of San Salvador
        Date(1974, 9, 15), # Independence Day
        Date(1974, 11, 2), # All Souls' Day
        Date(1974, 12, 25), # Christmas Day
        Date(1975, 1, 1), # New Year's Day
        Date(1975, 3, 27), # Maundy Thursday
        Date(1975, 3, 28), # Good Friday
        Date(1975, 3, 29), # Holy Saturday
        Date(1975, 5, 1), # Labor Day
        Date(1975, 8, 6), # Celebrations of San Salvador
        Date(1975, 9, 15), # Independence Day
        Date(1975, 11, 2), # All Souls' Day
        Date(1975, 12, 25), # Christmas Day
        Date(1976, 1, 1), # New Year's Day
        Date(1976, 4, 15), # Maundy Thursday
        Date(1976, 4, 16), # Good Friday
        Date(1976, 4, 17), # Holy Saturday
        Date(1976, 5, 1), # Labor Day
        Date(1976, 8, 6), # Celebrations of San Salvador
        Date(1976, 9, 15), # Independence Day
        Date(1976, 11, 2), # All Souls' Day
        Date(1976, 12, 25), # Christmas Day
        Date(1977, 1, 1), # New Year's Day
        Date(1977, 4, 7), # Maundy Thursday
        Date(1977, 4, 8), # Good Friday
        Date(1977, 4, 9), # Holy Saturday
        Date(1977, 5, 1), # Labor Day
        Date(1977, 8, 6), # Celebrations of San Salvador
        Date(1977, 9, 15), # Independence Day
        Date(1977, 11, 2), # All Souls' Day
        Date(1977, 12, 25), # Christmas Day
        Date(1978, 1, 1), # New Year's Day
        Date(1978, 3, 23), # Maundy Thursday
        Date(1978, 3, 24), # Good Friday
        Date(1978, 3, 25), # Holy Saturday
        Date(1978, 5, 1), # Labor Day
        Date(1978, 8, 6), # Celebrations of San Salvador
        Date(1978, 9, 15), # Independence Day
        Date(1978, 11, 2), # All Souls' Day
        Date(1978, 12, 25), # Christmas Day
        Date(1979, 1, 1), # New Year's Day
        Date(1979, 4, 12), # Maundy Thursday
        Date(1979, 4, 13), # Good Friday
        Date(1979, 4, 14), # Holy Saturday
        Date(1979, 5, 1), # Labor Day
        Date(1979, 8, 6), # Celebrations of San Salvador
        Date(1979, 9, 15), # Independence Day
        Date(1979, 11, 2), # All Souls' Day
        Date(1979, 12, 25), # Christmas Day
        Date(1980, 1, 1), # New Year's Day
        Date(1980, 4, 3), # Maundy Thursday
        Date(1980, 4, 4), # Good Friday
        Date(1980, 4, 5), # Holy Saturday
        Date(1980, 5, 1), # Labor Day
        Date(1980, 8, 6), # Celebrations of San Salvador
        Date(1980, 9, 15), # Independence Day
        Date(1980, 11, 2), # All Souls' Day
        Date(1980, 12, 25), # Christmas Day
        Date(1981, 1, 1), # New Year's Day
        Date(1981, 4, 16), # Maundy Thursday
        Date(1981, 4, 17), # Good Friday
        Date(1981, 4, 18), # Holy Saturday
        Date(1981, 5, 1), # Labor Day
        Date(1981, 8, 6), # Celebrations of San Salvador
        Date(1981, 9, 15), # Independence Day
        Date(1981, 11, 2), # All Souls' Day
        Date(1981, 12, 25), # Christmas Day
        Date(1982, 1, 1), # New Year's Day
        Date(1982, 4, 8), # Maundy Thursday
        Date(1982, 4, 9), # Good Friday
        Date(1982, 4, 10), # Holy Saturday
        Date(1982, 5, 1), # Labor Day
        Date(1982, 8, 6), # Celebrations of San Salvador
        Date(1982, 9, 15), # Independence Day
        Date(1982, 11, 2), # All Souls' Day
        Date(1982, 12, 25), # Christmas Day
        Date(1983, 1, 1), # New Year's Day
        Date(1983, 3, 31), # Maundy Thursday
        Date(1983, 4, 1), # Good Friday
        Date(1983, 4, 2), # Holy Saturday
        Date(1983, 5, 1), # Labor Day
        Date(1983, 8, 6), # Celebrations of San Salvador
        Date(1983, 9, 15), # Independence Day
        Date(1983, 11, 2), # All Souls' Day
        Date(1983, 12, 25), # Christmas Day
        Date(1984, 1, 1), # New Year's Day
        Date(1984, 4, 19), # Maundy Thursday
        Date(1984, 4, 20), # Good Friday
        Date(1984, 4, 21), # Holy Saturday
        Date(1984, 5, 1), # Labor Day
        Date(1984, 8, 6), # Celebrations of San Salvador
        Date(1984, 9, 15), # Independence Day
        Date(1984, 11, 2), # All Souls' Day
        Date(1984, 12, 25), # Christmas Day
        Date(1985, 1, 1), # New Year's Day
        Date(1985, 4, 4), # Maundy Thursday
        Date(1985, 4, 5), # Good Friday
        Date(1985, 4, 6), # Holy Saturday
        Date(1985, 5, 1), # Labor Day
        Date(1985, 8, 6), # Celebrations of San Salvador
        Date(1985, 9, 15), # Independence Day
        Date(1985, 11, 2), # All Souls' Day
        Date(1985, 12, 25), # Christmas Day
        Date(1986, 1, 1), # New Year's Day
        Date(1986, 3, 27), # Maundy Thursday
        Date(1986, 3, 28), # Good Friday
        Date(1986, 3, 29), # Holy Saturday
        Date(1986, 5, 1), # Labor Day
        Date(1986, 8, 6), # Celebrations of San Salvador
        Date(1986, 9, 15), # Independence Day
        Date(1986, 11, 2), # All Souls' Day
        Date(1986, 12, 25), # Christmas Day
        Date(1987, 1, 1), # New Year's Day
        Date(1987, 4, 16), # Maundy Thursday
        Date(1987, 4, 17), # Good Friday
        Date(1987, 4, 18), # Holy Saturday
        Date(1987, 5, 1), # Labor Day
        Date(1987, 8, 6), # Celebrations of San Salvador
        Date(1987, 9, 15), # Independence Day
        Date(1987, 11, 2), # All Souls' Day
        Date(1987, 12, 25), # Christmas Day
        Date(1988, 1, 1), # New Year's Day
        Date(1988, 3, 31), # Maundy Thursday
        Date(1988, 4, 1), # Good Friday
        Date(1988, 4, 2), # Holy Saturday
        Date(1988, 5, 1), # Labor Day
        Date(1988, 8, 6), # Celebrations of San Salvador
        Date(1988, 9, 15), # Independence Day
        Date(1988, 11, 2), # All Souls' Day
        Date(1988, 12, 25), # Christmas Day
        Date(1989, 1, 1), # New Year's Day
        Date(1989, 3, 23), # Maundy Thursday
        Date(1989, 3, 24), # Good Friday
        Date(1989, 3, 25), # Holy Saturday
        Date(1989, 5, 1), # Labor Day
        Date(1989, 8, 6), # Celebrations of San Salvador
        Date(1989, 9, 15), # Independence Day
        Date(1989, 11, 2), # All Souls' Day
        Date(1989, 12, 25), # Christmas Day
        Date(1990, 1, 1), # New Year's Day
        Date(1990, 4, 12), # Maundy Thursday
        Date(1990, 4, 13), # Good Friday
        Date(1990, 4, 14), # Holy Saturday
        Date(1990, 5, 1), # Labor Day
        Date(1990, 8, 6), # Celebrations of San Salvador
        Date(1990, 9, 15), # Independence Day
        Date(1990, 11, 2), # All Souls' Day
        Date(1990, 12, 25), # Christmas Day
        Date(1991, 1, 1), # New Year's Day
        Date(1991, 3, 28), # Maundy Thursday
        Date(1991, 3, 29), # Good Friday
        Date(1991, 3, 30), # Holy Saturday
        Date(1991, 5, 1), # Labor Day
        Date(1991, 8, 6), # Celebrations of San Salvador
        Date(1991, 9, 15), # Independence Day
        Date(1991, 11, 2), # All Souls' Day
        Date(1991, 12, 25), # Christmas Day
        Date(1992, 1, 1), # New Year's Day
        Date(1992, 4, 16), # Maundy Thursday
        Date(1992, 4, 17), # Good Friday
        Date(1992, 4, 18), # Holy Saturday
        Date(1992, 5, 1), # Labor Day
        Date(1992, 8, 6), # Celebrations of San Salvador
        Date(1992, 9, 15), # Independence Day
        Date(1992, 11, 2), # All Souls' Day
        Date(1992, 12, 25), # Christmas Day
        Date(1993, 1, 1), # New Year's Day
        Date(1993, 4, 8), # Maundy Thursday
        Date(1993, 4, 9), # Good Friday
        Date(1993, 4, 10), # Holy Saturday
        Date(1993, 5, 1), # Labor Day
        Date(1993, 8, 6), # Celebrations of San Salvador
        Date(1993, 9, 15), # Independence Day
        Date(1993, 11, 2), # All Souls' Day
        Date(1993, 12, 25), # Christmas Day
        Date(1994, 1, 1), # New Year's Day
        Date(1994, 3, 31), # Maundy Thursday
        Date(1994, 4, 1), # Good Friday
        Date(1994, 4, 2), # Holy Saturday
        Date(1994, 5, 1), # Labor Day
        Date(1994, 8, 6), # Celebrations of San Salvador
        Date(1994, 9, 15), # Independence Day
        Date(1994, 11, 2), # All Souls' Day
        Date(1994, 12, 25), # Christmas Day
        Date(1995, 1, 1), # New Year's Day
        Date(1995, 4, 13), # Maundy Thursday
        Date(1995, 4, 14), # Good Friday
        Date(1995, 4, 15), # Holy Saturday
        Date(1995, 5, 1), # Labor Day
        Date(1995, 8, 6), # Celebrations of San Salvador
        Date(1995, 9, 15), # Independence Day
        Date(1995, 11, 2), # All Souls' Day
        Date(1995, 12, 25), # Christmas Day
        Date(1996, 1, 1), # New Year's Day
        Date(1996, 4, 4), # Maundy Thursday
        Date(1996, 4, 5), # Good Friday
        Date(1996, 4, 6), # Holy Saturday
        Date(1996, 5, 1), # Labor Day
        Date(1996, 8, 6), # Celebrations of San Salvador
        Date(1996, 9, 15), # Independence Day
        Date(1996, 11, 2), # All Souls' Day
        Date(1996, 12, 25), # Christmas Day
        Date(1997, 1, 1), # New Year's Day
        Date(1997, 3, 27), # Maundy Thursday
        Date(1997, 3, 28), # Good Friday
        Date(1997, 3, 29), # Holy Saturday
        Date(1997, 5, 1), # Labor Day
        Date(1997, 8, 6), # Celebrations of San Salvador
        Date(1997, 9, 15), # Independence Day
        Date(1997, 11, 2), # All Souls' Day
        Date(1997, 12, 25), # Christmas Day
        Date(1998, 1, 1), # New Year's Day
        Date(1998, 4, 9), # Maundy Thursday
        Date(1998, 4, 10), # Good Friday
        Date(1998, 4, 11), # Holy Saturday
        Date(1998, 5, 1), # Labor Day
        Date(1998, 8, 6), # Celebrations of San Salvador
        Date(1998, 9, 15), # Independence Day
        Date(1998, 11, 2), # All Souls' Day
        Date(1998, 12, 25), # Christmas Day
        Date(1999, 1, 1), # New Year's Day
        Date(1999, 4, 1), # Maundy Thursday
        Date(1999, 4, 2), # Good Friday
        Date(1999, 4, 3), # Holy Saturday
        Date(1999, 5, 1), # Labor Day
        Date(1999, 8, 6), # Celebrations of San Salvador
        Date(1999, 9, 15), # Independence Day
        Date(1999, 11, 2), # All Souls' Day
        Date(1999, 12, 25), # Christmas Day
        Date(2000, 1, 1), # New Year's Day
        Date(2000, 4, 20), # Maundy Thursday
        Date(2000, 4, 21), # Good Friday
        Date(2000, 4, 22), # Holy Saturday
        Date(2000, 5, 1), # Labor Day
        Date(2000, 8, 6), # Celebrations of San Salvador
        Date(2000, 9, 15), # Independence Day
        Date(2000, 11, 2), # All Souls' Day
        Date(2000, 12, 25), # Christmas Day
        Date(2001, 1, 1), # New Year's Day
        Date(2001, 4, 12), # Maundy Thursday
        Date(2001, 4, 13), # Good Friday
        Date(2001, 4, 14), # Holy Saturday
        Date(2001, 5, 1), # Labor Day
        Date(2001, 8, 6), # Celebrations of San Salvador
        Date(2001, 9, 15), # Independence Day
        Date(2001, 11, 2), # All Souls' Day
        Date(2001, 12, 25), # Christmas Day
        Date(2002, 1, 1), # New Year's Day
        Date(2002, 3, 28), # Maundy Thursday
        Date(2002, 3, 29), # Good Friday
        Date(2002, 3, 30), # Holy Saturday
        Date(2002, 5, 1), # Labor Day
        Date(2002, 8, 6), # Celebrations of San Salvador
        Date(2002, 9, 15), # Independence Day
        Date(2002, 11, 2), # All Souls' Day
        Date(2002, 12, 25), # Christmas Day
        Date(2003, 1, 1), # New Year's Day
        Date(2003, 4, 17), # Maundy Thursday
        Date(2003, 4, 18), # Good Friday
        Date(2003, 4, 19), # Holy Saturday
        Date(2003, 5, 1), # Labor Day
        Date(2003, 8, 6), # Celebrations of San Salvador
        Date(2003, 9, 15), # Independence Day
        Date(2003, 11, 2), # All Souls' Day
        Date(2003, 12, 25), # Christmas Day
        Date(2004, 1, 1), # New Year's Day
        Date(2004, 4, 8), # Maundy Thursday
        Date(2004, 4, 9), # Good Friday
        Date(2004, 4, 10), # Holy Saturday
        Date(2004, 5, 1), # Labor Day
        Date(2004, 8, 6), # Celebrations of San Salvador
        Date(2004, 9, 15), # Independence Day
        Date(2004, 11, 2), # All Souls' Day
        Date(2004, 12, 25), # Christmas Day
        Date(2005, 1, 1), # New Year's Day
        Date(2005, 3, 24), # Maundy Thursday
        Date(2005, 3, 25), # Good Friday
        Date(2005, 3, 26), # Holy Saturday
        Date(2005, 5, 1), # Labor Day
        Date(2005, 8, 6), # Celebrations of San Salvador
        Date(2005, 9, 15), # Independence Day
        Date(2005, 11, 2), # All Souls' Day
        Date(2005, 12, 25), # Christmas Day
        Date(2006, 1, 1), # New Year's Day
        Date(2006, 4, 13), # Maundy Thursday
        Date(2006, 4, 14), # Good Friday
        Date(2006, 4, 15), # Holy Saturday
        Date(2006, 5, 1), # Labor Day
        Date(2006, 8, 6), # Celebrations of San Salvador
        Date(2006, 9, 15), # Independence Day
        Date(2006, 11, 2), # All Souls' Day
        Date(2006, 12, 25), # Christmas Day
        Date(2007, 1, 1), # New Year's Day
        Date(2007, 4, 5), # Maundy Thursday
        Date(2007, 4, 6), # Good Friday
        Date(2007, 4, 7), # Holy Saturday
        Date(2007, 5, 1), # Labor Day
        Date(2007, 8, 6), # Celebrations of San Salvador
        Date(2007, 9, 15), # Independence Day
        Date(2007, 11, 2), # All Souls' Day
        Date(2007, 12, 25), # Christmas Day
        Date(2008, 1, 1), # New Year's Day
        Date(2008, 3, 20), # Maundy Thursday
        Date(2008, 3, 21), # Good Friday
        Date(2008, 3, 22), # Holy Saturday
        Date(2008, 5, 1), # Labor Day
        Date(2008, 8, 6), # Celebrations of San Salvador
        Date(2008, 9, 15), # Independence Day
        Date(2008, 11, 2), # All Souls' Day
        Date(2008, 12, 25), # Christmas Day
        Date(2009, 1, 1), # New Year's Day
        Date(2009, 4, 9), # Maundy Thursday
        Date(2009, 4, 10), # Good Friday
        Date(2009, 4, 11), # Holy Saturday
        Date(2009, 5, 1), # Labor Day
        Date(2009, 8, 6), # Celebrations of San Salvador
        Date(2009, 9, 15), # Independence Day
        Date(2009, 11, 2), # All Souls' Day
        Date(2009, 12, 25), # Christmas Day
        Date(2010, 1, 1), # New Year's Day
        Date(2010, 4, 1), # Maundy Thursday
        Date(2010, 4, 2), # Good Friday
        Date(2010, 4, 3), # Holy Saturday
        Date(2010, 5, 1), # Labor Day
        Date(2010, 8, 6), # Celebrations of San Salvador
        Date(2010, 9, 15), # Independence Day
        Date(2010, 11, 2), # All Souls' Day
        Date(2010, 12, 25), # Christmas Day
        Date(2011, 1, 1), # New Year's Day
        Date(2011, 4, 21), # Maundy Thursday
        Date(2011, 4, 22), # Good Friday
        Date(2011, 4, 23), # Holy Saturday
        Date(2011, 5, 1), # Labor Day
        Date(2011, 8, 6), # Celebrations of San Salvador
        Date(2011, 9, 15), # Independence Day
        Date(2011, 11, 2), # All Souls' Day
        Date(2011, 12, 25), # Christmas Day
        Date(2012, 1, 1), # New Year's Day
        Date(2012, 4, 5), # Maundy Thursday
        Date(2012, 4, 6), # Good Friday
        Date(2012, 4, 7), # Holy Saturday
        Date(2012, 5, 1), # Labor Day
        Date(2012, 8, 6), # Celebrations of San Salvador
        Date(2012, 9, 15), # Independence Day
        Date(2012, 11, 2), # All Souls' Day
        Date(2012, 12, 25), # Christmas Day
        Date(2013, 1, 1), # New Year's Day
        Date(2013, 3, 28), # Maundy Thursday
        Date(2013, 3, 29), # Good Friday
        Date(2013, 3, 30), # Holy Saturday
        Date(2013, 5, 1), # Labor Day
        Date(2013, 6, 17), # Father's Day
        Date(2013, 8, 6), # Celebrations of San Salvador
        Date(2013, 9, 15), # Independence Day
        Date(2013, 11, 2), # All Souls' Day
        Date(2013, 12, 25), # Christmas Day
        Date(2014, 1, 1), # New Year's Day
        Date(2014, 4, 17), # Maundy Thursday
        Date(2014, 4, 18), # Good Friday
        Date(2014, 4, 19), # Holy Saturday
        Date(2014, 5, 1), # Labor Day
        Date(2014, 6, 17), # Father's Day
        Date(2014, 8, 6), # Celebrations of San Salvador
        Date(2014, 9, 15), # Independence Day
        Date(2014, 11, 2), # All Souls' Day
        Date(2014, 12, 25), # Christmas Day
        Date(2015, 1, 1), # New Year's Day
        Date(2015, 4, 2), # Maundy Thursday
        Date(2015, 4, 3), # Good Friday
        Date(2015, 4, 4), # Holy Saturday
        Date(2015, 5, 1), # Labor Day
        Date(2015, 6, 17), # Father's Day
        Date(2015, 8, 6), # Celebrations of San Salvador
        Date(2015, 9, 15), # Independence Day
        Date(2015, 11, 2), # All Souls' Day
        Date(2015, 12, 25), # Christmas Day
        Date(2016, 1, 1), # New Year's Day
        Date(2016, 3, 24), # Maundy Thursday
        Date(2016, 3, 25), # Good Friday
        Date(2016, 3, 26), # Holy Saturday
        Date(2016, 5, 1), # Labor Day
        Date(2016, 5, 10), # Mother's Day
        Date(2016, 6, 17), # Father's Day
        Date(2016, 8, 6), # Celebrations of San Salvador
        Date(2016, 9, 15), # Independence Day
        Date(2016, 11, 2), # All Souls' Day
        Date(2016, 12, 25), # Christmas Day
        Date(2017, 1, 1), # New Year's Day
        Date(2017, 4, 13), # Maundy Thursday
        Date(2017, 4, 14), # Good Friday
        Date(2017, 4, 15), # Holy Saturday
        Date(2017, 5, 1), # Labor Day
        Date(2017, 5, 10), # Mother's Day
        Date(2017, 6, 17), # Father's Day
        Date(2017, 8, 6), # Celebrations of San Salvador
        Date(2017, 9, 15), # Independence Day
        Date(2017, 11, 2), # All Souls' Day
        Date(2017, 12, 25), # Christmas Day
        Date(2018, 1, 1), # New Year's Day
        Date(2018, 3, 29), # Maundy Thursday
        Date(2018, 3, 30), # Good Friday
        Date(2018, 3, 31), # Holy Saturday
        Date(2018, 5, 1), # Labor Day
        Date(2018, 5, 10), # Mother's Day
        Date(2018, 6, 17), # Father's Day
        Date(2018, 8, 6), # Celebrations of San Salvador
        Date(2018, 9, 15), # Independence Day
        Date(2018, 11, 2), # All Souls' Day
        Date(2018, 12, 25), # Christmas Day
        Date(2019, 1, 1), # New Year's Day
        Date(2019, 4, 18), # Maundy Thursday
        Date(2019, 4, 19), # Good Friday
        Date(2019, 4, 20), # Holy Saturday
        Date(2019, 5, 1), # Labor Day
        Date(2019, 5, 10), # Mother's Day
        Date(2019, 6, 17), # Father's Day
        Date(2019, 8, 6), # Celebrations of San Salvador
        Date(2019, 9, 15), # Independence Day
        Date(2019, 11, 2), # All Souls' Day
        Date(2019, 12, 25), # Christmas Day
        Date(2020, 1, 1), # New Year's Day
        Date(2020, 4, 9), # Maundy Thursday
        Date(2020, 4, 10), # Good Friday
        Date(2020, 4, 11), # Holy Saturday
        Date(2020, 5, 1), # Labor Day
        Date(2020, 5, 10), # Mother's Day
        Date(2020, 6, 17), # Father's Day
        Date(2020, 8, 6), # Celebrations of San Salvador
        Date(2020, 9, 15), # Independence Day
        Date(2020, 11, 2), # All Souls' Day
        Date(2020, 12, 25), # Christmas Day
        Date(2021, 1, 1), # New Year's Day
        Date(2021, 4, 1), # Maundy Thursday
        Date(2021, 4, 2), # Good Friday
        Date(2021, 4, 3), # Holy Saturday
        Date(2021, 5, 1), # Labor Day
        Date(2021, 5, 10), # Mother's Day
        Date(2021, 6, 17), # Father's Day
        Date(2021, 8, 6), # Celebrations of San Salvador
        Date(2021, 9, 15), # Independence Day
        Date(2021, 11, 2), # All Souls' Day
        Date(2021, 12, 25), # Christmas Day
        Date(2022, 1, 1), # New Year's Day
        Date(2022, 4, 14), # Maundy Thursday
        Date(2022, 4, 15), # Good Friday
        Date(2022, 4, 16), # Holy Saturday
        Date(2022, 5, 1), # Labor Day
        Date(2022, 5, 10), # Mother's Day
        Date(2022, 6, 17), # Father's Day
        Date(2022, 8, 6), # Celebrations of San Salvador
        Date(2022, 9, 15), # Independence Day
        Date(2022, 11, 2), # All Souls' Day
        Date(2022, 12, 25), # Christmas Day
        Date(2023, 1, 1), # New Year's Day
        Date(2023, 4, 6), # Maundy Thursday
        Date(2023, 4, 7), # Good Friday
        Date(2023, 4, 8), # Holy Saturday
        Date(2023, 5, 1), # Labor Day
        Date(2023, 5, 10), # Mother's Day
        Date(2023, 6, 17), # Father's Day
        Date(2023, 8, 6), # Celebrations of San Salvador
        Date(2023, 9, 15), # Independence Day
        Date(2023, 11, 2), # All Souls' Day
        Date(2023, 12, 25), # Christmas Day
        Date(2024, 1, 1), # New Year's Day
        Date(2024, 3, 28), # Maundy Thursday
        Date(2024, 3, 29), # Good Friday
        Date(2024, 3, 30), # Holy Saturday
        Date(2024, 5, 1), # Labor Day
        Date(2024, 5, 10), # Mother's Day
        Date(2024, 6, 17), # Father's Day
        Date(2024, 8, 6), # Celebrations of San Salvador
        Date(2024, 9, 15), # Independence Day
        Date(2024, 11, 2), # All Souls' Day
        Date(2024, 12, 25), # Christmas Day
        Date(2025, 1, 1), # New Year's Day
        Date(2025, 4, 17), # Maundy Thursday
        Date(2025, 4, 18), # Good Friday
        Date(2025, 4, 19), # Holy Saturday
        Date(2025, 5, 1), # Labor Day
        Date(2025, 5, 10), # Mother's Day
        Date(2025, 6, 17), # Father's Day
        Date(2025, 8, 6), # Celebrations of San Salvador
        Date(2025, 9, 15), # Independence Day
        Date(2025, 11, 2), # All Souls' Day
        Date(2025, 12, 25), # Christmas Day
        Date(2026, 1, 1), # New Year's Day
        Date(2026, 4, 2), # Maundy Thursday
        Date(2026, 4, 3), # Good Friday
        Date(2026, 4, 4), # Holy Saturday
        Date(2026, 5, 1), # Labor Day
        Date(2026, 5, 10), # Mother's Day
        Date(2026, 6, 17), # Father's Day
        Date(2026, 8, 6), # Celebrations of San Salvador
        Date(2026, 9, 15), # Independence Day
        Date(2026, 11, 2), # All Souls' Day
        Date(2026, 12, 25), # Christmas Day
        Date(2027, 1, 1), # New Year's Day
        Date(2027, 3, 25), # Maundy Thursday
        Date(2027, 3, 26), # Good Friday
        Date(2027, 3, 27), # Holy Saturday
        Date(2027, 5, 1), # Labor Day
        Date(2027, 5, 10), # Mother's Day
        Date(2027, 6, 17), # Father's Day
        Date(2027, 8, 6), # Celebrations of San Salvador
        Date(2027, 9, 15), # Independence Day
        Date(2027, 11, 2), # All Souls' Day
        Date(2027, 12, 25), # Christmas Day
        Date(2028, 1, 1), # New Year's Day
        Date(2028, 4, 13), # Maundy Thursday
        Date(2028, 4, 14), # Good Friday
        Date(2028, 4, 15), # Holy Saturday
        Date(2028, 5, 1), # Labor Day
        Date(2028, 5, 10), # Mother's Day
        Date(2028, 6, 17), # Father's Day
        Date(2028, 8, 6), # Celebrations of San Salvador
        Date(2028, 9, 15), # Independence Day
        Date(2028, 11, 2), # All Souls' Day
        Date(2028, 12, 25), # Christmas Day
        Date(2029, 1, 1), # New Year's Day
        Date(2029, 3, 29), # Maundy Thursday
        Date(2029, 3, 30), # Good Friday
        Date(2029, 3, 31), # Holy Saturday
        Date(2029, 5, 1), # Labor Day
        Date(2029, 5, 10), # Mother's Day
        Date(2029, 6, 17), # Father's Day
        Date(2029, 8, 6), # Celebrations of San Salvador
        Date(2029, 9, 15), # Independence Day
        Date(2029, 11, 2), # All Souls' Day
        Date(2029, 12, 25), # Christmas Day
        Date(2030, 1, 1), # New Year's Day
        Date(2030, 4, 18), # Maundy Thursday
        Date(2030, 4, 19), # Good Friday
        Date(2030, 4, 20), # Holy Saturday
        Date(2030, 5, 1), # Labor Day
        Date(2030, 5, 10), # Mother's Day
        Date(2030, 6, 17), # Father's Day
        Date(2030, 8, 6), # Celebrations of San Salvador
        Date(2030, 9, 15), # Independence Day
        Date(2030, 11, 2), # All Souls' Day
        Date(2030, 12, 25), # Christmas Day
    ]

    test_holidays(calendar, holidays)

    return nothing
end

end
