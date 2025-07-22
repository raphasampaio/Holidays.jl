module TestPanama

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Panama" begin
    calendar = Holidays.Panama()

    holidays = [
        Date(1970, 1, 1), # New Year's Day
        Date(1970, 2, 10), # Carnival Tuesday
        Date(1970, 3, 1), # Constitution Day
        Date(1970, 3, 27), # Good Friday
        Date(1970, 5, 1), # Labor Day
        Date(1970, 11, 3), # Separation Day
        Date(1970, 11, 10), # Los Santos Uprising Day
        Date(1970, 11, 28), # Independence Day
        Date(1970, 12, 8), # Mother's Day
        Date(1970, 12, 25), # Christmas Day
        Date(1971, 1, 1), # New Year's Day
        Date(1971, 2, 23), # Carnival Tuesday
        Date(1971, 3, 1), # Constitution Day
        Date(1971, 4, 9), # Good Friday
        Date(1971, 5, 1), # Labor Day
        Date(1971, 11, 3), # Separation Day
        Date(1971, 11, 10), # Los Santos Uprising Day
        Date(1971, 11, 28), # Independence Day
        Date(1971, 12, 8), # Mother's Day
        Date(1971, 12, 25), # Christmas Day
        Date(1972, 1, 1), # New Year's Day
        Date(1972, 1, 9), # Martyrs' Day
        Date(1972, 1, 10), # Martyrs' Day (observed)
        Date(1972, 2, 15), # Carnival Tuesday
        Date(1972, 3, 31), # Good Friday
        Date(1972, 5, 1), # Labor Day
        Date(1972, 11, 3), # Separation Day
        Date(1972, 11, 10), # Los Santos Uprising Day
        Date(1972, 11, 28), # Independence Day
        Date(1972, 12, 8), # Mother's Day
        Date(1972, 12, 25), # Christmas Day
        Date(1973, 1, 1), # New Year's Day
        Date(1973, 1, 9), # Martyrs' Day
        Date(1973, 3, 6), # Carnival Tuesday
        Date(1973, 4, 20), # Good Friday
        Date(1973, 5, 1), # Labor Day
        Date(1973, 11, 3), # Separation Day
        Date(1973, 11, 10), # Los Santos Uprising Day
        Date(1973, 11, 28), # Independence Day
        Date(1973, 12, 8), # Mother's Day
        Date(1973, 12, 25), # Christmas Day
        Date(1974, 1, 1), # New Year's Day
        Date(1974, 1, 9), # Martyrs' Day
        Date(1974, 2, 26), # Carnival Tuesday
        Date(1974, 4, 12), # Good Friday
        Date(1974, 5, 1), # Labor Day
        Date(1974, 11, 3), # Separation Day
        Date(1974, 11, 4), # Separation Day (observed)
        Date(1974, 11, 10), # Los Santos Uprising Day
        Date(1974, 11, 11), # Los Santos Uprising Day (observed)
        Date(1974, 11, 28), # Independence Day
        Date(1974, 12, 8), # Mother's Day
        Date(1974, 12, 9), # Mother's Day (observed)
        Date(1974, 12, 25), # Christmas Day
        Date(1975, 1, 1), # New Year's Day
        Date(1975, 1, 9), # Martyrs' Day
        Date(1975, 2, 11), # Carnival Tuesday
        Date(1975, 3, 28), # Good Friday
        Date(1975, 5, 1), # Labor Day
        Date(1975, 11, 3), # Separation Day
        Date(1975, 11, 10), # Los Santos Uprising Day
        Date(1975, 11, 28), # Independence Day
        Date(1975, 12, 8), # Mother's Day
        Date(1975, 12, 25), # Christmas Day
        Date(1976, 1, 1), # New Year's Day
        Date(1976, 1, 9), # Martyrs' Day
        Date(1976, 3, 2), # Carnival Tuesday
        Date(1976, 4, 16), # Good Friday
        Date(1976, 5, 1), # Labor Day
        Date(1976, 11, 3), # Separation Day
        Date(1976, 11, 10), # Los Santos Uprising Day
        Date(1976, 11, 28), # Independence Day
        Date(1976, 11, 29), # Independence Day (observed)
        Date(1976, 12, 8), # Mother's Day
        Date(1976, 12, 25), # Christmas Day
        Date(1977, 1, 1), # New Year's Day
        Date(1977, 1, 9), # Martyrs' Day
        Date(1977, 1, 10), # Martyrs' Day (observed)
        Date(1977, 2, 22), # Carnival Tuesday
        Date(1977, 4, 8), # Good Friday
        Date(1977, 5, 1), # Labor Day
        Date(1977, 5, 2), # Labor Day (observed)
        Date(1977, 11, 3), # Separation Day
        Date(1977, 11, 10), # Los Santos Uprising Day
        Date(1977, 11, 28), # Independence Day
        Date(1977, 12, 8), # Mother's Day
        Date(1977, 12, 25), # Christmas Day
        Date(1977, 12, 26), # Christmas Day (observed)
        Date(1978, 1, 1), # New Year's Day
        Date(1978, 1, 2), # New Year's Day (observed)
        Date(1978, 1, 9), # Martyrs' Day
        Date(1978, 2, 7), # Carnival Tuesday
        Date(1978, 3, 24), # Good Friday
        Date(1978, 5, 1), # Labor Day
        Date(1978, 11, 3), # Separation Day
        Date(1978, 11, 10), # Los Santos Uprising Day
        Date(1978, 11, 28), # Independence Day
        Date(1978, 12, 8), # Mother's Day
        Date(1978, 12, 25), # Christmas Day
        Date(1979, 1, 1), # New Year's Day
        Date(1979, 1, 9), # Martyrs' Day
        Date(1979, 2, 27), # Carnival Tuesday
        Date(1979, 4, 13), # Good Friday
        Date(1979, 5, 1), # Labor Day
        Date(1979, 11, 3), # Separation Day
        Date(1979, 11, 10), # Los Santos Uprising Day
        Date(1979, 11, 28), # Independence Day
        Date(1979, 12, 8), # Mother's Day
        Date(1979, 12, 25), # Christmas Day
        Date(1980, 1, 1), # New Year's Day
        Date(1980, 1, 9), # Martyrs' Day
        Date(1980, 2, 19), # Carnival Tuesday
        Date(1980, 4, 4), # Good Friday
        Date(1980, 5, 1), # Labor Day
        Date(1980, 11, 3), # Separation Day
        Date(1980, 11, 10), # Los Santos Uprising Day
        Date(1980, 11, 28), # Independence Day
        Date(1980, 12, 8), # Mother's Day
        Date(1980, 12, 25), # Christmas Day
        Date(1981, 1, 1), # New Year's Day
        Date(1981, 1, 9), # Martyrs' Day
        Date(1981, 3, 3), # Carnival Tuesday
        Date(1981, 4, 17), # Good Friday
        Date(1981, 5, 1), # Labor Day
        Date(1981, 11, 3), # Separation Day
        Date(1981, 11, 10), # Los Santos Uprising Day
        Date(1981, 11, 28), # Independence Day
        Date(1981, 12, 8), # Mother's Day
        Date(1981, 12, 25), # Christmas Day
        Date(1982, 1, 1), # New Year's Day
        Date(1982, 1, 9), # Martyrs' Day
        Date(1982, 2, 23), # Carnival Tuesday
        Date(1982, 4, 9), # Good Friday
        Date(1982, 5, 1), # Labor Day
        Date(1982, 11, 3), # Separation Day
        Date(1982, 11, 10), # Los Santos Uprising Day
        Date(1982, 11, 28), # Independence Day
        Date(1982, 11, 29), # Independence Day (observed)
        Date(1982, 12, 8), # Mother's Day
        Date(1982, 12, 25), # Christmas Day
        Date(1983, 1, 1), # New Year's Day
        Date(1983, 1, 9), # Martyrs' Day
        Date(1983, 1, 10), # Martyrs' Day (observed)
        Date(1983, 2, 15), # Carnival Tuesday
        Date(1983, 4, 1), # Good Friday
        Date(1983, 5, 1), # Labor Day
        Date(1983, 5, 2), # Labor Day (observed)
        Date(1983, 11, 3), # Separation Day
        Date(1983, 11, 10), # Los Santos Uprising Day
        Date(1983, 11, 28), # Independence Day
        Date(1983, 12, 8), # Mother's Day
        Date(1983, 12, 25), # Christmas Day
        Date(1983, 12, 26), # Christmas Day (observed)
        Date(1984, 1, 1), # New Year's Day
        Date(1984, 1, 2), # New Year's Day (observed)
        Date(1984, 1, 9), # Martyrs' Day
        Date(1984, 3, 6), # Carnival Tuesday
        Date(1984, 4, 20), # Good Friday
        Date(1984, 5, 1), # Labor Day
        Date(1984, 11, 3), # Separation Day
        Date(1984, 11, 10), # Los Santos Uprising Day
        Date(1984, 11, 28), # Independence Day
        Date(1984, 12, 8), # Mother's Day
        Date(1984, 12, 25), # Christmas Day
        Date(1985, 1, 1), # New Year's Day
        Date(1985, 1, 9), # Martyrs' Day
        Date(1985, 2, 19), # Carnival Tuesday
        Date(1985, 4, 5), # Good Friday
        Date(1985, 5, 1), # Labor Day
        Date(1985, 11, 3), # Separation Day
        Date(1985, 11, 4), # Separation Day (observed)
        Date(1985, 11, 10), # Los Santos Uprising Day
        Date(1985, 11, 11), # Los Santos Uprising Day (observed)
        Date(1985, 11, 28), # Independence Day
        Date(1985, 12, 8), # Mother's Day
        Date(1985, 12, 9), # Mother's Day (observed)
        Date(1985, 12, 25), # Christmas Day
        Date(1986, 1, 1), # New Year's Day
        Date(1986, 1, 9), # Martyrs' Day
        Date(1986, 2, 11), # Carnival Tuesday
        Date(1986, 3, 28), # Good Friday
        Date(1986, 5, 1), # Labor Day
        Date(1986, 11, 3), # Separation Day
        Date(1986, 11, 10), # Los Santos Uprising Day
        Date(1986, 11, 28), # Independence Day
        Date(1986, 12, 8), # Mother's Day
        Date(1986, 12, 25), # Christmas Day
        Date(1987, 1, 1), # New Year's Day
        Date(1987, 1, 9), # Martyrs' Day
        Date(1987, 3, 3), # Carnival Tuesday
        Date(1987, 4, 17), # Good Friday
        Date(1987, 5, 1), # Labor Day
        Date(1987, 11, 3), # Separation Day
        Date(1987, 11, 10), # Los Santos Uprising Day
        Date(1987, 11, 28), # Independence Day
        Date(1987, 12, 8), # Mother's Day
        Date(1987, 12, 25), # Christmas Day
        Date(1988, 1, 1), # New Year's Day
        Date(1988, 1, 9), # Martyrs' Day
        Date(1988, 2, 16), # Carnival Tuesday
        Date(1988, 4, 1), # Good Friday
        Date(1988, 5, 1), # Labor Day
        Date(1988, 5, 2), # Labor Day (observed)
        Date(1988, 11, 3), # Separation Day
        Date(1988, 11, 10), # Los Santos Uprising Day
        Date(1988, 11, 28), # Independence Day
        Date(1988, 12, 8), # Mother's Day
        Date(1988, 12, 25), # Christmas Day
        Date(1988, 12, 26), # Christmas Day (observed)
        Date(1989, 1, 1), # New Year's Day
        Date(1989, 1, 2), # New Year's Day (observed)
        Date(1989, 1, 9), # Martyrs' Day
        Date(1989, 2, 7), # Carnival Tuesday
        Date(1989, 3, 24), # Good Friday
        Date(1989, 5, 1), # Labor Day
        Date(1989, 11, 3), # Separation Day
        Date(1989, 11, 10), # Los Santos Uprising Day
        Date(1989, 11, 28), # Independence Day
        Date(1989, 12, 8), # Mother's Day
        Date(1989, 12, 25), # Christmas Day
        Date(1990, 1, 1), # New Year's Day
        Date(1990, 1, 9), # Martyrs' Day
        Date(1990, 2, 27), # Carnival Tuesday
        Date(1990, 4, 13), # Good Friday
        Date(1990, 5, 1), # Labor Day
        Date(1990, 11, 3), # Separation Day
        Date(1990, 11, 10), # Los Santos Uprising Day
        Date(1990, 11, 28), # Independence Day
        Date(1990, 12, 8), # Mother's Day
        Date(1990, 12, 25), # Christmas Day
        Date(1991, 1, 1), # New Year's Day
        Date(1991, 1, 9), # Martyrs' Day
        Date(1991, 2, 12), # Carnival Tuesday
        Date(1991, 3, 29), # Good Friday
        Date(1991, 5, 1), # Labor Day
        Date(1991, 11, 3), # Separation Day
        Date(1991, 11, 4), # Separation Day (observed)
        Date(1991, 11, 10), # Los Santos Uprising Day
        Date(1991, 11, 11), # Los Santos Uprising Day (observed)
        Date(1991, 11, 28), # Independence Day
        Date(1991, 12, 8), # Mother's Day
        Date(1991, 12, 9), # Mother's Day (observed)
        Date(1991, 12, 25), # Christmas Day
        Date(1992, 1, 1), # New Year's Day
        Date(1992, 1, 9), # Martyrs' Day
        Date(1992, 3, 3), # Carnival Tuesday
        Date(1992, 4, 17), # Good Friday
        Date(1992, 5, 1), # Labor Day
        Date(1992, 11, 3), # Separation Day
        Date(1992, 11, 10), # Los Santos Uprising Day
        Date(1992, 11, 28), # Independence Day
        Date(1992, 12, 8), # Mother's Day
        Date(1992, 12, 25), # Christmas Day
        Date(1993, 1, 1), # New Year's Day
        Date(1993, 1, 9), # Martyrs' Day
        Date(1993, 2, 23), # Carnival Tuesday
        Date(1993, 4, 9), # Good Friday
        Date(1993, 5, 1), # Labor Day
        Date(1993, 11, 3), # Separation Day
        Date(1993, 11, 10), # Los Santos Uprising Day
        Date(1993, 11, 28), # Independence Day
        Date(1993, 11, 29), # Independence Day (observed)
        Date(1993, 12, 8), # Mother's Day
        Date(1993, 12, 25), # Christmas Day
        Date(1994, 1, 1), # New Year's Day
        Date(1994, 1, 9), # Martyrs' Day
        Date(1994, 1, 10), # Martyrs' Day (observed)
        Date(1994, 2, 15), # Carnival Tuesday
        Date(1994, 4, 1), # Good Friday
        Date(1994, 5, 1), # Labor Day
        Date(1994, 5, 2), # Labor Day (observed)
        Date(1994, 11, 3), # Separation Day
        Date(1994, 11, 10), # Los Santos Uprising Day
        Date(1994, 11, 28), # Independence Day
        Date(1994, 12, 8), # Mother's Day
        Date(1994, 12, 25), # Christmas Day
        Date(1994, 12, 26), # Christmas Day (observed)
        Date(1995, 1, 1), # New Year's Day
        Date(1995, 1, 2), # New Year's Day (observed)
        Date(1995, 1, 9), # Martyrs' Day
        Date(1995, 2, 28), # Carnival Tuesday
        Date(1995, 4, 14), # Good Friday
        Date(1995, 5, 1), # Labor Day
        Date(1995, 11, 3), # Separation Day
        Date(1995, 11, 10), # Los Santos Uprising Day
        Date(1995, 11, 28), # Independence Day
        Date(1995, 12, 8), # Mother's Day
        Date(1995, 12, 25), # Christmas Day
        Date(1996, 1, 1), # New Year's Day
        Date(1996, 1, 9), # Martyrs' Day
        Date(1996, 2, 20), # Carnival Tuesday
        Date(1996, 4, 5), # Good Friday
        Date(1996, 5, 1), # Labor Day
        Date(1996, 11, 3), # Separation Day
        Date(1996, 11, 4), # Separation Day (observed)
        Date(1996, 11, 10), # Los Santos Uprising Day
        Date(1996, 11, 11), # Los Santos Uprising Day (observed)
        Date(1996, 11, 28), # Independence Day
        Date(1996, 12, 8), # Mother's Day
        Date(1996, 12, 9), # Mother's Day (observed)
        Date(1996, 12, 25), # Christmas Day
        Date(1997, 1, 1), # New Year's Day
        Date(1997, 1, 9), # Martyrs' Day
        Date(1997, 2, 11), # Carnival Tuesday
        Date(1997, 3, 28), # Good Friday
        Date(1997, 5, 1), # Labor Day
        Date(1997, 11, 3), # Separation Day
        Date(1997, 11, 10), # Los Santos Uprising Day
        Date(1997, 11, 28), # Independence Day
        Date(1997, 12, 8), # Mother's Day
        Date(1997, 12, 25), # Christmas Day
        Date(1998, 1, 1), # New Year's Day
        Date(1998, 1, 9), # Martyrs' Day
        Date(1998, 2, 24), # Carnival Tuesday
        Date(1998, 4, 10), # Good Friday
        Date(1998, 5, 1), # Labor Day
        Date(1998, 11, 3), # Separation Day
        Date(1998, 11, 10), # Los Santos Uprising Day
        Date(1998, 11, 28), # Independence Day
        Date(1998, 12, 8), # Mother's Day
        Date(1998, 12, 25), # Christmas Day
        Date(1999, 1, 1), # New Year's Day
        Date(1999, 1, 9), # Martyrs' Day
        Date(1999, 2, 16), # Carnival Tuesday
        Date(1999, 4, 2), # Good Friday
        Date(1999, 5, 1), # Labor Day
        Date(1999, 11, 3), # Separation Day
        Date(1999, 11, 10), # Los Santos Uprising Day
        Date(1999, 11, 28), # Independence Day
        Date(1999, 11, 29), # Independence Day (observed)
        Date(1999, 12, 8), # Mother's Day
        Date(1999, 12, 25), # Christmas Day
        Date(2000, 1, 1), # New Year's Day
        Date(2000, 1, 9), # Martyrs' Day
        Date(2000, 1, 10), # Martyrs' Day (observed)
        Date(2000, 3, 7), # Carnival Tuesday
        Date(2000, 4, 21), # Good Friday
        Date(2000, 5, 1), # Labor Day
        Date(2000, 11, 3), # Separation Day
        Date(2000, 11, 10), # Los Santos Uprising Day
        Date(2000, 11, 28), # Independence Day
        Date(2000, 12, 8), # Mother's Day
        Date(2000, 12, 25), # Christmas Day
        Date(2001, 1, 1), # New Year's Day
        Date(2001, 1, 9), # Martyrs' Day
        Date(2001, 2, 27), # Carnival Tuesday
        Date(2001, 4, 13), # Good Friday
        Date(2001, 5, 1), # Labor Day
        Date(2001, 11, 3), # Separation Day
        Date(2001, 11, 10), # Los Santos Uprising Day
        Date(2001, 11, 28), # Independence Day
        Date(2001, 12, 8), # Mother's Day
        Date(2001, 12, 25), # Christmas Day
        Date(2002, 1, 1), # New Year's Day
        Date(2002, 1, 9), # Martyrs' Day
        Date(2002, 2, 12), # Carnival Tuesday
        Date(2002, 3, 29), # Good Friday
        Date(2002, 5, 1), # Labor Day
        Date(2002, 11, 3), # Separation Day
        Date(2002, 11, 4), # Separation Day (observed)
        Date(2002, 11, 5), # Colon Day
        Date(2002, 11, 10), # Los Santos Uprising Day
        Date(2002, 11, 11), # Los Santos Uprising Day (observed)
        Date(2002, 11, 28), # Independence Day
        Date(2002, 12, 8), # Mother's Day
        Date(2002, 12, 9), # Mother's Day (observed)
        Date(2002, 12, 25), # Christmas Day
        Date(2003, 1, 1), # New Year's Day
        Date(2003, 1, 9), # Martyrs' Day
        Date(2003, 3, 4), # Carnival Tuesday
        Date(2003, 4, 18), # Good Friday
        Date(2003, 5, 1), # Labor Day
        Date(2003, 11, 3), # Separation Day
        Date(2003, 11, 5), # Colon Day
        Date(2003, 11, 10), # Los Santos Uprising Day
        Date(2003, 11, 28), # Independence Day
        Date(2003, 12, 8), # Mother's Day
        Date(2003, 12, 25), # Christmas Day
        Date(2004, 1, 1), # New Year's Day
        Date(2004, 1, 9), # Martyrs' Day
        Date(2004, 2, 24), # Carnival Tuesday
        Date(2004, 4, 9), # Good Friday
        Date(2004, 5, 1), # Labor Day
        Date(2004, 11, 3), # Separation Day
        Date(2004, 11, 5), # Colon Day
        Date(2004, 11, 10), # Los Santos Uprising Day
        Date(2004, 11, 28), # Independence Day
        Date(2004, 11, 29), # Independence Day (observed)
        Date(2004, 12, 8), # Mother's Day
        Date(2004, 12, 25), # Christmas Day
        Date(2005, 1, 1), # New Year's Day
        Date(2005, 1, 9), # Martyrs' Day
        Date(2005, 1, 10), # Martyrs' Day (observed)
        Date(2005, 2, 8), # Carnival Tuesday
        Date(2005, 3, 25), # Good Friday
        Date(2005, 5, 1), # Labor Day
        Date(2005, 5, 2), # Labor Day (observed)
        Date(2005, 11, 3), # Separation Day
        Date(2005, 11, 5), # Colon Day
        Date(2005, 11, 10), # Los Santos Uprising Day
        Date(2005, 11, 28), # Independence Day
        Date(2005, 12, 8), # Mother's Day
        Date(2005, 12, 25), # Christmas Day
        Date(2005, 12, 26), # Christmas Day (observed)
        Date(2006, 1, 1), # New Year's Day
        Date(2006, 1, 2), # New Year's Day (observed)
        Date(2006, 1, 9), # Martyrs' Day
        Date(2006, 2, 28), # Carnival Tuesday
        Date(2006, 4, 14), # Good Friday
        Date(2006, 5, 1), # Labor Day
        Date(2006, 11, 3), # Separation Day
        Date(2006, 11, 5), # Colon Day
        Date(2006, 11, 6), # Colon Day (observed)
        Date(2006, 11, 10), # Los Santos Uprising Day
        Date(2006, 11, 28), # Independence Day
        Date(2006, 12, 8), # Mother's Day
        Date(2006, 12, 25), # Christmas Day
        Date(2007, 1, 1), # New Year's Day
        Date(2007, 1, 9), # Martyrs' Day
        Date(2007, 2, 20), # Carnival Tuesday
        Date(2007, 4, 6), # Good Friday
        Date(2007, 5, 1), # Labor Day
        Date(2007, 11, 3), # Separation Day
        Date(2007, 11, 5), # Colon Day
        Date(2007, 11, 10), # Los Santos Uprising Day
        Date(2007, 11, 28), # Independence Day
        Date(2007, 12, 8), # Mother's Day
        Date(2007, 12, 25), # Christmas Day
        Date(2008, 1, 1), # New Year's Day
        Date(2008, 1, 9), # Martyrs' Day
        Date(2008, 2, 5), # Carnival Tuesday
        Date(2008, 3, 21), # Good Friday
        Date(2008, 5, 1), # Labor Day
        Date(2008, 11, 3), # Separation Day
        Date(2008, 11, 5), # Colon Day
        Date(2008, 11, 10), # Los Santos Uprising Day
        Date(2008, 11, 28), # Independence Day
        Date(2008, 12, 8), # Mother's Day
        Date(2008, 12, 25), # Christmas Day
        Date(2009, 1, 1), # New Year's Day
        Date(2009, 1, 9), # Martyrs' Day
        Date(2009, 2, 24), # Carnival Tuesday
        Date(2009, 4, 10), # Good Friday
        Date(2009, 5, 1), # Labor Day
        Date(2009, 11, 3), # Separation Day
        Date(2009, 11, 5), # Colon Day
        Date(2009, 11, 10), # Los Santos Uprising Day
        Date(2009, 11, 28), # Independence Day
        Date(2009, 12, 8), # Mother's Day
        Date(2009, 12, 25), # Christmas Day
        Date(2010, 1, 1), # New Year's Day
        Date(2010, 1, 9), # Martyrs' Day
        Date(2010, 2, 16), # Carnival Tuesday
        Date(2010, 4, 2), # Good Friday
        Date(2010, 5, 1), # Labor Day
        Date(2010, 11, 3), # Separation Day
        Date(2010, 11, 5), # Colon Day
        Date(2010, 11, 10), # Los Santos Uprising Day
        Date(2010, 11, 28), # Independence Day
        Date(2010, 11, 29), # Independence Day (observed)
        Date(2010, 12, 8), # Mother's Day
        Date(2010, 12, 25), # Christmas Day
        Date(2011, 1, 1), # New Year's Day
        Date(2011, 1, 9), # Martyrs' Day
        Date(2011, 1, 10), # Martyrs' Day (observed)
        Date(2011, 3, 8), # Carnival Tuesday
        Date(2011, 4, 22), # Good Friday
        Date(2011, 5, 1), # Labor Day
        Date(2011, 5, 2), # Labor Day (observed)
        Date(2011, 11, 3), # Separation Day
        Date(2011, 11, 5), # Colon Day
        Date(2011, 11, 10), # Los Santos Uprising Day
        Date(2011, 11, 28), # Independence Day
        Date(2011, 12, 8), # Mother's Day
        Date(2011, 12, 25), # Christmas Day
        Date(2011, 12, 26), # Christmas Day (observed)
        Date(2012, 1, 1), # New Year's Day
        Date(2012, 1, 2), # New Year's Day (observed)
        Date(2012, 1, 9), # Martyrs' Day
        Date(2012, 2, 21), # Carnival Tuesday
        Date(2012, 4, 6), # Good Friday
        Date(2012, 5, 1), # Labor Day
        Date(2012, 11, 3), # Separation Day
        Date(2012, 11, 5), # Colon Day
        Date(2012, 11, 10), # Los Santos Uprising Day
        Date(2012, 11, 28), # Independence Day
        Date(2012, 12, 8), # Mother's Day
        Date(2012, 12, 25), # Christmas Day
        Date(2013, 1, 1), # New Year's Day
        Date(2013, 1, 9), # Martyrs' Day
        Date(2013, 2, 12), # Carnival Tuesday
        Date(2013, 3, 29), # Good Friday
        Date(2013, 5, 1), # Labor Day
        Date(2013, 11, 3), # Separation Day
        Date(2013, 11, 4), # Separation Day (observed)
        Date(2013, 11, 5), # Colon Day
        Date(2013, 11, 10), # Los Santos Uprising Day
        Date(2013, 11, 11), # Los Santos Uprising Day (observed)
        Date(2013, 11, 28), # Independence Day
        Date(2013, 12, 8), # Mother's Day
        Date(2013, 12, 9), # Mother's Day (observed)
        Date(2013, 12, 25), # Christmas Day
        Date(2014, 1, 1), # New Year's Day
        Date(2014, 1, 9), # Martyrs' Day
        Date(2014, 3, 4), # Carnival Tuesday
        Date(2014, 4, 18), # Good Friday
        Date(2014, 5, 1), # Labor Day
        Date(2014, 7, 1), # Presidential Inauguration Day
        Date(2014, 11, 3), # Separation Day
        Date(2014, 11, 5), # Colon Day
        Date(2014, 11, 10), # Los Santos Uprising Day
        Date(2014, 11, 28), # Independence Day
        Date(2014, 12, 8), # Mother's Day
        Date(2014, 12, 25), # Christmas Day
        Date(2015, 1, 1), # New Year's Day
        Date(2015, 1, 9), # Martyrs' Day
        Date(2015, 2, 17), # Carnival Tuesday
        Date(2015, 4, 3), # Good Friday
        Date(2015, 5, 1), # Labor Day
        Date(2015, 11, 3), # Separation Day
        Date(2015, 11, 5), # Colon Day
        Date(2015, 11, 10), # Los Santos Uprising Day
        Date(2015, 11, 28), # Independence Day
        Date(2015, 12, 8), # Mother's Day
        Date(2015, 12, 25), # Christmas Day
        Date(2016, 1, 1), # New Year's Day
        Date(2016, 1, 9), # Martyrs' Day
        Date(2016, 2, 9), # Carnival Tuesday
        Date(2016, 3, 25), # Good Friday
        Date(2016, 5, 1), # Labor Day
        Date(2016, 5, 2), # Labor Day (observed)
        Date(2016, 11, 3), # Separation Day
        Date(2016, 11, 5), # Colon Day
        Date(2016, 11, 10), # Los Santos Uprising Day
        Date(2016, 11, 28), # Independence Day
        Date(2016, 12, 8), # Mother's Day
        Date(2016, 12, 25), # Christmas Day
        Date(2016, 12, 26), # Christmas Day (observed)
        Date(2017, 1, 1), # New Year's Day
        Date(2017, 1, 2), # New Year's Day (observed)
        Date(2017, 1, 9), # Martyrs' Day
        Date(2017, 2, 28), # Carnival Tuesday
        Date(2017, 4, 14), # Good Friday
        Date(2017, 5, 1), # Labor Day
        Date(2017, 11, 3), # Separation Day
        Date(2017, 11, 5), # Colon Day
        Date(2017, 11, 6), # Colon Day (observed)
        Date(2017, 11, 10), # Los Santos Uprising Day
        Date(2017, 11, 28), # Independence Day
        Date(2017, 12, 8), # Mother's Day
        Date(2017, 12, 25), # Christmas Day
        Date(2018, 1, 1), # New Year's Day
        Date(2018, 1, 9), # Martyrs' Day
        Date(2018, 2, 13), # Carnival Tuesday
        Date(2018, 3, 30), # Good Friday
        Date(2018, 5, 1), # Labor Day
        Date(2018, 11, 3), # Separation Day
        Date(2018, 11, 5), # Colon Day
        Date(2018, 11, 10), # Los Santos Uprising Day
        Date(2018, 11, 28), # Independence Day
        Date(2018, 12, 8), # Mother's Day
        Date(2018, 12, 25), # Christmas Day
        Date(2019, 1, 1), # New Year's Day
        Date(2019, 1, 9), # Martyrs' Day
        Date(2019, 3, 5), # Carnival Tuesday
        Date(2019, 4, 19), # Good Friday
        Date(2019, 5, 1), # Labor Day
        Date(2019, 7, 1), # Presidential Inauguration Day
        Date(2019, 11, 3), # Separation Day
        Date(2019, 11, 4), # Separation Day (observed)
        Date(2019, 11, 5), # Colon Day
        Date(2019, 11, 10), # Los Santos Uprising Day
        Date(2019, 11, 11), # Los Santos Uprising Day (observed)
        Date(2019, 11, 28), # Independence Day
        Date(2019, 12, 8), # Mother's Day
        Date(2019, 12, 9), # Mother's Day (observed)
        Date(2019, 12, 25), # Christmas Day
        Date(2020, 1, 1), # New Year's Day
        Date(2020, 1, 9), # Martyrs' Day
        Date(2020, 2, 25), # Carnival Tuesday
        Date(2020, 4, 10), # Good Friday
        Date(2020, 5, 1), # Labor Day
        Date(2020, 11, 3), # Separation Day
        Date(2020, 11, 5), # Colon Day
        Date(2020, 11, 10), # Los Santos Uprising Day
        Date(2020, 11, 28), # Independence Day
        Date(2020, 12, 8), # Mother's Day
        Date(2020, 12, 25), # Christmas Day
        Date(2021, 1, 1), # New Year's Day
        Date(2021, 1, 9), # Martyrs' Day
        Date(2021, 2, 16), # Carnival Tuesday
        Date(2021, 4, 2), # Good Friday
        Date(2021, 5, 1), # Labor Day
        Date(2021, 11, 3), # Separation Day
        Date(2021, 11, 5), # Colon Day
        Date(2021, 11, 10), # Los Santos Uprising Day
        Date(2021, 11, 28), # Independence Day
        Date(2021, 11, 29), # Independence Day (observed)
        Date(2021, 12, 8), # Mother's Day
        Date(2021, 12, 25), # Christmas Day
        Date(2022, 1, 1), # New Year's Day
        Date(2022, 1, 9), # Martyrs' Day
        Date(2022, 1, 10), # Martyrs' Day (observed)
        Date(2022, 3, 1), # Carnival Tuesday
        Date(2022, 4, 15), # Good Friday
        Date(2022, 5, 1), # Labor Day
        Date(2022, 5, 2), # Labor Day (observed)
        Date(2022, 11, 3), # Separation Day
        Date(2022, 11, 5), # Colon Day
        Date(2022, 11, 10), # Los Santos Uprising Day
        Date(2022, 11, 28), # Independence Day
        Date(2022, 12, 8), # Mother's Day
        Date(2022, 12, 20), # National Mourning Day
        Date(2022, 12, 25), # Christmas Day
        Date(2022, 12, 26), # Christmas Day (observed)
        Date(2023, 1, 1), # New Year's Day
        Date(2023, 1, 2), # New Year's Day (observed)
        Date(2023, 1, 9), # Martyrs' Day
        Date(2023, 2, 21), # Carnival Tuesday
        Date(2023, 4, 7), # Good Friday
        Date(2023, 5, 1), # Labor Day
        Date(2023, 11, 3), # Separation Day
        Date(2023, 11, 5), # Colon Day
        Date(2023, 11, 6), # Colon Day (observed)
        Date(2023, 11, 10), # Los Santos Uprising Day
        Date(2023, 11, 28), # Independence Day
        Date(2023, 12, 8), # Mother's Day
        Date(2023, 12, 20), # National Mourning Day
        Date(2023, 12, 25), # Christmas Day
        Date(2024, 1, 1), # New Year's Day
        Date(2024, 1, 9), # Martyrs' Day
        Date(2024, 2, 13), # Carnival Tuesday
        Date(2024, 3, 29), # Good Friday
        Date(2024, 5, 1), # Labor Day
        Date(2024, 7, 1), # Presidential Inauguration Day
        Date(2024, 11, 3), # Separation Day
        Date(2024, 11, 4), # Separation Day (observed)
        Date(2024, 11, 5), # Colon Day
        Date(2024, 11, 10), # Los Santos Uprising Day
        Date(2024, 11, 11), # Los Santos Uprising Day (observed)
        Date(2024, 11, 28), # Independence Day
        Date(2024, 12, 8), # Mother's Day
        Date(2024, 12, 9), # Mother's Day (observed)
        Date(2024, 12, 20), # National Mourning Day
        Date(2024, 12, 25), # Christmas Day
        Date(2025, 1, 1), # New Year's Day
        Date(2025, 1, 9), # Martyrs' Day
        Date(2025, 3, 4), # Carnival Tuesday
        Date(2025, 4, 18), # Good Friday
        Date(2025, 5, 1), # Labor Day
        Date(2025, 11, 3), # Separation Day
        Date(2025, 11, 5), # Colon Day
        Date(2025, 11, 10), # Los Santos Uprising Day
        Date(2025, 11, 28), # Independence Day
        Date(2025, 12, 8), # Mother's Day
        Date(2025, 12, 20), # National Mourning Day
        Date(2025, 12, 25), # Christmas Day
        Date(2026, 1, 1), # New Year's Day
        Date(2026, 1, 9), # Martyrs' Day
        Date(2026, 2, 17), # Carnival Tuesday
        Date(2026, 4, 3), # Good Friday
        Date(2026, 5, 1), # Labor Day
        Date(2026, 11, 3), # Separation Day
        Date(2026, 11, 5), # Colon Day
        Date(2026, 11, 10), # Los Santos Uprising Day
        Date(2026, 11, 28), # Independence Day
        Date(2026, 12, 8), # Mother's Day
        Date(2026, 12, 20), # National Mourning Day
        Date(2026, 12, 21), # National Mourning Day (observed)
        Date(2026, 12, 25), # Christmas Day
        Date(2027, 1, 1), # New Year's Day
        Date(2027, 1, 9), # Martyrs' Day
        Date(2027, 2, 9), # Carnival Tuesday
        Date(2027, 3, 26), # Good Friday
        Date(2027, 5, 1), # Labor Day
        Date(2027, 11, 3), # Separation Day
        Date(2027, 11, 5), # Colon Day
        Date(2027, 11, 10), # Los Santos Uprising Day
        Date(2027, 11, 28), # Independence Day
        Date(2027, 11, 29), # Independence Day (observed)
        Date(2027, 12, 8), # Mother's Day
        Date(2027, 12, 20), # National Mourning Day
        Date(2027, 12, 25), # Christmas Day
        Date(2028, 1, 1), # New Year's Day
        Date(2028, 1, 9), # Martyrs' Day
        Date(2028, 1, 10), # Martyrs' Day (observed)
        Date(2028, 2, 29), # Carnival Tuesday
        Date(2028, 4, 14), # Good Friday
        Date(2028, 5, 1), # Labor Day
        Date(2028, 11, 3), # Separation Day
        Date(2028, 11, 5), # Colon Day
        Date(2028, 11, 6), # Colon Day (observed)
        Date(2028, 11, 10), # Los Santos Uprising Day
        Date(2028, 11, 28), # Independence Day
        Date(2028, 12, 8), # Mother's Day
        Date(2028, 12, 20), # National Mourning Day
        Date(2028, 12, 25), # Christmas Day
        Date(2029, 1, 1), # New Year's Day
        Date(2029, 1, 9), # Martyrs' Day
        Date(2029, 2, 13), # Carnival Tuesday
        Date(2029, 3, 30), # Good Friday
        Date(2029, 5, 1), # Labor Day
        Date(2029, 11, 3), # Separation Day
        Date(2029, 11, 5), # Colon Day
        Date(2029, 11, 10), # Los Santos Uprising Day
        Date(2029, 11, 28), # Independence Day
        Date(2029, 12, 8), # Mother's Day
        Date(2029, 12, 20), # National Mourning Day
        Date(2029, 12, 25), # Christmas Day
        Date(2030, 1, 1), # New Year's Day
        Date(2030, 1, 9), # Martyrs' Day
        Date(2030, 3, 5), # Carnival Tuesday
        Date(2030, 4, 19), # Good Friday
        Date(2030, 5, 1), # Labor Day
        Date(2030, 11, 3), # Separation Day
        Date(2030, 11, 4), # Separation Day (observed)
        Date(2030, 11, 5), # Colon Day
        Date(2030, 11, 10), # Los Santos Uprising Day
        Date(2030, 11, 11), # Los Santos Uprising Day (observed)
        Date(2030, 11, 28), # Independence Day
        Date(2030, 12, 8), # Mother's Day
        Date(2030, 12, 9), # Mother's Day (observed)
        Date(2030, 12, 20), # National Mourning Day
        Date(2030, 12, 25), # Christmas Day
    ]

    test_holidays(calendar, holidays)

    return nothing
end

end
