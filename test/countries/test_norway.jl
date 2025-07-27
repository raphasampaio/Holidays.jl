module TestNorway

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Norway" begin
    calendar = Holidays.Norway()

    holidays = Date[
        Date(1970, 1, 1), # New Year's Day
        Date(1970, 3, 26), # Maundy Thursday
        Date(1970, 3, 27), # Good Friday
        Date(1970, 3, 29), # Easter Sunday
        Date(1970, 3, 30), # Easter Monday
        Date(1970, 5, 1), # Labor Day
        Date(1970, 5, 7), # Ascension Day
        Date(1970, 5, 17), # Constitution Day; Whit Sunday
        Date(1970, 5, 18), # Whit Monday
        Date(1970, 12, 25), # Christmas Day
        Date(1970, 12, 26), # Second Day of Christmas
        Date(1971, 1, 1), # New Year's Day
        Date(1971, 4, 8), # Maundy Thursday
        Date(1971, 4, 9), # Good Friday
        Date(1971, 4, 11), # Easter Sunday
        Date(1971, 4, 12), # Easter Monday
        Date(1971, 5, 1), # Labor Day
        Date(1971, 5, 17), # Constitution Day
        Date(1971, 5, 20), # Ascension Day
        Date(1971, 5, 30), # Whit Sunday
        Date(1971, 5, 31), # Whit Monday
        Date(1971, 12, 25), # Christmas Day
        Date(1971, 12, 26), # Second Day of Christmas
        Date(1972, 1, 1), # New Year's Day
        Date(1972, 3, 30), # Maundy Thursday
        Date(1972, 3, 31), # Good Friday
        Date(1972, 4, 2), # Easter Sunday
        Date(1972, 4, 3), # Easter Monday
        Date(1972, 5, 1), # Labor Day
        Date(1972, 5, 11), # Ascension Day
        Date(1972, 5, 17), # Constitution Day
        Date(1972, 5, 21), # Whit Sunday
        Date(1972, 5, 22), # Whit Monday
        Date(1972, 12, 25), # Christmas Day
        Date(1972, 12, 26), # Second Day of Christmas
        Date(1973, 1, 1), # New Year's Day
        Date(1973, 4, 19), # Maundy Thursday
        Date(1973, 4, 20), # Good Friday
        Date(1973, 4, 22), # Easter Sunday
        Date(1973, 4, 23), # Easter Monday
        Date(1973, 5, 1), # Labor Day
        Date(1973, 5, 17), # Constitution Day
        Date(1973, 5, 31), # Ascension Day
        Date(1973, 6, 10), # Whit Sunday
        Date(1973, 6, 11), # Whit Monday
        Date(1973, 12, 25), # Christmas Day
        Date(1973, 12, 26), # Second Day of Christmas
        Date(1974, 1, 1), # New Year's Day
        Date(1974, 4, 11), # Maundy Thursday
        Date(1974, 4, 12), # Good Friday
        Date(1974, 4, 14), # Easter Sunday
        Date(1974, 4, 15), # Easter Monday
        Date(1974, 5, 1), # Labor Day
        Date(1974, 5, 17), # Constitution Day
        Date(1974, 5, 23), # Ascension Day
        Date(1974, 6, 2), # Whit Sunday
        Date(1974, 6, 3), # Whit Monday
        Date(1974, 12, 25), # Christmas Day
        Date(1974, 12, 26), # Second Day of Christmas
        Date(1975, 1, 1), # New Year's Day
        Date(1975, 3, 27), # Maundy Thursday
        Date(1975, 3, 28), # Good Friday
        Date(1975, 3, 30), # Easter Sunday
        Date(1975, 3, 31), # Easter Monday
        Date(1975, 5, 1), # Labor Day
        Date(1975, 5, 8), # Ascension Day
        Date(1975, 5, 17), # Constitution Day
        Date(1975, 5, 18), # Whit Sunday
        Date(1975, 5, 19), # Whit Monday
        Date(1975, 12, 25), # Christmas Day
        Date(1975, 12, 26), # Second Day of Christmas
        Date(1976, 1, 1), # New Year's Day
        Date(1976, 4, 15), # Maundy Thursday
        Date(1976, 4, 16), # Good Friday
        Date(1976, 4, 18), # Easter Sunday
        Date(1976, 4, 19), # Easter Monday
        Date(1976, 5, 1), # Labor Day
        Date(1976, 5, 17), # Constitution Day
        Date(1976, 5, 27), # Ascension Day
        Date(1976, 6, 6), # Whit Sunday
        Date(1976, 6, 7), # Whit Monday
        Date(1976, 12, 25), # Christmas Day
        Date(1976, 12, 26), # Second Day of Christmas
        Date(1977, 1, 1), # New Year's Day
        Date(1977, 4, 7), # Maundy Thursday
        Date(1977, 4, 8), # Good Friday
        Date(1977, 4, 10), # Easter Sunday
        Date(1977, 4, 11), # Easter Monday
        Date(1977, 5, 1), # Labor Day
        Date(1977, 5, 17), # Constitution Day
        Date(1977, 5, 19), # Ascension Day
        Date(1977, 5, 29), # Whit Sunday
        Date(1977, 5, 30), # Whit Monday
        Date(1977, 12, 25), # Christmas Day
        Date(1977, 12, 26), # Second Day of Christmas
        Date(1978, 1, 1), # New Year's Day
        Date(1978, 3, 23), # Maundy Thursday
        Date(1978, 3, 24), # Good Friday
        Date(1978, 3, 26), # Easter Sunday
        Date(1978, 3, 27), # Easter Monday
        Date(1978, 5, 1), # Labor Day
        Date(1978, 5, 4), # Ascension Day
        Date(1978, 5, 14), # Whit Sunday
        Date(1978, 5, 15), # Whit Monday
        Date(1978, 5, 17), # Constitution Day
        Date(1978, 12, 25), # Christmas Day
        Date(1978, 12, 26), # Second Day of Christmas
        Date(1979, 1, 1), # New Year's Day
        Date(1979, 4, 12), # Maundy Thursday
        Date(1979, 4, 13), # Good Friday
        Date(1979, 4, 15), # Easter Sunday
        Date(1979, 4, 16), # Easter Monday
        Date(1979, 5, 1), # Labor Day
        Date(1979, 5, 17), # Constitution Day
        Date(1979, 5, 24), # Ascension Day
        Date(1979, 6, 3), # Whit Sunday
        Date(1979, 6, 4), # Whit Monday
        Date(1979, 12, 25), # Christmas Day
        Date(1979, 12, 26), # Second Day of Christmas
        Date(1980, 1, 1), # New Year's Day
        Date(1980, 4, 3), # Maundy Thursday
        Date(1980, 4, 4), # Good Friday
        Date(1980, 4, 6), # Easter Sunday
        Date(1980, 4, 7), # Easter Monday
        Date(1980, 5, 1), # Labor Day
        Date(1980, 5, 15), # Ascension Day
        Date(1980, 5, 17), # Constitution Day
        Date(1980, 5, 25), # Whit Sunday
        Date(1980, 5, 26), # Whit Monday
        Date(1980, 12, 25), # Christmas Day
        Date(1980, 12, 26), # Second Day of Christmas
        Date(1981, 1, 1), # New Year's Day
        Date(1981, 4, 16), # Maundy Thursday
        Date(1981, 4, 17), # Good Friday
        Date(1981, 4, 19), # Easter Sunday
        Date(1981, 4, 20), # Easter Monday
        Date(1981, 5, 1), # Labor Day
        Date(1981, 5, 17), # Constitution Day
        Date(1981, 5, 28), # Ascension Day
        Date(1981, 6, 7), # Whit Sunday
        Date(1981, 6, 8), # Whit Monday
        Date(1981, 12, 25), # Christmas Day
        Date(1981, 12, 26), # Second Day of Christmas
        Date(1982, 1, 1), # New Year's Day
        Date(1982, 4, 8), # Maundy Thursday
        Date(1982, 4, 9), # Good Friday
        Date(1982, 4, 11), # Easter Sunday
        Date(1982, 4, 12), # Easter Monday
        Date(1982, 5, 1), # Labor Day
        Date(1982, 5, 17), # Constitution Day
        Date(1982, 5, 20), # Ascension Day
        Date(1982, 5, 30), # Whit Sunday
        Date(1982, 5, 31), # Whit Monday
        Date(1982, 12, 25), # Christmas Day
        Date(1982, 12, 26), # Second Day of Christmas
        Date(1983, 1, 1), # New Year's Day
        Date(1983, 3, 31), # Maundy Thursday
        Date(1983, 4, 1), # Good Friday
        Date(1983, 4, 3), # Easter Sunday
        Date(1983, 4, 4), # Easter Monday
        Date(1983, 5, 1), # Labor Day
        Date(1983, 5, 12), # Ascension Day
        Date(1983, 5, 17), # Constitution Day
        Date(1983, 5, 22), # Whit Sunday
        Date(1983, 5, 23), # Whit Monday
        Date(1983, 12, 25), # Christmas Day
        Date(1983, 12, 26), # Second Day of Christmas
        Date(1984, 1, 1), # New Year's Day
        Date(1984, 4, 19), # Maundy Thursday
        Date(1984, 4, 20), # Good Friday
        Date(1984, 4, 22), # Easter Sunday
        Date(1984, 4, 23), # Easter Monday
        Date(1984, 5, 1), # Labor Day
        Date(1984, 5, 17), # Constitution Day
        Date(1984, 5, 31), # Ascension Day
        Date(1984, 6, 10), # Whit Sunday
        Date(1984, 6, 11), # Whit Monday
        Date(1984, 12, 25), # Christmas Day
        Date(1984, 12, 26), # Second Day of Christmas
        Date(1985, 1, 1), # New Year's Day
        Date(1985, 4, 4), # Maundy Thursday
        Date(1985, 4, 5), # Good Friday
        Date(1985, 4, 7), # Easter Sunday
        Date(1985, 4, 8), # Easter Monday
        Date(1985, 5, 1), # Labor Day
        Date(1985, 5, 16), # Ascension Day
        Date(1985, 5, 17), # Constitution Day
        Date(1985, 5, 26), # Whit Sunday
        Date(1985, 5, 27), # Whit Monday
        Date(1985, 12, 25), # Christmas Day
        Date(1985, 12, 26), # Second Day of Christmas
        Date(1986, 1, 1), # New Year's Day
        Date(1986, 3, 27), # Maundy Thursday
        Date(1986, 3, 28), # Good Friday
        Date(1986, 3, 30), # Easter Sunday
        Date(1986, 3, 31), # Easter Monday
        Date(1986, 5, 1), # Labor Day
        Date(1986, 5, 8), # Ascension Day
        Date(1986, 5, 17), # Constitution Day
        Date(1986, 5, 18), # Whit Sunday
        Date(1986, 5, 19), # Whit Monday
        Date(1986, 12, 25), # Christmas Day
        Date(1986, 12, 26), # Second Day of Christmas
        Date(1987, 1, 1), # New Year's Day
        Date(1987, 4, 16), # Maundy Thursday
        Date(1987, 4, 17), # Good Friday
        Date(1987, 4, 19), # Easter Sunday
        Date(1987, 4, 20), # Easter Monday
        Date(1987, 5, 1), # Labor Day
        Date(1987, 5, 17), # Constitution Day
        Date(1987, 5, 28), # Ascension Day
        Date(1987, 6, 7), # Whit Sunday
        Date(1987, 6, 8), # Whit Monday
        Date(1987, 12, 25), # Christmas Day
        Date(1987, 12, 26), # Second Day of Christmas
        Date(1988, 1, 1), # New Year's Day
        Date(1988, 3, 31), # Maundy Thursday
        Date(1988, 4, 1), # Good Friday
        Date(1988, 4, 3), # Easter Sunday
        Date(1988, 4, 4), # Easter Monday
        Date(1988, 5, 1), # Labor Day
        Date(1988, 5, 12), # Ascension Day
        Date(1988, 5, 17), # Constitution Day
        Date(1988, 5, 22), # Whit Sunday
        Date(1988, 5, 23), # Whit Monday
        Date(1988, 12, 25), # Christmas Day
        Date(1988, 12, 26), # Second Day of Christmas
        Date(1989, 1, 1), # New Year's Day
        Date(1989, 3, 23), # Maundy Thursday
        Date(1989, 3, 24), # Good Friday
        Date(1989, 3, 26), # Easter Sunday
        Date(1989, 3, 27), # Easter Monday
        Date(1989, 5, 1), # Labor Day
        Date(1989, 5, 4), # Ascension Day
        Date(1989, 5, 14), # Whit Sunday
        Date(1989, 5, 15), # Whit Monday
        Date(1989, 5, 17), # Constitution Day
        Date(1989, 12, 25), # Christmas Day
        Date(1989, 12, 26), # Second Day of Christmas
        Date(1990, 1, 1), # New Year's Day
        Date(1990, 4, 12), # Maundy Thursday
        Date(1990, 4, 13), # Good Friday
        Date(1990, 4, 15), # Easter Sunday
        Date(1990, 4, 16), # Easter Monday
        Date(1990, 5, 1), # Labor Day
        Date(1990, 5, 17), # Constitution Day
        Date(1990, 5, 24), # Ascension Day
        Date(1990, 6, 3), # Whit Sunday
        Date(1990, 6, 4), # Whit Monday
        Date(1990, 12, 25), # Christmas Day
        Date(1990, 12, 26), # Second Day of Christmas
        Date(1991, 1, 1), # New Year's Day
        Date(1991, 3, 28), # Maundy Thursday
        Date(1991, 3, 29), # Good Friday
        Date(1991, 3, 31), # Easter Sunday
        Date(1991, 4, 1), # Easter Monday
        Date(1991, 5, 1), # Labor Day
        Date(1991, 5, 9), # Ascension Day
        Date(1991, 5, 17), # Constitution Day
        Date(1991, 5, 19), # Whit Sunday
        Date(1991, 5, 20), # Whit Monday
        Date(1991, 12, 25), # Christmas Day
        Date(1991, 12, 26), # Second Day of Christmas
        Date(1992, 1, 1), # New Year's Day
        Date(1992, 4, 16), # Maundy Thursday
        Date(1992, 4, 17), # Good Friday
        Date(1992, 4, 19), # Easter Sunday
        Date(1992, 4, 20), # Easter Monday
        Date(1992, 5, 1), # Labor Day
        Date(1992, 5, 17), # Constitution Day
        Date(1992, 5, 28), # Ascension Day
        Date(1992, 6, 7), # Whit Sunday
        Date(1992, 6, 8), # Whit Monday
        Date(1992, 12, 25), # Christmas Day
        Date(1992, 12, 26), # Second Day of Christmas
        Date(1993, 1, 1), # New Year's Day
        Date(1993, 4, 8), # Maundy Thursday
        Date(1993, 4, 9), # Good Friday
        Date(1993, 4, 11), # Easter Sunday
        Date(1993, 4, 12), # Easter Monday
        Date(1993, 5, 1), # Labor Day
        Date(1993, 5, 17), # Constitution Day
        Date(1993, 5, 20), # Ascension Day
        Date(1993, 5, 30), # Whit Sunday
        Date(1993, 5, 31), # Whit Monday
        Date(1993, 12, 25), # Christmas Day
        Date(1993, 12, 26), # Second Day of Christmas
        Date(1994, 1, 1), # New Year's Day
        Date(1994, 3, 31), # Maundy Thursday
        Date(1994, 4, 1), # Good Friday
        Date(1994, 4, 3), # Easter Sunday
        Date(1994, 4, 4), # Easter Monday
        Date(1994, 5, 1), # Labor Day
        Date(1994, 5, 12), # Ascension Day
        Date(1994, 5, 17), # Constitution Day
        Date(1994, 5, 22), # Whit Sunday
        Date(1994, 5, 23), # Whit Monday
        Date(1994, 12, 25), # Christmas Day
        Date(1994, 12, 26), # Second Day of Christmas
        Date(1995, 1, 1), # New Year's Day
        Date(1995, 4, 13), # Maundy Thursday
        Date(1995, 4, 14), # Good Friday
        Date(1995, 4, 16), # Easter Sunday
        Date(1995, 4, 17), # Easter Monday
        Date(1995, 5, 1), # Labor Day
        Date(1995, 5, 17), # Constitution Day
        Date(1995, 5, 25), # Ascension Day
        Date(1995, 6, 4), # Whit Sunday
        Date(1995, 6, 5), # Whit Monday
        Date(1995, 12, 25), # Christmas Day
        Date(1995, 12, 26), # Second Day of Christmas
        Date(1996, 1, 1), # New Year's Day
        Date(1996, 4, 4), # Maundy Thursday
        Date(1996, 4, 5), # Good Friday
        Date(1996, 4, 7), # Easter Sunday
        Date(1996, 4, 8), # Easter Monday
        Date(1996, 5, 1), # Labor Day
        Date(1996, 5, 16), # Ascension Day
        Date(1996, 5, 17), # Constitution Day
        Date(1996, 5, 26), # Whit Sunday
        Date(1996, 5, 27), # Whit Monday
        Date(1996, 12, 25), # Christmas Day
        Date(1996, 12, 26), # Second Day of Christmas
        Date(1997, 1, 1), # New Year's Day
        Date(1997, 3, 27), # Maundy Thursday
        Date(1997, 3, 28), # Good Friday
        Date(1997, 3, 30), # Easter Sunday
        Date(1997, 3, 31), # Easter Monday
        Date(1997, 5, 1), # Labor Day
        Date(1997, 5, 8), # Ascension Day
        Date(1997, 5, 17), # Constitution Day
        Date(1997, 5, 18), # Whit Sunday
        Date(1997, 5, 19), # Whit Monday
        Date(1997, 12, 25), # Christmas Day
        Date(1997, 12, 26), # Second Day of Christmas
        Date(1998, 1, 1), # New Year's Day
        Date(1998, 4, 9), # Maundy Thursday
        Date(1998, 4, 10), # Good Friday
        Date(1998, 4, 12), # Easter Sunday
        Date(1998, 4, 13), # Easter Monday
        Date(1998, 5, 1), # Labor Day
        Date(1998, 5, 17), # Constitution Day
        Date(1998, 5, 21), # Ascension Day
        Date(1998, 5, 31), # Whit Sunday
        Date(1998, 6, 1), # Whit Monday
        Date(1998, 12, 25), # Christmas Day
        Date(1998, 12, 26), # Second Day of Christmas
        Date(1999, 1, 1), # New Year's Day
        Date(1999, 4, 1), # Maundy Thursday
        Date(1999, 4, 2), # Good Friday
        Date(1999, 4, 4), # Easter Sunday
        Date(1999, 4, 5), # Easter Monday
        Date(1999, 5, 1), # Labor Day
        Date(1999, 5, 13), # Ascension Day
        Date(1999, 5, 17), # Constitution Day
        Date(1999, 5, 23), # Whit Sunday
        Date(1999, 5, 24), # Whit Monday
        Date(1999, 12, 25), # Christmas Day
        Date(1999, 12, 26), # Second Day of Christmas
        Date(2000, 1, 1), # New Year's Day
        Date(2000, 4, 20), # Maundy Thursday
        Date(2000, 4, 21), # Good Friday
        Date(2000, 4, 23), # Easter Sunday
        Date(2000, 4, 24), # Easter Monday
        Date(2000, 5, 1), # Labor Day
        Date(2000, 5, 17), # Constitution Day
        Date(2000, 6, 1), # Ascension Day
        Date(2000, 6, 11), # Whit Sunday
        Date(2000, 6, 12), # Whit Monday
        Date(2000, 12, 25), # Christmas Day
        Date(2000, 12, 26), # Second Day of Christmas
        Date(2001, 1, 1), # New Year's Day
        Date(2001, 4, 12), # Maundy Thursday
        Date(2001, 4, 13), # Good Friday
        Date(2001, 4, 15), # Easter Sunday
        Date(2001, 4, 16), # Easter Monday
        Date(2001, 5, 1), # Labor Day
        Date(2001, 5, 17), # Constitution Day
        Date(2001, 5, 24), # Ascension Day
        Date(2001, 6, 3), # Whit Sunday
        Date(2001, 6, 4), # Whit Monday
        Date(2001, 12, 25), # Christmas Day
        Date(2001, 12, 26), # Second Day of Christmas
        Date(2002, 1, 1), # New Year's Day
        Date(2002, 3, 28), # Maundy Thursday
        Date(2002, 3, 29), # Good Friday
        Date(2002, 3, 31), # Easter Sunday
        Date(2002, 4, 1), # Easter Monday
        Date(2002, 5, 1), # Labor Day
        Date(2002, 5, 9), # Ascension Day
        Date(2002, 5, 17), # Constitution Day
        Date(2002, 5, 19), # Whit Sunday
        Date(2002, 5, 20), # Whit Monday
        Date(2002, 12, 25), # Christmas Day
        Date(2002, 12, 26), # Second Day of Christmas
        Date(2003, 1, 1), # New Year's Day
        Date(2003, 4, 17), # Maundy Thursday
        Date(2003, 4, 18), # Good Friday
        Date(2003, 4, 20), # Easter Sunday
        Date(2003, 4, 21), # Easter Monday
        Date(2003, 5, 1), # Labor Day
        Date(2003, 5, 17), # Constitution Day
        Date(2003, 5, 29), # Ascension Day
        Date(2003, 6, 8), # Whit Sunday
        Date(2003, 6, 9), # Whit Monday
        Date(2003, 12, 25), # Christmas Day
        Date(2003, 12, 26), # Second Day of Christmas
        Date(2004, 1, 1), # New Year's Day
        Date(2004, 4, 8), # Maundy Thursday
        Date(2004, 4, 9), # Good Friday
        Date(2004, 4, 11), # Easter Sunday
        Date(2004, 4, 12), # Easter Monday
        Date(2004, 5, 1), # Labor Day
        Date(2004, 5, 17), # Constitution Day
        Date(2004, 5, 20), # Ascension Day
        Date(2004, 5, 30), # Whit Sunday
        Date(2004, 5, 31), # Whit Monday
        Date(2004, 12, 25), # Christmas Day
        Date(2004, 12, 26), # Second Day of Christmas
        Date(2005, 1, 1), # New Year's Day
        Date(2005, 3, 24), # Maundy Thursday
        Date(2005, 3, 25), # Good Friday
        Date(2005, 3, 27), # Easter Sunday
        Date(2005, 3, 28), # Easter Monday
        Date(2005, 5, 1), # Labor Day
        Date(2005, 5, 5), # Ascension Day
        Date(2005, 5, 15), # Whit Sunday
        Date(2005, 5, 16), # Whit Monday
        Date(2005, 5, 17), # Constitution Day
        Date(2005, 12, 25), # Christmas Day
        Date(2005, 12, 26), # Second Day of Christmas
        Date(2006, 1, 1), # New Year's Day
        Date(2006, 4, 13), # Maundy Thursday
        Date(2006, 4, 14), # Good Friday
        Date(2006, 4, 16), # Easter Sunday
        Date(2006, 4, 17), # Easter Monday
        Date(2006, 5, 1), # Labor Day
        Date(2006, 5, 17), # Constitution Day
        Date(2006, 5, 25), # Ascension Day
        Date(2006, 6, 4), # Whit Sunday
        Date(2006, 6, 5), # Whit Monday
        Date(2006, 12, 25), # Christmas Day
        Date(2006, 12, 26), # Second Day of Christmas
        Date(2007, 1, 1), # New Year's Day
        Date(2007, 4, 5), # Maundy Thursday
        Date(2007, 4, 6), # Good Friday
        Date(2007, 4, 8), # Easter Sunday
        Date(2007, 4, 9), # Easter Monday
        Date(2007, 5, 1), # Labor Day
        Date(2007, 5, 17), # Ascension Day; Constitution Day
        Date(2007, 5, 27), # Whit Sunday
        Date(2007, 5, 28), # Whit Monday
        Date(2007, 12, 25), # Christmas Day
        Date(2007, 12, 26), # Second Day of Christmas
        Date(2008, 1, 1), # New Year's Day
        Date(2008, 3, 20), # Maundy Thursday
        Date(2008, 3, 21), # Good Friday
        Date(2008, 3, 23), # Easter Sunday
        Date(2008, 3, 24), # Easter Monday
        Date(2008, 5, 1), # Ascension Day; Labor Day
        Date(2008, 5, 11), # Whit Sunday
        Date(2008, 5, 12), # Whit Monday
        Date(2008, 5, 17), # Constitution Day
        Date(2008, 12, 25), # Christmas Day
        Date(2008, 12, 26), # Second Day of Christmas
        Date(2009, 1, 1), # New Year's Day
        Date(2009, 4, 9), # Maundy Thursday
        Date(2009, 4, 10), # Good Friday
        Date(2009, 4, 12), # Easter Sunday
        Date(2009, 4, 13), # Easter Monday
        Date(2009, 5, 1), # Labor Day
        Date(2009, 5, 17), # Constitution Day
        Date(2009, 5, 21), # Ascension Day
        Date(2009, 5, 31), # Whit Sunday
        Date(2009, 6, 1), # Whit Monday
        Date(2009, 12, 25), # Christmas Day
        Date(2009, 12, 26), # Second Day of Christmas
        Date(2010, 1, 1), # New Year's Day
        Date(2010, 4, 1), # Maundy Thursday
        Date(2010, 4, 2), # Good Friday
        Date(2010, 4, 4), # Easter Sunday
        Date(2010, 4, 5), # Easter Monday
        Date(2010, 5, 1), # Labor Day
        Date(2010, 5, 13), # Ascension Day
        Date(2010, 5, 17), # Constitution Day
        Date(2010, 5, 23), # Whit Sunday
        Date(2010, 5, 24), # Whit Monday
        Date(2010, 12, 25), # Christmas Day
        Date(2010, 12, 26), # Second Day of Christmas
        Date(2011, 1, 1), # New Year's Day
        Date(2011, 4, 21), # Maundy Thursday
        Date(2011, 4, 22), # Good Friday
        Date(2011, 4, 24), # Easter Sunday
        Date(2011, 4, 25), # Easter Monday
        Date(2011, 5, 1), # Labor Day
        Date(2011, 5, 17), # Constitution Day
        Date(2011, 6, 2), # Ascension Day
        Date(2011, 6, 12), # Whit Sunday
        Date(2011, 6, 13), # Whit Monday
        Date(2011, 12, 25), # Christmas Day
        Date(2011, 12, 26), # Second Day of Christmas
        Date(2012, 1, 1), # New Year's Day
        Date(2012, 4, 5), # Maundy Thursday
        Date(2012, 4, 6), # Good Friday
        Date(2012, 4, 8), # Easter Sunday
        Date(2012, 4, 9), # Easter Monday
        Date(2012, 5, 1), # Labor Day
        Date(2012, 5, 17), # Ascension Day; Constitution Day
        Date(2012, 5, 27), # Whit Sunday
        Date(2012, 5, 28), # Whit Monday
        Date(2012, 12, 25), # Christmas Day
        Date(2012, 12, 26), # Second Day of Christmas
        Date(2013, 1, 1), # New Year's Day
        Date(2013, 3, 28), # Maundy Thursday
        Date(2013, 3, 29), # Good Friday
        Date(2013, 3, 31), # Easter Sunday
        Date(2013, 4, 1), # Easter Monday
        Date(2013, 5, 1), # Labor Day
        Date(2013, 5, 9), # Ascension Day
        Date(2013, 5, 17), # Constitution Day
        Date(2013, 5, 19), # Whit Sunday
        Date(2013, 5, 20), # Whit Monday
        Date(2013, 12, 25), # Christmas Day
        Date(2013, 12, 26), # Second Day of Christmas
        Date(2014, 1, 1), # New Year's Day
        Date(2014, 4, 17), # Maundy Thursday
        Date(2014, 4, 18), # Good Friday
        Date(2014, 4, 20), # Easter Sunday
        Date(2014, 4, 21), # Easter Monday
        Date(2014, 5, 1), # Labor Day
        Date(2014, 5, 17), # Constitution Day
        Date(2014, 5, 29), # Ascension Day
        Date(2014, 6, 8), # Whit Sunday
        Date(2014, 6, 9), # Whit Monday
        Date(2014, 12, 25), # Christmas Day
        Date(2014, 12, 26), # Second Day of Christmas
        Date(2015, 1, 1), # New Year's Day
        Date(2015, 4, 2), # Maundy Thursday
        Date(2015, 4, 3), # Good Friday
        Date(2015, 4, 5), # Easter Sunday
        Date(2015, 4, 6), # Easter Monday
        Date(2015, 5, 1), # Labor Day
        Date(2015, 5, 14), # Ascension Day
        Date(2015, 5, 17), # Constitution Day
        Date(2015, 5, 24), # Whit Sunday
        Date(2015, 5, 25), # Whit Monday
        Date(2015, 12, 25), # Christmas Day
        Date(2015, 12, 26), # Second Day of Christmas
        Date(2016, 1, 1), # New Year's Day
        Date(2016, 3, 24), # Maundy Thursday
        Date(2016, 3, 25), # Good Friday
        Date(2016, 3, 27), # Easter Sunday
        Date(2016, 3, 28), # Easter Monday
        Date(2016, 5, 1), # Labor Day
        Date(2016, 5, 5), # Ascension Day
        Date(2016, 5, 15), # Whit Sunday
        Date(2016, 5, 16), # Whit Monday
        Date(2016, 5, 17), # Constitution Day
        Date(2016, 12, 25), # Christmas Day
        Date(2016, 12, 26), # Second Day of Christmas
        Date(2017, 1, 1), # New Year's Day
        Date(2017, 4, 13), # Maundy Thursday
        Date(2017, 4, 14), # Good Friday
        Date(2017, 4, 16), # Easter Sunday
        Date(2017, 4, 17), # Easter Monday
        Date(2017, 5, 1), # Labor Day
        Date(2017, 5, 17), # Constitution Day
        Date(2017, 5, 25), # Ascension Day
        Date(2017, 6, 4), # Whit Sunday
        Date(2017, 6, 5), # Whit Monday
        Date(2017, 12, 25), # Christmas Day
        Date(2017, 12, 26), # Second Day of Christmas
        Date(2018, 1, 1), # New Year's Day
        Date(2018, 3, 29), # Maundy Thursday
        Date(2018, 3, 30), # Good Friday
        Date(2018, 4, 1), # Easter Sunday
        Date(2018, 4, 2), # Easter Monday
        Date(2018, 5, 1), # Labor Day
        Date(2018, 5, 10), # Ascension Day
        Date(2018, 5, 17), # Constitution Day
        Date(2018, 5, 20), # Whit Sunday
        Date(2018, 5, 21), # Whit Monday
        Date(2018, 12, 25), # Christmas Day
        Date(2018, 12, 26), # Second Day of Christmas
        Date(2019, 1, 1), # New Year's Day
        Date(2019, 4, 18), # Maundy Thursday
        Date(2019, 4, 19), # Good Friday
        Date(2019, 4, 21), # Easter Sunday
        Date(2019, 4, 22), # Easter Monday
        Date(2019, 5, 1), # Labor Day
        Date(2019, 5, 17), # Constitution Day
        Date(2019, 5, 30), # Ascension Day
        Date(2019, 6, 9), # Whit Sunday
        Date(2019, 6, 10), # Whit Monday
        Date(2019, 12, 25), # Christmas Day
        Date(2019, 12, 26), # Second Day of Christmas
        Date(2020, 1, 1), # New Year's Day
        Date(2020, 4, 9), # Maundy Thursday
        Date(2020, 4, 10), # Good Friday
        Date(2020, 4, 12), # Easter Sunday
        Date(2020, 4, 13), # Easter Monday
        Date(2020, 5, 1), # Labor Day
        Date(2020, 5, 17), # Constitution Day
        Date(2020, 5, 21), # Ascension Day
        Date(2020, 5, 31), # Whit Sunday
        Date(2020, 6, 1), # Whit Monday
        Date(2020, 12, 25), # Christmas Day
        Date(2020, 12, 26), # Second Day of Christmas
        Date(2021, 1, 1), # New Year's Day
        Date(2021, 4, 1), # Maundy Thursday
        Date(2021, 4, 2), # Good Friday
        Date(2021, 4, 4), # Easter Sunday
        Date(2021, 4, 5), # Easter Monday
        Date(2021, 5, 1), # Labor Day
        Date(2021, 5, 13), # Ascension Day
        Date(2021, 5, 17), # Constitution Day
        Date(2021, 5, 23), # Whit Sunday
        Date(2021, 5, 24), # Whit Monday
        Date(2021, 12, 25), # Christmas Day
        Date(2021, 12, 26), # Second Day of Christmas
        Date(2022, 1, 1), # New Year's Day
        Date(2022, 4, 14), # Maundy Thursday
        Date(2022, 4, 15), # Good Friday
        Date(2022, 4, 17), # Easter Sunday
        Date(2022, 4, 18), # Easter Monday
        Date(2022, 5, 1), # Labor Day
        Date(2022, 5, 17), # Constitution Day
        Date(2022, 5, 26), # Ascension Day
        Date(2022, 6, 5), # Whit Sunday
        Date(2022, 6, 6), # Whit Monday
        Date(2022, 12, 25), # Christmas Day
        Date(2022, 12, 26), # Second Day of Christmas
        Date(2023, 1, 1), # New Year's Day
        Date(2023, 4, 6), # Maundy Thursday
        Date(2023, 4, 7), # Good Friday
        Date(2023, 4, 9), # Easter Sunday
        Date(2023, 4, 10), # Easter Monday
        Date(2023, 5, 1), # Labor Day
        Date(2023, 5, 17), # Constitution Day
        Date(2023, 5, 18), # Ascension Day
        Date(2023, 5, 28), # Whit Sunday
        Date(2023, 5, 29), # Whit Monday
        Date(2023, 12, 25), # Christmas Day
        Date(2023, 12, 26), # Second Day of Christmas
        Date(2024, 1, 1), # New Year's Day
        Date(2024, 3, 28), # Maundy Thursday
        Date(2024, 3, 29), # Good Friday
        Date(2024, 3, 31), # Easter Sunday
        Date(2024, 4, 1), # Easter Monday
        Date(2024, 5, 1), # Labor Day
        Date(2024, 5, 9), # Ascension Day
        Date(2024, 5, 17), # Constitution Day
        Date(2024, 5, 19), # Whit Sunday
        Date(2024, 5, 20), # Whit Monday
        Date(2024, 12, 25), # Christmas Day
        Date(2024, 12, 26), # Second Day of Christmas
        Date(2025, 1, 1), # New Year's Day
        Date(2025, 4, 17), # Maundy Thursday
        Date(2025, 4, 18), # Good Friday
        Date(2025, 4, 20), # Easter Sunday
        Date(2025, 4, 21), # Easter Monday
        Date(2025, 5, 1), # Labor Day
        Date(2025, 5, 17), # Constitution Day
        Date(2025, 5, 29), # Ascension Day
        Date(2025, 6, 8), # Whit Sunday
        Date(2025, 6, 9), # Whit Monday
        Date(2025, 12, 25), # Christmas Day
        Date(2025, 12, 26), # Second Day of Christmas
        Date(2026, 1, 1), # New Year's Day
        Date(2026, 4, 2), # Maundy Thursday
        Date(2026, 4, 3), # Good Friday
        Date(2026, 4, 5), # Easter Sunday
        Date(2026, 4, 6), # Easter Monday
        Date(2026, 5, 1), # Labor Day
        Date(2026, 5, 14), # Ascension Day
        Date(2026, 5, 17), # Constitution Day
        Date(2026, 5, 24), # Whit Sunday
        Date(2026, 5, 25), # Whit Monday
        Date(2026, 12, 25), # Christmas Day
        Date(2026, 12, 26), # Second Day of Christmas
        Date(2027, 1, 1), # New Year's Day
        Date(2027, 3, 25), # Maundy Thursday
        Date(2027, 3, 26), # Good Friday
        Date(2027, 3, 28), # Easter Sunday
        Date(2027, 3, 29), # Easter Monday
        Date(2027, 5, 1), # Labor Day
        Date(2027, 5, 6), # Ascension Day
        Date(2027, 5, 16), # Whit Sunday
        Date(2027, 5, 17), # Constitution Day; Whit Monday
        Date(2027, 12, 25), # Christmas Day
        Date(2027, 12, 26), # Second Day of Christmas
        Date(2028, 1, 1), # New Year's Day
        Date(2028, 4, 13), # Maundy Thursday
        Date(2028, 4, 14), # Good Friday
        Date(2028, 4, 16), # Easter Sunday
        Date(2028, 4, 17), # Easter Monday
        Date(2028, 5, 1), # Labor Day
        Date(2028, 5, 17), # Constitution Day
        Date(2028, 5, 25), # Ascension Day
        Date(2028, 6, 4), # Whit Sunday
        Date(2028, 6, 5), # Whit Monday
        Date(2028, 12, 25), # Christmas Day
        Date(2028, 12, 26), # Second Day of Christmas
        Date(2029, 1, 1), # New Year's Day
        Date(2029, 3, 29), # Maundy Thursday
        Date(2029, 3, 30), # Good Friday
        Date(2029, 4, 1), # Easter Sunday
        Date(2029, 4, 2), # Easter Monday
        Date(2029, 5, 1), # Labor Day
        Date(2029, 5, 10), # Ascension Day
        Date(2029, 5, 17), # Constitution Day
        Date(2029, 5, 20), # Whit Sunday
        Date(2029, 5, 21), # Whit Monday
        Date(2029, 12, 25), # Christmas Day
        Date(2029, 12, 26), # Second Day of Christmas
        Date(2030, 1, 1), # New Year's Day
        Date(2030, 4, 18), # Maundy Thursday
        Date(2030, 4, 19), # Good Friday
        Date(2030, 4, 21), # Easter Sunday
        Date(2030, 4, 22), # Easter Monday
        Date(2030, 5, 1), # Labor Day
        Date(2030, 5, 17), # Constitution Day
        Date(2030, 5, 30), # Ascension Day
        Date(2030, 6, 9), # Whit Sunday
        Date(2030, 6, 10), # Whit Monday
        Date(2030, 12, 25), # Christmas Day
        Date(2030, 12, 26), # Second Day of Christmas
    ]

    test_holidays(calendar, holidays)

    return nothing
end

end
