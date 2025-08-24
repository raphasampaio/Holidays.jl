module TestCostaRica

using Dates
using Holidays
using Test

include("../util.jl")

@testset "CostaRica" begin
    calendar = Holidays.CostaRica()

    holidays = Date[
        Date(1970, 1, 1), # New Year's Day
        Date(1970, 3, 26), # Maundy Thursday
        Date(1970, 3, 27), # Good Friday
        Date(1970, 4, 11), # Juan Santamaría Day
        Date(1970, 5, 1), # International Labor Day
        Date(1970, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(1970, 8, 15), # Mother's Day
        Date(1970, 9, 15), # Independence Day
        Date(1970, 10, 12), # Cultures Day
        Date(1970, 12, 25), # Christmas Day
        Date(1971, 1, 1), # New Year's Day
        Date(1971, 4, 8), # Maundy Thursday
        Date(1971, 4, 9), # Good Friday
        Date(1971, 4, 11), # Juan Santamaría Day
        Date(1971, 5, 1), # International Labor Day
        Date(1971, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(1971, 8, 15), # Mother's Day
        Date(1971, 9, 15), # Independence Day
        Date(1971, 10, 18), # Cultures Day (observed)
        Date(1971, 12, 25), # Christmas Day
        Date(1972, 1, 1), # New Year's Day
        Date(1972, 3, 30), # Maundy Thursday
        Date(1972, 3, 31), # Good Friday
        Date(1972, 4, 11), # Juan Santamaría Day
        Date(1972, 5, 1), # International Labor Day
        Date(1972, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(1972, 8, 15), # Mother's Day
        Date(1972, 9, 15), # Independence Day
        Date(1972, 10, 16), # Cultures Day (observed)
        Date(1972, 12, 25), # Christmas Day
        Date(1973, 1, 1), # New Year's Day
        Date(1973, 4, 11), # Juan Santamaría Day
        Date(1973, 4, 19), # Maundy Thursday
        Date(1973, 4, 20), # Good Friday
        Date(1973, 5, 1), # International Labor Day
        Date(1973, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(1973, 8, 15), # Mother's Day
        Date(1973, 9, 15), # Independence Day
        Date(1973, 10, 15), # Cultures Day (observed)
        Date(1973, 12, 25), # Christmas Day
        Date(1974, 1, 1), # New Year's Day
        Date(1974, 4, 11), # Juan Santamaría Day; Maundy Thursday
        Date(1974, 4, 12), # Good Friday
        Date(1974, 5, 1), # International Labor Day
        Date(1974, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(1974, 8, 15), # Mother's Day
        Date(1974, 9, 15), # Independence Day
        Date(1974, 10, 12), # Cultures Day
        Date(1974, 12, 25), # Christmas Day
        Date(1975, 1, 1), # New Year's Day
        Date(1975, 3, 27), # Maundy Thursday
        Date(1975, 3, 28), # Good Friday
        Date(1975, 4, 11), # Juan Santamaría Day
        Date(1975, 5, 1), # International Labor Day
        Date(1975, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(1975, 8, 15), # Mother's Day
        Date(1975, 9, 15), # Independence Day
        Date(1975, 10, 12), # Cultures Day
        Date(1975, 12, 25), # Christmas Day
        Date(1976, 1, 1), # New Year's Day
        Date(1976, 4, 11), # Juan Santamaría Day
        Date(1976, 4, 15), # Maundy Thursday
        Date(1976, 4, 16), # Good Friday
        Date(1976, 5, 1), # International Labor Day
        Date(1976, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(1976, 8, 15), # Mother's Day
        Date(1976, 9, 15), # Independence Day
        Date(1976, 10, 18), # Cultures Day (observed)
        Date(1976, 12, 25), # Christmas Day
        Date(1977, 1, 1), # New Year's Day
        Date(1977, 4, 7), # Maundy Thursday
        Date(1977, 4, 8), # Good Friday
        Date(1977, 4, 11), # Juan Santamaría Day
        Date(1977, 5, 1), # International Labor Day
        Date(1977, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(1977, 8, 15), # Mother's Day
        Date(1977, 9, 15), # Independence Day
        Date(1977, 10, 17), # Cultures Day (observed)
        Date(1977, 12, 25), # Christmas Day
        Date(1978, 1, 1), # New Year's Day
        Date(1978, 3, 23), # Maundy Thursday
        Date(1978, 3, 24), # Good Friday
        Date(1978, 4, 11), # Juan Santamaría Day
        Date(1978, 5, 1), # International Labor Day
        Date(1978, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(1978, 8, 15), # Mother's Day
        Date(1978, 9, 15), # Independence Day
        Date(1978, 10, 16), # Cultures Day (observed)
        Date(1978, 12, 25), # Christmas Day
        Date(1979, 1, 1), # New Year's Day
        Date(1979, 4, 11), # Juan Santamaría Day
        Date(1979, 4, 12), # Maundy Thursday
        Date(1979, 4, 13), # Good Friday
        Date(1979, 5, 1), # International Labor Day
        Date(1979, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(1979, 8, 15), # Mother's Day
        Date(1979, 9, 15), # Independence Day
        Date(1979, 10, 15), # Cultures Day (observed)
        Date(1979, 12, 25), # Christmas Day
        Date(1980, 1, 1), # New Year's Day
        Date(1980, 4, 3), # Maundy Thursday
        Date(1980, 4, 4), # Good Friday
        Date(1980, 4, 11), # Juan Santamaría Day
        Date(1980, 5, 1), # International Labor Day
        Date(1980, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(1980, 8, 15), # Mother's Day
        Date(1980, 9, 15), # Independence Day
        Date(1980, 10, 12), # Cultures Day
        Date(1980, 12, 25), # Christmas Day
        Date(1981, 1, 1), # New Year's Day
        Date(1981, 4, 11), # Juan Santamaría Day
        Date(1981, 4, 16), # Maundy Thursday
        Date(1981, 4, 17), # Good Friday
        Date(1981, 5, 1), # International Labor Day
        Date(1981, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(1981, 8, 15), # Mother's Day
        Date(1981, 9, 15), # Independence Day
        Date(1981, 10, 12), # Cultures Day
        Date(1981, 12, 25), # Christmas Day
        Date(1982, 1, 1), # New Year's Day
        Date(1982, 4, 8), # Maundy Thursday
        Date(1982, 4, 9), # Good Friday
        Date(1982, 4, 11), # Juan Santamaría Day
        Date(1982, 5, 1), # International Labor Day
        Date(1982, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(1982, 8, 15), # Mother's Day
        Date(1982, 9, 15), # Independence Day
        Date(1982, 10, 18), # Cultures Day (observed)
        Date(1982, 12, 25), # Christmas Day
        Date(1983, 1, 1), # New Year's Day
        Date(1983, 3, 31), # Maundy Thursday
        Date(1983, 4, 1), # Good Friday
        Date(1983, 4, 11), # Juan Santamaría Day
        Date(1983, 5, 1), # International Labor Day
        Date(1983, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(1983, 8, 15), # Mother's Day
        Date(1983, 9, 15), # Independence Day
        Date(1983, 10, 17), # Cultures Day (observed)
        Date(1983, 12, 25), # Christmas Day
        Date(1984, 1, 1), # New Year's Day
        Date(1984, 4, 11), # Juan Santamaría Day
        Date(1984, 4, 19), # Maundy Thursday
        Date(1984, 4, 20), # Good Friday
        Date(1984, 5, 1), # International Labor Day
        Date(1984, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(1984, 8, 15), # Mother's Day
        Date(1984, 9, 15), # Independence Day
        Date(1984, 10, 15), # Cultures Day (observed)
        Date(1984, 12, 25), # Christmas Day
        Date(1985, 1, 1), # New Year's Day
        Date(1985, 4, 4), # Maundy Thursday
        Date(1985, 4, 5), # Good Friday
        Date(1985, 4, 11), # Juan Santamaría Day
        Date(1985, 5, 1), # International Labor Day
        Date(1985, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(1985, 8, 15), # Mother's Day
        Date(1985, 9, 15), # Independence Day
        Date(1985, 10, 12), # Cultures Day
        Date(1985, 12, 25), # Christmas Day
        Date(1986, 1, 1), # New Year's Day
        Date(1986, 3, 27), # Maundy Thursday
        Date(1986, 3, 28), # Good Friday
        Date(1986, 4, 11), # Juan Santamaría Day
        Date(1986, 5, 1), # International Labor Day
        Date(1986, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(1986, 8, 15), # Mother's Day
        Date(1986, 9, 15), # Independence Day
        Date(1986, 10, 12), # Cultures Day
        Date(1986, 12, 25), # Christmas Day
        Date(1987, 1, 1), # New Year's Day
        Date(1987, 4, 11), # Juan Santamaría Day
        Date(1987, 4, 16), # Maundy Thursday
        Date(1987, 4, 17), # Good Friday
        Date(1987, 5, 1), # International Labor Day
        Date(1987, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(1987, 8, 15), # Mother's Day
        Date(1987, 9, 15), # Independence Day
        Date(1987, 10, 12), # Cultures Day
        Date(1987, 12, 25), # Christmas Day
        Date(1988, 1, 1), # New Year's Day
        Date(1988, 3, 31), # Maundy Thursday
        Date(1988, 4, 1), # Good Friday
        Date(1988, 4, 11), # Juan Santamaría Day
        Date(1988, 5, 1), # International Labor Day
        Date(1988, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(1988, 8, 15), # Mother's Day
        Date(1988, 9, 15), # Independence Day
        Date(1988, 10, 17), # Cultures Day (observed)
        Date(1988, 12, 25), # Christmas Day
        Date(1989, 1, 1), # New Year's Day
        Date(1989, 3, 23), # Maundy Thursday
        Date(1989, 3, 24), # Good Friday
        Date(1989, 4, 11), # Juan Santamaría Day
        Date(1989, 5, 1), # International Labor Day
        Date(1989, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(1989, 8, 15), # Mother's Day
        Date(1989, 9, 15), # Independence Day
        Date(1989, 10, 16), # Cultures Day (observed)
        Date(1989, 12, 25), # Christmas Day
        Date(1990, 1, 1), # New Year's Day
        Date(1990, 4, 11), # Juan Santamaría Day
        Date(1990, 4, 12), # Maundy Thursday
        Date(1990, 4, 13), # Good Friday
        Date(1990, 5, 1), # International Labor Day
        Date(1990, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(1990, 8, 15), # Mother's Day
        Date(1990, 9, 15), # Independence Day
        Date(1990, 10, 15), # Cultures Day (observed)
        Date(1990, 12, 25), # Christmas Day
        Date(1991, 1, 1), # New Year's Day
        Date(1991, 3, 28), # Maundy Thursday
        Date(1991, 3, 29), # Good Friday
        Date(1991, 4, 11), # Juan Santamaría Day
        Date(1991, 5, 1), # International Labor Day
        Date(1991, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(1991, 8, 15), # Mother's Day
        Date(1991, 9, 15), # Independence Day
        Date(1991, 10, 12), # Cultures Day
        Date(1991, 12, 25), # Christmas Day
        Date(1992, 1, 1), # New Year's Day
        Date(1992, 4, 11), # Juan Santamaría Day
        Date(1992, 4, 16), # Maundy Thursday
        Date(1992, 4, 17), # Good Friday
        Date(1992, 5, 1), # International Labor Day
        Date(1992, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(1992, 8, 15), # Mother's Day
        Date(1992, 9, 15), # Independence Day
        Date(1992, 10, 12), # Cultures Day
        Date(1992, 12, 25), # Christmas Day
        Date(1993, 1, 1), # New Year's Day
        Date(1993, 4, 8), # Maundy Thursday
        Date(1993, 4, 9), # Good Friday
        Date(1993, 4, 11), # Juan Santamaría Day
        Date(1993, 5, 1), # International Labor Day
        Date(1993, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(1993, 8, 15), # Mother's Day
        Date(1993, 9, 15), # Independence Day
        Date(1993, 10, 18), # Cultures Day (observed)
        Date(1993, 12, 25), # Christmas Day
        Date(1994, 1, 1), # New Year's Day
        Date(1994, 3, 31), # Maundy Thursday
        Date(1994, 4, 1), # Good Friday
        Date(1994, 4, 11), # Juan Santamaría Day
        Date(1994, 5, 1), # International Labor Day
        Date(1994, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(1994, 8, 15), # Mother's Day
        Date(1994, 9, 15), # Independence Day
        Date(1994, 10, 17), # Cultures Day (observed)
        Date(1994, 12, 25), # Christmas Day
        Date(1995, 1, 1), # New Year's Day
        Date(1995, 4, 11), # Juan Santamaría Day
        Date(1995, 4, 13), # Maundy Thursday
        Date(1995, 4, 14), # Good Friday
        Date(1995, 5, 1), # International Labor Day
        Date(1995, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(1995, 8, 15), # Mother's Day
        Date(1995, 9, 15), # Independence Day
        Date(1995, 10, 16), # Cultures Day (observed)
        Date(1995, 12, 25), # Christmas Day
        Date(1996, 1, 1), # New Year's Day
        Date(1996, 4, 4), # Maundy Thursday
        Date(1996, 4, 5), # Good Friday
        Date(1996, 4, 11), # Juan Santamaría Day
        Date(1996, 5, 1), # International Labor Day
        Date(1996, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(1996, 8, 15), # Mother's Day
        Date(1996, 9, 15), # Independence Day
        Date(1996, 10, 12), # Cultures Day
        Date(1996, 12, 25), # Christmas Day
        Date(1997, 1, 1), # New Year's Day
        Date(1997, 3, 27), # Maundy Thursday
        Date(1997, 3, 28), # Good Friday
        Date(1997, 4, 11), # Juan Santamaría Day
        Date(1997, 5, 1), # International Labor Day
        Date(1997, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(1997, 8, 15), # Mother's Day
        Date(1997, 9, 15), # Independence Day
        Date(1997, 10, 12), # Cultures Day
        Date(1997, 12, 25), # Christmas Day
        Date(1998, 1, 1), # New Year's Day
        Date(1998, 4, 9), # Maundy Thursday
        Date(1998, 4, 10), # Good Friday
        Date(1998, 4, 11), # Juan Santamaría Day
        Date(1998, 5, 1), # International Labor Day
        Date(1998, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(1998, 8, 15), # Mother's Day
        Date(1998, 9, 15), # Independence Day
        Date(1998, 10, 12), # Cultures Day
        Date(1998, 12, 25), # Christmas Day
        Date(1999, 1, 1), # New Year's Day
        Date(1999, 4, 1), # Maundy Thursday
        Date(1999, 4, 2), # Good Friday
        Date(1999, 4, 11), # Juan Santamaría Day
        Date(1999, 5, 1), # International Labor Day
        Date(1999, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(1999, 8, 15), # Mother's Day
        Date(1999, 9, 15), # Independence Day
        Date(1999, 10, 18), # Cultures Day (observed)
        Date(1999, 12, 25), # Christmas Day
        Date(2000, 1, 1), # New Year's Day
        Date(2000, 4, 11), # Juan Santamaría Day
        Date(2000, 4, 20), # Maundy Thursday
        Date(2000, 4, 21), # Good Friday
        Date(2000, 5, 1), # International Labor Day
        Date(2000, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(2000, 8, 15), # Mother's Day
        Date(2000, 9, 15), # Independence Day
        Date(2000, 10, 16), # Cultures Day (observed)
        Date(2000, 12, 25), # Christmas Day
        Date(2001, 1, 1), # New Year's Day
        Date(2001, 4, 11), # Juan Santamaría Day
        Date(2001, 4, 12), # Maundy Thursday
        Date(2001, 4, 13), # Good Friday
        Date(2001, 5, 1), # International Labor Day
        Date(2001, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(2001, 8, 15), # Mother's Day
        Date(2001, 9, 15), # Independence Day
        Date(2001, 10, 15), # Cultures Day (observed)
        Date(2001, 12, 25), # Christmas Day
        Date(2002, 1, 1), # New Year's Day
        Date(2002, 3, 28), # Maundy Thursday
        Date(2002, 3, 29), # Good Friday
        Date(2002, 4, 11), # Juan Santamaría Day
        Date(2002, 5, 1), # International Labor Day
        Date(2002, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(2002, 8, 15), # Mother's Day
        Date(2002, 9, 15), # Independence Day
        Date(2002, 10, 12), # Cultures Day
        Date(2002, 12, 25), # Christmas Day
        Date(2003, 1, 1), # New Year's Day
        Date(2003, 4, 11), # Juan Santamaría Day
        Date(2003, 4, 17), # Maundy Thursday
        Date(2003, 4, 18), # Good Friday
        Date(2003, 5, 1), # International Labor Day
        Date(2003, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(2003, 8, 15), # Mother's Day
        Date(2003, 9, 15), # Independence Day
        Date(2003, 10, 12), # Cultures Day
        Date(2003, 12, 25), # Christmas Day
        Date(2004, 1, 1), # New Year's Day
        Date(2004, 4, 8), # Maundy Thursday
        Date(2004, 4, 9), # Good Friday
        Date(2004, 4, 11), # Juan Santamaría Day
        Date(2004, 5, 1), # International Labor Day
        Date(2004, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(2004, 8, 15), # Mother's Day
        Date(2004, 9, 15), # Independence Day
        Date(2004, 10, 18), # Cultures Day (observed)
        Date(2004, 12, 25), # Christmas Day
        Date(2005, 1, 1), # New Year's Day
        Date(2005, 3, 24), # Maundy Thursday
        Date(2005, 3, 25), # Good Friday
        Date(2005, 4, 11), # Juan Santamaría Day
        Date(2005, 5, 1), # International Labor Day
        Date(2005, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(2005, 8, 15), # Mother's Day
        Date(2005, 9, 15), # Independence Day
        Date(2005, 10, 17), # Cultures Day (observed)
        Date(2005, 12, 25), # Christmas Day
        Date(2006, 1, 1), # New Year's Day
        Date(2006, 4, 13), # Maundy Thursday
        Date(2006, 4, 14), # Good Friday
        Date(2006, 4, 17), # Juan Santamaría Day (observed)
        Date(2006, 5, 1), # International Labor Day
        Date(2006, 7, 31), # Annexation of the Party of Nicoya to Costa Rica (observed)
        Date(2006, 8, 21), # Mother's Day (observed)
        Date(2006, 9, 15), # Independence Day
        Date(2006, 10, 16), # Cultures Day (observed)
        Date(2006, 12, 25), # Christmas Day
        Date(2007, 1, 1), # New Year's Day
        Date(2007, 4, 5), # Maundy Thursday
        Date(2007, 4, 6), # Good Friday
        Date(2007, 4, 16), # Juan Santamaría Day (observed)
        Date(2007, 5, 1), # International Labor Day
        Date(2007, 7, 30), # Annexation of the Party of Nicoya to Costa Rica (observed)
        Date(2007, 8, 20), # Mother's Day (observed)
        Date(2007, 9, 15), # Independence Day
        Date(2007, 10, 15), # Cultures Day (observed)
        Date(2007, 12, 25), # Christmas Day
        Date(2008, 1, 1), # New Year's Day
        Date(2008, 3, 20), # Maundy Thursday
        Date(2008, 3, 21), # Good Friday
        Date(2008, 4, 14), # Juan Santamaría Day (observed)
        Date(2008, 5, 1), # International Labor Day
        Date(2008, 7, 28), # Annexation of the Party of Nicoya to Costa Rica (observed)
        Date(2008, 8, 15), # Mother's Day
        Date(2008, 9, 15), # Independence Day
        Date(2008, 10, 12), # Cultures Day
        Date(2008, 12, 25), # Christmas Day
        Date(2009, 1, 1), # New Year's Day
        Date(2009, 4, 9), # Maundy Thursday
        Date(2009, 4, 10), # Good Friday
        Date(2009, 4, 11), # Juan Santamaría Day
        Date(2009, 5, 1), # International Labor Day
        Date(2009, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(2009, 8, 15), # Mother's Day
        Date(2009, 9, 15), # Independence Day
        Date(2009, 10, 12), # Cultures Day
        Date(2009, 12, 25), # Christmas Day
        Date(2010, 1, 1), # New Year's Day
        Date(2010, 4, 1), # Maundy Thursday
        Date(2010, 4, 2), # Good Friday
        Date(2010, 4, 11), # Juan Santamaría Day
        Date(2010, 5, 1), # International Labor Day
        Date(2010, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(2010, 8, 15), # Mother's Day
        Date(2010, 9, 15), # Independence Day
        Date(2010, 10, 18), # Cultures Day (observed)
        Date(2010, 12, 25), # Christmas Day
        Date(2011, 1, 1), # New Year's Day
        Date(2011, 4, 11), # Juan Santamaría Day
        Date(2011, 4, 21), # Maundy Thursday
        Date(2011, 4, 22), # Good Friday
        Date(2011, 5, 1), # International Labor Day
        Date(2011, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(2011, 8, 15), # Mother's Day
        Date(2011, 9, 15), # Independence Day
        Date(2011, 10, 17), # Cultures Day (observed)
        Date(2011, 12, 25), # Christmas Day
        Date(2012, 1, 1), # New Year's Day
        Date(2012, 4, 5), # Maundy Thursday
        Date(2012, 4, 6), # Good Friday
        Date(2012, 4, 11), # Juan Santamaría Day
        Date(2012, 5, 1), # International Labor Day
        Date(2012, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(2012, 8, 15), # Mother's Day
        Date(2012, 9, 15), # Independence Day
        Date(2012, 10, 15), # Cultures Day (observed)
        Date(2012, 12, 25), # Christmas Day
        Date(2013, 1, 1), # New Year's Day
        Date(2013, 3, 28), # Maundy Thursday
        Date(2013, 3, 29), # Good Friday
        Date(2013, 4, 11), # Juan Santamaría Day
        Date(2013, 5, 1), # International Labor Day
        Date(2013, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(2013, 8, 15), # Mother's Day
        Date(2013, 9, 15), # Independence Day
        Date(2013, 10, 12), # Cultures Day
        Date(2013, 12, 25), # Christmas Day
        Date(2014, 1, 1), # New Year's Day
        Date(2014, 4, 11), # Juan Santamaría Day
        Date(2014, 4, 17), # Maundy Thursday
        Date(2014, 4, 18), # Good Friday
        Date(2014, 5, 1), # International Labor Day
        Date(2014, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(2014, 8, 15), # Mother's Day
        Date(2014, 9, 15), # Independence Day
        Date(2014, 10, 12), # Cultures Day
        Date(2014, 12, 25), # Christmas Day
        Date(2015, 1, 1), # New Year's Day
        Date(2015, 4, 2), # Maundy Thursday
        Date(2015, 4, 3), # Good Friday
        Date(2015, 4, 11), # Juan Santamaría Day
        Date(2015, 5, 1), # International Labor Day
        Date(2015, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(2015, 8, 15), # Mother's Day
        Date(2015, 9, 15), # Independence Day
        Date(2015, 10, 12), # Cultures Day
        Date(2015, 12, 25), # Christmas Day
        Date(2016, 1, 1), # New Year's Day
        Date(2016, 3, 24), # Maundy Thursday
        Date(2016, 3, 25), # Good Friday
        Date(2016, 4, 11), # Juan Santamaría Day
        Date(2016, 5, 1), # International Labor Day
        Date(2016, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(2016, 8, 15), # Mother's Day
        Date(2016, 9, 15), # Independence Day
        Date(2016, 10, 17), # Cultures Day (observed)
        Date(2016, 12, 25), # Christmas Day
        Date(2017, 1, 1), # New Year's Day
        Date(2017, 4, 11), # Juan Santamaría Day
        Date(2017, 4, 13), # Maundy Thursday
        Date(2017, 4, 14), # Good Friday
        Date(2017, 5, 1), # International Labor Day
        Date(2017, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(2017, 8, 15), # Mother's Day
        Date(2017, 9, 15), # Independence Day
        Date(2017, 10, 16), # Cultures Day (observed)
        Date(2017, 12, 25), # Christmas Day
        Date(2018, 1, 1), # New Year's Day
        Date(2018, 3, 29), # Maundy Thursday
        Date(2018, 3, 30), # Good Friday
        Date(2018, 4, 11), # Juan Santamaría Day
        Date(2018, 5, 1), # International Labor Day
        Date(2018, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(2018, 8, 15), # Mother's Day
        Date(2018, 9, 15), # Independence Day
        Date(2018, 10, 15), # Cultures Day (observed)
        Date(2018, 12, 25), # Christmas Day
        Date(2019, 1, 1), # New Year's Day
        Date(2019, 4, 11), # Juan Santamaría Day
        Date(2019, 4, 18), # Maundy Thursday
        Date(2019, 4, 19), # Good Friday
        Date(2019, 5, 1), # International Labor Day
        Date(2019, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(2019, 8, 15), # Mother's Day
        Date(2019, 9, 15), # Independence Day
        Date(2019, 10, 12), # Cultures Day
        Date(2019, 12, 25), # Christmas Day
        Date(2020, 1, 1), # New Year's Day
        Date(2020, 4, 9), # Maundy Thursday
        Date(2020, 4, 10), # Good Friday
        Date(2020, 4, 11), # Juan Santamaría Day
        Date(2020, 5, 1), # International Labor Day
        Date(2020, 7, 27), # Annexation of the Party of Nicoya to Costa Rica (observed)
        Date(2020, 8, 17), # Mother's Day (observed)
        Date(2020, 9, 14), # Independence Day (observed)
        Date(2020, 12, 25), # Christmas Day
        Date(2021, 1, 1), # New Year's Day
        Date(2021, 4, 1), # Maundy Thursday
        Date(2021, 4, 2), # Good Friday
        Date(2021, 4, 11), # Juan Santamaría Day
        Date(2021, 5, 3), # International Labor Day (observed)
        Date(2021, 7, 26), # Annexation of the Party of Nicoya to Costa Rica (observed)
        Date(2021, 8, 15), # Mother's Day
        Date(2021, 9, 13), # Independence Day (observed)
        Date(2021, 12, 25), # Christmas Day
        Date(2022, 1, 1), # New Year's Day
        Date(2022, 4, 11), # Juan Santamaría Day
        Date(2022, 4, 14), # Maundy Thursday
        Date(2022, 4, 15), # Good Friday
        Date(2022, 5, 1), # International Labor Day
        Date(2022, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(2022, 8, 15), # Mother's Day
        Date(2022, 9, 19), # Independence Day (observed)
        Date(2022, 12, 25), # Christmas Day
        Date(2023, 1, 1), # New Year's Day
        Date(2023, 4, 6), # Maundy Thursday
        Date(2023, 4, 7), # Good Friday
        Date(2023, 4, 10), # Juan Santamaría Day (observed)
        Date(2023, 5, 1), # International Labor Day
        Date(2023, 7, 24), # Annexation of the Party of Nicoya to Costa Rica (observed)
        Date(2023, 8, 14), # Mother's Day (observed)
        Date(2023, 9, 15), # Independence Day
        Date(2023, 12, 25), # Christmas Day
        Date(2024, 1, 1), # New Year's Day
        Date(2024, 3, 28), # Maundy Thursday
        Date(2024, 3, 29), # Good Friday
        Date(2024, 4, 15), # Juan Santamaría Day (observed)
        Date(2024, 5, 1), # International Labor Day
        Date(2024, 7, 29), # Annexation of the Party of Nicoya to Costa Rica (observed)
        Date(2024, 8, 19), # Mother's Day (observed)
        Date(2024, 9, 15), # Independence Day
        Date(2024, 12, 25), # Christmas Day
        Date(2025, 1, 1), # New Year's Day
        Date(2025, 4, 11), # Juan Santamaría Day
        Date(2025, 4, 17), # Maundy Thursday
        Date(2025, 4, 18), # Good Friday
        Date(2025, 5, 1), # International Labor Day
        Date(2025, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(2025, 8, 15), # Mother's Day
        Date(2025, 9, 15), # Independence Day
        Date(2025, 12, 25), # Christmas Day
        Date(2026, 1, 1), # New Year's Day
        Date(2026, 4, 2), # Maundy Thursday
        Date(2026, 4, 3), # Good Friday
        Date(2026, 4, 11), # Juan Santamaría Day
        Date(2026, 5, 1), # International Labor Day
        Date(2026, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(2026, 8, 15), # Mother's Day
        Date(2026, 9, 15), # Independence Day
        Date(2026, 12, 25), # Christmas Day
        Date(2027, 1, 1), # New Year's Day
        Date(2027, 3, 25), # Maundy Thursday
        Date(2027, 3, 26), # Good Friday
        Date(2027, 4, 11), # Juan Santamaría Day
        Date(2027, 5, 1), # International Labor Day
        Date(2027, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(2027, 8, 15), # Mother's Day
        Date(2027, 9, 15), # Independence Day
        Date(2027, 12, 25), # Christmas Day
        Date(2028, 1, 1), # New Year's Day
        Date(2028, 4, 11), # Juan Santamaría Day
        Date(2028, 4, 13), # Maundy Thursday
        Date(2028, 4, 14), # Good Friday
        Date(2028, 5, 1), # International Labor Day
        Date(2028, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(2028, 8, 15), # Mother's Day
        Date(2028, 9, 15), # Independence Day
        Date(2028, 12, 25), # Christmas Day
        Date(2029, 1, 1), # New Year's Day
        Date(2029, 3, 29), # Maundy Thursday
        Date(2029, 3, 30), # Good Friday
        Date(2029, 4, 11), # Juan Santamaría Day
        Date(2029, 5, 1), # International Labor Day
        Date(2029, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(2029, 8, 15), # Mother's Day
        Date(2029, 9, 15), # Independence Day
        Date(2029, 12, 25), # Christmas Day
        Date(2030, 1, 1), # New Year's Day
        Date(2030, 4, 11), # Juan Santamaría Day
        Date(2030, 4, 18), # Maundy Thursday
        Date(2030, 4, 19), # Good Friday
        Date(2030, 5, 1), # International Labor Day
        Date(2030, 7, 25), # Annexation of the Party of Nicoya to Costa Rica
        Date(2030, 8, 15), # Mother's Day
        Date(2030, 9, 15), # Independence Day
        Date(2030, 12, 25), # Christmas Day
    ]

    test_holidays(calendar, holidays)

    return nothing
end

end
