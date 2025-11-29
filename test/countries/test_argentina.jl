module TestArgentina

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Argentina" begin
    calendar = Holidays.Argentina()

    holidays = Date[
        Date(1970, 1, 1), # New Year's Day
        Date(1970, 1, 6), # Epiphany
        Date(1970, 2, 9), # Carnival Monday
        Date(1970, 2, 10), # Carnival Tuesday
        Date(1970, 3, 26), # Maundy Thursday
        Date(1970, 5, 1), # Labor Day
        Date(1970, 5, 25), # May Revolution Day
        Date(1970, 5, 28), # Corpus Christi
        Date(1970, 6, 20), # Pass to the Immortality of General Don Manuel Belgrano
        Date(1970, 7, 9), # Independence Day
        Date(1970, 8, 15), # Assumption Day
        Date(1970, 8, 17), # Pass to the Immortality of General Don José de San Martín
        Date(1970, 10, 12), # Columbus Day
        Date(1970, 11, 1), # All Saints' Day
        Date(1970, 12, 8), # Immaculate Conception
        Date(1970, 12, 25), # Christmas Day
        Date(1971, 1, 1), # New Year's Day
        Date(1971, 1, 6), # Epiphany
        Date(1971, 2, 22), # Carnival Monday
        Date(1971, 2, 23), # Carnival Tuesday
        Date(1971, 4, 8), # Maundy Thursday
        Date(1971, 5, 1), # Labor Day
        Date(1971, 5, 25), # May Revolution Day
        Date(1971, 6, 10), # Corpus Christi
        Date(1971, 6, 20), # Pass to the Immortality of General Don Manuel Belgrano
        Date(1971, 7, 9), # Independence Day
        Date(1971, 8, 15), # Assumption Day
        Date(1971, 8, 17), # Pass to the Immortality of General Don José de San Martín
        Date(1971, 10, 12), # Columbus Day
        Date(1971, 11, 1), # All Saints' Day
        Date(1971, 12, 8), # Immaculate Conception
        Date(1971, 12, 25), # Christmas Day
        Date(1972, 1, 1), # New Year's Day
        Date(1972, 1, 6), # Epiphany
        Date(1972, 2, 14), # Carnival Monday
        Date(1972, 2, 15), # Carnival Tuesday
        Date(1972, 3, 30), # Maundy Thursday
        Date(1972, 5, 1), # Labor Day
        Date(1972, 5, 25), # May Revolution Day
        Date(1972, 6, 1), # Corpus Christi
        Date(1972, 6, 20), # Pass to the Immortality of General Don Manuel Belgrano
        Date(1972, 7, 9), # Independence Day
        Date(1972, 8, 15), # Assumption Day
        Date(1972, 8, 17), # Pass to the Immortality of General Don José de San Martín
        Date(1972, 10, 12), # Columbus Day
        Date(1972, 11, 1), # All Saints' Day
        Date(1972, 12, 8), # Immaculate Conception
        Date(1972, 12, 25), # Christmas Day
        Date(1973, 1, 1), # New Year's Day
        Date(1973, 1, 6), # Epiphany
        Date(1973, 3, 5), # Carnival Monday
        Date(1973, 3, 6), # Carnival Tuesday
        Date(1973, 4, 19), # Maundy Thursday
        Date(1973, 5, 1), # Labor Day
        Date(1973, 5, 25), # May Revolution Day
        Date(1973, 6, 20), # Pass to the Immortality of General Don Manuel Belgrano
        Date(1973, 6, 21), # Corpus Christi
        Date(1973, 7, 9), # Independence Day
        Date(1973, 8, 15), # Assumption Day
        Date(1973, 8, 17), # Pass to the Immortality of General Don José de San Martín
        Date(1973, 10, 12), # Columbus Day
        Date(1973, 11, 1), # All Saints' Day
        Date(1973, 12, 8), # Immaculate Conception
        Date(1973, 12, 25), # Christmas Day
        Date(1974, 1, 1), # New Year's Day
        Date(1974, 1, 6), # Epiphany
        Date(1974, 2, 25), # Carnival Monday
        Date(1974, 2, 26), # Carnival Tuesday
        Date(1974, 4, 11), # Maundy Thursday
        Date(1974, 5, 1), # Labor Day
        Date(1974, 5, 25), # May Revolution Day
        Date(1974, 6, 13), # Corpus Christi
        Date(1974, 6, 20), # Pass to the Immortality of General Don Manuel Belgrano
        Date(1974, 7, 9), # Independence Day
        Date(1974, 8, 15), # Assumption Day
        Date(1974, 8, 17), # Pass to the Immortality of General Don José de San Martín
        Date(1974, 10, 12), # Columbus Day
        Date(1974, 11, 1), # All Saints' Day
        Date(1974, 12, 8), # Immaculate Conception
        Date(1974, 12, 25), # Christmas Day
        Date(1975, 1, 1), # New Year's Day
        Date(1975, 1, 6), # Epiphany
        Date(1975, 2, 10), # Carnival Monday
        Date(1975, 2, 11), # Carnival Tuesday
        Date(1975, 3, 27), # Maundy Thursday
        Date(1975, 5, 1), # Labor Day
        Date(1975, 5, 25), # May Revolution Day
        Date(1975, 5, 29), # Corpus Christi
        Date(1975, 6, 20), # Pass to the Immortality of General Don Manuel Belgrano
        Date(1975, 7, 9), # Independence Day
        Date(1975, 8, 15), # Assumption Day
        Date(1975, 8, 17), # Pass to the Immortality of General Don José de San Martín
        Date(1975, 10, 12), # Columbus Day
        Date(1975, 11, 1), # All Saints' Day
        Date(1975, 12, 8), # Immaculate Conception
        Date(1975, 12, 25), # Christmas Day
        Date(1976, 1, 1), # New Year's Day
        Date(1976, 1, 6), # Epiphany
        Date(1976, 3, 1), # Carnival Monday
        Date(1976, 3, 2), # Carnival Tuesday
        Date(1976, 4, 15), # Maundy Thursday
        Date(1976, 5, 1), # Labor Day
        Date(1976, 5, 25), # May Revolution Day
        Date(1976, 6, 20), # Pass to the Immortality of General Don Manuel Belgrano
        Date(1976, 7, 9), # Independence Day
        Date(1976, 8, 17), # Pass to the Immortality of General Don José de San Martín
        Date(1976, 12, 25), # Christmas Day
        Date(1977, 1, 1), # New Year's Day
        Date(1977, 4, 8), # Good Friday
        Date(1977, 5, 1), # Labor Day
        Date(1977, 5, 25), # May Revolution Day
        Date(1977, 6, 20), # Pass to the Immortality of General Don Manuel Belgrano
        Date(1977, 7, 9), # Independence Day
        Date(1977, 8, 17), # Pass to the Immortality of General Don José de San Martín
        Date(1977, 12, 25), # Christmas Day
        Date(1978, 1, 1), # New Year's Day
        Date(1978, 3, 24), # Good Friday
        Date(1978, 5, 1), # Labor Day
        Date(1978, 5, 25), # May Revolution Day
        Date(1978, 6, 20), # Pass to the Immortality of General Don Manuel Belgrano
        Date(1978, 7, 9), # Independence Day
        Date(1978, 8, 17), # Pass to the Immortality of General Don José de San Martín
        Date(1978, 12, 25), # Christmas Day
        Date(1979, 1, 1), # New Year's Day
        Date(1979, 4, 13), # Good Friday
        Date(1979, 5, 1), # Labor Day
        Date(1979, 5, 25), # May Revolution Day
        Date(1979, 6, 20), # Pass to the Immortality of General Don Manuel Belgrano
        Date(1979, 7, 9), # Independence Day
        Date(1979, 8, 17), # Pass to the Immortality of General Don José de San Martín
        Date(1979, 12, 25), # Christmas Day
        Date(1980, 1, 1), # New Year's Day
        Date(1980, 4, 4), # Good Friday
        Date(1980, 5, 1), # Labor Day
        Date(1980, 5, 25), # May Revolution Day
        Date(1980, 6, 20), # Pass to the Immortality of General Don Manuel Belgrano
        Date(1980, 7, 9), # Independence Day
        Date(1980, 8, 17), # Pass to the Immortality of General Don José de San Martín
        Date(1980, 12, 25), # Christmas Day
        Date(1981, 1, 1), # New Year's Day
        Date(1981, 4, 17), # Good Friday
        Date(1981, 5, 1), # Labor Day
        Date(1981, 5, 25), # May Revolution Day
        Date(1981, 6, 20), # Pass to the Immortality of General Don Manuel Belgrano
        Date(1981, 7, 9), # Independence Day
        Date(1981, 8, 17), # Pass to the Immortality of General Don José de San Martín
        Date(1981, 12, 25), # Christmas Day
        Date(1982, 1, 1), # New Year's Day
        Date(1982, 4, 9), # Good Friday
        Date(1982, 5, 1), # Labor Day
        Date(1982, 5, 25), # May Revolution Day
        Date(1982, 6, 20), # Pass to the Immortality of General Don Manuel Belgrano
        Date(1982, 7, 9), # Independence Day
        Date(1982, 8, 17), # Pass to the Immortality of General Don José de San Martín
        Date(1982, 10, 12), # Columbus Day
        Date(1982, 12, 25), # Christmas Day
        Date(1983, 1, 1), # New Year's Day
        Date(1983, 4, 1), # Good Friday
        Date(1983, 4, 2), # Day of Affirmation of Argentine Rights over the Malvinas, Islands and Antarctic Sector
        Date(1983, 5, 1), # Labor Day
        Date(1983, 5, 25), # May Revolution Day
        Date(1983, 6, 20), # Pass to the Immortality of General Don Manuel Belgrano
        Date(1983, 7, 9), # Independence Day
        Date(1983, 8, 17), # Pass to the Immortality of General Don José de San Martín
        Date(1983, 10, 12), # Columbus Day
        Date(1983, 12, 25), # Christmas Day
        Date(1984, 1, 1), # New Year's Day
        Date(1984, 4, 20), # Good Friday
        Date(1984, 5, 1), # Labor Day
        Date(1984, 5, 25), # May Revolution Day
        Date(1984, 6, 10), # Day of Affirmation of Argentine Rights over the Malvinas, Islands and Antarctic Sector
        Date(1984, 6, 20), # Pass to the Immortality of General Don Manuel Belgrano
        Date(1984, 7, 9), # Independence Day
        Date(1984, 8, 17), # Pass to the Immortality of General Don José de San Martín
        Date(1984, 10, 12), # Columbus Day
        Date(1984, 12, 25), # Christmas Day
        Date(1985, 1, 1), # New Year's Day
        Date(1985, 4, 5), # Good Friday
        Date(1985, 5, 1), # Labor Day
        Date(1985, 5, 25), # May Revolution Day
        Date(1985, 6, 10), # Day of Affirmation of Argentine Rights over the Malvinas, Islands and Antarctic Sector
        Date(1985, 6, 20), # Pass to the Immortality of General Don Manuel Belgrano
        Date(1985, 7, 9), # Independence Day
        Date(1985, 8, 17), # Pass to the Immortality of General Don José de San Martín
        Date(1985, 10, 12), # Columbus Day
        Date(1985, 12, 25), # Christmas Day
        Date(1986, 1, 1), # New Year's Day
        Date(1986, 3, 28), # Good Friday
        Date(1986, 5, 1), # Labor Day
        Date(1986, 5, 25), # May Revolution Day
        Date(1986, 6, 10), # Day of Affirmation of Argentine Rights over the Malvinas, Islands and Antarctic Sector
        Date(1986, 6, 20), # Pass to the Immortality of General Don Manuel Belgrano
        Date(1986, 7, 9), # Independence Day
        Date(1986, 8, 17), # Pass to the Immortality of General Don José de San Martín
        Date(1986, 10, 12), # Columbus Day
        Date(1986, 12, 25), # Christmas Day
        Date(1987, 1, 1), # New Year's Day
        Date(1987, 4, 17), # Good Friday
        Date(1987, 5, 1), # Labor Day
        Date(1987, 5, 25), # May Revolution Day
        Date(1987, 6, 10), # Day of Affirmation of Argentine Rights over the Malvinas, Islands and Antarctic Sector
        Date(1987, 6, 20), # Pass to the Immortality of General Don Manuel Belgrano
        Date(1987, 7, 9), # Independence Day
        Date(1987, 8, 17), # Pass to the Immortality of General Don José de San Martín
        Date(1987, 10, 12), # Columbus Day
        Date(1987, 12, 25), # Christmas Day
        Date(1988, 1, 1), # New Year's Day
        Date(1988, 4, 1), # Good Friday
        Date(1988, 5, 1), # Labor Day
        Date(1988, 5, 25), # May Revolution Day
        Date(1988, 6, 13), # Day of Affirmation of Argentine Rights over the Malvinas, Islands and Antarctic Sector
        Date(1988, 6, 20), # Pass to the Immortality of General Don Manuel Belgrano
        Date(1988, 7, 9), # Independence Day
        Date(1988, 8, 15), # Pass to the Immortality of General Don José de San Martín
        Date(1988, 10, 10), # Columbus Day
        Date(1988, 12, 25), # Christmas Day
        Date(1989, 1, 1), # New Year's Day
        Date(1989, 3, 24), # Good Friday
        Date(1989, 5, 1), # Labor Day
        Date(1989, 5, 25), # May Revolution Day
        Date(1989, 6, 10), # Day of Affirmation of Argentine Rights over the Malvinas, Islands and Antarctic Sector
        Date(1989, 6, 19), # Pass to the Immortality of General Don Manuel Belgrano
        Date(1989, 7, 9), # Independence Day
        Date(1989, 8, 21), # Pass to the Immortality of General Don José de San Martín
        Date(1989, 10, 16), # Columbus Day
        Date(1989, 12, 25), # Christmas Day
        Date(1990, 1, 1), # New Year's Day
        Date(1990, 4, 13), # Good Friday
        Date(1990, 5, 1), # Labor Day
        Date(1990, 5, 25), # May Revolution Day
        Date(1990, 6, 10), # Day of Affirmation of Argentine Rights over the Malvinas, Islands and Antarctic Sector
        Date(1990, 6, 18), # Pass to the Immortality of General Don Manuel Belgrano
        Date(1990, 7, 9), # Independence Day
        Date(1990, 8, 20), # Pass to the Immortality of General Don José de San Martín
        Date(1990, 10, 15), # Columbus Day
        Date(1990, 12, 25), # Christmas Day
        Date(1991, 1, 1), # New Year's Day
        Date(1991, 3, 29), # Good Friday
        Date(1991, 5, 1), # Labor Day
        Date(1991, 5, 25), # May Revolution Day
        Date(1991, 6, 10), # Day of Affirmation of Argentine Rights over the Malvinas, Islands and Antarctic Sector
        Date(1991, 6, 24), # Pass to the Immortality of General Don Manuel Belgrano
        Date(1991, 7, 9), # Independence Day
        Date(1991, 8, 17), # Pass to the Immortality of General Don José de San Martín
        Date(1991, 10, 12), # Columbus Day
        Date(1991, 12, 25), # Christmas Day
        Date(1992, 1, 1), # New Year's Day
        Date(1992, 4, 17), # Good Friday
        Date(1992, 5, 1), # Labor Day
        Date(1992, 5, 25), # May Revolution Day
        Date(1992, 6, 8), # Day of Affirmation of Argentine Rights over the Malvinas, Islands and Antarctic Sector
        Date(1992, 6, 20), # Pass to the Immortality of General Don Manuel Belgrano
        Date(1992, 7, 9), # Independence Day
        Date(1992, 8, 17), # Pass to the Immortality of General Don José de San Martín
        Date(1992, 10, 12), # Columbus Day
        Date(1992, 12, 25), # Christmas Day
        Date(1993, 1, 1), # New Year's Day
        Date(1993, 4, 5), # War Veteran's Day
        Date(1993, 4, 9), # Good Friday
        Date(1993, 5, 1), # Labor Day
        Date(1993, 5, 25), # May Revolution Day
        Date(1993, 6, 14), # Day of Affirmation of Argentine Rights over the Malvinas, Islands and Antarctic Sector
        Date(1993, 6, 20), # Pass to the Immortality of General Don Manuel Belgrano
        Date(1993, 7, 9), # Independence Day
        Date(1993, 8, 16), # Pass to the Immortality of General Don José de San Martín
        Date(1993, 10, 11), # Columbus Day
        Date(1993, 12, 25), # Christmas Day
        Date(1994, 1, 1), # New Year's Day
        Date(1994, 4, 1), # Good Friday
        Date(1994, 4, 2), # War Veteran's Day
        Date(1994, 5, 1), # Labor Day
        Date(1994, 5, 25), # May Revolution Day
        Date(1994, 6, 13), # Day of Affirmation of Argentine Rights over the Malvinas, Islands and Antarctic Sector
        Date(1994, 6, 20), # Pass to the Immortality of General Don Manuel Belgrano
        Date(1994, 7, 9), # Independence Day
        Date(1994, 8, 15), # Pass to the Immortality of General Don José de San Martín
        Date(1994, 10, 10), # Columbus Day
        Date(1994, 12, 25), # Christmas Day
        Date(1995, 1, 1), # New Year's Day
        Date(1995, 4, 2), # War Veteran's Day
        Date(1995, 4, 14), # Good Friday
        Date(1995, 5, 1), # Labor Day
        Date(1995, 5, 25), # May Revolution Day
        Date(1995, 6, 10), # Day of Affirmation of Argentine Rights over the Malvinas, Islands and Antarctic Sector
        Date(1995, 6, 19), # Pass to the Immortality of General Don Manuel Belgrano
        Date(1995, 7, 9), # Independence Day
        Date(1995, 8, 21), # Pass to the Immortality of General Don José de San Martín
        Date(1995, 10, 16), # Columbus Day
        Date(1995, 12, 8), # Immaculate Conception
        Date(1995, 12, 25), # Christmas Day
        Date(1996, 1, 1), # New Year's Day
        Date(1996, 4, 1), # War Veteran's Day
        Date(1996, 4, 5), # Good Friday
        Date(1996, 5, 1), # Labor Day
        Date(1996, 5, 25), # May Revolution Day
        Date(1996, 6, 10), # Day of Affirmation of Argentine Rights over the Malvinas, Islands and Antarctic Sector
        Date(1996, 6, 17), # Pass to the Immortality of General Don Manuel Belgrano
        Date(1996, 7, 9), # Independence Day
        Date(1996, 8, 19), # Pass to the Immortality of General Don José de San Martín
        Date(1996, 10, 12), # Columbus Day
        Date(1996, 12, 8), # Immaculate Conception
        Date(1996, 12, 25), # Christmas Day
        Date(1997, 1, 1), # New Year's Day
        Date(1997, 3, 28), # Good Friday
        Date(1997, 3, 31), # War Veteran's Day
        Date(1997, 5, 1), # Labor Day
        Date(1997, 5, 25), # May Revolution Day
        Date(1997, 6, 9), # Day of Affirmation of Argentine Rights over the Malvinas, Islands and Antarctic Sector
        Date(1997, 6, 16), # Pass to the Immortality of General Don Manuel Belgrano
        Date(1997, 7, 9), # Independence Day
        Date(1997, 8, 18), # Pass to the Immortality of General Don José de San Martín
        Date(1997, 10, 12), # Columbus Day
        Date(1997, 12, 8), # Immaculate Conception
        Date(1997, 12, 25), # Christmas Day
        Date(1998, 1, 1), # New Year's Day
        Date(1998, 4, 6), # War Veteran's Day
        Date(1998, 4, 10), # Good Friday
        Date(1998, 5, 1), # Labor Day
        Date(1998, 5, 25), # May Revolution Day
        Date(1998, 6, 8), # Day of Affirmation of Argentine Rights over the Malvinas, Islands and Antarctic Sector
        Date(1998, 6, 15), # Pass to the Immortality of General Don Manuel Belgrano
        Date(1998, 7, 9), # Independence Day
        Date(1998, 8, 17), # Pass to the Immortality of General Don José de San Martín
        Date(1998, 10, 12), # Columbus Day
        Date(1998, 12, 8), # Immaculate Conception
        Date(1998, 12, 25), # Christmas Day
        Date(1999, 1, 1), # New Year's Day
        Date(1999, 4, 2), # Good Friday
        Date(1999, 4, 5), # War Veteran's Day
        Date(1999, 5, 1), # Labor Day
        Date(1999, 5, 25), # May Revolution Day
        Date(1999, 6, 14), # Day of Affirmation of Argentine Rights over the Malvinas, Islands and Antarctic Sector
        Date(1999, 6, 21), # Pass to the Immortality of General Don Manuel Belgrano
        Date(1999, 7, 9), # Independence Day
        Date(1999, 8, 16), # Pass to the Immortality of General Don José de San Martín
        Date(1999, 10, 11), # Columbus Day
        Date(1999, 12, 8), # Immaculate Conception
        Date(1999, 12, 25), # Christmas Day
        Date(2000, 1, 1), # New Year's Day
        Date(2000, 4, 2), # War Veteran's Day
        Date(2000, 4, 21), # Good Friday
        Date(2000, 5, 1), # Labor Day
        Date(2000, 5, 25), # May Revolution Day
        Date(2000, 6, 10), # Day of Affirmation of Argentine Rights over the Malvinas, Islands and Antarctic Sector
        Date(2000, 6, 19), # Pass to the Immortality of General Don Manuel Belgrano
        Date(2000, 7, 9), # Independence Day
        Date(2000, 8, 21), # Pass to the Immortality of General Don José de San Martín
        Date(2000, 10, 16), # Columbus Day
        Date(2000, 12, 8), # Immaculate Conception
        Date(2000, 12, 25), # Christmas Day
        Date(2001, 1, 1), # New Year's Day
        Date(2001, 4, 2), # Veteran's Day and the Fallen in the Malvinas War
        Date(2001, 4, 13), # Good Friday
        Date(2001, 5, 1), # Labor Day
        Date(2001, 5, 25), # May Revolution Day
        Date(2001, 6, 18), # Pass to the Immortality of General Don Manuel Belgrano
        Date(2001, 7, 9), # Independence Day
        Date(2001, 8, 20), # Pass to the Immortality of General Don José de San Martín
        Date(2001, 10, 8), # Columbus Day
        Date(2001, 12, 8), # Immaculate Conception
        Date(2001, 12, 25), # Christmas Day
        Date(2002, 1, 1), # New Year's Day
        Date(2002, 3, 29), # Good Friday
        Date(2002, 4, 1), # Veteran's Day and the Fallen in the Malvinas War
        Date(2002, 5, 1), # Labor Day
        Date(2002, 5, 25), # May Revolution Day
        Date(2002, 6, 17), # Pass to the Immortality of General Don Manuel Belgrano
        Date(2002, 7, 9), # Independence Day
        Date(2002, 8, 19), # Pass to the Immortality of General Don José de San Martín
        Date(2002, 10, 14), # Columbus Day
        Date(2002, 12, 8), # Immaculate Conception
        Date(2002, 12, 25), # Christmas Day
        Date(2003, 1, 1), # New Year's Day
        Date(2003, 3, 31), # Veteran's Day and the Fallen in the Malvinas War
        Date(2003, 4, 18), # Good Friday
        Date(2003, 5, 1), # Labor Day
        Date(2003, 5, 25), # May Revolution Day
        Date(2003, 6, 16), # Pass to the Immortality of General Don Manuel Belgrano
        Date(2003, 7, 9), # Independence Day
        Date(2003, 8, 18), # Pass to the Immortality of General Don José de San Martín
        Date(2003, 10, 12), # Columbus Day
        Date(2003, 12, 8), # Immaculate Conception
        Date(2003, 12, 25), # Christmas Day
        Date(2004, 1, 1), # New Year's Day
        Date(2004, 4, 5), # Veteran's Day and the Fallen in the Malvinas War
        Date(2004, 4, 9), # Good Friday
        Date(2004, 5, 1), # Labor Day
        Date(2004, 5, 25), # May Revolution Day
        Date(2004, 6, 21), # Pass to the Immortality of General Don Manuel Belgrano
        Date(2004, 7, 9), # Independence Day
        Date(2004, 8, 16), # Pass to the Immortality of General Don José de San Martín
        Date(2004, 10, 11), # Columbus Day
        Date(2004, 12, 8), # Immaculate Conception
        Date(2004, 12, 25), # Christmas Day
        Date(2005, 1, 1), # New Year's Day
        Date(2005, 3, 25), # Good Friday
        Date(2005, 4, 2), # Veteran's Day and the Fallen in the Malvinas War
        Date(2005, 5, 1), # Labor Day
        Date(2005, 5, 25), # May Revolution Day
        Date(2005, 6, 20), # Pass to the Immortality of General Don Manuel Belgrano
        Date(2005, 7, 9), # Independence Day
        Date(2005, 8, 15), # Pass to the Immortality of General Don José de San Martín
        Date(2005, 10, 10), # Columbus Day
        Date(2005, 12, 8), # Immaculate Conception
        Date(2005, 12, 25), # Christmas Day
        Date(2006, 1, 1), # New Year's Day
        Date(2006, 3, 24), # National Day of Remembrance for Truth and Justice
        Date(2006, 4, 2), # Veteran's Day and the Fallen in the Malvinas War
        Date(2006, 4, 14), # Good Friday
        Date(2006, 5, 1), # Labor Day
        Date(2006, 5, 25), # May Revolution Day
        Date(2006, 6, 19), # Pass to the Immortality of General Don Manuel Belgrano
        Date(2006, 7, 9), # Independence Day
        Date(2006, 8, 21), # Pass to the Immortality of General Don José de San Martín
        Date(2006, 10, 16), # Columbus Day
        Date(2006, 12, 8), # Immaculate Conception
        Date(2006, 12, 25), # Christmas Day
        Date(2007, 1, 1), # New Year's Day
        Date(2007, 3, 24), # National Day of Remembrance for Truth and Justice
        Date(2007, 4, 2), # Veteran's Day and the Fallen in the Malvinas War
        Date(2007, 4, 6), # Good Friday
        Date(2007, 5, 1), # Labor Day
        Date(2007, 5, 25), # May Revolution Day
        Date(2007, 6, 18), # Pass to the Immortality of General Don Manuel Belgrano
        Date(2007, 7, 9), # Independence Day
        Date(2007, 8, 20), # Pass to the Immortality of General Don José de San Martín
        Date(2007, 10, 15), # Columbus Day
        Date(2007, 12, 8), # Immaculate Conception
        Date(2007, 12, 25), # Christmas Day
        Date(2008, 1, 1), # New Year's Day
        Date(2008, 3, 21), # Good Friday
        Date(2008, 3, 24), # National Day of Remembrance for Truth and Justice
        Date(2008, 4, 2), # Veteran's Day and the Fallen in the Malvinas War
        Date(2008, 5, 1), # Labor Day
        Date(2008, 5, 25), # May Revolution Day
        Date(2008, 6, 16), # Pass to the Immortality of General Don Manuel Belgrano
        Date(2008, 7, 9), # Independence Day
        Date(2008, 8, 18), # Pass to the Immortality of General Don José de San Martín
        Date(2008, 10, 13), # Columbus Day
        Date(2008, 12, 8), # Immaculate Conception
        Date(2008, 12, 25), # Christmas Day
        Date(2009, 1, 1), # New Year's Day
        Date(2009, 3, 24), # National Day of Remembrance for Truth and Justice
        Date(2009, 4, 2), # Veteran's Day and the Fallen in the Malvinas War
        Date(2009, 4, 10), # Good Friday
        Date(2009, 5, 1), # Labor Day
        Date(2009, 5, 25), # May Revolution Day
        Date(2009, 6, 15), # Pass to the Immortality of General Don Manuel Belgrano
        Date(2009, 7, 9), # Independence Day
        Date(2009, 8, 17), # Pass to the Immortality of General Don José de San Martín
        Date(2009, 10, 12), # Columbus Day
        Date(2009, 12, 8), # Immaculate Conception
        Date(2009, 12, 25), # Christmas Day
        Date(2010, 1, 1), # New Year's Day
        Date(2010, 3, 24), # National Day of Remembrance for Truth and Justice
        Date(2010, 4, 2), # Good Friday; Veteran's Day and the Fallen in the Malvinas War
        Date(2010, 5, 1), # Labor Day
        Date(2010, 5, 24), # Bicentenary of the May Revolution
        Date(2010, 5, 25), # May Revolution Day
        Date(2010, 6, 21), # Pass to the Immortality of General Don Manuel Belgrano
        Date(2010, 7, 9), # Independence Day
        Date(2010, 8, 16), # Pass to the Immortality of General Don José de San Martín
        Date(2010, 10, 11), # Respect for Cultural Diversity Day
        Date(2010, 10, 27), # National Census Day 2010
        Date(2010, 11, 22), # National Sovereignty Day
        Date(2010, 12, 8), # Immaculate Conception
        Date(2010, 12, 25), # Christmas Day
        Date(2011, 1, 1), # New Year's Day
        Date(2011, 3, 7), # Carnival Monday
        Date(2011, 3, 8), # Carnival Tuesday
        Date(2011, 3, 24), # National Day of Remembrance for Truth and Justice
        Date(2011, 3, 25), # Bridge Public Holiday
        Date(2011, 4, 2), # Veteran's Day and the Fallen in the Malvinas War
        Date(2011, 4, 21), # Maundy Thursday
        Date(2011, 4, 22), # Good Friday
        Date(2011, 5, 1), # Labor Day
        Date(2011, 5, 25), # May Revolution Day
        Date(2011, 6, 20), # Pass to the Immortality of General Don Manuel Belgrano
        Date(2011, 7, 9), # Independence Day
        Date(2011, 8, 22), # Pass to the Immortality of General Don José de San Martín
        Date(2011, 10, 10), # Respect for Cultural Diversity Day
        Date(2011, 11, 28), # National Sovereignty Day
        Date(2011, 12, 8), # Immaculate Conception
        Date(2011, 12, 9), # Bridge Public Holiday
        Date(2011, 12, 25), # Christmas Day
        Date(2012, 1, 1), # New Year's Day
        Date(2012, 2, 20), # Carnival Monday
        Date(2012, 2, 21), # Carnival Tuesday
        Date(2012, 2, 27), # Bicentenary of the creation and first oath of the national flag
        Date(2012, 3, 24), # National Day of Remembrance for Truth and Justice
        Date(2012, 4, 2), # Veteran's Day and the Fallen in the Malvinas War
        Date(2012, 4, 5), # Maundy Thursday
        Date(2012, 4, 6), # Good Friday
        Date(2012, 4, 30), # Bridge Public Holiday
        Date(2012, 5, 1), # Labor Day
        Date(2012, 5, 25), # May Revolution Day
        Date(2012, 6, 20), # Pass to the Immortality of General Don Manuel Belgrano
        Date(2012, 7, 9), # Independence Day
        Date(2012, 8, 20), # Pass to the Immortality of General Don José de San Martín
        Date(2012, 9, 24), # Bicentenary of the Battle of Tucumán
        Date(2012, 10, 8), # Respect for Cultural Diversity Day
        Date(2012, 11, 26), # National Sovereignty Day
        Date(2012, 12, 8), # Immaculate Conception
        Date(2012, 12, 24), # Bridge Public Holiday
        Date(2012, 12, 25), # Christmas Day
        Date(2013, 1, 1), # New Year's Day
        Date(2013, 1, 31), # Bicentenary of the inaugural session of the National Constituent Assembly of the year 1813
        Date(2013, 2, 11), # Carnival Monday
        Date(2013, 2, 12), # Carnival Tuesday
        Date(2013, 2, 20), # Bicentenary of the Battle of Salta
        Date(2013, 3, 24), # National Day of Remembrance for Truth and Justice
        Date(2013, 3, 28), # Maundy Thursday
        Date(2013, 3, 29), # Good Friday
        Date(2013, 4, 1), # Bridge Public Holiday
        Date(2013, 4, 2), # Veteran's Day and the Fallen in the Malvinas War
        Date(2013, 5, 1), # Labor Day
        Date(2013, 5, 25), # May Revolution Day
        Date(2013, 6, 20), # Pass to the Immortality of General Don Manuel Belgrano
        Date(2013, 6, 21), # Bridge Public Holiday
        Date(2013, 7, 9), # Independence Day
        Date(2013, 8, 19), # Pass to the Immortality of General Don José de San Martín
        Date(2013, 10, 14), # Respect for Cultural Diversity Day
        Date(2013, 11, 25), # National Sovereignty Day
        Date(2013, 12, 8), # Immaculate Conception
        Date(2013, 12, 25), # Christmas Day
        Date(2014, 1, 1), # New Year's Day
        Date(2014, 3, 3), # Carnival Monday
        Date(2014, 3, 4), # Carnival Tuesday
        Date(2014, 3, 24), # National Day of Remembrance for Truth and Justice
        Date(2014, 4, 2), # Veteran's Day and the Fallen in the Malvinas War
        Date(2014, 4, 17), # Maundy Thursday
        Date(2014, 4, 18), # Good Friday
        Date(2014, 5, 1), # Labor Day
        Date(2014, 5, 2), # Bridge Public Holiday
        Date(2014, 5, 25), # May Revolution Day
        Date(2014, 6, 20), # Pass to the Immortality of General Don Manuel Belgrano
        Date(2014, 7, 9), # Independence Day
        Date(2014, 8, 18), # Pass to the Immortality of General Don José de San Martín
        Date(2014, 10, 13), # Respect for Cultural Diversity Day
        Date(2014, 11, 24), # National Sovereignty Day
        Date(2014, 12, 8), # Immaculate Conception
        Date(2014, 12, 25), # Christmas Day
        Date(2014, 12, 26), # Bridge Public Holiday
        Date(2015, 1, 1), # New Year's Day
        Date(2015, 2, 16), # Carnival Monday
        Date(2015, 2, 17), # Carnival Tuesday
        Date(2015, 3, 23), # Bridge Public Holiday
        Date(2015, 3, 24), # National Day of Remembrance for Truth and Justice
        Date(2015, 4, 2), # Maundy Thursday; Veteran's Day and the Fallen in the Malvinas War
        Date(2015, 4, 3), # Good Friday
        Date(2015, 5, 1), # Labor Day
        Date(2015, 5, 25), # May Revolution Day
        Date(2015, 6, 20), # Pass to the Immortality of General Don Manuel Belgrano
        Date(2015, 7, 9), # Independence Day
        Date(2015, 8, 17), # Pass to the Immortality of General Don José de San Martín
        Date(2015, 10, 12), # Respect for Cultural Diversity Day
        Date(2015, 11, 27), # National Sovereignty Day
        Date(2015, 12, 7), # Bridge Public Holiday
        Date(2015, 12, 8), # Immaculate Conception
        Date(2015, 12, 25), # Christmas Day
        Date(2016, 1, 1), # New Year's Day
        Date(2016, 2, 8), # Carnival Monday
        Date(2016, 2, 9), # Carnival Tuesday
        Date(2016, 3, 24), # Maundy Thursday; National Day of Remembrance for Truth and Justice
        Date(2016, 3, 25), # Good Friday
        Date(2016, 4, 2), # Veteran's Day and the Fallen in the Malvinas War
        Date(2016, 5, 1), # Labor Day
        Date(2016, 5, 25), # May Revolution Day
        Date(2016, 6, 17), # Pass to the Immortality of General Don Martín Miguel de Güemes
        Date(2016, 6, 20), # Pass to the Immortality of General Don Manuel Belgrano
        Date(2016, 7, 8), # Bridge Public Holiday
        Date(2016, 7, 9), # Independence Day
        Date(2016, 8, 15), # Pass to the Immortality of General Don José de San Martín
        Date(2016, 10, 10), # Respect for Cultural Diversity Day
        Date(2016, 11, 28), # National Sovereignty Day
        Date(2016, 12, 8), # Immaculate Conception
        Date(2016, 12, 9), # Bridge Public Holiday
        Date(2016, 12, 25), # Christmas Day
        Date(2017, 1, 1), # New Year's Day
        Date(2017, 2, 27), # Carnival Monday
        Date(2017, 2, 28), # Carnival Tuesday
        Date(2017, 3, 24), # National Day of Remembrance for Truth and Justice
        Date(2017, 4, 2), # Veteran's Day and the Fallen in the Malvinas War
        Date(2017, 4, 13), # Maundy Thursday
        Date(2017, 4, 14), # Good Friday
        Date(2017, 5, 1), # Labor Day
        Date(2017, 5, 25), # May Revolution Day
        Date(2017, 6, 17), # Pass to the Immortality of General Don Martín Miguel de Güemes
        Date(2017, 6, 20), # Pass to the Immortality of General Don Manuel Belgrano
        Date(2017, 7, 9), # Independence Day
        Date(2017, 8, 21), # Pass to the Immortality of General Don José de San Martín
        Date(2017, 10, 16), # Respect for Cultural Diversity Day
        Date(2017, 11, 20), # National Sovereignty Day
        Date(2017, 12, 8), # Immaculate Conception
        Date(2017, 12, 25), # Christmas Day
        Date(2018, 1, 1), # New Year's Day
        Date(2018, 2, 12), # Carnival Monday
        Date(2018, 2, 13), # Carnival Tuesday
        Date(2018, 3, 24), # National Day of Remembrance for Truth and Justice
        Date(2018, 3, 29), # Maundy Thursday
        Date(2018, 3, 30), # Good Friday
        Date(2018, 4, 2), # Veteran's Day and the Fallen in the Malvinas War
        Date(2018, 4, 30), # Bridge Public Holiday
        Date(2018, 5, 1), # Labor Day
        Date(2018, 5, 25), # May Revolution Day
        Date(2018, 6, 17), # Pass to the Immortality of General Don Martín Miguel de Güemes
        Date(2018, 6, 20), # Pass to the Immortality of General Don Manuel Belgrano
        Date(2018, 7, 9), # Independence Day
        Date(2018, 8, 20), # Pass to the Immortality of General Don José de San Martín
        Date(2018, 10, 15), # Respect for Cultural Diversity Day
        Date(2018, 11, 19), # National Sovereignty Day
        Date(2018, 12, 8), # Immaculate Conception
        Date(2018, 12, 24), # Bridge Public Holiday
        Date(2018, 12, 25), # Christmas Day
        Date(2018, 12, 31), # Bridge Public Holiday
        Date(2019, 1, 1), # New Year's Day
        Date(2019, 3, 4), # Carnival Monday
        Date(2019, 3, 5), # Carnival Tuesday
        Date(2019, 3, 24), # National Day of Remembrance for Truth and Justice
        Date(2019, 4, 2), # Veteran's Day and the Fallen in the Malvinas War
        Date(2019, 4, 18), # Maundy Thursday
        Date(2019, 4, 19), # Good Friday
        Date(2019, 5, 1), # Labor Day
        Date(2019, 5, 25), # May Revolution Day
        Date(2019, 6, 17), # Pass to the Immortality of General Don Martín Miguel de Güemes
        Date(2019, 6, 20), # Pass to the Immortality of General Don Manuel Belgrano
        Date(2019, 7, 8), # Bridge Public Holiday
        Date(2019, 7, 9), # Independence Day
        Date(2019, 8, 17), # Pass to the Immortality of General Don José de San Martín
        Date(2019, 8, 19), # Bridge Public Holiday
        Date(2019, 10, 12), # Respect for Cultural Diversity Day
        Date(2019, 10, 14), # Bridge Public Holiday
        Date(2019, 11, 18), # National Sovereignty Day
        Date(2019, 12, 8), # Immaculate Conception
        Date(2019, 12, 25), # Christmas Day
        Date(2020, 1, 1), # New Year's Day
        Date(2020, 2, 24), # Carnival Monday
        Date(2020, 2, 25), # Carnival Tuesday
        Date(2020, 3, 23), # Bridge Public Holiday
        Date(2020, 3, 24), # National Day of Remembrance for Truth and Justice
        Date(2020, 3, 31), # Veteran's Day and the Fallen in the Malvinas War
        Date(2020, 4, 9), # Maundy Thursday
        Date(2020, 4, 10), # Good Friday
        Date(2020, 5, 1), # Labor Day
        Date(2020, 5, 25), # May Revolution Day
        Date(2020, 6, 15), # Pass to the Immortality of General Don Martín Miguel de Güemes
        Date(2020, 6, 20), # Pass to the Immortality of General Don Manuel Belgrano
        Date(2020, 7, 9), # Independence Day
        Date(2020, 7, 10), # Bridge Public Holiday
        Date(2020, 8, 17), # Pass to the Immortality of General Don José de San Martín
        Date(2020, 10, 12), # Respect for Cultural Diversity Day
        Date(2020, 11, 23), # National Sovereignty Day
        Date(2020, 12, 7), # Bridge Public Holiday
        Date(2020, 12, 8), # Immaculate Conception
        Date(2020, 12, 25), # Christmas Day
        Date(2021, 1, 1), # New Year's Day
        Date(2021, 2, 15), # Carnival Monday
        Date(2021, 2, 16), # Carnival Tuesday
        Date(2021, 3, 24), # National Day of Remembrance for Truth and Justice
        Date(2021, 4, 1), # Maundy Thursday
        Date(2021, 4, 2), # Good Friday; Veteran's Day and the Fallen in the Malvinas War
        Date(2021, 5, 1), # Labor Day
        Date(2021, 5, 24), # Bridge Public Holiday
        Date(2021, 5, 25), # May Revolution Day
        Date(2021, 6, 20), # Pass to the Immortality of General Don Manuel Belgrano
        Date(2021, 6, 21), # Pass to the Immortality of General Don Martín Miguel de Güemes
        Date(2021, 7, 9), # Independence Day
        Date(2021, 8, 16), # Pass to the Immortality of General Don José de San Martín
        Date(2021, 10, 8), # Bridge Public Holiday
        Date(2021, 10, 11), # Respect for Cultural Diversity Day
        Date(2021, 11, 20), # National Sovereignty Day
        Date(2021, 11, 22), # Bridge Public Holiday
        Date(2021, 12, 8), # Immaculate Conception
        Date(2021, 12, 25), # Christmas Day
        Date(2022, 1, 1), # New Year's Day
        Date(2022, 2, 28), # Carnival Monday
        Date(2022, 3, 1), # Carnival Tuesday
        Date(2022, 3, 24), # National Day of Remembrance for Truth and Justice
        Date(2022, 4, 2), # Veteran's Day and the Fallen in the Malvinas War
        Date(2022, 4, 14), # Maundy Thursday
        Date(2022, 4, 15), # Good Friday
        Date(2022, 5, 1), # Labor Day
        Date(2022, 5, 18), # National Census Day 2022
        Date(2022, 5, 25), # May Revolution Day
        Date(2022, 6, 17), # Pass to the Immortality of General Don Martín Miguel de Güemes
        Date(2022, 6, 20), # Pass to the Immortality of General Don Manuel Belgrano
        Date(2022, 7, 9), # Independence Day
        Date(2022, 8, 15), # Pass to the Immortality of General Don José de San Martín
        Date(2022, 10, 7), # Bridge Public Holiday
        Date(2022, 10, 10), # Respect for Cultural Diversity Day
        Date(2022, 11, 20), # National Sovereignty Day
        Date(2022, 11, 21), # Bridge Public Holiday
        Date(2022, 12, 8), # Immaculate Conception
        Date(2022, 12, 9), # Bridge Public Holiday
        Date(2022, 12, 20), # FIFA World Cup 2022 Victory Day
        Date(2022, 12, 25), # Christmas Day
        Date(2023, 1, 1), # New Year's Day
        Date(2023, 2, 20), # Carnival Monday
        Date(2023, 2, 21), # Carnival Tuesday
        Date(2023, 3, 24), # National Day of Remembrance for Truth and Justice
        Date(2023, 4, 2), # Veteran's Day and the Fallen in the Malvinas War
        Date(2023, 4, 6), # Maundy Thursday
        Date(2023, 4, 7), # Good Friday
        Date(2023, 5, 1), # Labor Day
        Date(2023, 5, 25), # May Revolution Day
        Date(2023, 5, 26), # Bridge Public Holiday
        Date(2023, 6, 17), # Pass to the Immortality of General Don Martín Miguel de Güemes
        Date(2023, 6, 19), # Bridge Public Holiday
        Date(2023, 6, 20), # Pass to the Immortality of General Don Manuel Belgrano
        Date(2023, 7, 9), # Independence Day
        Date(2023, 8, 21), # Pass to the Immortality of General Don José de San Martín
        Date(2023, 10, 13), # Bridge Public Holiday
        Date(2023, 10, 16), # Respect for Cultural Diversity Day
        Date(2023, 11, 20), # National Sovereignty Day
        Date(2023, 12, 8), # Immaculate Conception
        Date(2023, 12, 25), # Christmas Day
        Date(2024, 1, 1), # New Year's Day
        Date(2024, 2, 12), # Carnival Monday
        Date(2024, 2, 13), # Carnival Tuesday
        Date(2024, 3, 24), # National Day of Remembrance for Truth and Justice
        Date(2024, 3, 28), # Maundy Thursday
        Date(2024, 3, 29), # Good Friday
        Date(2024, 4, 1), # Bridge Public Holiday
        Date(2024, 4, 2), # Veteran's Day and the Fallen in the Malvinas War
        Date(2024, 5, 1), # Labor Day
        Date(2024, 5, 25), # May Revolution Day
        Date(2024, 6, 17), # Pass to the Immortality of General Don Martín Miguel de Güemes
        Date(2024, 6, 20), # Pass to the Immortality of General Don Manuel Belgrano
        Date(2024, 6, 21), # Bridge Public Holiday
        Date(2024, 7, 9), # Independence Day
        Date(2024, 8, 17), # Pass to the Immortality of General Don José de San Martín
        Date(2024, 10, 11), # Bridge Public Holiday
        Date(2024, 10, 12), # Respect for Cultural Diversity Day
        Date(2024, 11, 18), # National Sovereignty Day
        Date(2024, 12, 8), # Immaculate Conception
        Date(2024, 12, 25), # Christmas Day
        Date(2025, 1, 1), # New Year's Day
        Date(2025, 3, 3), # Carnival Monday
        Date(2025, 3, 4), # Carnival Tuesday
        Date(2025, 3, 24), # National Day of Remembrance for Truth and Justice
        Date(2025, 4, 2), # Veteran's Day and the Fallen in the Malvinas War
        Date(2025, 4, 17), # Maundy Thursday
        Date(2025, 4, 18), # Good Friday
        Date(2025, 5, 1), # Labor Day
        Date(2025, 5, 2), # Bridge Public Holiday
        Date(2025, 5, 25), # May Revolution Day
        Date(2025, 6, 16), # Pass to the Immortality of General Don Martín Miguel de Güemes
        Date(2025, 6, 20), # Pass to the Immortality of General Don Manuel Belgrano
        Date(2025, 7, 9), # Independence Day
        Date(2025, 8, 15), # Bridge Public Holiday
        Date(2025, 8, 17), # Pass to the Immortality of General Don José de San Martín
        Date(2025, 10, 12), # Respect for Cultural Diversity Day
        Date(2025, 11, 21), # Bridge Public Holiday
        Date(2025, 11, 24), # National Sovereignty Day
        Date(2025, 12, 8), # Immaculate Conception
        Date(2025, 12, 25), # Christmas Day
        Date(2026, 1, 1), # New Year's Day
        Date(2026, 2, 16), # Carnival Monday
        Date(2026, 2, 17), # Carnival Tuesday
        Date(2026, 3, 24), # National Day of Remembrance for Truth and Justice
        Date(2026, 4, 2), # Maundy Thursday; Veteran's Day and the Fallen in the Malvinas War
        Date(2026, 4, 3), # Good Friday
        Date(2026, 5, 1), # Labor Day
        Date(2026, 5, 25), # May Revolution Day
        Date(2026, 6, 15), # Pass to the Immortality of General Don Martín Miguel de Güemes
        Date(2026, 6, 20), # Pass to the Immortality of General Don Manuel Belgrano
        Date(2026, 7, 9), # Independence Day
        Date(2026, 8, 17), # Pass to the Immortality of General Don José de San Martín
        Date(2026, 10, 12), # Respect for Cultural Diversity Day
        Date(2026, 11, 23), # National Sovereignty Day
        Date(2026, 12, 8), # Immaculate Conception
        Date(2026, 12, 25), # Christmas Day
        Date(2027, 1, 1), # New Year's Day
        Date(2027, 2, 8), # Carnival Monday
        Date(2027, 2, 9), # Carnival Tuesday
        Date(2027, 3, 24), # National Day of Remembrance for Truth and Justice
        Date(2027, 3, 25), # Maundy Thursday
        Date(2027, 3, 26), # Good Friday
        Date(2027, 4, 2), # Veteran's Day and the Fallen in the Malvinas War
        Date(2027, 5, 1), # Labor Day
        Date(2027, 5, 25), # May Revolution Day
        Date(2027, 6, 20), # Pass to the Immortality of General Don Manuel Belgrano
        Date(2027, 6, 21), # Pass to the Immortality of General Don Martín Miguel de Güemes
        Date(2027, 7, 9), # Independence Day
        Date(2027, 8, 16), # Pass to the Immortality of General Don José de San Martín
        Date(2027, 10, 11), # Respect for Cultural Diversity Day
        Date(2027, 11, 20), # National Sovereignty Day
        Date(2027, 12, 8), # Immaculate Conception
        Date(2027, 12, 25), # Christmas Day
        Date(2028, 1, 1), # New Year's Day
        Date(2028, 2, 28), # Carnival Monday
        Date(2028, 2, 29), # Carnival Tuesday
        Date(2028, 3, 24), # National Day of Remembrance for Truth and Justice
        Date(2028, 4, 2), # Veteran's Day and the Fallen in the Malvinas War
        Date(2028, 4, 13), # Maundy Thursday
        Date(2028, 4, 14), # Good Friday
        Date(2028, 5, 1), # Labor Day
        Date(2028, 5, 25), # May Revolution Day
        Date(2028, 6, 17), # Pass to the Immortality of General Don Martín Miguel de Güemes
        Date(2028, 6, 20), # Pass to the Immortality of General Don Manuel Belgrano
        Date(2028, 7, 9), # Independence Day
        Date(2028, 8, 21), # Pass to the Immortality of General Don José de San Martín
        Date(2028, 10, 16), # Respect for Cultural Diversity Day
        Date(2028, 11, 20), # National Sovereignty Day
        Date(2028, 12, 8), # Immaculate Conception
        Date(2028, 12, 25), # Christmas Day
        Date(2029, 1, 1), # New Year's Day
        Date(2029, 2, 12), # Carnival Monday
        Date(2029, 2, 13), # Carnival Tuesday
        Date(2029, 3, 24), # National Day of Remembrance for Truth and Justice
        Date(2029, 3, 29), # Maundy Thursday
        Date(2029, 3, 30), # Good Friday
        Date(2029, 4, 2), # Veteran's Day and the Fallen in the Malvinas War
        Date(2029, 5, 1), # Labor Day
        Date(2029, 5, 25), # May Revolution Day
        Date(2029, 6, 17), # Pass to the Immortality of General Don Martín Miguel de Güemes
        Date(2029, 6, 20), # Pass to the Immortality of General Don Manuel Belgrano
        Date(2029, 7, 9), # Independence Day
        Date(2029, 8, 20), # Pass to the Immortality of General Don José de San Martín
        Date(2029, 10, 15), # Respect for Cultural Diversity Day
        Date(2029, 11, 19), # National Sovereignty Day
        Date(2029, 12, 8), # Immaculate Conception
        Date(2029, 12, 25), # Christmas Day
        Date(2030, 1, 1), # New Year's Day
        Date(2030, 3, 4), # Carnival Monday
        Date(2030, 3, 5), # Carnival Tuesday
        Date(2030, 3, 24), # National Day of Remembrance for Truth and Justice
        Date(2030, 4, 2), # Veteran's Day and the Fallen in the Malvinas War
        Date(2030, 4, 18), # Maundy Thursday
        Date(2030, 4, 19), # Good Friday
        Date(2030, 5, 1), # Labor Day
        Date(2030, 5, 25), # May Revolution Day
        Date(2030, 6, 17), # Pass to the Immortality of General Don Martín Miguel de Güemes
        Date(2030, 6, 20), # Pass to the Immortality of General Don Manuel Belgrano
        Date(2030, 7, 9), # Independence Day
        Date(2030, 8, 17), # Pass to the Immortality of General Don José de San Martín
        Date(2030, 10, 12), # Respect for Cultural Diversity Day
        Date(2030, 11, 18), # National Sovereignty Day
        Date(2030, 12, 8), # Immaculate Conception
        Date(2030, 12, 25), # Christmas Day
    ]

    test_holidays(calendar, holidays)

    return nothing
end

end
