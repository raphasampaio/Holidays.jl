module TestBrazil

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Brazil" begin
    calendar = Holidays.Brazil()

    holidays = [
        Date(1970, 1, 1), # Universal Fraternization Day
        Date(1970, 3, 27), # Good Friday
        Date(1970, 4, 21), # Tiradentes' Day
        Date(1970, 5, 1), # Worker's Day
        Date(1970, 9, 7), # Independence Day
        Date(1970, 11, 2), # All Souls' Day
        Date(1970, 11, 15), # Republic Proclamation Day
        Date(1970, 12, 25), # Christmas Day
        Date(1971, 1, 1), # Universal Fraternization Day
        Date(1971, 4, 9), # Good Friday
        Date(1971, 4, 21), # Tiradentes' Day
        Date(1971, 5, 1), # Worker's Day
        Date(1971, 9, 7), # Independence Day
        Date(1971, 11, 2), # All Souls' Day
        Date(1971, 11, 15), # Republic Proclamation Day
        Date(1971, 12, 25), # Christmas Day
        Date(1972, 1, 1), # Universal Fraternization Day
        Date(1972, 3, 31), # Good Friday
        Date(1972, 4, 21), # Tiradentes' Day
        Date(1972, 5, 1), # Worker's Day
        Date(1972, 9, 7), # Independence Day
        Date(1972, 11, 2), # All Souls' Day
        Date(1972, 11, 15), # Republic Proclamation Day
        Date(1972, 12, 25), # Christmas Day
        Date(1973, 1, 1), # Universal Fraternization Day
        Date(1973, 4, 20), # Good Friday
        Date(1973, 4, 21), # Tiradentes' Day
        Date(1973, 5, 1), # Worker's Day
        Date(1973, 9, 7), # Independence Day
        Date(1973, 11, 2), # All Souls' Day
        Date(1973, 11, 15), # Republic Proclamation Day
        Date(1973, 12, 25), # Christmas Day
        Date(1974, 1, 1), # Universal Fraternization Day
        Date(1974, 4, 12), # Good Friday
        Date(1974, 4, 21), # Tiradentes' Day
        Date(1974, 5, 1), # Worker's Day
        Date(1974, 9, 7), # Independence Day
        Date(1974, 11, 2), # All Souls' Day
        Date(1974, 11, 15), # Republic Proclamation Day
        Date(1974, 12, 25), # Christmas Day
        Date(1975, 1, 1), # Universal Fraternization Day
        Date(1975, 3, 28), # Good Friday
        Date(1975, 4, 21), # Tiradentes' Day
        Date(1975, 5, 1), # Worker's Day
        Date(1975, 9, 7), # Independence Day
        Date(1975, 11, 2), # All Souls' Day
        Date(1975, 11, 15), # Republic Proclamation Day
        Date(1975, 12, 25), # Christmas Day
        Date(1976, 1, 1), # Universal Fraternization Day
        Date(1976, 4, 16), # Good Friday
        Date(1976, 4, 21), # Tiradentes' Day
        Date(1976, 5, 1), # Worker's Day
        Date(1976, 9, 7), # Independence Day
        Date(1976, 11, 2), # All Souls' Day
        Date(1976, 11, 15), # Republic Proclamation Day
        Date(1976, 12, 25), # Christmas Day
        Date(1977, 1, 1), # Universal Fraternization Day
        Date(1977, 4, 8), # Good Friday
        Date(1977, 4, 21), # Tiradentes' Day
        Date(1977, 5, 1), # Worker's Day
        Date(1977, 9, 7), # Independence Day
        Date(1977, 11, 2), # All Souls' Day
        Date(1977, 11, 15), # Republic Proclamation Day
        Date(1977, 12, 25), # Christmas Day
        Date(1978, 1, 1), # Universal Fraternization Day
        Date(1978, 3, 24), # Good Friday
        Date(1978, 4, 21), # Tiradentes' Day
        Date(1978, 5, 1), # Worker's Day
        Date(1978, 9, 7), # Independence Day
        Date(1978, 11, 2), # All Souls' Day
        Date(1978, 11, 15), # Republic Proclamation Day
        Date(1978, 12, 25), # Christmas Day
        Date(1979, 1, 1), # Universal Fraternization Day
        Date(1979, 4, 13), # Good Friday
        Date(1979, 4, 21), # Tiradentes' Day
        Date(1979, 5, 1), # Worker's Day
        Date(1979, 9, 7), # Independence Day
        Date(1979, 11, 2), # All Souls' Day
        Date(1979, 11, 15), # Republic Proclamation Day
        Date(1979, 12, 25), # Christmas Day
        Date(1980, 1, 1), # Universal Fraternization Day
        Date(1980, 4, 4), # Good Friday
        Date(1980, 4, 21), # Tiradentes' Day
        Date(1980, 5, 1), # Worker's Day
        Date(1980, 9, 7), # Independence Day
        Date(1980, 10, 12), # Our Lady of Aparecida
        Date(1980, 11, 2), # All Souls' Day
        Date(1980, 11, 15), # Republic Proclamation Day
        Date(1980, 12, 25), # Christmas Day
        Date(1981, 1, 1), # Universal Fraternization Day
        Date(1981, 4, 17), # Good Friday
        Date(1981, 4, 21), # Tiradentes' Day
        Date(1981, 5, 1), # Worker's Day
        Date(1981, 9, 7), # Independence Day
        Date(1981, 10, 12), # Our Lady of Aparecida
        Date(1981, 11, 2), # All Souls' Day
        Date(1981, 11, 15), # Republic Proclamation Day
        Date(1981, 12, 25), # Christmas Day
        Date(1982, 1, 1), # Universal Fraternization Day
        Date(1982, 4, 9), # Good Friday
        Date(1982, 4, 21), # Tiradentes' Day
        Date(1982, 5, 1), # Worker's Day
        Date(1982, 9, 7), # Independence Day
        Date(1982, 10, 12), # Our Lady of Aparecida
        Date(1982, 11, 2), # All Souls' Day
        Date(1982, 11, 15), # Republic Proclamation Day
        Date(1982, 12, 25), # Christmas Day
        Date(1983, 1, 1), # Universal Fraternization Day
        Date(1983, 4, 1), # Good Friday
        Date(1983, 4, 21), # Tiradentes' Day
        Date(1983, 5, 1), # Worker's Day
        Date(1983, 9, 7), # Independence Day
        Date(1983, 10, 12), # Our Lady of Aparecida
        Date(1983, 11, 2), # All Souls' Day
        Date(1983, 11, 15), # Republic Proclamation Day
        Date(1983, 12, 25), # Christmas Day
        Date(1984, 1, 1), # Universal Fraternization Day
        Date(1984, 4, 20), # Good Friday
        Date(1984, 4, 21), # Tiradentes' Day
        Date(1984, 5, 1), # Worker's Day
        Date(1984, 9, 7), # Independence Day
        Date(1984, 10, 12), # Our Lady of Aparecida
        Date(1984, 11, 2), # All Souls' Day
        Date(1984, 11, 15), # Republic Proclamation Day
        Date(1984, 12, 25), # Christmas Day
        Date(1985, 1, 1), # Universal Fraternization Day
        Date(1985, 4, 5), # Good Friday
        Date(1985, 4, 21), # Tiradentes' Day
        Date(1985, 5, 1), # Worker's Day
        Date(1985, 9, 7), # Independence Day
        Date(1985, 10, 12), # Our Lady of Aparecida
        Date(1985, 11, 2), # All Souls' Day
        Date(1985, 11, 15), # Republic Proclamation Day
        Date(1985, 12, 25), # Christmas Day
        Date(1986, 1, 1), # Universal Fraternization Day
        Date(1986, 3, 28), # Good Friday
        Date(1986, 4, 21), # Tiradentes' Day
        Date(1986, 5, 1), # Worker's Day
        Date(1986, 9, 7), # Independence Day
        Date(1986, 10, 12), # Our Lady of Aparecida
        Date(1986, 11, 2), # All Souls' Day
        Date(1986, 11, 15), # Republic Proclamation Day
        Date(1986, 12, 25), # Christmas Day
        Date(1987, 1, 1), # Universal Fraternization Day
        Date(1987, 4, 17), # Good Friday
        Date(1987, 4, 21), # Tiradentes' Day
        Date(1987, 5, 1), # Worker's Day
        Date(1987, 9, 7), # Independence Day
        Date(1987, 10, 12), # Our Lady of Aparecida
        Date(1987, 11, 2), # All Souls' Day
        Date(1987, 11, 15), # Republic Proclamation Day
        Date(1987, 12, 25), # Christmas Day
        Date(1988, 1, 1), # Universal Fraternization Day
        Date(1988, 4, 1), # Good Friday
        Date(1988, 4, 21), # Tiradentes' Day
        Date(1988, 5, 1), # Worker's Day
        Date(1988, 9, 7), # Independence Day
        Date(1988, 10, 12), # Our Lady of Aparecida
        Date(1988, 11, 2), # All Souls' Day
        Date(1988, 11, 15), # Republic Proclamation Day
        Date(1988, 12, 25), # Christmas Day
        Date(1989, 1, 1), # Universal Fraternization Day
        Date(1989, 3, 24), # Good Friday
        Date(1989, 4, 21), # Tiradentes' Day
        Date(1989, 5, 1), # Worker's Day
        Date(1989, 9, 7), # Independence Day
        Date(1989, 10, 12), # Our Lady of Aparecida
        Date(1989, 11, 2), # All Souls' Day
        Date(1989, 11, 15), # Republic Proclamation Day
        Date(1989, 12, 25), # Christmas Day
        Date(1990, 1, 1), # Universal Fraternization Day
        Date(1990, 4, 13), # Good Friday
        Date(1990, 4, 21), # Tiradentes' Day
        Date(1990, 5, 1), # Worker's Day
        Date(1990, 9, 7), # Independence Day
        Date(1990, 10, 12), # Our Lady of Aparecida
        Date(1990, 11, 2), # All Souls' Day
        Date(1990, 11, 15), # Republic Proclamation Day
        Date(1990, 12, 25), # Christmas Day
        Date(1991, 1, 1), # Universal Fraternization Day
        Date(1991, 3, 29), # Good Friday
        Date(1991, 4, 21), # Tiradentes' Day
        Date(1991, 5, 1), # Worker's Day
        Date(1991, 9, 7), # Independence Day
        Date(1991, 10, 12), # Our Lady of Aparecida
        Date(1991, 11, 2), # All Souls' Day
        Date(1991, 11, 15), # Republic Proclamation Day
        Date(1991, 12, 25), # Christmas Day
        Date(1992, 1, 1), # Universal Fraternization Day
        Date(1992, 4, 17), # Good Friday
        Date(1992, 4, 21), # Tiradentes' Day
        Date(1992, 5, 1), # Worker's Day
        Date(1992, 9, 7), # Independence Day
        Date(1992, 10, 12), # Our Lady of Aparecida
        Date(1992, 11, 2), # All Souls' Day
        Date(1992, 11, 15), # Republic Proclamation Day
        Date(1992, 12, 25), # Christmas Day
        Date(1993, 1, 1), # Universal Fraternization Day
        Date(1993, 4, 9), # Good Friday
        Date(1993, 4, 21), # Tiradentes' Day
        Date(1993, 5, 1), # Worker's Day
        Date(1993, 9, 7), # Independence Day
        Date(1993, 10, 12), # Our Lady of Aparecida
        Date(1993, 11, 2), # All Souls' Day
        Date(1993, 11, 15), # Republic Proclamation Day
        Date(1993, 12, 25), # Christmas Day
        Date(1994, 1, 1), # Universal Fraternization Day
        Date(1994, 4, 1), # Good Friday
        Date(1994, 4, 21), # Tiradentes' Day
        Date(1994, 5, 1), # Worker's Day
        Date(1994, 9, 7), # Independence Day
        Date(1994, 10, 12), # Our Lady of Aparecida
        Date(1994, 11, 2), # All Souls' Day
        Date(1994, 11, 15), # Republic Proclamation Day
        Date(1994, 12, 25), # Christmas Day
        Date(1995, 1, 1), # Universal Fraternization Day
        Date(1995, 4, 14), # Good Friday
        Date(1995, 4, 21), # Tiradentes' Day
        Date(1995, 5, 1), # Worker's Day
        Date(1995, 9, 7), # Independence Day
        Date(1995, 10, 12), # Our Lady of Aparecida
        Date(1995, 11, 2), # All Souls' Day
        Date(1995, 11, 15), # Republic Proclamation Day
        Date(1995, 12, 25), # Christmas Day
        Date(1996, 1, 1), # Universal Fraternization Day
        Date(1996, 4, 5), # Good Friday
        Date(1996, 4, 21), # Tiradentes' Day
        Date(1996, 5, 1), # Worker's Day
        Date(1996, 9, 7), # Independence Day
        Date(1996, 10, 12), # Our Lady of Aparecida
        Date(1996, 11, 2), # All Souls' Day
        Date(1996, 11, 15), # Republic Proclamation Day
        Date(1996, 12, 25), # Christmas Day
        Date(1997, 1, 1), # Universal Fraternization Day
        Date(1997, 3, 28), # Good Friday
        Date(1997, 4, 21), # Tiradentes' Day
        Date(1997, 5, 1), # Worker's Day
        Date(1997, 9, 7), # Independence Day
        Date(1997, 10, 12), # Our Lady of Aparecida
        Date(1997, 11, 2), # All Souls' Day
        Date(1997, 11, 15), # Republic Proclamation Day
        Date(1997, 12, 25), # Christmas Day
        Date(1998, 1, 1), # Universal Fraternization Day
        Date(1998, 4, 10), # Good Friday
        Date(1998, 4, 21), # Tiradentes' Day
        Date(1998, 5, 1), # Worker's Day
        Date(1998, 9, 7), # Independence Day
        Date(1998, 10, 12), # Our Lady of Aparecida
        Date(1998, 11, 2), # All Souls' Day
        Date(1998, 11, 15), # Republic Proclamation Day
        Date(1998, 12, 25), # Christmas Day
        Date(1999, 1, 1), # Universal Fraternization Day
        Date(1999, 4, 2), # Good Friday
        Date(1999, 4, 21), # Tiradentes' Day
        Date(1999, 5, 1), # Worker's Day
        Date(1999, 9, 7), # Independence Day
        Date(1999, 10, 12), # Our Lady of Aparecida
        Date(1999, 11, 2), # All Souls' Day
        Date(1999, 11, 15), # Republic Proclamation Day
        Date(1999, 12, 25), # Christmas Day
        Date(2000, 1, 1), # Universal Fraternization Day
        Date(2000, 4, 21), # Good Friday; Tiradentes' Day
        Date(2000, 5, 1), # Worker's Day
        Date(2000, 9, 7), # Independence Day
        Date(2000, 10, 12), # Our Lady of Aparecida
        Date(2000, 11, 2), # All Souls' Day
        Date(2000, 11, 15), # Republic Proclamation Day
        Date(2000, 12, 25), # Christmas Day
        Date(2001, 1, 1), # Universal Fraternization Day
        Date(2001, 4, 13), # Good Friday
        Date(2001, 4, 21), # Tiradentes' Day
        Date(2001, 5, 1), # Worker's Day
        Date(2001, 9, 7), # Independence Day
        Date(2001, 10, 12), # Our Lady of Aparecida
        Date(2001, 11, 2), # All Souls' Day
        Date(2001, 11, 15), # Republic Proclamation Day
        Date(2001, 12, 25), # Christmas Day
        Date(2002, 1, 1), # Universal Fraternization Day
        Date(2002, 3, 29), # Good Friday
        Date(2002, 4, 21), # Tiradentes' Day
        Date(2002, 5, 1), # Worker's Day
        Date(2002, 9, 7), # Independence Day
        Date(2002, 10, 12), # Our Lady of Aparecida
        Date(2002, 11, 2), # All Souls' Day
        Date(2002, 11, 15), # Republic Proclamation Day
        Date(2002, 12, 25), # Christmas Day
        Date(2003, 1, 1), # Universal Fraternization Day
        Date(2003, 4, 18), # Good Friday
        Date(2003, 4, 21), # Tiradentes' Day
        Date(2003, 5, 1), # Worker's Day
        Date(2003, 9, 7), # Independence Day
        Date(2003, 10, 12), # Our Lady of Aparecida
        Date(2003, 11, 2), # All Souls' Day
        Date(2003, 11, 15), # Republic Proclamation Day
        Date(2003, 12, 25), # Christmas Day
        Date(2004, 1, 1), # Universal Fraternization Day
        Date(2004, 4, 9), # Good Friday
        Date(2004, 4, 21), # Tiradentes' Day
        Date(2004, 5, 1), # Worker's Day
        Date(2004, 9, 7), # Independence Day
        Date(2004, 10, 12), # Our Lady of Aparecida
        Date(2004, 11, 2), # All Souls' Day
        Date(2004, 11, 15), # Republic Proclamation Day
        Date(2004, 12, 25), # Christmas Day
        Date(2005, 1, 1), # Universal Fraternization Day
        Date(2005, 3, 25), # Good Friday
        Date(2005, 4, 21), # Tiradentes' Day
        Date(2005, 5, 1), # Worker's Day
        Date(2005, 9, 7), # Independence Day
        Date(2005, 10, 12), # Our Lady of Aparecida
        Date(2005, 11, 2), # All Souls' Day
        Date(2005, 11, 15), # Republic Proclamation Day
        Date(2005, 12, 25), # Christmas Day
        Date(2006, 1, 1), # Universal Fraternization Day
        Date(2006, 4, 14), # Good Friday
        Date(2006, 4, 21), # Tiradentes' Day
        Date(2006, 5, 1), # Worker's Day
        Date(2006, 9, 7), # Independence Day
        Date(2006, 10, 12), # Our Lady of Aparecida
        Date(2006, 11, 2), # All Souls' Day
        Date(2006, 11, 15), # Republic Proclamation Day
        Date(2006, 12, 25), # Christmas Day
        Date(2007, 1, 1), # Universal Fraternization Day
        Date(2007, 4, 6), # Good Friday
        Date(2007, 4, 21), # Tiradentes' Day
        Date(2007, 5, 1), # Worker's Day
        Date(2007, 9, 7), # Independence Day
        Date(2007, 10, 12), # Our Lady of Aparecida
        Date(2007, 11, 2), # All Souls' Day
        Date(2007, 11, 15), # Republic Proclamation Day
        Date(2007, 12, 25), # Christmas Day
        Date(2008, 1, 1), # Universal Fraternization Day
        Date(2008, 3, 21), # Good Friday
        Date(2008, 4, 21), # Tiradentes' Day
        Date(2008, 5, 1), # Worker's Day
        Date(2008, 9, 7), # Independence Day
        Date(2008, 10, 12), # Our Lady of Aparecida
        Date(2008, 11, 2), # All Souls' Day
        Date(2008, 11, 15), # Republic Proclamation Day
        Date(2008, 12, 25), # Christmas Day
        Date(2009, 1, 1), # Universal Fraternization Day
        Date(2009, 4, 10), # Good Friday
        Date(2009, 4, 21), # Tiradentes' Day
        Date(2009, 5, 1), # Worker's Day
        Date(2009, 9, 7), # Independence Day
        Date(2009, 10, 12), # Our Lady of Aparecida
        Date(2009, 11, 2), # All Souls' Day
        Date(2009, 11, 15), # Republic Proclamation Day
        Date(2009, 12, 25), # Christmas Day
        Date(2010, 1, 1), # Universal Fraternization Day
        Date(2010, 4, 2), # Good Friday
        Date(2010, 4, 21), # Tiradentes' Day
        Date(2010, 5, 1), # Worker's Day
        Date(2010, 9, 7), # Independence Day
        Date(2010, 10, 12), # Our Lady of Aparecida
        Date(2010, 11, 2), # All Souls' Day
        Date(2010, 11, 15), # Republic Proclamation Day
        Date(2010, 12, 25), # Christmas Day
        Date(2011, 1, 1), # Universal Fraternization Day
        Date(2011, 4, 21), # Tiradentes' Day
        Date(2011, 4, 22), # Good Friday
        Date(2011, 5, 1), # Worker's Day
        Date(2011, 9, 7), # Independence Day
        Date(2011, 10, 12), # Our Lady of Aparecida
        Date(2011, 11, 2), # All Souls' Day
        Date(2011, 11, 15), # Republic Proclamation Day
        Date(2011, 12, 25), # Christmas Day
        Date(2012, 1, 1), # Universal Fraternization Day
        Date(2012, 4, 6), # Good Friday
        Date(2012, 4, 21), # Tiradentes' Day
        Date(2012, 5, 1), # Worker's Day
        Date(2012, 9, 7), # Independence Day
        Date(2012, 10, 12), # Our Lady of Aparecida
        Date(2012, 11, 2), # All Souls' Day
        Date(2012, 11, 15), # Republic Proclamation Day
        Date(2012, 12, 25), # Christmas Day
        Date(2013, 1, 1), # Universal Fraternization Day
        Date(2013, 3, 29), # Good Friday
        Date(2013, 4, 21), # Tiradentes' Day
        Date(2013, 5, 1), # Worker's Day
        Date(2013, 9, 7), # Independence Day
        Date(2013, 10, 12), # Our Lady of Aparecida
        Date(2013, 11, 2), # All Souls' Day
        Date(2013, 11, 15), # Republic Proclamation Day
        Date(2013, 12, 25), # Christmas Day
        Date(2014, 1, 1), # Universal Fraternization Day
        Date(2014, 4, 18), # Good Friday
        Date(2014, 4, 21), # Tiradentes' Day
        Date(2014, 5, 1), # Worker's Day
        Date(2014, 9, 7), # Independence Day
        Date(2014, 10, 12), # Our Lady of Aparecida
        Date(2014, 11, 2), # All Souls' Day
        Date(2014, 11, 15), # Republic Proclamation Day
        Date(2014, 12, 25), # Christmas Day
        Date(2015, 1, 1), # Universal Fraternization Day
        Date(2015, 4, 3), # Good Friday
        Date(2015, 4, 21), # Tiradentes' Day
        Date(2015, 5, 1), # Worker's Day
        Date(2015, 9, 7), # Independence Day
        Date(2015, 10, 12), # Our Lady of Aparecida
        Date(2015, 11, 2), # All Souls' Day
        Date(2015, 11, 15), # Republic Proclamation Day
        Date(2015, 12, 25), # Christmas Day
        Date(2016, 1, 1), # Universal Fraternization Day
        Date(2016, 3, 25), # Good Friday
        Date(2016, 4, 21), # Tiradentes' Day
        Date(2016, 5, 1), # Worker's Day
        Date(2016, 9, 7), # Independence Day
        Date(2016, 10, 12), # Our Lady of Aparecida
        Date(2016, 11, 2), # All Souls' Day
        Date(2016, 11, 15), # Republic Proclamation Day
        Date(2016, 12, 25), # Christmas Day
        Date(2017, 1, 1), # Universal Fraternization Day
        Date(2017, 4, 14), # Good Friday
        Date(2017, 4, 21), # Tiradentes' Day
        Date(2017, 5, 1), # Worker's Day
        Date(2017, 9, 7), # Independence Day
        Date(2017, 10, 12), # Our Lady of Aparecida
        Date(2017, 11, 2), # All Souls' Day
        Date(2017, 11, 15), # Republic Proclamation Day
        Date(2017, 12, 25), # Christmas Day
        Date(2018, 1, 1), # Universal Fraternization Day
        Date(2018, 3, 30), # Good Friday
        Date(2018, 4, 21), # Tiradentes' Day
        Date(2018, 5, 1), # Worker's Day
        Date(2018, 9, 7), # Independence Day
        Date(2018, 10, 12), # Our Lady of Aparecida
        Date(2018, 11, 2), # All Souls' Day
        Date(2018, 11, 15), # Republic Proclamation Day
        Date(2018, 12, 25), # Christmas Day
        Date(2019, 1, 1), # Universal Fraternization Day
        Date(2019, 4, 19), # Good Friday
        Date(2019, 4, 21), # Tiradentes' Day
        Date(2019, 5, 1), # Worker's Day
        Date(2019, 9, 7), # Independence Day
        Date(2019, 10, 12), # Our Lady of Aparecida
        Date(2019, 11, 2), # All Souls' Day
        Date(2019, 11, 15), # Republic Proclamation Day
        Date(2019, 12, 25), # Christmas Day
        Date(2020, 1, 1), # Universal Fraternization Day
        Date(2020, 4, 10), # Good Friday
        Date(2020, 4, 21), # Tiradentes' Day
        Date(2020, 5, 1), # Worker's Day
        Date(2020, 9, 7), # Independence Day
        Date(2020, 10, 12), # Our Lady of Aparecida
        Date(2020, 11, 2), # All Souls' Day
        Date(2020, 11, 15), # Republic Proclamation Day
        Date(2020, 12, 25), # Christmas Day
        Date(2021, 1, 1), # Universal Fraternization Day
        Date(2021, 4, 2), # Good Friday
        Date(2021, 4, 21), # Tiradentes' Day
        Date(2021, 5, 1), # Worker's Day
        Date(2021, 9, 7), # Independence Day
        Date(2021, 10, 12), # Our Lady of Aparecida
        Date(2021, 11, 2), # All Souls' Day
        Date(2021, 11, 15), # Republic Proclamation Day
        Date(2021, 12, 25), # Christmas Day
        Date(2022, 1, 1), # Universal Fraternization Day
        Date(2022, 4, 15), # Good Friday
        Date(2022, 4, 21), # Tiradentes' Day
        Date(2022, 5, 1), # Worker's Day
        Date(2022, 9, 7), # Independence Day
        Date(2022, 10, 12), # Our Lady of Aparecida
        Date(2022, 11, 2), # All Souls' Day
        Date(2022, 11, 15), # Republic Proclamation Day
        Date(2022, 12, 25), # Christmas Day
        Date(2023, 1, 1), # Universal Fraternization Day
        Date(2023, 4, 7), # Good Friday
        Date(2023, 4, 21), # Tiradentes' Day
        Date(2023, 5, 1), # Worker's Day
        Date(2023, 9, 7), # Independence Day
        Date(2023, 10, 12), # Our Lady of Aparecida
        Date(2023, 11, 2), # All Souls' Day
        Date(2023, 11, 15), # Republic Proclamation Day
        Date(2023, 12, 25), # Christmas Day
        Date(2024, 1, 1), # Universal Fraternization Day
        Date(2024, 3, 29), # Good Friday
        Date(2024, 4, 21), # Tiradentes' Day
        Date(2024, 5, 1), # Worker's Day
        Date(2024, 9, 7), # Independence Day
        Date(2024, 10, 12), # Our Lady of Aparecida
        Date(2024, 11, 2), # All Souls' Day
        Date(2024, 11, 15), # Republic Proclamation Day
        Date(2024, 11, 20), # National Day of Zumbi and Black Awareness
        Date(2024, 12, 25), # Christmas Day
        Date(2025, 1, 1), # Universal Fraternization Day
        Date(2025, 4, 18), # Good Friday
        Date(2025, 4, 21), # Tiradentes' Day
        Date(2025, 5, 1), # Worker's Day
        Date(2025, 9, 7), # Independence Day
        Date(2025, 10, 12), # Our Lady of Aparecida
        Date(2025, 11, 2), # All Souls' Day
        Date(2025, 11, 15), # Republic Proclamation Day
        Date(2025, 11, 20), # National Day of Zumbi and Black Awareness
        Date(2025, 12, 25), # Christmas Day
        Date(2026, 1, 1), # Universal Fraternization Day
        Date(2026, 4, 3), # Good Friday
        Date(2026, 4, 21), # Tiradentes' Day
        Date(2026, 5, 1), # Worker's Day
        Date(2026, 9, 7), # Independence Day
        Date(2026, 10, 12), # Our Lady of Aparecida
        Date(2026, 11, 2), # All Souls' Day
        Date(2026, 11, 15), # Republic Proclamation Day
        Date(2026, 11, 20), # National Day of Zumbi and Black Awareness
        Date(2026, 12, 25), # Christmas Day
        Date(2027, 1, 1), # Universal Fraternization Day
        Date(2027, 3, 26), # Good Friday
        Date(2027, 4, 21), # Tiradentes' Day
        Date(2027, 5, 1), # Worker's Day
        Date(2027, 9, 7), # Independence Day
        Date(2027, 10, 12), # Our Lady of Aparecida
        Date(2027, 11, 2), # All Souls' Day
        Date(2027, 11, 15), # Republic Proclamation Day
        Date(2027, 11, 20), # National Day of Zumbi and Black Awareness
        Date(2027, 12, 25), # Christmas Day
        Date(2028, 1, 1), # Universal Fraternization Day
        Date(2028, 4, 14), # Good Friday
        Date(2028, 4, 21), # Tiradentes' Day
        Date(2028, 5, 1), # Worker's Day
        Date(2028, 9, 7), # Independence Day
        Date(2028, 10, 12), # Our Lady of Aparecida
        Date(2028, 11, 2), # All Souls' Day
        Date(2028, 11, 15), # Republic Proclamation Day
        Date(2028, 11, 20), # National Day of Zumbi and Black Awareness
        Date(2028, 12, 25), # Christmas Day
        Date(2029, 1, 1), # Universal Fraternization Day
        Date(2029, 3, 30), # Good Friday
        Date(2029, 4, 21), # Tiradentes' Day
        Date(2029, 5, 1), # Worker's Day
        Date(2029, 9, 7), # Independence Day
        Date(2029, 10, 12), # Our Lady of Aparecida
        Date(2029, 11, 2), # All Souls' Day
        Date(2029, 11, 15), # Republic Proclamation Day
        Date(2029, 11, 20), # National Day of Zumbi and Black Awareness
        Date(2029, 12, 25), # Christmas Day
        Date(2030, 1, 1), # Universal Fraternization Day
        Date(2030, 4, 19), # Good Friday
        Date(2030, 4, 21), # Tiradentes' Day
        Date(2030, 5, 1), # Worker's Day
        Date(2030, 9, 7), # Independence Day
        Date(2030, 10, 12), # Our Lady of Aparecida
        Date(2030, 11, 2), # All Souls' Day
        Date(2030, 11, 15), # Republic Proclamation Day
        Date(2030, 11, 20), # National Day of Zumbi and Black Awareness
        Date(2030, 12, 25), # Christmas Day
    ]

    test_holidays(calendar, holidays)

    return nothing
end

end
