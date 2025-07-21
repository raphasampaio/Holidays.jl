module TestUnitedStates

using Dates
using Holidays
using Test

include("../util.jl")

@testset "UnitedStates" begin
    calendar = Holidays.UnitedStates()

    holidays = [
        Date(1970, 1, 1), # New Year's Day
        Date(1970, 2, 22), # Washington's Birthday
        Date(1970, 5, 30), # Memorial Day
        Date(1970, 7, 3), # Independence Day (observed)
        Date(1970, 7, 4), # Independence Day
        Date(1970, 9, 7), # Labor Day
        Date(1970, 10, 12), # Columbus Day
        Date(1970, 11, 11), # Veterans Day
        Date(1970, 11, 26), # Thanksgiving Day
        Date(1970, 12, 25), # Christmas Day
        Date(1971, 1, 1), # New Year's Day
        Date(1971, 2, 15), # Washington's Birthday
        Date(1971, 5, 31), # Memorial Day
        Date(1971, 7, 4), # Independence Day
        Date(1971, 7, 5), # Independence Day (observed)
        Date(1971, 9, 6), # Labor Day
        Date(1971, 10, 11), # Columbus Day
        Date(1971, 10, 25), # Veterans Day
        Date(1971, 11, 25), # Thanksgiving Day
        Date(1971, 12, 24), # Christmas Day (observed)
        Date(1971, 12, 25), # Christmas Day
        Date(1971, 12, 31), # New Year's Day (observed)
        Date(1972, 1, 1), # New Year's Day
        Date(1972, 2, 21), # Washington's Birthday
        Date(1972, 5, 29), # Memorial Day
        Date(1972, 7, 4), # Independence Day
        Date(1972, 9, 4), # Labor Day
        Date(1972, 10, 9), # Columbus Day
        Date(1972, 10, 23), # Veterans Day
        Date(1972, 11, 23), # Thanksgiving Day
        Date(1972, 12, 25), # Christmas Day
        Date(1973, 1, 1), # New Year's Day
        Date(1973, 2, 19), # Washington's Birthday
        Date(1973, 5, 28), # Memorial Day
        Date(1973, 7, 4), # Independence Day
        Date(1973, 9, 3), # Labor Day
        Date(1973, 10, 8), # Columbus Day
        Date(1973, 10, 22), # Veterans Day
        Date(1973, 11, 22), # Thanksgiving Day
        Date(1973, 12, 25), # Christmas Day
        Date(1974, 1, 1), # New Year's Day
        Date(1974, 2, 18), # Washington's Birthday
        Date(1974, 5, 27), # Memorial Day
        Date(1974, 7, 4), # Independence Day
        Date(1974, 9, 2), # Labor Day
        Date(1974, 10, 14), # Columbus Day
        Date(1974, 10, 28), # Veterans Day
        Date(1974, 11, 28), # Thanksgiving Day
        Date(1974, 12, 25), # Christmas Day
        Date(1975, 1, 1), # New Year's Day
        Date(1975, 2, 17), # Washington's Birthday
        Date(1975, 5, 26), # Memorial Day
        Date(1975, 7, 4), # Independence Day
        Date(1975, 9, 1), # Labor Day
        Date(1975, 10, 13), # Columbus Day
        Date(1975, 10, 27), # Veterans Day
        Date(1975, 11, 27), # Thanksgiving Day
        Date(1975, 12, 25), # Christmas Day
        Date(1976, 1, 1), # New Year's Day
        Date(1976, 2, 16), # Washington's Birthday
        Date(1976, 5, 31), # Memorial Day
        Date(1976, 7, 4), # Independence Day
        Date(1976, 7, 5), # Independence Day (observed)
        Date(1976, 9, 6), # Labor Day
        Date(1976, 10, 11), # Columbus Day
        Date(1976, 10, 25), # Veterans Day
        Date(1976, 11, 25), # Thanksgiving Day
        Date(1976, 12, 24), # Christmas Day (observed)
        Date(1976, 12, 25), # Christmas Day
        Date(1976, 12, 31), # New Year's Day (observed)
        Date(1977, 1, 1), # New Year's Day
        Date(1977, 2, 21), # Washington's Birthday
        Date(1977, 5, 30), # Memorial Day
        Date(1977, 7, 4), # Independence Day
        Date(1977, 9, 5), # Labor Day
        Date(1977, 10, 10), # Columbus Day
        Date(1977, 10, 24), # Veterans Day
        Date(1977, 11, 24), # Thanksgiving Day
        Date(1977, 12, 25), # Christmas Day
        Date(1977, 12, 26), # Christmas Day (observed)
        Date(1978, 1, 1), # New Year's Day
        Date(1978, 1, 2), # New Year's Day (observed)
        Date(1978, 2, 20), # Washington's Birthday
        Date(1978, 5, 29), # Memorial Day
        Date(1978, 7, 4), # Independence Day
        Date(1978, 9, 4), # Labor Day
        Date(1978, 10, 9), # Columbus Day
        Date(1978, 11, 10), # Veterans Day (observed)
        Date(1978, 11, 11), # Veterans Day
        Date(1978, 11, 23), # Thanksgiving Day
        Date(1978, 12, 25), # Christmas Day
        Date(1979, 1, 1), # New Year's Day
        Date(1979, 2, 19), # Washington's Birthday
        Date(1979, 5, 28), # Memorial Day
        Date(1979, 7, 4), # Independence Day
        Date(1979, 9, 3), # Labor Day
        Date(1979, 10, 8), # Columbus Day
        Date(1979, 11, 11), # Veterans Day
        Date(1979, 11, 12), # Veterans Day (observed)
        Date(1979, 11, 22), # Thanksgiving Day
        Date(1979, 12, 25), # Christmas Day
        Date(1980, 1, 1), # New Year's Day
        Date(1980, 2, 18), # Washington's Birthday
        Date(1980, 5, 26), # Memorial Day
        Date(1980, 7, 4), # Independence Day
        Date(1980, 9, 1), # Labor Day
        Date(1980, 10, 13), # Columbus Day
        Date(1980, 11, 11), # Veterans Day
        Date(1980, 11, 27), # Thanksgiving Day
        Date(1980, 12, 25), # Christmas Day
        Date(1981, 1, 1), # New Year's Day
        Date(1981, 2, 16), # Washington's Birthday
        Date(1981, 5, 25), # Memorial Day
        Date(1981, 7, 3), # Independence Day (observed)
        Date(1981, 7, 4), # Independence Day
        Date(1981, 9, 7), # Labor Day
        Date(1981, 10, 12), # Columbus Day
        Date(1981, 11, 11), # Veterans Day
        Date(1981, 11, 26), # Thanksgiving Day
        Date(1981, 12, 25), # Christmas Day
        Date(1982, 1, 1), # New Year's Day
        Date(1982, 2, 15), # Washington's Birthday
        Date(1982, 5, 31), # Memorial Day
        Date(1982, 7, 4), # Independence Day
        Date(1982, 7, 5), # Independence Day (observed)
        Date(1982, 9, 6), # Labor Day
        Date(1982, 10, 11), # Columbus Day
        Date(1982, 11, 11), # Veterans Day
        Date(1982, 11, 25), # Thanksgiving Day
        Date(1982, 12, 24), # Christmas Day (observed)
        Date(1982, 12, 25), # Christmas Day
        Date(1982, 12, 31), # New Year's Day (observed)
        Date(1983, 1, 1), # New Year's Day
        Date(1983, 2, 21), # Washington's Birthday
        Date(1983, 5, 30), # Memorial Day
        Date(1983, 7, 4), # Independence Day
        Date(1983, 9, 5), # Labor Day
        Date(1983, 10, 10), # Columbus Day
        Date(1983, 11, 11), # Veterans Day
        Date(1983, 11, 24), # Thanksgiving Day
        Date(1983, 12, 25), # Christmas Day
        Date(1983, 12, 26), # Christmas Day (observed)
        Date(1984, 1, 1), # New Year's Day
        Date(1984, 1, 2), # New Year's Day (observed)
        Date(1984, 2, 20), # Washington's Birthday
        Date(1984, 5, 28), # Memorial Day
        Date(1984, 7, 4), # Independence Day
        Date(1984, 9, 3), # Labor Day
        Date(1984, 10, 8), # Columbus Day
        Date(1984, 11, 11), # Veterans Day
        Date(1984, 11, 12), # Veterans Day (observed)
        Date(1984, 11, 22), # Thanksgiving Day
        Date(1984, 12, 25), # Christmas Day
        Date(1985, 1, 1), # New Year's Day
        Date(1985, 2, 18), # Washington's Birthday
        Date(1985, 5, 27), # Memorial Day
        Date(1985, 7, 4), # Independence Day
        Date(1985, 9, 2), # Labor Day
        Date(1985, 10, 14), # Columbus Day
        Date(1985, 11, 11), # Veterans Day
        Date(1985, 11, 28), # Thanksgiving Day
        Date(1985, 12, 25), # Christmas Day
        Date(1986, 1, 1), # New Year's Day
        Date(1986, 1, 20), # Martin Luther King Jr. Day
        Date(1986, 2, 17), # Washington's Birthday
        Date(1986, 5, 26), # Memorial Day
        Date(1986, 7, 4), # Independence Day
        Date(1986, 9, 1), # Labor Day
        Date(1986, 10, 13), # Columbus Day
        Date(1986, 11, 11), # Veterans Day
        Date(1986, 11, 27), # Thanksgiving Day
        Date(1986, 12, 25), # Christmas Day
        Date(1987, 1, 1), # New Year's Day
        Date(1987, 1, 19), # Martin Luther King Jr. Day
        Date(1987, 2, 16), # Washington's Birthday
        Date(1987, 5, 25), # Memorial Day
        Date(1987, 7, 3), # Independence Day (observed)
        Date(1987, 7, 4), # Independence Day
        Date(1987, 9, 7), # Labor Day
        Date(1987, 10, 12), # Columbus Day
        Date(1987, 11, 11), # Veterans Day
        Date(1987, 11, 26), # Thanksgiving Day
        Date(1987, 12, 25), # Christmas Day
        Date(1988, 1, 1), # New Year's Day
        Date(1988, 1, 18), # Martin Luther King Jr. Day
        Date(1988, 2, 15), # Washington's Birthday
        Date(1988, 5, 30), # Memorial Day
        Date(1988, 7, 4), # Independence Day
        Date(1988, 9, 5), # Labor Day
        Date(1988, 10, 10), # Columbus Day
        Date(1988, 11, 11), # Veterans Day
        Date(1988, 11, 24), # Thanksgiving Day
        Date(1988, 12, 25), # Christmas Day
        Date(1988, 12, 26), # Christmas Day (observed)
        Date(1989, 1, 1), # New Year's Day
        Date(1989, 1, 2), # New Year's Day (observed)
        Date(1989, 1, 16), # Martin Luther King Jr. Day
        Date(1989, 2, 20), # Washington's Birthday
        Date(1989, 5, 29), # Memorial Day
        Date(1989, 7, 4), # Independence Day
        Date(1989, 9, 4), # Labor Day
        Date(1989, 10, 9), # Columbus Day
        Date(1989, 11, 10), # Veterans Day (observed)
        Date(1989, 11, 11), # Veterans Day
        Date(1989, 11, 23), # Thanksgiving Day
        Date(1989, 12, 25), # Christmas Day
        Date(1990, 1, 1), # New Year's Day
        Date(1990, 1, 15), # Martin Luther King Jr. Day
        Date(1990, 2, 19), # Washington's Birthday
        Date(1990, 5, 28), # Memorial Day
        Date(1990, 7, 4), # Independence Day
        Date(1990, 9, 3), # Labor Day
        Date(1990, 10, 8), # Columbus Day
        Date(1990, 11, 11), # Veterans Day
        Date(1990, 11, 12), # Veterans Day (observed)
        Date(1990, 11, 22), # Thanksgiving Day
        Date(1990, 12, 25), # Christmas Day
        Date(1991, 1, 1), # New Year's Day
        Date(1991, 1, 21), # Martin Luther King Jr. Day
        Date(1991, 2, 18), # Washington's Birthday
        Date(1991, 5, 27), # Memorial Day
        Date(1991, 7, 4), # Independence Day
        Date(1991, 9, 2), # Labor Day
        Date(1991, 10, 14), # Columbus Day
        Date(1991, 11, 11), # Veterans Day
        Date(1991, 11, 28), # Thanksgiving Day
        Date(1991, 12, 25), # Christmas Day
        Date(1992, 1, 1), # New Year's Day
        Date(1992, 1, 20), # Martin Luther King Jr. Day
        Date(1992, 2, 17), # Washington's Birthday
        Date(1992, 5, 25), # Memorial Day
        Date(1992, 7, 3), # Independence Day (observed)
        Date(1992, 7, 4), # Independence Day
        Date(1992, 9, 7), # Labor Day
        Date(1992, 10, 12), # Columbus Day
        Date(1992, 11, 11), # Veterans Day
        Date(1992, 11, 26), # Thanksgiving Day
        Date(1992, 12, 25), # Christmas Day
        Date(1993, 1, 1), # New Year's Day
        Date(1993, 1, 18), # Martin Luther King Jr. Day
        Date(1993, 2, 15), # Washington's Birthday
        Date(1993, 5, 31), # Memorial Day
        Date(1993, 7, 4), # Independence Day
        Date(1993, 7, 5), # Independence Day (observed)
        Date(1993, 9, 6), # Labor Day
        Date(1993, 10, 11), # Columbus Day
        Date(1993, 11, 11), # Veterans Day
        Date(1993, 11, 25), # Thanksgiving Day
        Date(1993, 12, 24), # Christmas Day (observed)
        Date(1993, 12, 25), # Christmas Day
        Date(1993, 12, 31), # New Year's Day (observed)
        Date(1994, 1, 1), # New Year's Day
        Date(1994, 1, 17), # Martin Luther King Jr. Day
        Date(1994, 2, 21), # Washington's Birthday
        Date(1994, 5, 30), # Memorial Day
        Date(1994, 7, 4), # Independence Day
        Date(1994, 9, 5), # Labor Day
        Date(1994, 10, 10), # Columbus Day
        Date(1994, 11, 11), # Veterans Day
        Date(1994, 11, 24), # Thanksgiving Day
        Date(1994, 12, 25), # Christmas Day
        Date(1994, 12, 26), # Christmas Day (observed)
        Date(1995, 1, 1), # New Year's Day
        Date(1995, 1, 2), # New Year's Day (observed)
        Date(1995, 1, 16), # Martin Luther King Jr. Day
        Date(1995, 2, 20), # Washington's Birthday
        Date(1995, 5, 29), # Memorial Day
        Date(1995, 7, 4), # Independence Day
        Date(1995, 9, 4), # Labor Day
        Date(1995, 10, 9), # Columbus Day
        Date(1995, 11, 10), # Veterans Day (observed)
        Date(1995, 11, 11), # Veterans Day
        Date(1995, 11, 23), # Thanksgiving Day
        Date(1995, 12, 25), # Christmas Day
        Date(1996, 1, 1), # New Year's Day
        Date(1996, 1, 15), # Martin Luther King Jr. Day
        Date(1996, 2, 19), # Washington's Birthday
        Date(1996, 5, 27), # Memorial Day
        Date(1996, 7, 4), # Independence Day
        Date(1996, 9, 2), # Labor Day
        Date(1996, 10, 14), # Columbus Day
        Date(1996, 11, 11), # Veterans Day
        Date(1996, 11, 28), # Thanksgiving Day
        Date(1996, 12, 25), # Christmas Day
        Date(1997, 1, 1), # New Year's Day
        Date(1997, 1, 20), # Martin Luther King Jr. Day
        Date(1997, 2, 17), # Washington's Birthday
        Date(1997, 5, 26), # Memorial Day
        Date(1997, 7, 4), # Independence Day
        Date(1997, 9, 1), # Labor Day
        Date(1997, 10, 13), # Columbus Day
        Date(1997, 11, 11), # Veterans Day
        Date(1997, 11, 27), # Thanksgiving Day
        Date(1997, 12, 25), # Christmas Day
        Date(1998, 1, 1), # New Year's Day
        Date(1998, 1, 19), # Martin Luther King Jr. Day
        Date(1998, 2, 16), # Washington's Birthday
        Date(1998, 5, 25), # Memorial Day
        Date(1998, 7, 3), # Independence Day (observed)
        Date(1998, 7, 4), # Independence Day
        Date(1998, 9, 7), # Labor Day
        Date(1998, 10, 12), # Columbus Day
        Date(1998, 11, 11), # Veterans Day
        Date(1998, 11, 26), # Thanksgiving Day
        Date(1998, 12, 25), # Christmas Day
        Date(1999, 1, 1), # New Year's Day
        Date(1999, 1, 18), # Martin Luther King Jr. Day
        Date(1999, 2, 15), # Washington's Birthday
        Date(1999, 5, 31), # Memorial Day
        Date(1999, 7, 4), # Independence Day
        Date(1999, 7, 5), # Independence Day (observed)
        Date(1999, 9, 6), # Labor Day
        Date(1999, 10, 11), # Columbus Day
        Date(1999, 11, 11), # Veterans Day
        Date(1999, 11, 25), # Thanksgiving Day
        Date(1999, 12, 24), # Christmas Day (observed)
        Date(1999, 12, 25), # Christmas Day
        Date(1999, 12, 31), # New Year's Day (observed)
        Date(2000, 1, 1), # New Year's Day
        Date(2000, 1, 17), # Martin Luther King Jr. Day
        Date(2000, 2, 21), # Washington's Birthday
        Date(2000, 5, 29), # Memorial Day
        Date(2000, 7, 4), # Independence Day
        Date(2000, 9, 4), # Labor Day
        Date(2000, 10, 9), # Columbus Day
        Date(2000, 11, 10), # Veterans Day (observed)
        Date(2000, 11, 11), # Veterans Day
        Date(2000, 11, 23), # Thanksgiving Day
        Date(2000, 12, 25), # Christmas Day
        Date(2001, 1, 1), # New Year's Day
        Date(2001, 1, 15), # Martin Luther King Jr. Day
        Date(2001, 2, 19), # Washington's Birthday
        Date(2001, 5, 28), # Memorial Day
        Date(2001, 7, 4), # Independence Day
        Date(2001, 9, 3), # Labor Day
        Date(2001, 10, 8), # Columbus Day
        Date(2001, 11, 11), # Veterans Day
        Date(2001, 11, 12), # Veterans Day (observed)
        Date(2001, 11, 22), # Thanksgiving Day
        Date(2001, 12, 25), # Christmas Day
        Date(2002, 1, 1), # New Year's Day
        Date(2002, 1, 21), # Martin Luther King Jr. Day
        Date(2002, 2, 18), # Washington's Birthday
        Date(2002, 5, 27), # Memorial Day
        Date(2002, 7, 4), # Independence Day
        Date(2002, 9, 2), # Labor Day
        Date(2002, 10, 14), # Columbus Day
        Date(2002, 11, 11), # Veterans Day
        Date(2002, 11, 28), # Thanksgiving Day
        Date(2002, 12, 25), # Christmas Day
        Date(2003, 1, 1), # New Year's Day
        Date(2003, 1, 20), # Martin Luther King Jr. Day
        Date(2003, 2, 17), # Washington's Birthday
        Date(2003, 5, 26), # Memorial Day
        Date(2003, 7, 4), # Independence Day
        Date(2003, 9, 1), # Labor Day
        Date(2003, 10, 13), # Columbus Day
        Date(2003, 11, 11), # Veterans Day
        Date(2003, 11, 27), # Thanksgiving Day
        Date(2003, 12, 25), # Christmas Day
        Date(2004, 1, 1), # New Year's Day
        Date(2004, 1, 19), # Martin Luther King Jr. Day
        Date(2004, 2, 16), # Washington's Birthday
        Date(2004, 5, 31), # Memorial Day
        Date(2004, 7, 4), # Independence Day
        Date(2004, 7, 5), # Independence Day (observed)
        Date(2004, 9, 6), # Labor Day
        Date(2004, 10, 11), # Columbus Day
        Date(2004, 11, 11), # Veterans Day
        Date(2004, 11, 25), # Thanksgiving Day
        Date(2004, 12, 24), # Christmas Day (observed)
        Date(2004, 12, 25), # Christmas Day
        Date(2004, 12, 31), # New Year's Day (observed)
        Date(2005, 1, 1), # New Year's Day
        Date(2005, 1, 17), # Martin Luther King Jr. Day
        Date(2005, 2, 21), # Washington's Birthday
        Date(2005, 5, 30), # Memorial Day
        Date(2005, 7, 4), # Independence Day
        Date(2005, 9, 5), # Labor Day
        Date(2005, 10, 10), # Columbus Day
        Date(2005, 11, 11), # Veterans Day
        Date(2005, 11, 24), # Thanksgiving Day
        Date(2005, 12, 25), # Christmas Day
        Date(2005, 12, 26), # Christmas Day (observed)
        Date(2006, 1, 1), # New Year's Day
        Date(2006, 1, 2), # New Year's Day (observed)
        Date(2006, 1, 16), # Martin Luther King Jr. Day
        Date(2006, 2, 20), # Washington's Birthday
        Date(2006, 5, 29), # Memorial Day
        Date(2006, 7, 4), # Independence Day
        Date(2006, 9, 4), # Labor Day
        Date(2006, 10, 9), # Columbus Day
        Date(2006, 11, 10), # Veterans Day (observed)
        Date(2006, 11, 11), # Veterans Day
        Date(2006, 11, 23), # Thanksgiving Day
        Date(2006, 12, 25), # Christmas Day
        Date(2007, 1, 1), # New Year's Day
        Date(2007, 1, 15), # Martin Luther King Jr. Day
        Date(2007, 2, 19), # Washington's Birthday
        Date(2007, 5, 28), # Memorial Day
        Date(2007, 7, 4), # Independence Day
        Date(2007, 9, 3), # Labor Day
        Date(2007, 10, 8), # Columbus Day
        Date(2007, 11, 11), # Veterans Day
        Date(2007, 11, 12), # Veterans Day (observed)
        Date(2007, 11, 22), # Thanksgiving Day
        Date(2007, 12, 25), # Christmas Day
        Date(2008, 1, 1), # New Year's Day
        Date(2008, 1, 21), # Martin Luther King Jr. Day
        Date(2008, 2, 18), # Washington's Birthday
        Date(2008, 5, 26), # Memorial Day
        Date(2008, 7, 4), # Independence Day
        Date(2008, 9, 1), # Labor Day
        Date(2008, 10, 13), # Columbus Day
        Date(2008, 11, 11), # Veterans Day
        Date(2008, 11, 27), # Thanksgiving Day
        Date(2008, 12, 25), # Christmas Day
        Date(2009, 1, 1), # New Year's Day
        Date(2009, 1, 19), # Martin Luther King Jr. Day
        Date(2009, 2, 16), # Washington's Birthday
        Date(2009, 5, 25), # Memorial Day
        Date(2009, 7, 3), # Independence Day (observed)
        Date(2009, 7, 4), # Independence Day
        Date(2009, 9, 7), # Labor Day
        Date(2009, 10, 12), # Columbus Day
        Date(2009, 11, 11), # Veterans Day
        Date(2009, 11, 26), # Thanksgiving Day
        Date(2009, 12, 25), # Christmas Day
        Date(2010, 1, 1), # New Year's Day
        Date(2010, 1, 18), # Martin Luther King Jr. Day
        Date(2010, 2, 15), # Washington's Birthday
        Date(2010, 5, 31), # Memorial Day
        Date(2010, 7, 4), # Independence Day
        Date(2010, 7, 5), # Independence Day (observed)
        Date(2010, 9, 6), # Labor Day
        Date(2010, 10, 11), # Columbus Day
        Date(2010, 11, 11), # Veterans Day
        Date(2010, 11, 25), # Thanksgiving Day
        Date(2010, 12, 24), # Christmas Day (observed)
        Date(2010, 12, 25), # Christmas Day
        Date(2010, 12, 31), # New Year's Day (observed)
        Date(2011, 1, 1), # New Year's Day
        Date(2011, 1, 17), # Martin Luther King Jr. Day
        Date(2011, 2, 21), # Washington's Birthday
        Date(2011, 5, 30), # Memorial Day
        Date(2011, 7, 4), # Independence Day
        Date(2011, 9, 5), # Labor Day
        Date(2011, 10, 10), # Columbus Day
        Date(2011, 11, 11), # Veterans Day
        Date(2011, 11, 24), # Thanksgiving Day
        Date(2011, 12, 25), # Christmas Day
        Date(2011, 12, 26), # Christmas Day (observed)
        Date(2012, 1, 1), # New Year's Day
        Date(2012, 1, 2), # New Year's Day (observed)
        Date(2012, 1, 16), # Martin Luther King Jr. Day
        Date(2012, 2, 20), # Washington's Birthday
        Date(2012, 5, 28), # Memorial Day
        Date(2012, 7, 4), # Independence Day
        Date(2012, 9, 3), # Labor Day
        Date(2012, 10, 8), # Columbus Day
        Date(2012, 11, 11), # Veterans Day
        Date(2012, 11, 12), # Veterans Day (observed)
        Date(2012, 11, 22), # Thanksgiving Day
        Date(2012, 12, 25), # Christmas Day
        Date(2013, 1, 1), # New Year's Day
        Date(2013, 1, 21), # Martin Luther King Jr. Day
        Date(2013, 2, 18), # Washington's Birthday
        Date(2013, 5, 27), # Memorial Day
        Date(2013, 7, 4), # Independence Day
        Date(2013, 9, 2), # Labor Day
        Date(2013, 10, 14), # Columbus Day
        Date(2013, 11, 11), # Veterans Day
        Date(2013, 11, 28), # Thanksgiving Day
        Date(2013, 12, 25), # Christmas Day
        Date(2014, 1, 1), # New Year's Day
        Date(2014, 1, 20), # Martin Luther King Jr. Day
        Date(2014, 2, 17), # Washington's Birthday
        Date(2014, 5, 26), # Memorial Day
        Date(2014, 7, 4), # Independence Day
        Date(2014, 9, 1), # Labor Day
        Date(2014, 10, 13), # Columbus Day
        Date(2014, 11, 11), # Veterans Day
        Date(2014, 11, 27), # Thanksgiving Day
        Date(2014, 12, 25), # Christmas Day
        Date(2015, 1, 1), # New Year's Day
        Date(2015, 1, 19), # Martin Luther King Jr. Day
        Date(2015, 2, 16), # Washington's Birthday
        Date(2015, 5, 25), # Memorial Day
        Date(2015, 7, 3), # Independence Day (observed)
        Date(2015, 7, 4), # Independence Day
        Date(2015, 9, 7), # Labor Day
        Date(2015, 10, 12), # Columbus Day
        Date(2015, 11, 11), # Veterans Day
        Date(2015, 11, 26), # Thanksgiving Day
        Date(2015, 12, 25), # Christmas Day
        Date(2016, 1, 1), # New Year's Day
        Date(2016, 1, 18), # Martin Luther King Jr. Day
        Date(2016, 2, 15), # Washington's Birthday
        Date(2016, 5, 30), # Memorial Day
        Date(2016, 7, 4), # Independence Day
        Date(2016, 9, 5), # Labor Day
        Date(2016, 10, 10), # Columbus Day
        Date(2016, 11, 11), # Veterans Day
        Date(2016, 11, 24), # Thanksgiving Day
        Date(2016, 12, 25), # Christmas Day
        Date(2016, 12, 26), # Christmas Day (observed)
        Date(2017, 1, 1), # New Year's Day
        Date(2017, 1, 2), # New Year's Day (observed)
        Date(2017, 1, 16), # Martin Luther King Jr. Day
        Date(2017, 2, 20), # Washington's Birthday
        Date(2017, 5, 29), # Memorial Day
        Date(2017, 7, 4), # Independence Day
        Date(2017, 9, 4), # Labor Day
        Date(2017, 10, 9), # Columbus Day
        Date(2017, 11, 10), # Veterans Day (observed)
        Date(2017, 11, 11), # Veterans Day
        Date(2017, 11, 23), # Thanksgiving Day
        Date(2017, 12, 25), # Christmas Day
        Date(2018, 1, 1), # New Year's Day
        Date(2018, 1, 15), # Martin Luther King Jr. Day
        Date(2018, 2, 19), # Washington's Birthday
        Date(2018, 5, 28), # Memorial Day
        Date(2018, 7, 4), # Independence Day
        Date(2018, 9, 3), # Labor Day
        Date(2018, 10, 8), # Columbus Day
        Date(2018, 11, 11), # Veterans Day
        Date(2018, 11, 12), # Veterans Day (observed)
        Date(2018, 11, 22), # Thanksgiving Day
        Date(2018, 12, 25), # Christmas Day
        Date(2019, 1, 1), # New Year's Day
        Date(2019, 1, 21), # Martin Luther King Jr. Day
        Date(2019, 2, 18), # Washington's Birthday
        Date(2019, 5, 27), # Memorial Day
        Date(2019, 7, 4), # Independence Day
        Date(2019, 9, 2), # Labor Day
        Date(2019, 10, 14), # Columbus Day
        Date(2019, 11, 11), # Veterans Day
        Date(2019, 11, 28), # Thanksgiving Day
        Date(2019, 12, 25), # Christmas Day
        Date(2020, 1, 1), # New Year's Day
        Date(2020, 1, 20), # Martin Luther King Jr. Day
        Date(2020, 2, 17), # Washington's Birthday
        Date(2020, 5, 25), # Memorial Day
        Date(2020, 7, 3), # Independence Day (observed)
        Date(2020, 7, 4), # Independence Day
        Date(2020, 9, 7), # Labor Day
        Date(2020, 10, 12), # Columbus Day
        Date(2020, 11, 11), # Veterans Day
        Date(2020, 11, 26), # Thanksgiving Day
        Date(2020, 12, 25), # Christmas Day
        Date(2021, 1, 1), # New Year's Day
        Date(2021, 1, 18), # Martin Luther King Jr. Day
        Date(2021, 2, 15), # Washington's Birthday
        Date(2021, 5, 31), # Memorial Day
        Date(2021, 6, 18), # Juneteenth National Independence Day (observed)
        Date(2021, 6, 19), # Juneteenth National Independence Day
        Date(2021, 7, 4), # Independence Day
        Date(2021, 7, 5), # Independence Day (observed)
        Date(2021, 9, 6), # Labor Day
        Date(2021, 10, 11), # Columbus Day
        Date(2021, 11, 11), # Veterans Day
        Date(2021, 11, 25), # Thanksgiving Day
        Date(2021, 12, 24), # Christmas Day (observed)
        Date(2021, 12, 25), # Christmas Day
        Date(2021, 12, 31), # New Year's Day (observed)
        Date(2022, 1, 1), # New Year's Day
        Date(2022, 1, 17), # Martin Luther King Jr. Day
        Date(2022, 2, 21), # Washington's Birthday
        Date(2022, 5, 30), # Memorial Day
        Date(2022, 6, 19), # Juneteenth National Independence Day
        Date(2022, 6, 20), # Juneteenth National Independence Day (observed)
        Date(2022, 7, 4), # Independence Day
        Date(2022, 9, 5), # Labor Day
        Date(2022, 10, 10), # Columbus Day
        Date(2022, 11, 11), # Veterans Day
        Date(2022, 11, 24), # Thanksgiving Day
        Date(2022, 12, 25), # Christmas Day
        Date(2022, 12, 26), # Christmas Day (observed)
        Date(2023, 1, 1), # New Year's Day
        Date(2023, 1, 2), # New Year's Day (observed)
        Date(2023, 1, 16), # Martin Luther King Jr. Day
        Date(2023, 2, 20), # Washington's Birthday
        Date(2023, 5, 29), # Memorial Day
        Date(2023, 6, 19), # Juneteenth National Independence Day
        Date(2023, 7, 4), # Independence Day
        Date(2023, 9, 4), # Labor Day
        Date(2023, 10, 9), # Columbus Day
        Date(2023, 11, 10), # Veterans Day (observed)
        Date(2023, 11, 11), # Veterans Day
        Date(2023, 11, 23), # Thanksgiving Day
        Date(2023, 12, 25), # Christmas Day
        Date(2024, 1, 1), # New Year's Day
        Date(2024, 1, 15), # Martin Luther King Jr. Day
        Date(2024, 2, 19), # Washington's Birthday
        Date(2024, 5, 27), # Memorial Day
        Date(2024, 6, 19), # Juneteenth National Independence Day
        Date(2024, 7, 4), # Independence Day
        Date(2024, 9, 2), # Labor Day
        Date(2024, 10, 14), # Columbus Day
        Date(2024, 11, 11), # Veterans Day
        Date(2024, 11, 28), # Thanksgiving Day
        Date(2024, 12, 25), # Christmas Day
    ]
    
    
    test_holidays(calendar, holidays)

    @testset "Alabama" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Alabama())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Alaska" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Alaska())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Arizona" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Arizona())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Arkansas" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Arkansas())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "California" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.California())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Colorado" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Colorado())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Connecticut" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Connecticut())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Delaware" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Delaware())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Florida" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Florida())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Georgia" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Georgia())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Hawaii" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Hawaii())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Idaho" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Idaho())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Illinois" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Illinois())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Indiana" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Indiana())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Iowa" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Iowa())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Kansas" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Kansas())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Kentucky" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Kentucky())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Louisiana" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Louisiana())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Maine" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Maine())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Maryland" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Maryland())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Massachusetts" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Massachusetts())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Michigan" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Michigan())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Minnesota" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Minnesota())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Mississippi" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Mississippi())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Missouri" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Missouri())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Montana" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Montana())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Nebraska" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Nebraska())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Nevada" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Nevada())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "NewHampshire" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.NewHampshire())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "NewJersey" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.NewJersey())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "NewMexico" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.NewMexico())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "NewYork" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.NewYork())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "NorthCarolina" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.NorthCarolina())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "NorthDakota" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.NorthDakota())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Ohio" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Ohio())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Oklahoma" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Oklahoma())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Oregon" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Oregon())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Pennsylvania" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Pennsylvania())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "RhodeIsland" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.RhodeIsland())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "SouthCarolina" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.SouthCarolina())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "SouthDakota" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.SouthDakota())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Tennessee" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Tennessee())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Texas" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Texas())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Utah" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Utah())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Vermont" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Vermont())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Virginia" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Virginia())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Washington" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Washington())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "WestVirginia" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.WestVirginia())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Wisconsin" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Wisconsin())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Wyoming" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Wyoming())
        test_holidays(calendar, holidays, Date[])
    end

    return nothing
end

end
